.class public Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCancelDownloadIntentService;
.super Landroid/app/IntentService;
.source "AdobeCancelDownloadIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "AdobeCancelDownloadIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 35
    const-string/jumbo v1, "UPLOAD_DOWNLOAD_REQUEST_CANCELLATION_NOTIFICATION_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 36
    const-string/jumbo v2, "UPLOAD_DOWNLOAD_REQUEST_CANCELLATION"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeUploadDownloadManager;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/utils/AdobeUploadDownloadManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeUploadDownloadManager;->cancelUploadRequest(I)V

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeUploadDownloadManager;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/utils/AdobeUploadDownloadManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeUploadDownloadManager;->cancelDownloadRequest(I)V

    goto :goto_0
.end method
