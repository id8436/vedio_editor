.class public Lcom/behance/sdk/s3/MultipartUploader;
.super Ljava/lang/Object;
.source "MultipartUploader.java"


# static fields
.field public static final CHUNK_SIZE:J = 0x500000L


# instance fields
.field private asyncCalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ld/g;",
            ">;"
        }
    .end annotation
.end field

.field private callback:Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;

.field private context:Landroid/content/Context;

.field private file:Ljava/io/File;

.field private fileChunks:[Ljava/io/File;

.field private id:I

.field private initiateMultipartUploadResponse:Lcom/behance/sdk/s3/responses/multipart/InitiateMultipartUploadResponse;

.field private signedUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/behance/sdk/s3/responses/multipart/GenerateSignedUrlResponse;",
            ">;"
        }
    .end annotation
.end field

.field private stepOneCall:Ld/g;

.field private uploadsCompleted:I


# direct methods
.method constructor <init>(Landroid/content/Context;ILjava/io/File;Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/s3/MultipartUploader;->signedUrls:Ljava/util/ArrayList;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/behance/sdk/s3/MultipartUploader;->uploadsCompleted:I

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/s3/MultipartUploader;->asyncCalls:Ljava/util/ArrayList;

    .line 44
    iput-object p1, p0, Lcom/behance/sdk/s3/MultipartUploader;->context:Landroid/content/Context;

    .line 45
    iput p2, p0, Lcom/behance/sdk/s3/MultipartUploader;->id:I

    .line 46
    iput-object p3, p0, Lcom/behance/sdk/s3/MultipartUploader;->file:Ljava/io/File;

    .line 47
    iput-object p4, p0, Lcom/behance/sdk/s3/MultipartUploader;->callback:Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/s3/MultipartUploader;)I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/behance/sdk/s3/MultipartUploader;->id:I

    return v0
.end method

.method static synthetic access$100(Lcom/behance/sdk/s3/MultipartUploader;)Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/behance/sdk/s3/MultipartUploader;->callback:Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;

    return-object v0
.end method

.method static synthetic access$202(Lcom/behance/sdk/s3/MultipartUploader;Lcom/behance/sdk/s3/responses/multipart/InitiateMultipartUploadResponse;)Lcom/behance/sdk/s3/responses/multipart/InitiateMultipartUploadResponse;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/behance/sdk/s3/MultipartUploader;->initiateMultipartUploadResponse:Lcom/behance/sdk/s3/responses/multipart/InitiateMultipartUploadResponse;

    return-object p1
.end method

