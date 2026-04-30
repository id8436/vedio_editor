.class Lcom/adobe/premiereclip/sharing/TwitterUpload$11;
.super Lcom/twitter/sdk/android/core/c;
.source "TwitterUpload.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/c",
        "<",
        "Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$VideoUploadStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/sharing/TwitterUpload;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$11;->this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/c;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/twitter/sdk/android/core/ah;)V
    .locals 2

    .prologue
    .line 316
    const-string/jumbo v0, "TwitterUpload"

    const-string/jumbo v1, "Failed upload status"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$11;->this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->access$1100(Lcom/adobe/premiereclip/sharing/TwitterUpload;Z)V

    .line 318
    return-void
.end method

.method public success(Lcom/twitter/sdk/android/core/s;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/s",
            "<",
            "Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$VideoUploadStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 300
    iget-object v0, p1, Lcom/twitter/sdk/android/core/s;->a:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$VideoUploadStatus;

    iget-object v0, v0, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$VideoUploadStatus;->processingInfo:Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$ProcessingInfo;

    if-nez v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$11;->this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;

    invoke-static {v0, v2}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->access$1100(Lcom/adobe/premiereclip/sharing/TwitterUpload;Z)V

    .line 313
    :goto_0
    return-void

    .line 303
    :cond_0
    iget-object v0, p1, Lcom/twitter/sdk/android/core/s;->a:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$VideoUploadStatus;

    iget-object v0, v0, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$VideoUploadStatus;->processingInfo:Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$ProcessingInfo;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$ProcessingInfo;->getState()Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;

    move-result-object v0

    sget-object v1, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;->IN_PROGRESS:Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;

    if-ne v0, v1, :cond_1

    .line 304
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$11;->this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;

    iget-object v0, p1, Lcom/twitter/sdk/android/core/s;->a:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$VideoUploadStatus;

    iget-object v0, v0, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$VideoUploadStatus;->processingInfo:Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$ProcessingInfo;

    iget-wide v2, v0, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$ProcessingInfo;->checkAfterSecs:J

    invoke-static {v1, v2, v3}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->access$1402(Lcom/adobe/premiereclip/sharing/TwitterUpload;J)J

    .line 305
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$11;->this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->access$1500(Lcom/adobe/premiereclip/sharing/TwitterUpload;)V

    goto :goto_0

    .line 307
    :cond_1
    iget-object v0, p1, Lcom/twitter/sdk/android/core/s;->a:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$VideoUploadStatus;

    iget-object v0, v0, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$VideoUploadStatus;->processingInfo:Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$ProcessingInfo;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$ProcessingInfo;->getState()Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;

    move-result-object v0

    sget-object v1, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;->SUCCEEDED:Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;

    if-ne v0, v1, :cond_2

    .line 308
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$11;->this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->access$1300(Lcom/adobe/premiereclip/sharing/TwitterUpload;)V

    goto :goto_0

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$11;->this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;

    invoke-static {v0, v2}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->access$1100(Lcom/adobe/premiereclip/sharing/TwitterUpload;Z)V

    goto :goto_0
.end method
