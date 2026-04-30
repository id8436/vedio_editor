.class Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$19;
.super Ljava/lang/Object;
.source "AdobePhotoCollection.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/storage/IAdobePhotoAssetsListRequestCompletionHandler;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

.field final synthetic val$completionCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobePhotoAssetsListRequestCompletionHandler;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;Lcom/adobe/creativesdk/foundation/storage/IAdobePhotoAssetsListRequestCompletionHandler;)V
    .locals 0

    .prologue
    .line 500
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$19;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$19;->val$completionCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobePhotoAssetsListRequestCompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;",
            ")V"
        }
    .end annotation

    .prologue
    .line 503
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$19;->val$completionCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobePhotoAssetsListRequestCompletionHandler;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$19;->val$completionCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobePhotoAssetsListRequestCompletionHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/storage/IAdobePhotoAssetsListRequestCompletionHandler;->onCompletion(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;)V

    .line 506
    :cond_0
    return-void
.end method