.method static synthetic access$300(Lcom/behance/sdk/s3/MultipartUploader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/behance/sdk/s3/MultipartUploader;->sendParts()V

    return-void
.end method

.method static synthetic access$400(Lcom/behance/sdk/s3/MultipartUploader;Lcom/behance/sdk/s3/responses/multipart/GenerateSignedUrlResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/behance/sdk/s3/MultipartUploader;->signedUrlComplete(Lcom/behance/sdk/s3/responses/multipart/GenerateSignedUrlResponse;)V

    return-void
.end method

.method static synthetic access$500(Lcom/behance/sdk/s3/MultipartUploader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/behance/sdk/s3/MultipartUploader;->partUploadComplete()V

    return-void
.end method

.method private createFileChunks()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/32 v4, 0x500000

    .line 106
    iget-object v0, p0, Lcom/behance/sdk/s3/MultipartUploader;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 107
    div-long v0, v2, v4

    long-to-int v0, v0

    .line 108
    rem-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 109
    add-int/lit8 v0, v0, 0x1

    .line 111
    :cond_0
    new-array v1, v0, [Ljava/io/File;

    iput-object v1, p0, Lcom/behance/sdk/s3/MultipartUploader;->fileChunks:[Ljava/io/File;

    .line 113
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/behance/sdk/s3/MultipartUploader;->file:Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 114
    const/high16 v1, 0x500000

    new-array v3, v1, [B

    .line 116
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 117
    iget-object v4, p0, Lcom/behance/sdk/s3/MultipartUploader;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    .line 118
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "chunk-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 119
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 122
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 125
    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 126
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 129
    iget-object v4, p0, Lcom/behance/sdk/s3/MultipartUploader;->fileChunks:[Ljava/io/File;

    aput-object v5, v4, v1

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    :cond_1
    return-void
.end method

.method private partUploadComplete()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    iget v0, p0, Lcom/behance/sdk/s3/MultipartUploader;->uploadsCompleted:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/behance/sdk/s3/MultipartUploader;->uploadsCompleted:I

    .line 262
    iget-object v0, p0, Lcom/behance/sdk/s3/MultipartUploader;->callback:Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;

    iget v1, p0, Lcom/behance/sdk/s3/MultipartUploader;->uploadsCompleted:I

    iget-object v2, p0, Lcom/behance/sdk/s3/MultipartUploader;->fileChunks:[Ljava/io/File;

    array-length v2, v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/behance/sdk/s3/MultipartUploader;->id:I

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;->onUploadProgress(FI)V

    .line 263
    iget v0, p0, Lcom/behance/sdk/s3/MultipartUploader;->uploadsCompleted:I

    iget-object v1, p0, Lcom/behance/sdk/s3/MultipartUploader;->fileChunks:[Ljava/io/File;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 264
    invoke-direct {p0}, Lcom/behance/sdk/s3/MultipartUploader;->stepFour()V

    .line 266
    :cond_0
    return-void
.end method

.method private sendParts()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/behance/sdk/s3/MultipartUploader;->createFileChunks()V

    .line 100
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/behance/sdk/s3/MultipartUploader;->fileChunks:[Ljava/io/File;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 101
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Lcom/behance/sdk/s3/MultipartUploader;->stepTwo(I)V

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_0
    return-void
.end method

.method private signedUrlComplete(Lcom/behance/sdk/s3/responses/multipart/GenerateSignedUrlResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lcom/behance/sdk/s3/MultipartUploader;->signedUrls:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v0, p0, Lcom/behance/sdk/s3/MultipartUploader;->signedUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/behance/sdk/s3/MultipartUploader;->fileChunks:[Ljava/io/File;

    array-length v1, v1

    if-eq v0, v1, :cond_1

    .line 257
    :cond_0
    return-void

    .line 253
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/behance/sdk/s3/MultipartUploader;->signedUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/behance/sdk/s3/MultipartUploader;->signedUrls:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/s3/responses/multipart/GenerateSignedUrlResponse;

    .line 255
    iget-object v2, p0, Lcom/behance/sdk/s3/MultipartUploader;->fileChunks:[Ljava/io/File;

    aget-object v2, v2, v1

    invoke-direct {p0, v0, v2}, Lcom/behance/sdk/s3/MultipartUploader;->stepThree(Lcom/behance/sdk/s3/responses/multipart/GenerateSignedUrlResponse;Ljava/io/File;)V

    .line 253
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private stepFour()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/behance/sdk/s3/MultipartUploader;->initiateMultipartUploadResponse:Lcom/behance/sdk/s3/responses/multipart/InitiateMultipartUploadResponse;

    invoke-virtual {v0}, Lcom/behance/sdk/s3/responses/multipart/InitiateMultipartUploadResponse;->getUploadId()Ljava/lang/String;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/behance/sdk/s3/MultipartUploader;->initiateMultipartUploadResponse:Lcom/behance/sdk/s3/responses/multipart/InitiateMultipartUploadResponse;

    invoke-virtual {v1}, Lcom/behance/sdk/s3/responses/multipart/InitiateMultipartUploadResponse;->getObject()Lcom/behance/sdk/s3/responses/multipart/SignedObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/s3/responses/multipart/SignedObject;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-static {v0, v1}, Lcom/behance/sdk/webservices/apis/AssetUploadApi;->completeMultipartUpload(Ljava/lang/String;Ljava/lang/String;)Ld/bd;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Ld/bd;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/behance/sdk/s3/MultipartUploader;->callback:Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "MultipartUploader: Unable to complete multipart upload."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/behance/sdk/s3/MultipartUploader;->id:I

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;->onUploadError(Ljava/lang/Exception;I)V

    .line 244
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-virtual {v0}, Ld/bd;->f()Ld/bf;

    move-result-object v0

    .line 226
    if-nez v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/behance/sdk/s3/MultipartUploader;->callback:Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "MultipartUploader: Unable to open response body for multipart upload."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/behance/sdk/s3/MultipartUploader;->id:I

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;->onUploadError(Ljava/lang/Exception;I)V

    goto :goto_0

    .line 232
    :cond_1
    invoke-static {}, Lcom/behance/sdk/webservices/OkHttpHelper;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    .line 234
    invoke-virtual {v0}, Ld/bf;->f()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/behance/sdk/s3/responses/multipart/UploadCompletionResponse;

    .line 233
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/s3/responses/multipart/UploadCompletionResponse;

    .line 238
    if-nez v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/behance/sdk/s3/MultipartUploader;->callback:Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "MultipartUploader: Unable to parse response body for multipart upload."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/behance/sdk/s3/MultipartUploader;->id:I

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;->onUploadError(Ljava/lang/Exception;I)V

    goto :goto_0

    .line 243
    :cond_2
    iget-object v1, p0, Lcom/behance/sdk/s3/MultipartUploader;->callback:Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;

    invoke-virtual {v0}, Lcom/behance/sdk/s3/responses/multipart/UploadCompletionResponse;->getSignedObject()Lcom/behance/sdk/s3/responses/SignedObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/s3/responses/SignedObject;->getLocation()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/behance/sdk/s3/MultipartUploader;->id:I

    invoke-interface {v1, v0, v2}, Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;->onUploadComplete(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private stepOne()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/behance/sdk/s3/MultipartUploader;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-static {v0}, Lcom/behance/sdk/webservices/apis/AssetUploadApi;->initiateMultipartUpload(Ljava/lang/String;)Ld/g;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/s3/MultipartUploader;->stepOneCall:Ld/g;

    .line 60
    iget-object v0, p0, Lcom/behance/sdk/s3/MultipartUploader;->stepOneCall:Ld/g;

    new-instance v1, Lcom/behance/sdk/s3/MultipartUploader$1;

    invoke-direct {v1, p0}, Lcom/behance/sdk/s3/MultipartUploader$1;-><init>(Lcom/behance/sdk/s3/MultipartUploader;)V

    invoke-interface {v0, v1}, Ld/g;->a(Ld/i;)V

    .line 96
    return-void
.end method

.method private stepThree(Lcom/behance/sdk/s3/responses/multipart/GenerateSignedUrlResponse;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p1}, Lcom/behance/sdk/s3/responses/multipart/GenerateSignedUrlResponse;->getUri()Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-static {v0, p2}, Lcom/behance/sdk/webservices/apis/AssetUploadApi;->uploadChunkToS3(Ljava/lang/String;Ljava/io/File;)Ld/g;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/behance/sdk/s3/MultipartUploader;->asyncCalls:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v1, Lcom/behance/sdk/s3/MultipartUploader$3;

    invoke-direct {v1, p0}, Lcom/behance/sdk/s3/MultipartUploader$3;-><init>(Lcom/behance/sdk/s3/MultipartUploader;)V

    invoke-interface {v0, v1}, Ld/g;->a(Ld/i;)V

    .line 208
    return-void
.end method

.method private stepTwo(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/behance/sdk/s3/MultipartUploader;->initiateMultipartUploadResponse:Lcom/behance/sdk/s3/responses/multipart/InitiateMultipartUploadResponse;

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/behance/sdk/s3/MultipartUploader;->callback:Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "MultipartUploader: Step two failure."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/behance/sdk/s3/MultipartUploader;->id:I

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;->onUploadError(Ljava/lang/Exception;I)V

    .line 182
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/s3/MultipartUploader;->initiateMultipartUploadResponse:Lcom/behance/sdk/s3/responses/multipart/InitiateMultipartUploadResponse;

    invoke-virtual {v0}, Lcom/behance/sdk/s3/responses/multipart/InitiateMultipartUploadResponse;->getUploadId()Ljava/lang/String;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/behance/sdk/s3/MultipartUploader;->initiateMultipartUploadResponse:Lcom/behance/sdk/s3/responses/multipart/InitiateMultipartUploadResponse;

    invoke-virtual {v1}, Lcom/behance/sdk/s3/responses/multipart/InitiateMultipartUploadResponse;->getObject()Lcom/behance/sdk/s3/responses/multipart/SignedObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/s3/responses/multipart/SignedObject;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-static {v0, v1, p1}, Lcom/behance/sdk/webservices/apis/AssetUploadApi;->generateSignedUrlForPart(Ljava/lang/String;Ljava/lang/String;I)Ld/g;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/behance/sdk/s3/MultipartUploader;->asyncCalls:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v1, Lcom/behance/sdk/s3/MultipartUploader$2;

    invoke-direct {v1, p0}, Lcom/behance/sdk/s3/MultipartUploader$2;-><init>(Lcom/behance/sdk/s3/MultipartUploader;)V

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
    .line 51
    invoke-direct {p0}, Lcom/behance/sdk/s3/MultipartUploader;->stepOne()V

    .line 52
    return-void
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/behance/sdk/s3/MultipartUploader;->stepOneCall:Ld/g;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/behance/sdk/s3/MultipartUploader;->stepOneCall:Ld/g;

    invoke-interface {v0}, Ld/g;->b()V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/s3/MultipartUploader;->asyncCalls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/g;

    .line 274
    if-eqz v0, :cond_1

    .line 275
    invoke-interface {v0}, Ld/g;->b()V

    goto :goto_0

    .line 278
    :cond_2
    return-void
.end method
