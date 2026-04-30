.class Lcom/behance/sdk/asynctasks/BehanceSDKDownloadAndSaveImageAsyncTask$1;
.super Ljava/lang/Object;
.source "BehanceSDKDownloadAndSaveImageAsyncTask.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/asynctasks/BehanceSDKDownloadAndSaveImageAsyncTask;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/behance/sdk/asynctasks/BehanceSDKDownloadAndSaveImageAsyncTask;Ljava/io/File;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKDownloadAndSaveImageAsyncTask$1;->this$0:Lcom/behance/sdk/asynctasks/BehanceSDKDownloadAndSaveImageAsyncTask;

    iput-object p2, p0, Lcom/behance/sdk/asynctasks/BehanceSDKDownloadAndSaveImageAsyncTask$1;->val$file:Ljava/io/File;

    iput-object p3, p0, Lcom/behance/sdk/asynctasks/BehanceSDKDownloadAndSaveImageAsyncTask$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 49
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 50
    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKDownloadAndSaveImageAsyncTask$1;->val$file:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "image/jpg"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKDownloadAndSaveImageAsyncTask$1;->val$context:Landroid/content/Context;

    invoke-static {v1, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 55
    new-instance v1, Landroid/support/v7/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/behance/sdk/asynctasks/BehanceSDKDownloadAndSaveImageAsyncTask$1;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v7/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/behance/sdk/asynctasks/BehanceSDKDownloadAndSaveImageAsyncTask$1;->val$context:Landroid/content/Context;

    sget v3, Lcom/behance/sdk/R$string;->bsdk_download_image_notification_success:I

    .line 56
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/behance/sdk/asynctasks/BehanceSDKDownloadAndSaveImageAsyncTask$1;->val$file:Ljava/io/File;

    .line 57
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$drawable;->bsdk_icon_notification_publish_progress:I

    .line 58
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 59
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 61
    iget v0, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 63
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKDownloadAndSaveImageAsyncTask$1;->val$context:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 64
    invoke-virtual {v0, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 65
    return-void
.end method
