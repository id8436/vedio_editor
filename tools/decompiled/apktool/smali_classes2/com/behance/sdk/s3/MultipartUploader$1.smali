.class Lcom/behance/sdk/s3/MultipartUploader$1;
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
    .line 60
    iput-object p1, p0, Lcom/behance/sdk/s3/MultipartUploader$1;->this$0:Lcom/behance/sdk/s3/MultipartUploader;

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
    .line 63
    iget-object v0, p0, Lcom/behance/sdk/s3/MultipartUploader$1;->this$0:Lcom/behance/sdk/s3/MultipartUploader;

    invoke-static {v0}, Lcom/behance/sdk/s3/MultipartUploader;->access$100(Lcom/behance/sdk/s3/MultipartUploader;)Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "MultipartUploader: network error."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/behance/sdk/s3/MultipartUploader$1;->this$0:Lcom/behance/sdk/s3/MultipartUploader;

    invoke-static {v2}, Lcom/behance/sdk/s3/MultipartUploader;->access$000(Lcom/behance/sdk/s3/MultipartUploader;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;->onUploadError(Ljava/lang/Exception;I)V

    .line 64
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
    .line 68
    invoke-virtual {p2}, Ld/bd;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/behance/sdk/s3/MultipartUploader$1;->this$0:Lcom/behance/sdk/s3/MultipartUploader;

    invoke-static {v0}, Lcom/behance/sdk/s3/MultipartUploader;->access$100(Lcom/behance/sdk/s3/MultipartUploader;)Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "MultipartUploader: Could not initiate multipart upload."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/behance/sdk/s3/MultipartUploader$1;->this$0:Lcom/behance/sdk/s3/MultipartUploader;

    invoke-static {v2}, Lcom/behance/sdk/s3/MultipartUploader;->access$000(Lcom/behance/sdk/s3/MultipartUploader;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;->onUploadError(Ljava/lang/Exception;I)V

    .line 94
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-virtual {p2}, Ld/bd;->f()Ld/bf;

    move-result-object v0

    .line 75
    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/behance/sdk/s3/MultipartUploader$1;->this$0:Lcom/behance/sdk/s3/MultipartUploader;

    invoke-static {v0}, Lcom/behance/sdk/s3/MultipartUploader;->access$100(Lcom/behance/sdk/s3/MultipartUploader;)Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "MultipartUploader: Could not open response body for multipart initiation."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/behance/sdk/s3/MultipartUploader$1;->this$0:Lcom/behance/sdk/s3/MultipartUploader;

    invoke-static {v2}, Lcom/behance/sdk/s3/MultipartUploader;->access$000(Lcom/behance/sdk/s3/MultipartUploader;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;->onUploadError(Ljava/lang/Exception;I)V

    goto :goto_0

    .line 81
    :cond_1
    invoke-static {}, Lcom/behance/sdk/webservices/OkHttpHelper;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    .line 83
    invoke-virtual {v0}, Ld/bf;->f()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/behance/sdk/s3/responses/multipart/InitiateMultipartUploadResponse;

    .line 82
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/s3/responses/multipart/InitiateMultipartUploadResponse;

    .line 87
    if-nez v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/behance/sdk/s3/MultipartUploader$1;->this$0:Lcom/behance/sdk/s3/MultipartUploader;

    invoke-static {v0}, Lcom/behance/sdk/s3/MultipartUploader;->access$100(Lcom/behance/sdk/s3/MultipartUploader;)Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "MultipartUploader: Could not parse response body for multipart initiation."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/behance/sdk/s3/MultipartUploader$1;->this$0:Lcom/behance/sdk/s3/MultipartUploader;

    invoke-static {v2}, Lcom/behance/sdk/s3/MultipartUploader;->access$000(Lcom/behance/sdk/s3/MultipartUploader;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;->onUploadError(Ljava/lang/Exception;I)V

    goto :goto_0

    .line 92
    :cond_2
    iget-object v1, p0, Lcom/behance/sdk/s3/MultipartUploader$1;->this$0:Lcom/behance/sdk/s3/MultipartUploader;

    invoke-static {v1, v0}, Lcom/behance/sdk/s3/MultipartUploader;->access$202(Lcom/behance/sdk/s3/MultipartUploader;Lcom/behance/sdk/s3/responses/multipart/InitiateMultipartUploadResponse;)Lcom/behance/sdk/s3/responses/multipart/InitiateMultipartUploadResponse;

    .line 93
    iget-object v0, p0, Lcom/behance/sdk/s3/MultipartUploader$1;->this$0:Lcom/behance/sdk/s3/MultipartUploader;

    invoke-static {v0}, Lcom/behance/sdk/s3/MultipartUploader;->access$300(Lcom/behance/sdk/s3/MultipartUploader;)V

    goto :goto_0
.end method
