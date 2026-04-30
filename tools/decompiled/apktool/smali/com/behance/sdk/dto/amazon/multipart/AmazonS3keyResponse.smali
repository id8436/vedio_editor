.class public Lcom/behance/sdk/dto/amazon/multipart/AmazonS3keyResponse;
.super Ljava/lang/Object;
.source "AmazonS3keyResponse.java"


# instance fields
.field private key:Ljava/lang/String;
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
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/behance/sdk/dto/amazon/multipart/AmazonS3keyResponse;->key:Ljava/lang/String;

    return-object v0
.end method
