.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$EditProgressNotificationObserver;
.super Ljava/lang/Object;
.source "CCFilesWithUploadFragment.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)V
    .locals 0

    .prologue
    .line 1623
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$EditProgressNotificationObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1627
    check-cast p2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    .line 1628
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->getId()Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAssetEditProgressChanged:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    if-ne v0, v1, :cond_0

    .line 1630
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->getInfo()Ljava/util/Map;

    move-result-object v0

    .line 1631
    const-string/jumbo v1, "EDIT_PROGRESS_KEY"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1633
    const-string/jumbo v1, "EDIT_PROGRESS_KEY"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 1634
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$EditProgressNotificationObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    invoke-static {v2, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->access$3100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;D)V

    .line 1637
    :cond_0
    return-void
.end method
