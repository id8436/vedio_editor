.class Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$14;
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

.field final synthetic val$delegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

.field final synthetic val$ocObj:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$3outerClass;

.field final synthetic val$pathToBeUsedForDownload:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$3outerClass;)V
    .locals 0

    .prologue
    .line 1129
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$14;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$14;->val$delegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$14;->val$pathToBeUsedForDownload:Ljava/lang/String;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$14;->val$ocObj:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$3outerClass;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onHit(Ljava/lang/Object;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;)V
    .locals 0

    .prologue
    .line 1129
    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$14;->onHit([BLcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;)V

    return-void
.end method

.method public onHit([BLcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;)V
    .locals 7

    .prologue
    .line 1132
    new-instance v5, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$14$1;

    invoke-direct {v5, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$14$1;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$14;)V

    .line 1157
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$14;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->access$100(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "modified-data"

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;->AdobeCommonCacheKeepInMemoryCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;

    invoke-static {v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    const-string/jumbo v4, "com.adobe.cc.storage"

    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$14;->val$ocObj:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$3outerClass;

    iget-object v6, v6, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$3outerClass;->handler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getDictionaryFromGUID(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;)Z

    .line 1158
    return-void
.end method

.method public onMiss()V
    .locals 4

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$14;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$14;->val$delegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$14;->val$pathToBeUsedForDownload:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getDataForPageSaveToDevice(ILcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Ljava/lang/String;)V

    .line 1163
    return-void
.end method
