.class public final enum Lorg/seamless/xhtml/XHTML$ELEMENT;
.super Ljava/lang/Enum;
.source "XHTML.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/seamless/xhtml/XHTML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ELEMENT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/seamless/xhtml/XHTML$ELEMENT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum a:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum body:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum dd:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum div:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum dl:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum dt:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum form:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum h1:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum h2:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum h3:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum h4:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum h5:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum h6:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum head:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum html:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum img:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum input:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum li:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum link:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum meta:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum object:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum ol:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum option:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum p:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum pre:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum script:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum select:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum span:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum style:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum table:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum tbody:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum td:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum tfoot:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum th:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum thead:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum title:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum tr:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum ul:Lorg/seamless/xhtml/XHTML$ELEMENT;


# direct methods
.method static constructor <clinit>()V
    .locals 40

    .line 42
    new-instance v0, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v1, "html"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ELEMENT;->html:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v1, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v3, "head"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->head:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v3, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v5, "title"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/seamless/xhtml/XHTML$ELEMENT;->title:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v5, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v7, "meta"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/seamless/xhtml/XHTML$ELEMENT;->meta:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v7, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v9, "link"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/seamless/xhtml/XHTML$ELEMENT;->link:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v9, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v11, "script"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/seamless/xhtml/XHTML$ELEMENT;->script:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v11, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v13, "style"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/seamless/xhtml/XHTML$ELEMENT;->style:Lorg/seamless/xhtml/XHTML$ELEMENT;

    .line 43
    new-instance v13, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v15, "body"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/seamless/xhtml/XHTML$ELEMENT;->body:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v15, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v14, "div"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lorg/seamless/xhtml/XHTML$ELEMENT;->div:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v14, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v12, "span"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lorg/seamless/xhtml/XHTML$ELEMENT;->span:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v12, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v10, "p"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lorg/seamless/xhtml/XHTML$ELEMENT;->p:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v10, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v8, "object"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lorg/seamless/xhtml/XHTML$ELEMENT;->object:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v8, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v6, "a"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/seamless/xhtml/XHTML$ELEMENT;->a:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v6, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v4, "img"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/seamless/xhtml/XHTML$ELEMENT;->img:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v4, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v2, "pre"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/seamless/xhtml/XHTML$ELEMENT;->pre:Lorg/seamless/xhtml/XHTML$ELEMENT;

    .line 44
    new-instance v2, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v6, "h1"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/seamless/xhtml/XHTML$ELEMENT;->h1:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v6, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v4, "h2"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/seamless/xhtml/XHTML$ELEMENT;->h2:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v4, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v2, "h3"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/seamless/xhtml/XHTML$ELEMENT;->h3:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v2, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v6, "h4"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/seamless/xhtml/XHTML$ELEMENT;->h4:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v6, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v4, "h5"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/seamless/xhtml/XHTML$ELEMENT;->h5:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v4, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v2, "h6"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/seamless/xhtml/XHTML$ELEMENT;->h6:Lorg/seamless/xhtml/XHTML$ELEMENT;

    .line 45
    new-instance v2, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v6, "table"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/seamless/xhtml/XHTML$ELEMENT;->table:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v6, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v4, "thead"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/seamless/xhtml/XHTML$ELEMENT;->thead:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v2, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v4, "tfoot"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/seamless/xhtml/XHTML$ELEMENT;->tfoot:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v4, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v6, "tbody"

    move-object/from16 v26, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v2}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/seamless/xhtml/XHTML$ELEMENT;->tbody:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v2, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v6, "tr"

    move-object/from16 v27, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v4}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/seamless/xhtml/XHTML$ELEMENT;->tr:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v4, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v6, "th"

    move-object/from16 v28, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v2}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/seamless/xhtml/XHTML$ELEMENT;->th:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v2, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v6, "td"

    move-object/from16 v29, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v4}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/seamless/xhtml/XHTML$ELEMENT;->td:Lorg/seamless/xhtml/XHTML$ELEMENT;

    .line 46
    new-instance v4, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v6, "ul"

    move-object/from16 v30, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v6, v2}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/seamless/xhtml/XHTML$ELEMENT;->ul:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v2, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v6, "ol"

    move-object/from16 v31, v4

    const/16 v4, 0x1d

    invoke-direct {v2, v6, v4}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/seamless/xhtml/XHTML$ELEMENT;->ol:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v4, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v6, "li"

    move-object/from16 v32, v2

    const/16 v2, 0x1e

    invoke-direct {v4, v6, v2}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/seamless/xhtml/XHTML$ELEMENT;->li:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v2, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v6, "dl"

    move-object/from16 v33, v4

    const/16 v4, 0x1f

    invoke-direct {v2, v6, v4}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/seamless/xhtml/XHTML$ELEMENT;->dl:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v4, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v6, "dt"

    move-object/from16 v34, v2

    const/16 v2, 0x20

    invoke-direct {v4, v6, v2}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/seamless/xhtml/XHTML$ELEMENT;->dt:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v2, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v6, "dd"

    move-object/from16 v35, v4

    const/16 v4, 0x21

    invoke-direct {v2, v6, v4}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/seamless/xhtml/XHTML$ELEMENT;->dd:Lorg/seamless/xhtml/XHTML$ELEMENT;

    .line 47
    new-instance v4, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v6, "form"

    move-object/from16 v36, v2

    const/16 v2, 0x22

    invoke-direct {v4, v6, v2}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/seamless/xhtml/XHTML$ELEMENT;->form:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v2, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v6, "input"

    move-object/from16 v37, v4

    const/16 v4, 0x23

    invoke-direct {v2, v6, v4}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/seamless/xhtml/XHTML$ELEMENT;->input:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v4, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v6, "select"

    move-object/from16 v38, v2

    const/16 v2, 0x24

    invoke-direct {v4, v6, v2}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/seamless/xhtml/XHTML$ELEMENT;->select:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v2, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v6, "option"

    move-object/from16 v39, v4

    const/16 v4, 0x25

    invoke-direct {v2, v6, v4}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/seamless/xhtml/XHTML$ELEMENT;->option:Lorg/seamless/xhtml/XHTML$ELEMENT;

    const/16 v4, 0x26

    new-array v4, v4, [Lorg/seamless/xhtml/XHTML$ELEMENT;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    const/16 v0, 0xd

    aput-object v16, v4, v0

    const/16 v0, 0xe

    aput-object v17, v4, v0

    const/16 v0, 0xf

    aput-object v18, v4, v0

    const/16 v0, 0x10

    aput-object v19, v4, v0

    const/16 v0, 0x11

    aput-object v20, v4, v0

    const/16 v0, 0x12

    aput-object v21, v4, v0

    const/16 v0, 0x13

    aput-object v22, v4, v0

    const/16 v0, 0x14

    aput-object v23, v4, v0

    const/16 v0, 0x15

    aput-object v24, v4, v0

    const/16 v0, 0x16

    aput-object v25, v4, v0

    const/16 v0, 0x17

    aput-object v26, v4, v0

    const/16 v0, 0x18

    aput-object v27, v4, v0

    const/16 v0, 0x19

    aput-object v28, v4, v0

    const/16 v0, 0x1a

    aput-object v29, v4, v0

    const/16 v0, 0x1b

    aput-object v30, v4, v0

    const/16 v0, 0x1c

    aput-object v31, v4, v0

    const/16 v0, 0x1d

    aput-object v32, v4, v0

    const/16 v0, 0x1e

    aput-object v33, v4, v0

    const/16 v0, 0x1f

    aput-object v34, v4, v0

    const/16 v0, 0x20

    aput-object v35, v4, v0

    const/16 v0, 0x21

    aput-object v36, v4, v0

    const/16 v0, 0x22

    aput-object v37, v4, v0

    const/16 v0, 0x23

    aput-object v38, v4, v0

    const/16 v0, 0x24

    aput-object v39, v4, v0

    const/16 v0, 0x25

    aput-object v2, v4, v0

    .line 41
    sput-object v4, Lorg/seamless/xhtml/XHTML$ELEMENT;->$VALUES:[Lorg/seamless/xhtml/XHTML$ELEMENT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/seamless/xhtml/XHTML$ELEMENT;
    .locals 1

    .line 41
    const-class v0, Lorg/seamless/xhtml/XHTML$ELEMENT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/seamless/xhtml/XHTML$ELEMENT;

    return-object p0
.end method

.method public static values()[Lorg/seamless/xhtml/XHTML$ELEMENT;
    .locals 1

    .line 41
    sget-object v0, Lorg/seamless/xhtml/XHTML$ELEMENT;->$VALUES:[Lorg/seamless/xhtml/XHTML$ELEMENT;

    invoke-virtual {v0}, [Lorg/seamless/xhtml/XHTML$ELEMENT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/seamless/xhtml/XHTML$ELEMENT;

    return-object v0
.end method
