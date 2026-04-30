.class Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9$1;
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
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9;

.field final synthetic val$data:[B


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9;[B)V
    .locals 0

    .prologue
    .line 785
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9$1;->val$data:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onHit(Ljava/lang/Object;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;)V
    .locals 0

    .prologue
    .line 785
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9$1;->onHit(Ljava/util/Map;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;)V

    return-void
.end method

.method public onHit(Ljava/util/Map;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;)V
    .locals 5
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
    .line 789
    const-string/jumbo v0, "md5"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 792
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->md5Hash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9;->val$dataDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9$1;->val$data:[B

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onCompletion(Ljava/lang/Object;)V

    .line 802
    :goto_0
    return-void

    .line 799
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->access$100(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.adobe.cc.storage"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->removeSetWithGUID(Ljava/lang/String;Ljava/lang/String;)Z

    .line 800
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9;->val$type:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9;->val$dimensions:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9;

    iget v3, v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9;->val$page:I

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9;

    iget-object v4, v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9;->val$dataDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getRenditionFromServerWithType(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;ILcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    goto :goto_0
.end method

.method public onMiss()V
    .locals 5

    .prologue
    .line 806
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9;->val$type:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9;->val$dimensions:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9;

    iget v3, v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9;->val$page:I

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9;

    iget-object v4, v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$9;->val$dataDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getRenditionFromServerWithType(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;ILcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    .line 807
    return-void
.end method
