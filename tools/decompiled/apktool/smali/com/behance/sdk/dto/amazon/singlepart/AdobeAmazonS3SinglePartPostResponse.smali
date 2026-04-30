.class public Lcom/behance/sdk/dto/amazon/singlepart/AdobeAmazonS3SinglePartPostResponse;
.super Ljava/lang/Object;
.source "AdobeAmazonS3SinglePartPostResponse.java"


# instance fields
.field private expiry:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expires_in"
    .end annotation
.end field

.field private httpCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "http_code"
    .end annotation
.end field

.field private obj:Lcom/behance/sdk/dto/amazon/singlepart/AmazonS3KeyLocationResponse;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "object"
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
.method public getExpiry()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/behance/sdk/dto/amazon/singlepart/AdobeAmazonS3SinglePartPostResponse;->expiry:I

    return v0
.end method

.method public getHttpCode()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/behance/sdk/dto/amazon/singlepart/AdobeAmazonS3SinglePartPostResponse;->httpCode:I

    return v0
.end method

.method public getObj()Lcom/behance/sdk/dto/amazon/singlepart/AmazonS3KeyLocationResponse;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/behance/sdk/dto/amazon/singlepart/AdobeAmazonS3SinglePartPostResponse;->obj:Lcom/behance/sdk/dto/amazon/singlepart/AmazonS3KeyLocationResponse;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/behance/sdk/dto/amazon/singlepart/AdobeAmazonS3SinglePartPostResponse;->uri:Ljava/lang/String;

    return-object v0
.end method
