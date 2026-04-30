.class Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource$7;
.super Ljava/lang/Object;
.source "AdobePhotoAssetsDataSource.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource$7;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 294
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource$7;->onCompletion(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onCompletion(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 297
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource$7;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;

    invoke-static {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->access$900(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;Ljava/util/ArrayList;)Z

    move-result v0

    .line 298
    if-nez v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource$7;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->access$402(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;Z)Z

    .line 304
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource$7;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->access$500(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;)Lcom/adobe/creativesdk/foundation/internal/storage/IAdobePhotoAssetsDataSourceDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource$7;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->access$500(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;)Lcom/adobe/creativesdk/foundation/internal/storage/IAdobePhotoAssetsDataSourceDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobePhotoAssetsDataSourceDelegate;->loadNextPageSucceeded()V

    .line 307
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobePhotoAssetsDataSourceDidLoadNewPageNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;-><init>(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Map;)V

    .line 308
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->postNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;)V

    .line 309
    return-void

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource$7;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->access$1002(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;Z)Z

    goto :goto_0
.end method
