.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager$2;
.super Ljava/lang/Object;
.source "AdobeUploadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;

.field final synthetic val$cancelled:Z

.field final synthetic val$endPoint:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadDestination;

.field final synthetic val$uploadSession:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadDestination;ZLcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager$2;->val$endPoint:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadDestination;

    iput-boolean p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager$2;->val$cancelled:Z

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager$2;->val$uploadSession:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager$2;->val$endPoint:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadDestination;

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    if-eqz v0, :cond_0

    .line 127
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->_isFileUploadCompleteNotificationHandled:Z

    .line 129
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->checkForNoUploadSessions()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeNoUploadSessions:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;)V

    .line 132
    :cond_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;

    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager$2;->val$cancelled:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeCCFilesUploadSessionCancelled:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    :goto_0
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager$2;->val$uploadSession:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

    invoke-static {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;)V

    .line 135
    return-void

    .line 132
    :cond_2
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeCCFilesUploadSessionComplete:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    goto :goto_0
.end method
