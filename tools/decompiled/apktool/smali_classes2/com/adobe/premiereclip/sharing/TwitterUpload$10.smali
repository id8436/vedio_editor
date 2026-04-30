.class Lcom/adobe/premiereclip/sharing/TwitterUpload$10;
.super Lcom/twitter/sdk/android/core/c;
.source "TwitterUpload.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/c",
        "<",
        "Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$VideoUploadEnd;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/sharing/TwitterUpload;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$10;->this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/c;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/twitter/sdk/android/core/ah;)V
    .locals 2

    .prologue
    .line 275
    const-string/jumbo v0, "TwitterUpload"

    const-string/jumbo v1, "Failed upload finalization"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$10;->this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->access$1100(Lcom/adobe/premiereclip/sharing/TwitterUpload;Z)V

    .line 277
    return-void
.end method

.method public success(Lcom/twitter/sdk/android/core/s;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/s",
            "<",
            "Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$VideoUploadEnd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 258
    const-string/jumbo v0, "TwitterUpload"

    const-string/jumbo v1, "Finalized upload !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TwitterUpload"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p1, Lcom/twitter/sdk/android/core/s;->a:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$VideoUploadEnd;

    iget-wide v4, v0, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$VideoUploadEnd;->mediaId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 260
    iget-object v0, p1, Lcom/twitter/sdk/android/core/s;->a:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$VideoUploadEnd;

    iget-object v0, v0, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$VideoUploadEnd;->processingInfo:Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$ProcessingInfo;

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$10;->this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->access$1300(Lcom/adobe/premiereclip/sharing/TwitterUpload;)V

    .line 272
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v0, p1, Lcom/twitter/sdk/android/core/s;->a:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$VideoUploadEnd;

    iget-object v0, v0, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$VideoUploadEnd;->processingInfo:Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$ProcessingInfo;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$ProcessingInfo;->getState()Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;

    move-result-object v0

    sget-object v1, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;->PENDING:Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;

    if-ne v0, v1, :cond_1

    .line 265
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$10;->this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;

    iget-object v0, p1, Lcom/twitter/sdk/android/core/s;->a:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$VideoUploadEnd;

    iget-object v0, v0, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$VideoUploadEnd;->processingInfo:Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$ProcessingInfo;

    iget-wide v2, v0, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$ProcessingInfo;->checkAfterSecs:J

    invoke-static {v1, v2, v3}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->access$1402(Lcom/adobe/premiereclip/sharing/TwitterUpload;J)J

    .line 266
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$10;->this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->access$1500(Lcom/adobe/premiereclip/sharing/TwitterUpload;)V

    goto :goto_0

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$10;->this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->access$1100(Lcom/adobe/premiereclip/sharing/TwitterUpload;Z)V

    goto :goto_0
.end method
