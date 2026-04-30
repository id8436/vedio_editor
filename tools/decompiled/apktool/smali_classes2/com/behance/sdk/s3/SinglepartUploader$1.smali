.class Lcom/behance/sdk/s3/SinglepartUploader$1;
.super Ljava/lang/Object;
.source "SinglepartUploader.java"

# interfaces
.implements Ld/i;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/s3/SinglepartUploader;


# direct methods
.method constructor <init>(Lcom/behance/sdk/s3/SinglepartUploader;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/behance/sdk/s3/SinglepartUploader$1;->this$0:Lcom/behance/sdk/s3/SinglepartUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ld/g;Ljava/io/IOException;)V
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/behance/sdk/s3/SinglepartUploader$1;->this$0:Lcom/behance/sdk/s3/SinglepartUploader;

    invoke-static {v0}, Lcom/behance/sdk/s3/SinglepartUploader;->access$100(Lcom/behance/sdk/s3/SinglepartUploader;)Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "SinglepartUploader: network error."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/behance/sdk/s3/SinglepartUploader$1;->this$0:Lcom/behance/sdk/s3/SinglepartUploader;

    invoke-static {v2}, Lcom/behance/sdk/s3/SinglepartUploader;->access$000(Lcom/behance/sdk/s3/SinglepartUploader;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;->onUploadError(Ljava/lang/Exception;I)V

    .line 44
    return-void
.end method

.method public onResponse(Ld/g;Ld/bd;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p2}, Ld/bd;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/behance/sdk/s3/SinglepartUploader$1;->this$0:Lcom/behance/sdk/s3/SinglepartUploader;

    invoke-static {v0}, Lcom/behance/sdk/s3/SinglepartUploader;->access$100(Lcom/behance/sdk/s3/SinglepartUploader;)Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "SinglepartUploader: Could not generate a signed url."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/behance/sdk/s3/SinglepartUploader$1;->this$0:Lcom/behance/sdk/s3/SinglepartUploader;

    invoke-static {v2}, Lcom/behance/sdk/s3/SinglepartUploader;->access$000(Lcom/behance/sdk/s3/SinglepartUploader;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;->onUploadError(Ljava/lang/Exception;I)V

    .line 66
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-virtual {p2}, Ld/bd;->f()Ld/bf;

    move-result-object v0

    .line 54
    if-nez v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/behance/sdk/s3/SinglepartUploader$1;->this$0:Lcom/behance/sdk/s3/SinglepartUploader;

    invoke-static {v0}, Lcom/behance/sdk/s3/SinglepartUploader;->access$100(Lcom/behance/sdk/s3/SinglepartUploader;)Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "SinglepartUploader: Could not open response body for signed url."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/behance/sdk/s3/SinglepartUploader$1;->this$0:Lcom/behance/sdk/s3/SinglepartUploader;

    invoke-static {v2}, Lcom/behance/sdk/s3/SinglepartUploader;->access$000(Lcom/behance/sdk/s3/SinglepartUploader;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;->onUploadError(Ljava/lang/Exception;I)V

    goto :goto_0

    .line 59
    :cond_1
    invoke-static {}, Lcom/behance/sdk/webservices/OkHttpHelper;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v0}, Ld/bf;->f()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/behance/sdk/s3/responses/singlepart/GenerateSignedUrlResponse;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/s3/responses/singlepart/GenerateSignedUrlResponse;

    .line 60
    if-nez v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/behance/sdk/s3/SinglepartUploader$1;->this$0:Lcom/behance/sdk/s3/SinglepartUploader;

    invoke-static {v0}, Lcom/behance/sdk/s3/SinglepartUploader;->access$100(Lcom/behance/sdk/s3/SinglepartUploader;)Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "SinglepartUploader: Could not parse response body for signed url."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/behance/sdk/s3/SinglepartUploader$1;->this$0:Lcom/behance/sdk/s3/SinglepartUploader;

    invoke-static {v2}, Lcom/behance/sdk/s3/SinglepartUploader;->access$000(Lcom/behance/sdk/s3/SinglepartUploader;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;->onUploadError(Ljava/lang/Exception;I)V

    goto :goto_0

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/behance/sdk/s3/SinglepartUploader$1;->this$0:Lcom/behance/sdk/s3/SinglepartUploader;

    invoke-static {v1, v0}, Lcom/behance/sdk/s3/SinglepartUploader;->access$200(Lcom/behance/sdk/s3/SinglepartUploader;Lcom/behance/sdk/s3/responses/singlepart/GenerateSignedUrlResponse;)V

    goto :goto_0
.end method
