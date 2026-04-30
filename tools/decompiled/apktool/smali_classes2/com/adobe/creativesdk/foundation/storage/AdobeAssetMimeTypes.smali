.class public final enum Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;
.super Ljava/lang/Enum;
.source "AdobeAssetMimeTypes.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

.field public static final enum MIMETYPE_BMP:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

.field public static final enum MIMETYPE_DMG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

.field public static final enum MIMETYPE_DNG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

.field public static final enum MIMETYPE_GIF:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

.field public static final enum MIMETYPE_GROOVE_TOOL_TEMPLATE:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

.field public static final enum MIMETYPE_ILLUSTRATOR:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

.field public static final enum MIMETYPE_IMAGE_RAW:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

.field public static final enum MIMETYPE_JPEG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

.field public static final enum MIMETYPE_JPG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

.field public static final enum MIMETYPE_M4V:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

.field public static final enum MIMETYPE_MP4:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

.field public static final enum MIMETYPE_OCTETSTREAM:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

.field public static final enum MIMETYPE_PDF:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

.field public static final enum MIMETYPE_PHOTOSHOP:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

.field public static final enum MIMETYPE_PNG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

.field public static final enum MIMETYPE_QUICKTIME:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

.field public static final enum MIMETYPE_RAW:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

.field public static final enum MIMETYPE_SPARKLER:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

.field public static final enum MIMETYPE_SPARKLER_DCXUCF:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

.field public static final enum MIMETYPE_TIFF:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;


# instance fields
.field private mimeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 30
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    const-string/jumbo v1, "MIMETYPE_OCTETSTREAM"

    const-string/jumbo v2, "application/octet-stream"

    invoke-direct {v0, v1, v4, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_OCTETSTREAM:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    .line 33
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    const-string/jumbo v1, "MIMETYPE_SPARKLER"

    const-string/jumbo v2, "application/vnd.adobe.sparkler.project+dcx"

    invoke-direct {v0, v1, v5, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_SPARKLER:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    .line 36
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    const-string/jumbo v1, "MIMETYPE_SPARKLER_DCXUCF"

    const-string/jumbo v2, "application/vnd.adobe.sparkler.project+dcxucf"

    invoke-direct {v0, v1, v6, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_SPARKLER_DCXUCF:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    .line 39
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    const-string/jumbo v1, "MIMETYPE_PHOTOSHOP"

    const-string/jumbo v2, "image/vnd.adobe.photoshop"

    invoke-direct {v0, v1, v7, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_PHOTOSHOP:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    .line 42
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    const-string/jumbo v1, "MIMETYPE_JPEG"

    const-string/jumbo v2, "image/jpeg"

    invoke-direct {v0, v1, v8, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_JPEG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    .line 44
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    const-string/jumbo v1, "MIMETYPE_JPG"

    const/4 v2, 0x5

    const-string/jumbo v3, "image/jpg"

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_JPG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    .line 48
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    const-string/jumbo v1, "MIMETYPE_ILLUSTRATOR"

    const/4 v2, 0x6

    const-string/jumbo v3, "application/illustrator"

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_ILLUSTRATOR:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    .line 51
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    const-string/jumbo v1, "MIMETYPE_GIF"

    const/4 v2, 0x7

    const-string/jumbo v3, "image/gif"

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_GIF:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    .line 54
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    const-string/jumbo v1, "MIMETYPE_PNG"

    const/16 v2, 0x8

    const-string/jumbo v3, "image/png"

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_PNG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    .line 57
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    const-string/jumbo v1, "MIMETYPE_TIFF"

    const/16 v2, 0x9

    const-string/jumbo v3, "image/tiff"

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_TIFF:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    .line 60
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    const-string/jumbo v1, "MIMETYPE_BMP"

    const/16 v2, 0xa

    const-string/jumbo v3, "image/bmp"

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_BMP:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    .line 63
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    const-string/jumbo v1, "MIMETYPE_PDF"

    const/16 v2, 0xb

    const-string/jumbo v3, "application/pdf"

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_PDF:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    .line 66
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    const-string/jumbo v1, "MIMETYPE_DMG"

    const/16 v2, 0xc

    const-string/jumbo v3, "application/x-diskcopy"

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_DMG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    .line 69
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    const-string/jumbo v1, "MIMETYPE_DNG"

    const/16 v2, 0xd

    const-string/jumbo v3, "image/x-adobe-dng"

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_DNG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    .line 72
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    const-string/jumbo v1, "MIMETYPE_RAW"

    const/16 v2, 0xe

    const-string/jumbo v3, "image/x-dcraw"

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_RAW:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    .line 75
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    const-string/jumbo v1, "MIMETYPE_IMAGE_RAW"

    const/16 v2, 0xf

    const-string/jumbo v3, "image/raw"

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_IMAGE_RAW:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    .line 78
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    const-string/jumbo v1, "MIMETYPE_MP4"

    const/16 v2, 0x10

    const-string/jumbo v3, "video/mp4"

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_MP4:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    .line 79
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    const-string/jumbo v1, "MIMETYPE_M4V"

    const/16 v2, 0x11

    const-string/jumbo v3, "video/x-m4v"

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_M4V:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    .line 80
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    const-string/jumbo v1, "MIMETYPE_QUICKTIME"

    const/16 v2, 0x12

    const-string/jumbo v3, "video/quicktime"

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_QUICKTIME:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    .line 83
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    const-string/jumbo v1, "MIMETYPE_GROOVE_TOOL_TEMPLATE"

    const/16 v2, 0x13

    const-string/jumbo v3, "application/vnd.groove-tool-template"

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_GROOVE_TOOL_TEMPLATE:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    .line 28
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_OCTETSTREAM:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_SPARKLER:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_SPARKLER_DCXUCF:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    aput-object v1, v0, v6

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_PHOTOSHOP:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    aput-object v1, v0, v7

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_JPEG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_JPG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_ILLUSTRATOR:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_GIF:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_PNG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_TIFF:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_BMP:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_PDF:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_DMG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_DNG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_RAW:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_IMAGE_RAW:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_MP4:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_M4V:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_QUICKTIME:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_GROOVE_TOOL_TEMPLATE:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    aput-object v2, v0, v1

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->$VALUES:[Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 89
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->mimeType:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public static ImageMimeTypeSet()Ljava/util/EnumSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_TIFF:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    const/16 v1, 0x9

    new-array v1, v1, [Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    const/4 v2, 0x0

    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_JPEG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_GIF:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_PNG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_BMP:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_JPG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_DNG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_RAW:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_IMAGE_RAW:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_PHOTOSHOP:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public static PdfMimeTypeSet()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_PDF:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public static VideoMimeTypeSet()Ljava/util/EnumSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_MP4:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_M4V:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_QUICKTIME:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public static adobeContent()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_ILLUSTRATOR:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public static basicImagesSet()Ljava/util/EnumSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_TIFF:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_JPEG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_GIF:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_PNG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    sget-object v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_BMP:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->$VALUES:[Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    return-object v0
.end method


# virtual methods
.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->mimeType:Ljava/lang/String;

    return-object v0
.end method
