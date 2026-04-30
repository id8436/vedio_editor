.class Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager$2;
.super Ljava/lang/Object;
.source "ACLibraryManager.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;

.field final synthetic val$bSyncInProgress:[Z

.field final synthetic val$delegate:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/appbridge/IACLibraryManagerSyncDelegate;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;[ZLcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/appbridge/IACLibraryManagerSyncDelegate;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager$2;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager$2;->val$bSyncInProgress:[Z

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager$2;->val$delegate:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/appbridge/IACLibraryManagerSyncDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager$2;->val$bSyncInProgress:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager$2;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->access$000(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager$2;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->access$000(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->sync()Z

    .line 109
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager$2;->val$bSyncInProgress:[Z

    aput-boolean v1, v0, v1

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager$2;->val$delegate:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/appbridge/IACLibraryManagerSyncDelegate;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/appbridge/IACLibraryManagerSyncDelegate;->handleSyncFinished()V

    .line 113
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager$ACLibraryNotificationID;->ACLibrarySyncFinishedNotification:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager$ACLibraryNotificationID;

    invoke-virtual {v0, v1, p0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->removeObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    goto :goto_0
.end method
