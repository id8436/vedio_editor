.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeLibraryItemUtils;
.super Ljava/lang/Object;
.source "AdobeLibraryItemUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImageRendition(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V
    .locals 1

    .prologue
    .line 92
    .line 93
    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->adjustRenditionSizeBasedOnDeviceScale(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    move-result-object v0

    .line 92
    invoke-static {p0, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeLibraryItemUtils$Cache;->getRenditionFromCacheWithType(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;)[B

    move-result-object v0

    .line 95
    if-eqz v0, :cond_0

    .line 96
    invoke-static {v0, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->getBitmapFromData([BLcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-static {p0, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->getAssetRenditionUtil(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V

    goto :goto_0
.end method

.method public static getRenditionFile(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;
    .locals 1

    .prologue
    .line 51
    instance-of v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemImage;

    if-eqz v0, :cond_0

    .line 52
    check-cast p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemImage;

    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeLibraryItemUtils;->getRenditionFileForImageLibraryItem(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemImage;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    .line 53
    :cond_0
    instance-of v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemBrush;

    if-eqz v0, :cond_1

    .line 54
    check-cast p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemBrush;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemBrush;->getRendition()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    move-result-object v0

    goto :goto_0

    .line 55
    :cond_1
    instance-of v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetLibraryItemCharacterStyle;

    if-eqz v0, :cond_2

    .line 56
    check-cast p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetLibraryItemCharacterStyle;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetLibraryItemCharacterStyle;->getRendition()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    move-result-object v0

    goto :goto_0

    .line 57
    :cond_2
    instance-of v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetLibraryItemLayoutStyle;

    if-eqz v0, :cond_3

    .line 58
    check-cast p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetLibraryItemLayoutStyle;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetLibraryItemLayoutStyle;->getRendition()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    move-result-object v0

    goto :goto_0

    .line 59
    :cond_3
    instance-of v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemLook;

    if-eqz v0, :cond_4

    .line 60
    check-cast p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemLook;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemLook;->getRendition()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    move-result-object v0

    goto :goto_0

    .line 61
    :cond_4
    instance-of v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemPattern;

    if-eqz v0, :cond_5

    .line 62
    check-cast p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemPattern;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemPattern;->getRendition()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_5
    instance-of v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemTemplate;

    if-eqz v0, :cond_6

    .line 64
    check-cast p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemTemplate;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemTemplate;->getRendition()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    move-result-object v0

    goto :goto_0

    .line 65
    :cond_6
    instance-of v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem3DMaterial;

    if-eqz v0, :cond_7

    .line 66
    check-cast p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem3DMaterial;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem3DMaterial;->getRendition()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    move-result-object v0

    goto :goto_0

    .line 67
    :cond_7
    instance-of v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem3DLight;

    if-eqz v0, :cond_8

    .line 68
    check-cast p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem3DLight;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem3DLight;->getRendition()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_8
    instance-of v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem3DModel;

    if-eqz v0, :cond_9

    .line 70
    check-cast p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem3DModel;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem3DModel;->getRendition()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    move-result-object v0

    goto :goto_0

    .line 71
    :cond_9
    instance-of v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemAnimation;

    if-eqz v0, :cond_a

    .line 72
    check-cast p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemAnimation;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemAnimation;->getRendition()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    move-result-object v0

    goto :goto_0

    .line 73
    :cond_a
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getRenditionFileForImageLibraryItem(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemImage;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;
    .locals 2

    .prologue
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemImage;->getPrimaryComponentType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "image/vnd.adobe.shape+svg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemImage;->getRendition()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemImage;->getImage()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    move-result-object v0

    goto :goto_0
.end method

.method public static getStockLicensedData(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemStockImage;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V
    .locals 4

    .prologue
    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 108
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemStockImage;->getItemID()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "LICENSED_RENDITION_DATA_400"

    invoke-static {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeLibraryItemUtils$Cache;->getRenditionFromCacheWithType(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 110
    if-eqz v1, :cond_0

    .line 111
    invoke-static {v1, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->getBitmapFromData([BLcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V

    .line 157
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemStockImage;->getAssetURL()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeLibraryItemUtils$1;

    invoke-direct {v2, p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeLibraryItemUtils$1;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemStockImage;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V

    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeLibraryItemUtils$2;

    invoke-direct {v3, p0, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeLibraryItemUtils$2;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemStockImage;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Landroid/os/Handler;)V

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeDesignLibraryUtilsInternal;->getLicensedData(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public static isStockFileRenderable(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemStockImage;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 160
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemStockImage;->getMediaType()Ljava/lang/String;

    move-result-object v1

    .line 162
    if-eqz v1, :cond_2

    .line 164
    const-string/jumbo v2, "illustrator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    :cond_0
    :goto_0
    return v0

    .line 166
    :cond_1
    const-string/jumbo v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 168
    const-string/jumbo v2, "vector"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static loadImageItemRendition(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemImage;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemImage;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeLibraryItemUtils;->getRenditionFileForImageLibraryItem(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemImage;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    move-result-object v0

    .line 79
    if-nez v0, :cond_0

    .line 80
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;->onCompletion(Ljava/lang/Object;)V

    .line 84
    :goto_0
    return-void

    .line 83
    :cond_0
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;->ADOBE_ASSET_FILE_RENDITION_TYPE_PNG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;

    invoke-static {v0, v1, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeLibraryItemUtils;->getImageRendition(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V

    goto :goto_0
.end method
