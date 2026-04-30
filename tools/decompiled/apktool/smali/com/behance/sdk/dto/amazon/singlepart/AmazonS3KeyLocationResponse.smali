.class public Lcom/behance/sdk/dto/amazon/singlepart/AmazonS3KeyLocationResponse;
.super Ljava/lang/Object;
.source "AmazonS3KeyLocationResponse.java"


# instance fields
.field fileLocation:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "location"
    .end annotation
.end field

.field s3key:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "key"
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
.method public getFileLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/behance/sdk/dto/amazon/singlepart/AmazonS3KeyLocationResponse;->fileLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getS3key()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/behance/sdk/dto/amazon/singlepart/AmazonS3KeyLocationResponse;->s3key:Ljava/lang/String;

    return-object v0
.end method
