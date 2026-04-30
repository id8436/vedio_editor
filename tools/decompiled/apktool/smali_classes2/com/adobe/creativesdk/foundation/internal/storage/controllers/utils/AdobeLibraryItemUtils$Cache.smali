.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeLibraryItemUtils$Cache;
.super Ljava/lang/Object;
.source "AdobeLibraryItemUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cacheGUID(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getGUID()Ljava/lang/String;

    move-result-object v0

    .line 182
    if-nez v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getHref()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 185
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 187
    :cond_0
    return-object v0
.end method

.method private static cacheKey(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 199
    const-string/jumbo v0, "%d_%d-%d-%d"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;->getIntVal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;->width:F

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;->height:F

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRenditionFromCacheWithType(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;)[B
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeLibraryItemUtils$Cache;->getRenditionFromCacheWithType(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static getRenditionFromCacheWithType(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;I)[B
    .locals 5

    .prologue
    .line 206
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeLibraryItemUtils$Cache;->cacheKey(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;I)Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    move-result-object v1

    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeLibraryItemUtils$Cache;->cacheGUID(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;->AdobeCommonCacheKeepInMemoryCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;

    invoke-static {v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    const-string/jumbo v4, "com.adobe.cc.storage"

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getDataFromGUID(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 210
    return-object v0
.end method

.method public static getRenditionFromCacheWithType(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3

    .prologue
    .line 216
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;->AdobeCommonCacheKeepInMemoryCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string/jumbo v2, "com.adobe.cc.storage"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getDataFromGUID(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 218
    return-object v0
.end method
