.class public Lcom/behance/sdk/dto/amazon/multipart/AdobeAmazonS3MultiPartCompletionResponse;
.super Ljava/lang/Object;
.source "AdobeAmazonS3MultiPartCompletionResponse.java"


# instance fields
.field private httpCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "http_code"
    .end annotation
.end field

.field private s3obj:Lcom/behance/sdk/dto/amazon/singlepart/AmazonS3KeyLocationResponse;
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
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHttpCode()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/behance/sdk/dto/amazon/multipart/AdobeAmazonS3MultiPartCompletionResponse;->httpCode:I

    return v0
.end method

.method public getS3obj()Lcom/behance/sdk/dto/amazon/singlepart/AmazonS3KeyLocationResponse;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/behance/sdk/dto/amazon/multipart/AdobeAmazonS3MultiPartCompletionResponse;->s3obj:Lcom/behance/sdk/dto/amazon/singlepart/AmazonS3KeyLocationResponse;

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/behance/sdk/dto/amazon/multipart/AdobeAmazonS3MultiPartCompletionResponse;->uploadId:Ljava/lang/String;

    return-object v0
.end method
