.class Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager$1;
.super Ljava/lang/Object;
.source "ACLibraryManager.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;

.field final synthetic val$delegate:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/appbridge/IACLibraryManagerSyncDelegate;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/appbridge/IACLibraryManagerSyncDelegate;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager$1;->val$delegate:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/appbridge/IACLibraryManagerSyncDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager$1;->val$delegate:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/appbridge/IACLibraryManagerSyncDelegate;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/appbridge/IACLibraryManagerSyncDelegate;->handleSyncFinished()V

    .line 95
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager$ACLibraryNotificationID;->ACLibrarySyncFinishedNotification:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager$ACLibraryNotificationID;

    invoke-virtual {v0, v1, p0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->removeObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 96
    return-void
.end method
