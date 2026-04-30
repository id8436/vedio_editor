.class public Lcom/behance/sdk/dto/amazon/multipart/AdobeAmazonS3MultiPartPresignedUrlResponse;
.super Ljava/lang/Object;
.source "AdobeAmazonS3MultiPartPresignedUrlResponse.java"


# instance fields
.field private expiry:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expires_in"
    .end annotation
.end field

.field private httpCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "http_code"
    .end annotation
.end field

.field private object:Lcom/behance/sdk/dto/amazon/singlepart/AmazonS3KeyLocationResponse;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "object"
    .end annotation
.end field

.field private uploadId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "upload_id"
    .end annotation
.end field

.field private uri:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "uri"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmazonUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/behance/sdk/dto/amazon/multipart/AdobeAmazonS3MultiPartPresignedUrlResponse;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/behance/sdk/dto/amazon/multipart/AdobeAmazonS3MultiPartPresignedUrlResponse;->expiry:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/behance/sdk/dto/amazon/multipart/AdobeAmazonS3MultiPartPresignedUrlResponse;->httpCode:Ljava/lang/String;

    return-object v0
.end method

.method public getObject()Lcom/behance/sdk/dto/amazon/singlepart/AmazonS3KeyLocationResponse;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/behance/sdk/dto/amazon/multipart/AdobeAmazonS3MultiPartPresignedUrlResponse;->object:Lcom/behance/sdk/dto/amazon/singlepart/AmazonS3KeyLocationResponse;

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/behance/sdk/dto/amazon/multipart/AdobeAmazonS3MultiPartPresignedUrlResponse;->uploadId:Ljava/lang/String;

    return-object v0
.end method
