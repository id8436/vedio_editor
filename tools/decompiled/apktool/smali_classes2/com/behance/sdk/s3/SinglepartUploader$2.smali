.class Lcom/behance/sdk/s3/SinglepartUploader$2;
.super Ljava/lang/Object;
.source "SinglepartUploader.java"

# interfaces
.implements Ld/i;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/s3/SinglepartUploader;

.field final synthetic val$generateSignedUrlResponse:Lcom/behance/sdk/s3/responses/singlepart/GenerateSignedUrlResponse;


# direct methods
.method constructor <init>(Lcom/behance/sdk/s3/SinglepartUploader;Lcom/behance/sdk/s3/responses/singlepart/GenerateSignedUrlResponse;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/behance/sdk/s3/SinglepartUploader$2;->this$0:Lcom/behance/sdk/s3/SinglepartUploader;

    iput-object p2, p0, Lcom/behance/sdk/s3/SinglepartUploader$2;->val$generateSignedUrlResponse:Lcom/behance/sdk/s3/responses/singlepart/GenerateSignedUrlResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ld/g;Ljava/io/IOException;)V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/behance/sdk/s3/SinglepartUploader$2;->this$0:Lcom/behance/sdk/s3/SinglepartUploader;

    invoke-static {v0}, Lcom/behance/sdk/s3/SinglepartUploader;->access$100(Lcom/behance/sdk/s3/SinglepartUploader;)Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "SinglepartUploader: network error."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/behance/sdk/s3/SinglepartUploader$2;->this$0:Lcom/behance/sdk/s3/SinglepartUploader;

    invoke-static {v2}, Lcom/behance/sdk/s3/SinglepartUploader;->access$000(Lcom/behance/sdk/s3/SinglepartUploader;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;->onUploadError(Ljava/lang/Exception;I)V

    .line 86
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
    .line 90
    invoke-virtual {p2}, Ld/bd;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/behance/sdk/s3/SinglepartUploader$2;->this$0:Lcom/behance/sdk/s3/SinglepartUploader;

    invoke-static {v0}, Lcom/behance/sdk/s3/SinglepartUploader;->access$100(Lcom/behance/sdk/s3/SinglepartUploader;)Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "SinglepartUploader: Could not successfully upload asset.."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/behance/sdk/s3/SinglepartUploader$2;->this$0:Lcom/behance/sdk/s3/SinglepartUploader;

    invoke-static {v2}, Lcom/behance/sdk/s3/SinglepartUploader;->access$000(Lcom/behance/sdk/s3/SinglepartUploader;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;->onUploadError(Ljava/lang/Exception;I)V

    .line 96
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/s3/SinglepartUploader$2;->this$0:Lcom/behance/sdk/s3/SinglepartUploader;

    invoke-static {v0}, Lcom/behance/sdk/s3/SinglepartUploader;->access$100(Lcom/behance/sdk/s3/SinglepartUploader;)Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/s3/SinglepartUploader$2;->val$generateSignedUrlResponse:Lcom/behance/sdk/s3/responses/singlepart/GenerateSignedUrlResponse;

    invoke-virtual {v1}, Lcom/behance/sdk/s3/responses/singlepart/GenerateSignedUrlResponse;->getSignedObject()Lcom/behance/sdk/s3/responses/SignedObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/s3/responses/SignedObject;->getLocation()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/behance/sdk/s3/SinglepartUploader$2;->this$0:Lcom/behance/sdk/s3/SinglepartUploader;

    invoke-static {v2}, Lcom/behance/sdk/s3/SinglepartUploader;->access$000(Lcom/behance/sdk/s3/SinglepartUploader;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;->onUploadComplete(Ljava/lang/String;I)V

    goto :goto_0
.end method
