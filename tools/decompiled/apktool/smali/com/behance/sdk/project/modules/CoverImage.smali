.class public Lcom/behance/sdk/project/modules/CoverImage;
.super Ljava/lang/Object;
.source "CoverImage.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final COVER_IMAGE_HEIGHT:I = 0x278

.field private static final COVER_IMAGE_WIDTH:I = 0x328

.field private static final logger:Lcom/behance/sdk/logger/ILogger;


# instance fields
.field private transient coverImage:Landroid/graphics/Bitmap;

.field private originalImage:Lcom/behance/sdk/project/modules/ImageModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/behance/sdk/project/modules/CoverImage;

    invoke-static {v0}, Lcom/behance/sdk/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/behance/sdk/logger/ILogger;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/project/modules/CoverImage;->logger:Lcom/behance/sdk/logger/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/behance/sdk/project/modules/ImageModule;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/behance/sdk/project/modules/CoverImage;->originalImage:Lcom/behance/sdk/project/modules/ImageModule;

    .line 49
    iput-object p2, p0, Lcom/behance/sdk/project/modules/CoverImage;->coverImage:Landroid/graphics/Bitmap;

    .line 50
    return-void
.end method


# virtual methods
.method public getBitMap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/behance/sdk/project/modules/CoverImage;->coverImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getByteArray()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 76
    iget-object v0, p0, Lcom/behance/sdk/project/modules/CoverImage;->coverImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/behance/sdk/project/modules/CoverImage;->coverImage:Landroid/graphics/Bitmap;

    const/16 v1, 0x328

    const/16 v2, 0x278

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 79
    const/4 v2, 0x0

    .line 81
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 83
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 86
    if-eqz v1, :cond_0

    .line 88
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 95
    :cond_0
    :goto_0
    return-object v0

    .line 89
    :catch_0
    move-exception v1

    .line 90
    sget-object v2, Lcom/behance/sdk/project/modules/CoverImage;->logger:Lcom/behance/sdk/logger/ILogger;

    invoke-interface {v2, v1}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_1

    .line 88
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 93
    :cond_1
    :goto_2
    throw v0

    .line 89
    :catch_1
    move-exception v1

    .line 90
    sget-object v2, Lcom/behance/sdk/project/modules/CoverImage;->logger:Lcom/behance/sdk/logger/ILogger;

    invoke-interface {v2, v1}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 95
    :cond_2
    new-array v0, v3, [B

    goto :goto_0

    .line 86
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/behance/sdk/project/modules/CoverImage;->originalImage:Lcom/behance/sdk/project/modules/ImageModule;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/behance/sdk/project/modules/CoverImage;->originalImage:Lcom/behance/sdk/project/modules/ImageModule;

    invoke-virtual {v0}, Lcom/behance/sdk/project/modules/ImageModule;->getName()Ljava/lang/String;

    move-result-object v0

    .line 56
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getOriginalImage()Lcom/behance/sdk/project/modules/ImageModule;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/behance/sdk/project/modules/CoverImage;->originalImage:Lcom/behance/sdk/project/modules/ImageModule;

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/behance/sdk/project/modules/CoverImage;->originalImage:Lcom/behance/sdk/project/modules/ImageModule;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/behance/sdk/project/modules/CoverImage;->originalImage:Lcom/behance/sdk/project/modules/ImageModule;

    invoke-virtual {v0}, Lcom/behance/sdk/project/modules/ImageModule;->clear()V

    .line 69
    :cond_0
    return-void
.end method
