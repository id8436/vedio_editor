.class Lcom/behance/sdk/s3/MultipartUploader$3;
.super Ljava/lang/Object;
.source "MultipartUploader.java"

# interfaces
.implements Ld/i;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/s3/MultipartUploader;


# direct methods
.method constructor <init>(Lcom/behance/sdk/s3/MultipartUploader;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/behance/sdk/s3/MultipartUploader$3;->this$0:Lcom/behance/sdk/s3/MultipartUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ld/g;Ljava/io/IOException;)V
    .locals 3
    .param p1    # Ld/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/IOException;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 195
    iget-object v0, p0, Lcom/behance/sdk/s3/MultipartUploader$3;->this$0:Lcom/behance/sdk/s3/MultipartUploader;

    invoke-static {v0}, Lcom/behance/sdk/s3/MultipartUploader;->access$100(Lcom/behance/sdk/s3/MultipartUploader;)Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "MultipartUploader: Network error."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/behance/sdk/s3/MultipartUploader$3;->this$0:Lcom/behance/sdk/s3/MultipartUploader;

    invoke-static {v2}, Lcom/behance/sdk/s3/MultipartUploader;->access$000(Lcom/behance/sdk/s3/MultipartUploader;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;->onUploadError(Ljava/lang/Exception;I)V

    .line 196
    return-void
.end method

.method public onResponse(Ld/g;Ld/bd;)V
    .locals 3
    .param p1    # Ld/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ld/bd;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-virtual {p2}, Ld/bd;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/behance/sdk/s3/MultipartUploader$3;->this$0:Lcom/behance/sdk/s3/MultipartUploader;

    invoke-static {v0}, Lcom/behance/sdk/s3/MultipartUploader;->access$100(Lcom/behance/sdk/s3/MultipartUploader;)Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "MultipartUploader: Unable to upload part."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/behance/sdk/s3/MultipartUploader$3;->this$0:Lcom/behance/sdk/s3/MultipartUploader;

    invoke-static {v2}, Lcom/behance/sdk/s3/MultipartUploader;->access$000(Lcom/behance/sdk/s3/MultipartUploader;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;->onUploadError(Ljava/lang/Exception;I)V

    .line 206
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/s3/MultipartUploader$3;->this$0:Lcom/behance/sdk/s3/MultipartUploader;

    invoke-static {v0}, Lcom/behance/sdk/s3/MultipartUploader;->access$500(Lcom/behance/sdk/s3/MultipartUploader;)V

    goto :goto_0
.end method
