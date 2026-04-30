.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/utils/AdobeCommunityUtils;
.super Ljava/lang/Object;
.source "AdobeCommunityUtils.java"


# static fields
.field private static final CACHE_NAME:Ljava/lang/String; = "ADOBE_COMMUNITY_CACHE"

.field private static final ESCAPE_CHARS:Ljava/lang/String; = "%/:;="

.field private static cacheConfigured:Z

.field private static cacheOptions:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static communityCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

.field private static communityEndpoints:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/utils/AdobeCommunityUtils;->communityCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    .line 36
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;->AdobeCommonCacheKeepInMemoryCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;->AdobeCommonCacheKeepOnDiskCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/utils/AdobeCommunityUtils;->cacheOptions:Ljava/util/EnumSet;

    .line 37
    sput-boolean v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/utils/AdobeCommunityUtils;->cacheConfigured:Z

    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "https://cc-api-cp.adobe.io"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string/jumbo v2, "https://cc-api-cp-stage.adobe.io"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "https://cc-api-cp-labs.adobe.io"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "https://cdn-stage.cp.adobe.io"

    aput-object v2, v0, v1

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/utils/AdobeCommunityUtils;->communityEndpoints:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/EnumSet;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/utils/AdobeCommunityUtils;->cacheOptions:Ljava/util/EnumSet;

    return-object v0
.end method

.method static synthetic access$100()Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/utils/AdobeCommunityUtils;->communityCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    return-object v0
.end method

.method public static addToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 106
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/utils/AdobeCommunityUtils;->cacheConfigured:Z

    if-nez v0, :cond_0

    .line 107
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/utils/AdobeCommunityUtils;->configureCache()V

    .line 112
    :cond_0
    :try_start_0
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/utils/AdobeCommunityUtils;->communityCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/utils/AdobeCommunityUtils;->cacheOptions:Ljava/util/EnumSet;

    const-string/jumbo v4, "ADOBE_COMMUNITY_CACHE"

    new-instance v5, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/utils/AdobeCommunityUtils$1;

    invoke-direct {v5, p2, p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/utils/AdobeCommunityUtils$1;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getObjectFromGUID(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;)Z

    .line 129
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private static configureCache()V
    .locals 7

    .prologue
    .line 158
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCachePolicies;->AdobeCommonCacheEvictionLRU:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCachePolicies;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    .line 160
    :try_start_0
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/utils/AdobeCommunityUtils;->communityCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    const-string/jumbo v2, "ADOBE_COMMUNITY_CACHE"

    const/16 v3, 0x64

    const-wide/high16 v4, 0x41a0000000000000L    # 1.34217728E8

    invoke-virtual/range {v1 .. v6}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->configureCache(Ljava/lang/String;IDLjava/util/EnumSet;)V

    .line 161
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/utils/AdobeCommunityUtils;->cacheConfigured:Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/internal/cache/AdobeInvalidCacheSettingsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    const-string/jumbo v1, "cache"

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeInvalidCacheSettingsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/utils/AdobeCommunityUtils;->cacheConfigured:Z

    goto :goto_0
.end method

.method public static generateUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFormattedLink(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/resources/AdobeCommunityRequestParams;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 44
    if-nez p0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 60
    :goto_0
    return-object v0

    .line 47
    :cond_0
    invoke-static {p0}, Lcom/c/a/a/e;->a(Ljava/lang/String;)Lcom/c/a/a/e;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lcom/c/a/a/e;->b()[Ljava/lang/String;

    move-result-object v2

    .line 50
    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 51
    invoke-virtual {p1, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/resources/AdobeCommunityRequestParams;->getParamaterValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 52
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 53
    invoke-virtual {v1, v4, v5}, Lcom/c/a/a/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/c/a/a/e;

    .line 50
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 57
    :cond_2
    invoke-virtual {v1}, Lcom/c/a/a/e;->d()Ljava/lang/String;

    move-result-object v0

    .line 58
    const-string/jumbo v1, "%/:;="

    invoke-static {v0, v1}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFromCache(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 132
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/utils/AdobeCommunityUtils;->cacheConfigured:Z

    if-nez v0, :cond_0

    .line 133
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/utils/AdobeCommunityUtils;->configureCache()V

    .line 138
    :cond_0
    :try_start_0
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/utils/AdobeCommunityUtils;->communityCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/utils/AdobeCommunityUtils;->cacheOptions:Ljava/util/EnumSet;

    const-string/jumbo v4, "ADOBE_COMMUNITY_CACHE"

    new-instance v5, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/utils/AdobeCommunityUtils$2;

    invoke-direct {v5, p2, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/utils/AdobeCommunityUtils$2;-><init>(Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getObjectFromGUID(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;)Z

    move-result v0

    return v0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static getRelativePathTo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 73
    .line 75
    const-string/jumbo v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 76
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 88
    :goto_0
    if-eqz v0, :cond_2

    .line 98
    :goto_1
    return-object p0

    .line 79
    :cond_0
    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/utils/AdobeCommunityUtils;->communityEndpoints:[Ljava/lang/String;

    array-length v4, v3

    move v0, v2

    :goto_2
    if-ge v0, v4, :cond_5

    aget-object v5, v3, v0

    .line 80
    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v1

    .line 82
    goto :goto_0

    .line 79
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 92
    :cond_2
    const-string/jumbo v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 95
    :cond_3
    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 96
    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 98
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method public static urlForComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getHref()Ljava/net/URI;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    return-object v0
.end method
