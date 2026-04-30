.class Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$14$1;
.super Ljava/lang/Object;
.source "AdobeAssetFile.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$14;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$14;)V
    .locals 0

    .prologue
    .line 1132
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$14$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onHit(Ljava/lang/Object;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;)V
    .locals 0

    .prologue
    .line 1132
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$14$1;->onHit(Ljava/util/Map;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;)V

    return-void
.end method

.method public onHit(Ljava/util/Map;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1136
    const-string/jumbo v0, "md5"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1139
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$14$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$14;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$14;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->md5Hash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1141
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$14$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$14;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$14;->val$delegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onCompletion(Ljava/lang/Object;)V

    .line 1149
    :goto_0
    return-void

    .line 1146
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$14$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$14;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$14;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->access$100(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.adobe.cc.storage"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->removeSetWithGUID(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1147
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$14$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$14;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$14;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$14$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$14;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$14;->val$delegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$14$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$14;

    iget-object v3, v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$14;->val$pathToBeUsedForDownload:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getDataForPageSaveToDevice(ILcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMiss()V
    .locals 4

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$14$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$14;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$14;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$14$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$14;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$14;->val$delegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$14$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$14;

    iget-object v3, v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$14;->val$pathToBeUsedForDownload:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getDataForPageSaveToDevice(ILcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Ljava/lang/String;)V

    .line 1154
    return-void
.end method
