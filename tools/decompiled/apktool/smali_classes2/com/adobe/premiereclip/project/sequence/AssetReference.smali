.class public Lcom/adobe/premiereclip/project/sequence/AssetReference;
.super Ljava/lang/Object;
.source "AssetReference.java"


# instance fields
.field private assetId:Ljava/lang/String;

.field private assetPath:Ljava/lang/String;

.field private assetUri:Landroid/net/Uri;

.field private duration:J

.field private durationUs:J

.field private height:I

.field private mediaType:Ljava/lang/String;

.field private numAudioChannels:I

.field private originalAssetDate:Ljava/lang/String;

.field private originalAssetPath:Ljava/lang/String;

.field private propertiesSet:Z

.field private rotation:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

.field private timescale:J

.field private width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->assetId:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->assetUri:Landroid/net/Uri;

    .line 50
    iput-object p6, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->mediaType:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->assetPath:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->originalAssetPath:Ljava/lang/String;

    .line 53
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->timescale:J

    .line 54
    iput-object p5, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->originalAssetDate:Ljava/lang/String;

    .line 55
    iput-boolean v3, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->propertiesSet:Z

    .line 56
    iput v2, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->width:I

    .line 57
    iput v2, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->height:I

    .line 58
    sget-object v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;->NORMAL:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    iput-object v0, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->rotation:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    .line 59
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->mediaType:Ljava/lang/String;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x1

    iput v0, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->numAudioChannels:I

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    iput v3, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->numAudioChannels:I

    goto :goto_0
.end method


# virtual methods
.method public getAssetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->assetId:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->assetPath:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->assetUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getClipAsset()Lcom/adobe/premiereclip/media/ClipAsset;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Lcom/adobe/premiereclip/media/ClipAsset;

    invoke-direct {v0}, Lcom/adobe/premiereclip/media/ClipAsset;-><init>()V

    .line 91
    iget-object v1, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->mediaType:Ljava/lang/String;

    iput-object v1, v0, Lcom/adobe/premiereclip/media/ClipAsset;->assetType:Ljava/lang/String;

    .line 92
    iget-object v1, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->assetId:Ljava/lang/String;

    iput-object v1, v0, Lcom/adobe/premiereclip/media/ClipAsset;->clipAssetID:Ljava/lang/String;

    .line 93
    iget-object v1, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->assetUri:Landroid/net/Uri;

    iput-object v1, v0, Lcom/adobe/premiereclip/media/ClipAsset;->fileUri:Landroid/net/Uri;

    .line 94
    iget-object v1, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->assetPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/adobe/premiereclip/media/ClipAsset;->filePath:Ljava/lang/String;

    .line 95
    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->duration:J

    return-wide v0
.end method

.method public getDurationUs()J
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->durationUs:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->height:I

    return v0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->mediaType:Ljava/lang/String;

    return-object v0
.end method

.method public getNumAudioChannels()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->numAudioChannels:I

    return v0
.end method

.method public getOriginalAssetDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->originalAssetDate:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalAssetPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->originalAssetPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPropertiesSet()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->propertiesSet:Z

    return v0
.end method

.method public getRotation()Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->rotation:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    if-nez v0, :cond_0

    .line 125
    sget-object v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;->NORMAL:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    iput-object v0, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->rotation:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->rotation:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    return-object v0
.end method

.method public getTimescale()J
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->timescale:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->width:I

    return v0
.end method

.method public setAssetId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->assetId:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setAssetPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->assetPath:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setDurationAndTimescale(JJ)V
    .locals 3

    .prologue
    .line 84
    iput-wide p1, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->duration:J

    .line 85
    iput-wide p3, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->timescale:J

    .line 86
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p1

    div-long/2addr v0, p3

    iput-wide v0, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->durationUs:J

    .line 87
    return-void
.end method

.method public setDurationUs(J)V
    .locals 5

    .prologue
    .line 99
    iput-wide p1, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->durationUs:J

    .line 100
    iget-wide v0, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->timescale:J

    mul-long/2addr v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->duration:J

    .line 101
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 120
    iput p1, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->height:I

    .line 121
    return-void
.end method

.method public setMediaType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->mediaType:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setNumAudioChannels(I)V
    .locals 0

    .prologue
    .line 177
    iput p1, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->numAudioChannels:I

    .line 178
    return-void
.end method

.method public setOriginalAssetDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->originalAssetDate:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setOriginalAssetPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->originalAssetPath:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setPropertiesSet(Z)V
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->propertiesSet:Z

    .line 73
    return-void
.end method

.method public setRotation(Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->rotation:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    .line 132
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 112
    iput p1, p0, Lcom/adobe/premiereclip/project/sequence/AssetReference;->width:I

    .line 113
    return-void
.end method
