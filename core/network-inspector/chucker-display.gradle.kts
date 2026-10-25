import org.gradle.api.artifacts.transform.TransformAction
import org.gradle.api.artifacts.transform.TransformOutputs
import org.gradle.api.artifacts.transform.TransformParameters
import org.gradle.api.artifacts.transform.InputArtifact
import org.gradle.api.artifacts.type.ArtifactTypeDefinition
import org.objectweb.asm.ClassReader
import org.objectweb.asm.ClassWriter
import org.objectweb.asm.ClassVisitor
import org.objectweb.asm.MethodVisitor
import org.objectweb.asm.Opcodes
import org.objectweb.asm.Label
import java.io.ByteArrayInputStream
import java.io.ByteArrayOutputStream
import java.util.zip.ZipEntry
import java.util.zip.ZipInputStream
import java.util.zip.ZipOutputStream

buildscript {
    repositories { maven("https://maven.aliyun.com/repository/public") }
    dependencies {
        classpath("org.ow2.asm:asm:9.8")
    }
}

// Chucker 4.1 has no display-only decoder API: BodyDecoder overwrites the stored wire text.
// Adapt response presentation plus the existing third-party TextView/navigation UI. Storage,
// Copy/share/export sinks consult the application privacy state; HTTP and storage stay upstream.
// Never modify Gradle caches.
abstract class ChuckerDisplayTransform : TransformAction<TransformParameters.None> {
    @get:InputArtifact
    abstract val inputArtifact: Provider<FileSystemLocation>

