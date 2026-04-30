.class public Lcom/behance/sdk/dto/amazon/BehanceSDKS3UploadDTO;
.super Ljava/lang/Object;
.source "BehanceSDKS3UploadDTO.java"


# instance fields
.field private localLocation:Landroid/net/Uri;

.field private remoteFileName:Ljava/lang/String;

.field private remoteLocation:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocalLocation()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/behance/sdk/dto/amazon/BehanceSDKS3UploadDTO;->localLocation:Landroid/net/Uri;

    return-object v0
.end method

.method public getRemoteFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/behance/sdk/dto/amazon/BehanceSDKS3UploadDTO;->remoteFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/behance/sdk/dto/amazon/BehanceSDKS3UploadDTO;->remoteLocation:Ljava/lang/String;

    return-object v0
.end method

.method public setLocalLocation(Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/behance/sdk/dto/amazon/BehanceSDKS3UploadDTO;->localLocation:Landroid/net/Uri;

    .line 21
    return-void
.end method

.method public setRemoteFileName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/behance/sdk/dto/amazon/BehanceSDKS3UploadDTO;->remoteFileName:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setRemoteLocation(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/behance/sdk/dto/amazon/BehanceSDKS3UploadDTO;->remoteLocation:Ljava/lang/String;

    .line 29
    return-void
.end method
