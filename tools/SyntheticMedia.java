import java.nio.file.*;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/** Standalone synthetic envelope generator; does not read the APK or any secrets. */
class SyntheticMedia {
    static byte[] digest(String algorithm,byte[] data) throws Exception{return MessageDigest.getInstance(algorithm).digest(data);}
    static String hex(byte[] data){StringBuilder s=new StringBuilder();for(byte b:data)s.append(String.format("%02x",b&255));return s.toString();}
    static byte[] key(String id,boolean sha) throws Exception{
        byte[] input=id.getBytes(StandardCharsets.UTF_8);
        if(sha)input=hex(digest("SHA-1",input)).getBytes(StandardCharsets.UTF_8);
        return digest("MD5",input);
    }
    static byte[] crypt(int mode,byte[] key,byte[] data) throws Exception{
        Cipher cipher=Cipher.getInstance("AES/CBC/PKCS5Padding");cipher.init(mode,new SecretKeySpec(key,"AES"),new IvParameterSpec(key));return cipher.doFinal(data);
    }
    static void generate(Path source,Path target,String id,boolean sha) throws Exception{
        byte[] plain=Files.readAllBytes(source),key=key(id,sha),encrypted=crypt(Cipher.ENCRYPT_MODE,key,plain);
        if(!Arrays.equals(plain,crypt(Cipher.DECRYPT_MODE,key,encrypted)))throw new AssertionError("Synthetic round trip");
        Files.write(target,encrypted);
    }
    public static void main(String[] args) throws Exception{
        Path root=Paths.get(args[0]);
        if(!Files.readString(root.resolve("media/sample.m3u8")).startsWith("#EXTM3U"))throw new AssertionError("Missing HLS fixture");
        generate(root.resolve("media/sample.m3u8"),root.resolve("media/encrypted.playlist"),"1002",true);
        generate(root.resolve("images/cover.png"),root.resolve("images/normal-cover.bin"),"normal-cover",false);
        generate(root.resolve("images/cover.png"),root.resolve("images/vlog-cover.bin"),"vlog-cover",true);
        byte[] plain="Mushroom 1.1.4 synthetic sample".getBytes(StandardCharsets.UTF_8);
        System.out.println("hlsKey1002="+hex(key("1002",true)));
        System.out.println("cipher="+hex(crypt(Cipher.ENCRYPT_MODE,key("1002",true),plain)));
    }
}
