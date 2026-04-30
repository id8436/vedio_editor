.class public Lcom/adobe/premiereclip/media/MediaInfo;
.super Ljava/lang/Object;
.source "MediaInfo.java"


# instance fields
.field private assetDate:Ljava/lang/String;

.field private assetUrl:Ljava/lang/String;

.field private localPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAssetDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/adobe/premiereclip/media/MediaInfo;->assetDate:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/adobe/premiereclip/media/MediaInfo;->assetUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/adobe/premiereclip/media/MediaInfo;->localPath:Ljava/lang/String;

    return-object v0
.end method

.method public setAssetDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/adobe/premiereclip/media/MediaInfo;->assetDate:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setAssetUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/adobe/premiereclip/media/MediaInfo;->assetUrl:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setLocalPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/adobe/premiereclip/media/MediaInfo;->localPath:Ljava/lang/String;

    .line 34
    return-void
.end method
