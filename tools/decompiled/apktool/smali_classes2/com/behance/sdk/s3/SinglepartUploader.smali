.class Lcom/behance/sdk/s3/SinglepartUploader;
.super Ljava/lang/Object;
.source "SinglepartUploader.java"


# instance fields
.field private callback:Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;

.field private file:Ljava/io/File;

.field private id:I

.field private stepOneCall:Ld/g;

.field private stepTwoCall:Ld/g;


# direct methods
.method constructor <init>(ILjava/io/File;Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/behance/sdk/s3/SinglepartUploader;->id:I

    .line 28
    iput-object p2, p0, Lcom/behance/sdk/s3/SinglepartUploader;->file:Ljava/io/File;

    .line 29
    iput-object p3, p0, Lcom/behance/sdk/s3/SinglepartUploader;->callback:Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/s3/SinglepartUploader;)I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/behance/sdk/s3/SinglepartUploader;->id:I

    return v0
.end method

.method static synthetic access$100(Lcom/behance/sdk/s3/SinglepartUploader;)Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/behance/sdk/s3/SinglepartUploader;->callback:Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;

    return-object v0
.end method

.method static synthetic access$200(Lcom/behance/sdk/s3/SinglepartUploader;Lcom/behance/sdk/s3/responses/singlepart/GenerateSignedUrlResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/behance/sdk/s3/SinglepartUploader;->stepTwo(Lcom/behance/sdk/s3/responses/singlepart/GenerateSignedUrlResponse;)V

    return-void
.end method

.method private stepOne()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/behance/sdk/s3/SinglepartUploader;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/behance/sdk/webservices/apis/AssetUploadApi;->generateSignedUrl(Ljava/lang/String;)Ld/g;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/s3/SinglepartUploader;->stepOneCall:Ld/g;

    .line 40
    iget-object v0, p0, Lcom/behance/sdk/s3/SinglepartUploader;->stepOneCall:Ld/g;

    new-instance v1, Lcom/behance/sdk/s3/SinglepartUploader$1;

    invoke-direct {v1, p0}, Lcom/behance/sdk/s3/SinglepartUploader$1;-><init>(Lcom/behance/sdk/s3/SinglepartUploader;)V

    invoke-interface {v0, v1}, Ld/g;->a(Ld/i;)V

    .line 68
    return-void
.end method

.method private stepTwo(Lcom/behance/sdk/s3/responses/singlepart/GenerateSignedUrlResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p1}, Lcom/behance/sdk/s3/responses/singlepart/GenerateSignedUrlResponse;->getUri()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Lcom/behance/sdk/s3/BehanceS3Uploader;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/s3/SinglepartUploader;->callback:Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "SinglepartUploader: Could not resolve file type."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/behance/sdk/s3/SinglepartUploader;->id:I

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;->onUploadError(Ljava/lang/Exception;I)V

    .line 98
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-static {v1}, Ld/an;->a(Ljava/lang/String;)Ld/an;

    move-result-object v1

    .line 81
    iget-object v2, p0, Lcom/behance/sdk/s3/SinglepartUploader;->file:Ljava/io/File;

    invoke-static {v0, v1, v2}, Lcom/behance/sdk/webservices/apis/AssetUploadApi;->uploadFileToS3(Ljava/lang/String;Ld/an;Ljava/io/File;)Ld/g;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/s3/SinglepartUploader;->stepTwoCall:Ld/g;

    .line 82
    iget-object v0, p0, Lcom/behance/sdk/s3/SinglepartUploader;->stepTwoCall:Ld/g;

    new-instance v1, Lcom/behance/sdk/s3/SinglepartUploader$2;

    invoke-direct {v1, p0, p1}, Lcom/behance/sdk/s3/SinglepartUploader$2;-><init>(Lcom/behance/sdk/s3/SinglepartUploader;Lcom/behance/sdk/s3/responses/singlepart/GenerateSignedUrlResponse;)V

    invoke-interface {v0, v1}, Ld/g;->a(Ld/i;)V

    goto :goto_0
.end method


# virtual methods
.method beginUpload()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/behance/sdk/s3/SinglepartUploader;->stepOne()V

    .line 34
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/behance/sdk/s3/SinglepartUploader;->stepOneCall:Ld/g;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/behance/sdk/s3/SinglepartUploader;->stepOneCall:Ld/g;

    invoke-interface {v0}, Ld/g;->b()V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/s3/SinglepartUploader;->stepTwoCall:Ld/g;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/behance/sdk/s3/SinglepartUploader;->stepTwoCall:Ld/g;

    invoke-interface {v0}, Ld/g;->b()V

    .line 108
    :cond_1
    return-void
.end method
