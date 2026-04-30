.class Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9;
.super Ljava/lang/Object;
.source "AdobeAssetFile.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler",
        "<[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

.field final synthetic val$dataDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

.field final synthetic val$dimensions:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

.field final synthetic val$ocObj:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$1outerClass;

.field final synthetic val$page:I

.field final synthetic val$type:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;ILcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$1outerClass;)V
    .locals 0

    .prologue
    .line 782
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9;->val$dataDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9;->val$type:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9;->val$dimensions:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    iput p5, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9;->val$page:I

    iput-object p6, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9;->val$ocObj:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$1outerClass;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onHit(Ljava/lang/Object;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;)V
    .locals 0

    .prologue
    .line 782
    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9;->onHit([BLcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;)V

    return-void
.end method

.method public onHit([BLcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;)V
    .locals 7

    .prologue
    .line 785
    new-instance v5, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9$1;

    invoke-direct {v5, p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9$1;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9;[B)V

    .line 810
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->access$100(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "modified-data"

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;->AdobeCommonCacheKeepInMemoryCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;

    invoke-static {v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    const-string/jumbo v4, "com.adobe.cc.storage"

    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9;->val$ocObj:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$1outerClass;

    iget-object v6, v6, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$1outerClass;->handler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getDictionaryFromGUID(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;)Z

    .line 811
    return-void
.end method

.method public onMiss()V
    .locals 5

    .prologue
    .line 815
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9;->val$type:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9;->val$dimensions:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    iget v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9;->val$page:I

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9;->val$dataDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getRenditionFromServerWithType(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;ILcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    .line 817
    return-void
.end method
