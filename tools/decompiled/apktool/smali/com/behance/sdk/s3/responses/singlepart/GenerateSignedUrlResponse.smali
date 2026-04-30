.class public Lcom/behance/sdk/s3/responses/singlepart/GenerateSignedUrlResponse;
.super Ljava/lang/Object;
.source "GenerateSignedUrlResponse.java"


# instance fields
.field expiresIn:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expires_in"
    .end annotation
.end field

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

.field uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpiresIn()J
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/behance/sdk/s3/responses/singlepart/GenerateSignedUrlResponse;->expiresIn:J

    return-wide v0
.end method

.method public getHttpCode()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/behance/sdk/s3/responses/singlepart/GenerateSignedUrlResponse;->httpCode:I

    return v0
.end method

.method public getSignedObject()Lcom/behance/sdk/s3/responses/SignedObject;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/behance/sdk/s3/responses/singlepart/GenerateSignedUrlResponse;->signedObject:Lcom/behance/sdk/s3/responses/SignedObject;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/behance/sdk/s3/responses/singlepart/GenerateSignedUrlResponse;->uri:Ljava/lang/String;

    return-object v0
.end method
