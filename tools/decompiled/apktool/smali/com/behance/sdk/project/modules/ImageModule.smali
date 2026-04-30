.class public Lcom/behance/sdk/project/modules/ImageModule;
.super Lcom/behance/sdk/project/modules/BaseModule;
.source "ImageModule.java"


# static fields
.field private static final logger:Lcom/behance/sdk/logger/ILogger;

.field private static final serialVersionUID:J = 0x4e38aef794224c43L


# instance fields
.field private albumName:Ljava/lang/String;

.field private transient bitmap:Landroid/graphics/Bitmap;

.field private defaultThumbnailRotationApplied:Z

.field private file:Ljava/io/File;

.field private height:I

.field private id:J

.field private rotation:I

.field private sizeInBytes:J

.field private transient thumbnail:Landroid/graphics/Bitmap;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/behance/sdk/project/modules/ImageModule;

    invoke-static {v0}, Lcom/behance/sdk/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/behance/sdk/logger/ILogger;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/project/modules/ImageModule;->logger:Lcom/behance/sdk/logger/ILogger;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-direct {p0}, Lcom/behance/sdk/project/modules/BaseModule;-><init>()V

    .line 53
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->id:J

    .line 60
    iput v2, p0, Lcom/behance/sdk/project/modules/ImageModule;->rotation:I

    .line 61
    iput-boolean v2, p0, Lcom/behance/sdk/project/modules/ImageModule;->defaultThumbnailRotationApplied:Z

    .line 65
    iput-wide p1, p0, Lcom/behance/sdk/project/modules/ImageModule;->id:J

    .line 66
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/behance/sdk/project/modules/ImageModule;->setFile(Ljava/io/File;)V

    .line 67
    invoke-direct {p0}, Lcom/behance/sdk/project/modules/ImageModule;->computeImageDimensions()V

    .line 68
    invoke-direct {p0}, Lcom/behance/sdk/project/modules/ImageModule;->getDefaultOrientation()V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-direct {p0}, Lcom/behance/sdk/project/modules/BaseModule;-><init>()V

    .line 53
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->id:J

    .line 60
    iput v2, p0, Lcom/behance/sdk/project/modules/ImageModule;->rotation:I

    .line 61
    iput-boolean v2, p0, Lcom/behance/sdk/project/modules/ImageModule;->defaultThumbnailRotationApplied:Z

    .line 72
    invoke-direct {p0, p1}, Lcom/behance/sdk/project/modules/ImageModule;->setFile(Ljava/io/File;)V

    .line 73
    invoke-direct {p0}, Lcom/behance/sdk/project/modules/ImageModule;->computeImageDimensions()V

    .line 74
    invoke-direct {p0}, Lcom/behance/sdk/project/modules/ImageModule;->getDefaultOrientation()V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/project/modules/ImageModule;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/behance/sdk/project/modules/ImageModule;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/behance/sdk/project/modules/ImageModule;->bitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/behance/sdk/project/modules/ImageModule;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/project/modules/ImageModule;->setImageViewLayerType(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private computeImageDimensions()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 80
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 81
    iget-object v1, p0, Lcom/behance/sdk/project/modules/ImageModule;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 82
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-direct {p0, v1}, Lcom/behance/sdk/project/modules/ImageModule;->setWidth(I)V

    .line 83
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {p0, v0}, Lcom/behance/sdk/project/modules/ImageModule;->setHeight(I)V

    .line 84
    iget-object v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/behance/sdk/project/modules/ImageModule;->setSizeInBytes(J)V

    .line 86
    :cond_0
    return-void
.end method

.method private equalObject(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 258
    if-ne p1, p2, :cond_0

    .line 259
    const/4 v0, 0x1

    .line 263
    :goto_0
    return v0

    .line 260
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    .line 261
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 263
    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private getDefaultOrientation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 142
    iget-boolean v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->defaultThumbnailRotationApplied:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->thumbnail:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 144
    :cond_0
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    iget-object v1, p0, Lcom/behance/sdk/project/modules/ImageModule;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 145
    const-string/jumbo v1, "Orientation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 146
    packed-switch v0, :pswitch_data_0

    .line 160
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->defaultThumbnailRotationApplied:Z

    .line 165
    :cond_1
    :goto_1
    return-void

    .line 148
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->rotation:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    sget-object v1, Lcom/behance/sdk/project/modules/ImageModule;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v2, "Exception while getting the default orientation"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 151
    :pswitch_2
    const/4 v0, 0x1

    :try_start_1
    iput v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->rotation:I

    goto :goto_0

    .line 154
    :pswitch_3
    const/4 v0, 0x2

    iput v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->rotation:I

    goto :goto_0

    .line 157
    :pswitch_4
    const/4 v0, 0x3

    iput v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->rotation:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->file:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 355
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    return-object v0
.end method

.method private getThumbNailFromFile()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/16 v5, 0x190

    const/4 v4, 0x1

    .line 190
    .line 194
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 195
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 196
    invoke-direct {p0}, Lcom/behance/sdk/project/modules/ImageModule;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 198
    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 199
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 200
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 203
    div-int/2addr v2, v5

    div-int/2addr v3, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 206
    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 207
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 208
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 210
    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 211
    return-object v0
.end method

.method private savebitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 311
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_temp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 317
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 318
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 319
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 320
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 321
    return-object v1
.end method

.method private setFile(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/behance/sdk/project/modules/ImageModule;->file:Ljava/io/File;

    .line 124
    return-void
.end method

.method private setHeight(I)V
    .locals 0

    .prologue
    .line 338
    iput p1, p0, Lcom/behance/sdk/project/modules/ImageModule;->height:I

    .line 339
    return-void
.end method

.method private setImageViewLayerType(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x800

    .line 404
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-gt v0, v1, :cond_0

    .line 405
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 406
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 410
    :goto_0
    return-void

    .line 408
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private setWidth(I)V
    .locals 0

    .prologue
    .line 330
    iput p1, p0, Lcom/behance/sdk/project/modules/ImageModule;->width:I

    .line 331
    return-void
.end method

.method private updateThumbnailForDefaultRotation()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 168
    iget v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->rotation:I

    if-lez v0, :cond_0

    .line 169
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 171
    iget v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->rotation:I

    mul-int/lit8 v0, v0, 0x5a

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 172
    iget-object v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->thumbnail:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/behance/sdk/project/modules/ImageModule;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/behance/sdk/project/modules/ImageModule;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/behance/sdk/project/modules/ImageModule;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 174
    iput-object v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->thumbnail:Landroid/graphics/Bitmap;

    .line 176
    :cond_0
    return-void
.end method

.method private updateThumbnailForRotation(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 180
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 182
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 183
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 184
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/behance/sdk/project/modules/ImageModule;->clearRotation()V

    .line 92
    return-void
.end method

.method public clearRotation()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 291
    iput v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->rotation:I

    .line 292
    iput-boolean v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->defaultThumbnailRotationApplied:Z

    .line 293
    invoke-direct {p0}, Lcom/behance/sdk/project/modules/ImageModule;->getDefaultOrientation()V

    .line 294
    invoke-virtual {p0}, Lcom/behance/sdk/project/modules/ImageModule;->recycleBitmaps()V

    .line 295
    return-void
.end method

.method public displayImage(Landroid/widget/ImageView;Lcom/i/a/b/f/a;)V
    .locals 1

    .prologue
    .line 350
    invoke-static {}, Lcom/behance/sdk/util/BehanceSDKImageLoaderUtils;->getDefaultImageLoaderOptions()Lcom/i/a/b/d;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/behance/sdk/project/modules/ImageModule;->displayImage(Landroid/widget/ImageView;Lcom/i/a/b/f/a;Lcom/i/a/b/d;)V

    .line 351
    return-void
.end method

.method public displayImage(Landroid/widget/ImageView;Lcom/i/a/b/f/a;Lcom/i/a/b/d;)V
    .locals 2

    .prologue
    .line 361
    invoke-direct {p0}, Lcom/behance/sdk/project/modules/ImageModule;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 362
    iget-object v1, p0, Lcom/behance/sdk/project/modules/ImageModule;->bitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 364
    new-instance v1, Lcom/behance/sdk/project/modules/ImageModule$1;

    invoke-direct {v1, p0, p2, p0, p1}, Lcom/behance/sdk/project/modules/ImageModule$1;-><init>(Lcom/behance/sdk/project/modules/ImageModule;Lcom/i/a/b/f/a;Lcom/behance/sdk/project/modules/ImageModule;Landroid/widget/ImageView;)V

    invoke-static {v0, p1, v1, p3}, Lcom/behance/sdk/util/BehanceSDKImageLoaderUtils;->displayImageFromCacheOrLoadFromServer(Ljava/lang/String;Landroid/widget/ImageView;Lcom/i/a/b/f/a;Lcom/i/a/b/d;)V

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    iget-object v1, p0, Lcom/behance/sdk/project/modules/ImageModule;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v1}, Lcom/behance/sdk/project/modules/ImageModule;->setImageViewLayerType(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 396
    iget-object v1, p0, Lcom/behance/sdk/project/modules/ImageModule;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 397
    if-eqz p2, :cond_0

    .line 398
    iget-object v1, p0, Lcom/behance/sdk/project/modules/ImageModule;->bitmap:Landroid/graphics/Bitmap;

    invoke-interface {p2, v0, p1, v1}, Lcom/i/a/b/f/a;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 248
    if-ne p0, p1, :cond_1

    .line 253
    :cond_0
    :goto_0
    return v0

    .line 250
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 251
    goto :goto_0

    .line 252
    :cond_3
    check-cast p1, Lcom/behance/sdk/project/modules/ImageModule;

    .line 253
    iget-wide v2, p0, Lcom/behance/sdk/project/modules/ImageModule;->id:J

    iget-wide v4, p1, Lcom/behance/sdk/project/modules/ImageModule;->id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/behance/sdk/project/modules/ImageModule;->file:Ljava/io/File;

    iget-object v3, p1, Lcom/behance/sdk/project/modules/ImageModule;->file:Ljava/io/File;

    invoke-direct {p0, v2, v3}, Lcom/behance/sdk/project/modules/ImageModule;->equalObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/behance/sdk/project/modules/ImageModule;->albumName:Ljava/lang/String;

    iget-object v3, p1, Lcom/behance/sdk/project/modules/ImageModule;->albumName:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/behance/sdk/project/modules/ImageModule;->equalObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/behance/sdk/project/modules/ImageModule;->rotation:I

    iget v3, p1, Lcom/behance/sdk/project/modules/ImageModule;->rotation:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/behance/sdk/project/modules/ImageModule;->width:I

    iget v3, p1, Lcom/behance/sdk/project/modules/ImageModule;->width:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/behance/sdk/project/modules/ImageModule;->height:I

    iget v3, p1, Lcom/behance/sdk/project/modules/ImageModule;->height:I

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->albumName:Ljava/lang/String;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->file:Ljava/io/File;

    return-object v0
.end method

.method public getFileForUpload()Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->file:Ljava/io/File;

    .line 299
    iget v1, p0, Lcom/behance/sdk/project/modules/ImageModule;->rotation:I

    if-lez v1, :cond_0

    .line 300
    invoke-direct {p0}, Lcom/behance/sdk/project/modules/ImageModule;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/behance/sdk/util/BehanceSDKImageLoaderUtils;->getImageBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 301
    invoke-static {v1, p0}, Lcom/behance/sdk/util/BehanceSDKImageLoaderUtils;->updateBitmapForRotation(Landroid/graphics/Bitmap;Lcom/behance/sdk/project/modules/ImageModule;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 302
    iget-object v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/behance/sdk/project/modules/ImageModule;->savebitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 303
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 304
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 306
    :cond_0
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->height:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->rotation:I

    return v0
.end method

.method public getSizeInBytes()J
    .locals 2

    .prologue
    .line 342
    iget-wide v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->sizeInBytes:J

    return-wide v0
.end method

.method public getThumbNail(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 128
    iget-object v1, p0, Lcom/behance/sdk/project/modules/ImageModule;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/behance/sdk/project/modules/ImageModule;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 130
    :cond_0
    iget-wide v2, p0, Lcom/behance/sdk/project/modules/ImageModule;->id:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-wide v2, p0, Lcom/behance/sdk/project/modules/ImageModule;->id:J

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4, v0}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 135
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->thumbnail:Landroid/graphics/Bitmap;

    .line 136
    invoke-direct {p0}, Lcom/behance/sdk/project/modules/ImageModule;->updateThumbnailForDefaultRotation()V

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->thumbnail:Landroid/graphics/Bitmap;

    return-object v0

    .line 132
    :cond_3
    iget-object v1, p0, Lcom/behance/sdk/project/modules/ImageModule;->file:Ljava/io/File;

    if-eqz v1, :cond_1

    .line 133
    invoke-direct {p0}, Lcom/behance/sdk/project/modules/ImageModule;->getThumbNailFromFile()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getType()Lcom/behance/sdk/project/modules/ProjectModuleTypes;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/behance/sdk/project/modules/ProjectModuleTypes;->IMAGE:Lcom/behance/sdk/project/modules/ProjectModuleTypes;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->width:I

    return v0
.end method

.method public recycleBitmaps()V
    .locals 0

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/behance/sdk/project/modules/ImageModule;->recycleThumbnailBitmap()V

    .line 268
    invoke-virtual {p0}, Lcom/behance/sdk/project/modules/ImageModule;->recycleImageBitmap()V

    .line 270
    return-void
.end method

.method public recycleImageBitmap()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->bitmap:Landroid/graphics/Bitmap;

    .line 277
    :cond_0
    return-void
.end method

.method public recycleThumbnailBitmap()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->thumbnail:Landroid/graphics/Bitmap;

    .line 284
    :cond_0
    return-void
.end method

.method public rotateImage()V
    .locals 2

    .prologue
    .line 215
    iget v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->rotation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 216
    const/4 v0, 0x0

    iput v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->rotation:I

    .line 219
    :goto_0
    iget-object v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->thumbnail:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/behance/sdk/project/modules/ImageModule;->updateThumbnailForRotation(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 220
    invoke-virtual {p0}, Lcom/behance/sdk/project/modules/ImageModule;->recycleBitmaps()V

    .line 221
    iput-object v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->thumbnail:Landroid/graphics/Bitmap;

    .line 222
    return-void

    .line 218
    :cond_0
    iget v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->rotation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/behance/sdk/project/modules/ImageModule;->rotation:I

    goto :goto_0
.end method

.method public setAlbumName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/behance/sdk/project/modules/ImageModule;->albumName:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 104
    iput-wide p1, p0, Lcom/behance/sdk/project/modules/ImageModule;->id:J

    .line 105
    return-void
.end method

.method public setSizeInBytes(J)V
    .locals 1

    .prologue
    .line 346
    iput-wide p1, p0, Lcom/behance/sdk/project/modules/ImageModule;->sizeInBytes:J

    .line 347
    return-void
.end method
