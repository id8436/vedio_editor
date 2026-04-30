.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$1;
.super Ljava/lang/Object;
.source "AdobeShowUploadTasksActivity.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 133
    check-cast p2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    .line 134
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->getId()Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeNoUploadSessions:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    if-ne v0, v1, :cond_1

    .line 135
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->upload_activity_title_finished:I

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->showLastUploads:Z

    .line 138
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadHistoryManager;->clearHistory()V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->getId()Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeUploadSessionsActive:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    if-ne v0, v1, :cond_0

    .line 142
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->showLastUploads:Z

    .line 143
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->upload_activity_title_running:I

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
