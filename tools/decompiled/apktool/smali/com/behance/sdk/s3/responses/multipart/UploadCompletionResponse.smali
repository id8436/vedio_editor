.class public Lcom/behance/sdk/s3/responses/multipart/UploadCompletionResponse;
.super Ljava/lang/Object;
.source "UploadCompletionResponse.java"


# instance fields
.field httpCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "http_code"
    .end annotation
.end field

.field signedObject:Lcom/behance/sdk/s3/responses/SignedObject;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "object"
    .end annotation
.end field

.field uploadId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "upload_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHttpCode()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/behance/sdk/s3/responses/multipart/UploadCompletionResponse;->httpCode:I

    return v0
.end method

.method public getSignedObject()Lcom/behance/sdk/s3/responses/SignedObject;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/behance/sdk/s3/responses/multipart/UploadCompletionResponse;->signedObject:Lcom/behance/sdk/s3/responses/SignedObject;

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/behance/sdk/s3/responses/multipart/UploadCompletionResponse;->uploadId:Ljava/lang/String;

    return-object v0
.end method