    override fun transform(outputs: TransformOutputs) {
        val input = inputArtifact.get().asFile
        check(input.name == "library-4.1.0.aar") { "Review the Chucker display patch before upgrading: ${input.name}" }
        var classes = 0
        var patched = 0
        val uiPatches = mutableMapOf<String, Int>()
        fun count(name: String) { uiPatches[name] = (uiPatches[name] ?: 0) + 1 }
        fun rewriteZip(bytes: ByteArray, transform: (String, ByteArray) -> ByteArray): ByteArray {
            val output = ByteArrayOutputStream()
            ZipOutputStream(output).use { zip ->
                ZipInputStream(ByteArrayInputStream(bytes)).use { source ->
                    while (true) {
                        val entry = source.nextEntry ?: break
                        zip.putNextEntry(ZipEntry(entry.name).apply { time = 0 })
                        zip.write(transform(entry.name, source.readBytes()))
                        zip.closeEntry()
                    }
                }
            }
            return output.toByteArray()
        }
        val transaction = "com/chuckerteam/chucker/internal/data/entity/HttpTransaction"
        val payload = "com/chuckerteam/chucker/internal/ui/transaction/TransactionPayloadFragment"
        val adapter = "com/chuckerteam/chucker/internal/ui/transaction/TransactionBodyAdapter"
        val hooks = "com/mogu/inspector/ChuckerInteractions"
        val outputGuard = "com/mogu/inspector/ChuckerOutputGuard"
        val outputPatches = mutableSetOf<String>()
        fun protectOutputs(className: String, code: ByteArray): ByteArray {
            if (!className.startsWith("com/chuckerteam/chucker/") || !className.endsWith(".class")) return code
            val writer = ClassWriter(ClassWriter.COMPUTE_MAXS)
            ClassReader(code).accept(object : ClassVisitor(Opcodes.ASM9, writer) {
                override fun visitMethod(access: Int, name: String, descriptor: String, signature: String?, exceptions: Array<out String>?): MethodVisitor {
                    return object : MethodVisitor(Opcodes.ASM9, super.visitMethod(access, name, descriptor, signature, exceptions)) {
                        override fun visitMethodInsn(opcode: Int, owner: String, name: String, descriptor: String, isInterface: Boolean) {
                            val guard = when {
                                owner == "android/content/ClipboardManager" && name == "setPrimaryClip" && descriptor == "(Landroid/content/ClipData;)V" ->
                                    "copy" to "(Landroid/content/ClipboardManager;Landroid/content/ClipData;)V"
                                name == "startActivity" && descriptor == "(Landroid/content/Intent;)V" &&
                                    (owner == "android/content/Context" || owner == "android/app/Activity" ||
                                        owner.startsWith("com/chuckerteam/chucker/") && owner.endsWith("Activity")) ->
                                    "launch" to "(Landroid/content/Context;Landroid/content/Intent;)V"
                                owner == "okio/Okio" && name == "sink" && descriptor == "(Ljava/io/File;Z)Lokio/Sink;" ->
                                    "fileSink" to descriptor
                                owner == "okio/Okio" && name == "sink\$default" && descriptor == "(Ljava/io/File;ZILjava/lang/Object;)Lokio/Sink;" ->
                                    "fileSinkDefault" to descriptor
                                owner == "android/content/ContentResolver" && name == "openOutputStream" && descriptor == "(Landroid/net/Uri;)Ljava/io/OutputStream;" ->
                                    "outputStream" to "(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/OutputStream;"
                                else -> null
                            }
                            if (guard == null) super.visitMethodInsn(opcode, owner, name, descriptor, isInterface)
                            else {
                                outputPatches += guard.first
                                super.visitMethodInsn(Opcodes.INVOKESTATIC, outputGuard, guard.first, guard.second, false)
                            }
                        }
                    }
                }
            }, 0)
            return writer.toByteArray()
        }
        val uiClasses = setOf(
            payload, adapter,
            "com/chuckerteam/chucker/internal/ui/BaseChuckerActivity",
            "com/chuckerteam/chucker/internal/ui/transaction/TransactionActivity",
            "com/chuckerteam/chucker/internal/ui/transaction/TransactionOverviewFragment",
            "com/chuckerteam/chucker/internal/ui/transaction/TransactionPayloadViewHolder\$BodyLineViewHolder",
            "com/chuckerteam/chucker/internal/ui/transaction/TransactionPayloadViewHolder\$HeaderViewHolder",
        )
        val result = rewriteZip(input.readBytes()) { name, bytes ->
            if (name != "classes.jar") bytes else rewriteZip(bytes) { className, code ->
                val presented = if (className == "$transaction.class") {
                    classes++
                    val writer = ClassWriter(ClassWriter.COMPUTE_MAXS)
                    ClassReader(code).accept(object : ClassVisitor(Opcodes.ASM9, writer) {
                        override fun visitMethod(access: Int, name: String, descriptor: String, signature: String?, exceptions: Array<out String>?): MethodVisitor {
                            val original = super.visitMethod(access, name, descriptor, signature, exceptions)
                            val target = name == "getFormattedResponseBody" && descriptor == "()Ljava/lang/String;" ||
                                name == "getSpannedResponseBody" && descriptor == "(Landroid/content/Context;)Ljava/lang/CharSequence;"
                            if (!target) return original
                            patched++
                            return object : MethodVisitor(Opcodes.ASM9, original) {
                                override fun visitCode() {
                                    super.visitCode()
                                    for (field in listOf("responseBody", "method", "url")) {
                                        visitVarInsn(Opcodes.ALOAD, 0)
                                        visitFieldInsn(Opcodes.GETFIELD, transaction, field, "Ljava/lang/String;")
                                    }
                                    val spanned = name == "getSpannedResponseBody"
                                    if (spanned) visitVarInsn(Opcodes.ALOAD, 1)
                                    visitMethodInsn(Opcodes.INVOKESTATIC, "com/mogu/inspector/ChuckerResponseFormatter",
                                        if (spanned) "spanOrNull" else "formatOrNull",
                                        if (spanned) "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/CharSequence;"
                                        else "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", false)
                                    val fallback = Label()
                                    visitInsn(Opcodes.DUP)
                                    visitJumpInsn(Opcodes.IFNULL, fallback)
                                    visitInsn(Opcodes.ARETURN)
                                    visitLabel(fallback)
                                    visitFrame(Opcodes.F_SAME1, 0, null, 1, arrayOf(if (spanned) "java/lang/CharSequence" else "java/lang/String"))
                                    visitInsn(Opcodes.POP)
                                }
                            }
                        }
                    }, 0)
                    writer.toByteArray()
                } else if (className.removeSuffix(".class") in uiClasses) {
                    val owner = className.removeSuffix(".class")
                    val writer = ClassWriter(ClassWriter.COMPUTE_MAXS)
                    ClassReader(code).accept(object : ClassVisitor(Opcodes.ASM9, writer) {
                        override fun visitMethod(access: Int, name: String, descriptor: String, signature: String?, exceptions: Array<out String>?): MethodVisitor? {
                            val original = super.visitMethod(access, name, descriptor, signature, exceptions)
                            fun replace(key: String, emit: MethodVisitor.() -> Unit): MethodVisitor? {
                                count(key)
                                original.visitCode()
                                original.emit()
                                original.visitMaxs(0, 0)
                                original.visitEnd()
                                return null
                            }
                            if (owner == payload && name == "lines" && descriptor == "(Ljava/lang/CharSequence;)Ljava/util/List;") {
                                return replace("continuous-body") {
                                    visitVarInsn(Opcodes.ALOAD, 1)
                                    visitMethodInsn(Opcodes.INVOKESTATIC, "java/util/Collections", "singletonList", "(Ljava/lang/Object;)Ljava/util/List;", false)
                                    visitInsn(Opcodes.ARETURN)
                                }
                            }
                            if (owner == adapter && name.startsWith("highlightQueryWithColors") && descriptor == "(Ljava/lang/String;II)Ljava/util/List;") {
                                return replace("search-offsets") {
                                    visitVarInsn(Opcodes.ALOAD, 0)
                                    visitVarInsn(Opcodes.ALOAD, 0)
                                    visitFieldInsn(Opcodes.GETFIELD, owner, "items", "Ljava/util/ArrayList;")
                                    visitVarInsn(Opcodes.ALOAD, 1)
                                    visitVarInsn(Opcodes.ILOAD, 2)
                                    visitVarInsn(Opcodes.ILOAD, 3)
                                    visitMethodInsn(Opcodes.INVOKESTATIC, hooks, "highlight", "(Landroidx/recyclerview/widget/RecyclerView\$Adapter;Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;", false)
                                    visitInsn(Opcodes.ARETURN)
                                }
                            }
                            if (owner == adapter && name.startsWith("resetHighlight") && descriptor == "()V") {
                                return replace("search-reset") {
                                    visitVarInsn(Opcodes.ALOAD, 0)
                                    visitVarInsn(Opcodes.ALOAD, 0)
                                    visitFieldInsn(Opcodes.GETFIELD, owner, "items", "Ljava/util/ArrayList;")
                                    visitMethodInsn(Opcodes.INVOKESTATIC, hooks, "resetHighlight", "(Landroidx/recyclerview/widget/RecyclerView\$Adapter;Ljava/util/List;)V", false)
                                    visitInsn(Opcodes.RETURN)
                                }
                            }
                            val overview = owner.endsWith("/TransactionOverviewFragment") && name == "onCreateView" && descriptor.endsWith("Landroid/view/View;")
                            val body = (owner.endsWith("\$BodyLineViewHolder") || owner.endsWith("\$HeaderViewHolder")) && name == "bind" && descriptor == "(Lcom/chuckerteam/chucker/internal/ui/transaction/TransactionPayloadItem;)V"
                            val base = owner.endsWith("/BaseChuckerActivity") && name == "onCreate" && descriptor == "(Landroid/os/Bundle;)V"
                            val home = owner.endsWith("/TransactionActivity") && name == "onOptionsItemSelected" && descriptor == "(Landroid/view/MenuItem;)Z"
                            val reveal = owner == payload && name == "scrollToSearchedItemPosition" && descriptor == "(I)V"
                            if (!overview && !body && !base && !home && !reveal) return original
                            count(when { overview -> "overview-selection"; body -> owner.substringAfterLast('$'); base -> "activity-back"; home -> "toolbar-back"; else -> "search-scroll" })
                            return object : MethodVisitor(Opcodes.ASM9, original) {
                                override fun visitCode() {
                                    super.visitCode()
                                    if (home) {
                                        visitVarInsn(Opcodes.ALOAD, 1)
                                        visitMethodInsn(Opcodes.INVOKEINTERFACE, "android/view/MenuItem", "getItemId", "()I", true)
                                        visitLdcInsn(16908332) // android.R.id.home
                                        val upstream = Label()
                                        visitJumpInsn(Opcodes.IF_ICMPNE, upstream)
                                        visitVarInsn(Opcodes.ALOAD, 0)
                                        visitMethodInsn(Opcodes.INVOKESTATIC, hooks, "navigateBack", "(Landroidx/appcompat/app/AppCompatActivity;)V", false)
                                        visitInsn(Opcodes.ICONST_1)
                                        visitInsn(Opcodes.IRETURN)
                                        visitLabel(upstream)
                                        visitFrame(Opcodes.F_SAME, 0, null, 0, null)
                                    }
                                }
                                override fun visitInsn(opcode: Int) {
                                    if (overview && opcode == Opcodes.ARETURN) {
                                        visitInsn(Opcodes.DUP)
                                        visitMethodInsn(Opcodes.INVOKESTATIC, hooks, "makeSelectable", "(Landroid/view/View;)V", false)
                                    }
                                    if (opcode == Opcodes.RETURN) {
                                        if (body) {
                                            visitVarInsn(Opcodes.ALOAD, 0)
                                            visitFieldInsn(Opcodes.GETFIELD, "androidx/recyclerview/widget/RecyclerView\$ViewHolder", "itemView", "Landroid/view/View;")
                                            visitMethodInsn(Opcodes.INVOKESTATIC, hooks, "makeSelectable", "(Landroid/view/View;)V", false)
                                        }
                                        if (base) {
                                            visitVarInsn(Opcodes.ALOAD, 0)
                                            visitMethodInsn(Opcodes.INVOKESTATIC, hooks, "install", "(Landroidx/appcompat/app/AppCompatActivity;)V", false)
                                        }
                                        if (reveal) {
                                            visitVarInsn(Opcodes.ALOAD, 0)
                                            visitFieldInsn(Opcodes.GETFIELD, payload, "payloadBinding", "Lcom/chuckerteam/chucker/databinding/ChuckerFragmentTransactionPayloadBinding;")
                                            visitFieldInsn(Opcodes.GETFIELD, "com/chuckerteam/chucker/databinding/ChuckerFragmentTransactionPayloadBinding", "payloadRecyclerView", "Landroidx/recyclerview/widget/RecyclerView;")
                                            visitVarInsn(Opcodes.ALOAD, 0)
                                            visitFieldInsn(Opcodes.GETFIELD, payload, "scrollableIndices", "Ljava/util/ArrayList;")
                                            visitVarInsn(Opcodes.ILOAD, 1)
                                            visitMethodInsn(Opcodes.INVOKESTATIC, hooks, "revealMatch", "(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;I)V", false)
                                        }
                                    }
                                    super.visitInsn(opcode)
                                }
                            }
                        }
                    }, 0)
                    writer.toByteArray()
                } else code
                protectOutputs(className, presented)
            }
        }
        check(classes == 1 && patched == 2) { "Unexpected Chucker API: $classes transaction classes, $patched presentation methods" }
        val expected = setOf("continuous-body", "search-offsets", "search-reset", "overview-selection", "BodyLineViewHolder", "HeaderViewHolder", "activity-back", "toolbar-back", "search-scroll")
        check(uiPatches.keys == expected && uiPatches.values.all { it == 1 }) { "Unexpected Chucker UI API: $uiPatches" }
        check(outputPatches.containsAll(setOf("copy", "launch", "outputStream")) &&
            outputPatches.any { it == "fileSink" || it == "fileSinkDefault" }) { "Unexpected Chucker export API: $outputPatches" }
        outputs.file("mushroom-chucker-display.aar").writeBytes(result)
    }
}

val displayPatch = Attribute.of("com.mogu.chucker.display", Boolean::class.javaObjectType)
// Consumers of this module (including app) resolve the same patched dependency.
rootProject.allprojects {
    dependencies {
        artifactTypes.maybeCreate("aar").attributes.attribute(displayPatch, false)
        registerTransform(ChuckerDisplayTransform::class) {
            from.attribute(ArtifactTypeDefinition.ARTIFACT_TYPE_ATTRIBUTE, "aar").attribute(displayPatch, false)
            to.attribute(ArtifactTypeDefinition.ARTIFACT_TYPE_ATTRIBUTE, "aar").attribute(displayPatch, true)
        }
    }
}
