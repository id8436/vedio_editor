.class public Lcom/behance/sdk/s3/BehanceS3Uploader;
.super Ljava/lang/Object;
.source "BehanceS3Uploader.java"


# instance fields
.field private callbacks:Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;

.field private context:Landroid/content/Context;

.field private file:Ljava/io/File;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private id:I

.field private multipartUploader:Lcom/behance/sdk/s3/MultipartUploader;

.field private singlepartUploader:Lcom/behance/sdk/s3/SinglepartUploader;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/behance/sdk/s3/BehanceS3Uploader;->context:Landroid/content/Context;

    .line 24
    iput p2, p0, Lcom/behance/sdk/s3/BehanceS3Uploader;->id:I

    .line 25
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/behance/sdk/s3/BehanceS3Uploader;->file:Ljava/io/File;

    .line 26
    iput-object p4, p0, Lcom/behance/sdk/s3/BehanceS3Uploader;->callbacks:Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;

    .line 27
    return-void
.end method

.method static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    if-eqz v1, :cond_0

    .line 67
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    :cond_0
    return-object v0
.end method

.method private uploadMultipart()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lcom/behance/sdk/s3/MultipartUploader;

    iget-object v1, p0, Lcom/behance/sdk/s3/BehanceS3Uploader;->context:Landroid/content/Context;

    iget v2, p0, Lcom/behance/sdk/s3/BehanceS3Uploader;->id:I

    iget-object v3, p0, Lcom/behance/sdk/s3/BehanceS3Uploader;->file:Ljava/io/File;

    iget-object v4, p0, Lcom/behance/sdk/s3/BehanceS3Uploader;->callbacks:Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/behance/sdk/s3/MultipartUploader;-><init>(Landroid/content/Context;ILjava/io/File;Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;)V

    iput-object v0, p0, Lcom/behance/sdk/s3/BehanceS3Uploader;->multipartUploader:Lcom/behance/sdk/s3/MultipartUploader;

    .line 45
    iget-object v0, p0, Lcom/behance/sdk/s3/BehanceS3Uploader;->multipartUploader:Lcom/behance/sdk/s3/MultipartUploader;

    invoke-virtual {v0}, Lcom/behance/sdk/s3/MultipartUploader;->beginUpload()V

    .line 46
    return-void
.end method

.method private uploadSinglepart()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Lcom/behance/sdk/s3/SinglepartUploader;

    iget v1, p0, Lcom/behance/sdk/s3/BehanceS3Uploader;->id:I

    iget-object v2, p0, Lcom/behance/sdk/s3/BehanceS3Uploader;->file:Ljava/io/File;

    iget-object v3, p0, Lcom/behance/sdk/s3/BehanceS3Uploader;->callbacks:Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;

    invoke-direct {v0, v1, v2, v3}, Lcom/behance/sdk/s3/SinglepartUploader;-><init>(ILjava/io/File;Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;)V

    iput-object v0, p0, Lcom/behance/sdk/s3/BehanceS3Uploader;->singlepartUploader:Lcom/behance/sdk/s3/SinglepartUploader;

    .line 50
    iget-object v0, p0, Lcom/behance/sdk/s3/BehanceS3Uploader;->singlepartUploader:Lcom/behance/sdk/s3/SinglepartUploader;

    invoke-virtual {v0}, Lcom/behance/sdk/s3/SinglepartUploader;->beginUpload()V

    .line 51
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/behance/sdk/s3/BehanceS3Uploader;->multipartUploader:Lcom/behance/sdk/s3/MultipartUploader;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/behance/sdk/s3/BehanceS3Uploader;->multipartUploader:Lcom/behance/sdk/s3/MultipartUploader;

    invoke-virtual {v0}, Lcom/behance/sdk/s3/MultipartUploader;->cancel()V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/s3/BehanceS3Uploader;->singlepartUploader:Lcom/behance/sdk/s3/SinglepartUploader;

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/behance/sdk/s3/BehanceS3Uploader;->singlepartUploader:Lcom/behance/sdk/s3/SinglepartUploader;

    invoke-virtual {v0}, Lcom/behance/sdk/s3/SinglepartUploader;->cancel()V

    .line 61
    :cond_1
    return-void
.end method

.method public upload()V
    .locals 4

    .prologue
    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/behance/sdk/s3/BehanceS3Uploader;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 33
    const-wide/32 v2, 0x500000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 34
    invoke-direct {p0}, Lcom/behance/sdk/s3/BehanceS3Uploader;->uploadMultipart()V

    .line 41
    :goto_0
    return-void

    .line 36
    :cond_0
    invoke-direct {p0}, Lcom/behance/sdk/s3/BehanceS3Uploader;->uploadSinglepart()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
