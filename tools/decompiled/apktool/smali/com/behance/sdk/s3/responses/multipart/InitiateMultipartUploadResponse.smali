.class public Lcom/behance/sdk/s3/responses/multipart/InitiateMultipartUploadResponse;
.super Ljava/lang/Object;
.source "InitiateMultipartUploadResponse.java"


# instance fields
.field private httpCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "http_code"
    .end annotation
.end field

.field private object:Lcom/behance/sdk/s3/responses/multipart/SignedObject;

.field private uploadId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "upload_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHttpCode()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/behance/sdk/s3/responses/multipart/InitiateMultipartUploadResponse;->httpCode:I

    return v0
.end method

.method public getObject()Lcom/behance/sdk/s3/responses/multipart/SignedObject;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/behance/sdk/s3/responses/multipart/InitiateMultipartUploadResponse;->object:Lcom/behance/sdk/s3/responses/multipart/SignedObject;

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/behance/sdk/s3/responses/multipart/InitiateMultipartUploadResponse;->uploadId:Ljava/lang/String;

    return-object v0
.end method
