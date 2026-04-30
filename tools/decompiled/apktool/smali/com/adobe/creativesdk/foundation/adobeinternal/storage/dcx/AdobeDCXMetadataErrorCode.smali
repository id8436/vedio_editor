.class public final enum Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;
.super Ljava/lang/Enum;
.source "AdobeDCXMetadataErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

.field public static final enum BADINDEX:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

.field public static final enum BADOPTIONS:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

.field public static final enum BADPARAM:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

.field public static final enum BADRDF:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

.field public static final enum BADSCHEMA:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

.field public static final enum BADSERIALIZE:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

.field public static final enum BADSTREAM:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

.field public static final enum BADVALUE:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

.field public static final enum BADXML:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

.field public static final enum BADXMP:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

.field public static final enum BADXPATH:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

.field public static final enum INTERNALFAILURE:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

.field public static final enum UNKNOWN:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;


# instance fields
.field private _val:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x9

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 8
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v4, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;->UNKNOWN:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    .line 9
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    const-string/jumbo v1, "BADPARAM"

    invoke-direct {v0, v1, v8, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;->BADPARAM:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    .line 10
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    const-string/jumbo v1, "BADVALUE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;->BADVALUE:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    .line 11
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    const-string/jumbo v1, "INTERNALFAILURE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;->INTERNALFAILURE:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    .line 12
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    const-string/jumbo v1, "BADSCHEMA"

    const/16 v2, 0x65

    invoke-direct {v0, v1, v5, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;->BADSCHEMA:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    .line 13
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    const-string/jumbo v1, "BADXPATH"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v6, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;->BADXPATH:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    .line 14
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    const-string/jumbo v1, "BADOPTIONS"

    const/4 v2, 0x6

    const/16 v3, 0x67

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;->BADOPTIONS:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    .line 15
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    const-string/jumbo v1, "BADINDEX"

    const/4 v2, 0x7

    const/16 v3, 0x68

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;->BADINDEX:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    .line 16
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    const-string/jumbo v1, "BADSERIALIZE"

    const/16 v2, 0x8

    const/16 v3, 0x6b

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;->BADSERIALIZE:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    .line 17
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    const-string/jumbo v1, "BADXML"

    const/16 v2, 0xc9

    invoke-direct {v0, v1, v7, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;->BADXML:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    .line 18
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    const-string/jumbo v1, "BADRDF"

    const/16 v2, 0xa

    const/16 v3, 0xca

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;->BADRDF:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    .line 19
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    const-string/jumbo v1, "BADXMP"

    const/16 v2, 0xb

    const/16 v3, 0xcb

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;->BADXMP:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    .line 20
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    const-string/jumbo v1, "BADSTREAM"

    const/16 v2, 0xc

    const/16 v3, 0xcc

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;->BADSTREAM:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    .line 6
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;->UNKNOWN:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;->BADPARAM:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    aput-object v1, v0, v8

    const/4 v1, 0x2

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;->BADVALUE:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;->INTERNALFAILURE:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    aput-object v2, v0, v1

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;->BADSCHEMA:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;->BADXPATH:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    aput-object v1, v0, v6

    const/4 v1, 0x6

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;->BADOPTIONS:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;->BADINDEX:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;->BADSERIALIZE:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    aput-object v2, v0, v1

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;->BADXML:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    aput-object v1, v0, v7

    const/16 v1, 0xa

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;->BADRDF:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;->BADXMP:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;->BADSTREAM:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;->_val:I

    .line 25
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;->_val:I

    return v0
.end method
