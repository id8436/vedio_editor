.class public Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageAssetFileUtils;
.super Ljava/lang/Object;
.source "AdobeStorageAssetFileUtils.java"


# static fields
.field public static final FULL_SIZE_RENDITION:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

.field public static final THUMBNAIL_SIZED_RENDITION:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    invoke-direct {v0, v2, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;-><init>(FF)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageAssetFileUtils;->FULL_SIZE_RENDITION:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    .line 35
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    const/high16 v1, 0x437a0000    # 250.0f

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;-><init>(FF)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageAssetFileUtils;->THUMBNAIL_SIZED_RENDITION:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjustRenditionSizeBasedOnDeviceScale(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;
    .locals 4

    .prologue
    .line 80
    iget v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;->width:F

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageAssetFileUtils;->getAdjustedDimension(F)D

    move-result-wide v0

    double-to-float v0, v0

    .line 81
    iget v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;->height:F

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageAssetFileUtils;->getAdjustedDimension(F)D

    move-result-wide v2

    double-to-float v1, v2

    .line 83
    new-instance v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    invoke-direct {v2, v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;-><init>(FF)V

    .line 84
    return-object v2
.end method

.method private static getAdjustedDimension(F)D
    .locals 5

    .prologue
    .line 88
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 91
    float-to-double v0, p0

    .line 93
    iget v3, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v4, 0x140

    if-lt v3, v4, :cond_1

    .line 94
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p0

    float-to-double v0, v0

    .line 98
    :cond_0
    :goto_0
    return-wide v0

    .line 95
    :cond_1
    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v3, 0xa0

    if-le v2, v3, :cond_0

    .line 96
    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v2

    goto :goto_0
.end method

.method public static getAdjustedThumbnailSize(I)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;
    .locals 3

    .prologue
    .line 70
    int-to-float v0, p0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageAssetFileUtils;->THUMBNAIL_SIZED_RENDITION:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    iget v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;->width:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 71
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageAssetFileUtils;->THUMBNAIL_SIZED_RENDITION:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageAssetFileUtils;->adjustRenditionSizeBasedOnDeviceScale(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    .line 73
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    int-to-float v1, p0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;-><init>(FF)V

    goto :goto_0
.end method

.method public static getAssetFileImageDimensions(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 50
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    invoke-direct {v0, v1, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;-><init>(FF)V

    .line 51
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getOptionalMetadata()Lorg/json/JSONObject;

    move-result-object v1

    .line 52
    if-eqz v1, :cond_0

    .line 54
    const-string/jumbo v2, "height"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "width"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    :try_start_0
    const-string/jumbo v2, "height"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;->height:F

    .line 59
    const-string/jumbo v2, "width"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;->width:F
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_0
    :goto_0
    return-object v0

    .line 61
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isRootCollection(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getHref()Ljava/net/URI;

    move-result-object v1

    .line 40
    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    .line 43
    if-eqz v1, :cond_0

    const-string/jumbo v2, "/files/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 45
    :cond_0
    return v0
.end method
