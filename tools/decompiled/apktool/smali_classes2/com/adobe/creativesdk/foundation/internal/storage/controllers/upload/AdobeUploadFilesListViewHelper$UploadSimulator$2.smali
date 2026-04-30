.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator$2;
.super Ljava/util/TimerTask;
.source "AdobeUploadFilesListViewHelper.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator;

.field final synthetic val$_postStatus:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator$2;->val$_postStatus:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 128
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeUxUtilMainUIThreadHandler;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator$2;->val$_postStatus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 129
    return-void
.end method
