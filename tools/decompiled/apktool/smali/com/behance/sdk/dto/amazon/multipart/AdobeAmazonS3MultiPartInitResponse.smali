.class public Lcom/behance/sdk/dto/amazon/multipart/AdobeAmazonS3MultiPartInitResponse;
.super Ljava/lang/Object;
.source "AdobeAmazonS3MultiPartInitResponse.java"


# instance fields
.field private httpCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "http_code"
    .end annotation
.end field

.field private obj:Lcom/behance/sdk/dto/amazon/multipart/AmazonS3keyResponse;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "object"
    .end annotation
.end field

.field private uploadId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "upload_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHttpCode()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/behance/sdk/dto/amazon/multipart/AdobeAmazonS3MultiPartInitResponse;->httpCode:I

    return v0
.end method

.method public getObj()Lcom/behance/sdk/dto/amazon/multipart/AmazonS3keyResponse;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/behance/sdk/dto/amazon/multipart/AdobeAmazonS3MultiPartInitResponse;->obj:Lcom/behance/sdk/dto/amazon/multipart/AmazonS3keyResponse;

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/behance/sdk/dto/amazon/multipart/AdobeAmazonS3MultiPartInitResponse;->uploadId:Ljava/lang/String;

    return-object v0
.end method
