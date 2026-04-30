.class public Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;
.super Ljava/lang/Object;
.source "AdobeMultiPartData.java"


# static fields
.field private static final FORM_DATA:Ljava/lang/String; = "form-data"


# instance fields
.field private contentDisposition:Ljava/lang/String;

.field private contentID:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private data:[B

.field private httpFormFieldName:Ljava/lang/String;

.field private inputStream:Ljava/io/InputStream;

.field private name:Ljava/lang/String;

.field progressCallback:Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData$OnProgressCallback;

.field progressHandler:Landroid/os/Handler;

.field private sourcePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string/jumbo v0, "form-data"

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->contentDisposition:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContentDisposition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->contentDisposition:Ljava/lang/String;

    return-object v0
.end method

.method public getContentID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->contentID:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->data:[B

    return-object v0
.end method

.method public getHttpFormFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->httpFormFieldName:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProgressCallback()Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData$OnProgressCallback;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->progressCallback:Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData$OnProgressCallback;

    return-object v0
.end method

.method public getProgressHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->progressHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getSourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->sourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public setContentDisposition(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const-string/jumbo p1, "form-data"

    .line 51
    :cond_0
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->contentDisposition:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setContentID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->contentID:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->contentType:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setData([B)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->data:[B

    .line 108
    return-void
.end method

.method public setHttpFormFieldName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->httpFormFieldName:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->inputStream:Ljava/io/InputStream;

    .line 68
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->name:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setProgressCallback(Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData$OnProgressCallback;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->progressCallback:Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData$OnProgressCallback;

    .line 42
    return-void
.end method

.method public setProgressHandler(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->progressHandler:Landroid/os/Handler;

    .line 34
    return-void
.end method

.method public setSourcePath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->sourcePath:Ljava/lang/String;

    .line 76
    return-void
.end method
