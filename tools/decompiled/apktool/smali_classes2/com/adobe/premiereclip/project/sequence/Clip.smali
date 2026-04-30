.class public Lcom/adobe/premiereclip/project/sequence/Clip;
.super Ljava/lang/Object;
.source "Clip.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private assetReference:Lcom/adobe/premiereclip/project/sequence/AssetReference;

.field private audioFadeInApplied:Z

.field private audioFadeOutApplied:Z

.field private availability:Z

.field private clipGroupId:Ljava/lang/String;

.field private clipId:Ljava/lang/String;

.field private clipOptionsEffects:Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;

.field private clipType:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

.field private contentIn:J

.field private contentOut:J

.field private disableTransition:Z

.field protected look:Lcom/adobe/premiereclip/looks/BaseLook;

.field private maxHeight:I

.field private maxWidth:I

.field private muted:Z

.field private scale:F

.field private scalingOn:Z

.field private smartVolumeApplied:Z

.field private speed:D

.field public final stableId:J

.field private tempUnavailable:Z

.field private volume:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/adobe/premiereclip/project/sequence/Clip;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/adobe/premiereclip/project/sequence/AssetReference;JJLcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->assetReference:Lcom/adobe/premiereclip/project/sequence/AssetReference;

    .line 69
    iput-object p6, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->clipType:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    .line 70
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->stableId:J

    .line 71
    if-nez p1, :cond_0

    sget-object v0, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->EMPTY_VIDEO:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    if-ne p6, v0, :cond_0

    .line 72
    iput-wide p2, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->contentIn:J

    .line 73
    add-long v0, p2, p4

    iput-wide v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->contentOut:J

    .line 74
    iput-boolean v3, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->availability:Z

    .line 101
    :goto_0
    iput-boolean v2, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->muted:Z

    .line 102
    iput v7, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->volume:F

    .line 103
    iput-object p7, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->clipId:Ljava/lang/String;

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->clipGroupId:Ljava/lang/String;

    .line 105
    new-instance v0, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v6, v6}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;-><init>(FFF)V

    iput-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->clipOptionsEffects:Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;

    .line 106
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->speed:D

    .line 107
    iput-boolean v2, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->audioFadeInApplied:Z

    .line 108
    iput-boolean v3, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->audioFadeOutApplied:Z

    .line 109
    iput-boolean v2, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->smartVolumeApplied:Z

    .line 111
    const-string/jumbo v0, "0"

    invoke-static {v0}, Lcom/adobe/premiereclip/looks/LocalLooks;->getClipLook(Ljava/lang/String;)Lcom/adobe/premiereclip/looks/BaseLook;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->look:Lcom/adobe/premiereclip/looks/BaseLook;

    .line 112
    const/16 v0, 0x280

    iput v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->maxWidth:I

    .line 113
    const/16 v0, 0x168

    iput v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->maxHeight:I

    .line 114
    iput-boolean v2, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->scalingOn:Z

    .line 115
    iput-boolean v2, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->disableTransition:Z

    .line 116
    iput-boolean v2, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->tempUnavailable:Z

    .line 118
    iput v7, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->scale:F

    .line 119
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->assetReference:Lcom/adobe/premiereclip/project/sequence/AssetReference;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getDurationUs()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 76
    iput-wide v4, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->contentIn:J

    .line 77
    iput-wide v4, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->contentOut:J

    .line 78
    iput-boolean v2, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->availability:Z

    goto :goto_0

    .line 80
    :cond_1
    cmp-long v0, p4, v4

    if-nez v0, :cond_3

    .line 82
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->assetReference:Lcom/adobe/premiereclip/project/sequence/AssetReference;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getMediaType()Ljava/lang/String;

    move-result-object v1

    .line 83
    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 91
    const-wide/32 v0, 0x4c4b40

    .line 97
    :goto_2
    iput-wide p2, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->contentIn:J

    .line 98
    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->contentOut:J

    .line 99
    iput-boolean v3, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->availability:Z

    goto :goto_0

    .line 83
    :sswitch_0
    const-string/jumbo v4, "video"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v4, "image"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v3

    goto :goto_1

    .line 85
    :pswitch_0
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->assetReference:Lcom/adobe/premiereclip/project/sequence/AssetReference;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getDurationUs()J

    move-result-wide v0

    goto :goto_2

    .line 88
    :pswitch_1
    const-wide/32 v0, 0x2625a0

    .line 89
    goto :goto_2

    .line 94
    :cond_3
    add-long v0, p2, p4

    iget-object v4, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->assetReference:Lcom/adobe/premiereclip/project/sequence/AssetReference;

    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getDurationUs()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-lez v0, :cond_4

    .line 95
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->assetReference:Lcom/adobe/premiereclip/project/sequence/AssetReference;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getDurationUs()J

    move-result-wide v0

    sub-long/2addr v0, p2

    goto :goto_2

    :cond_4
    move-wide v0, p4

    goto :goto_2

    .line 83
    :sswitch_data_0
    .sparse-switch
        0x5faa95b -> :sswitch_1
        0x6b0147b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public copyClip()Lcom/adobe/premiereclip/project/sequence/Clip;
    .locals 9

    .prologue
    .line 383
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    .line 384
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v1

    .line 386
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v0

    sget-object v2, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->IMAGE_TITLE:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    if-ne v0, v2, :cond_0

    move-object v0, p0

    .line 387
    check-cast v0, Lcom/adobe/premiereclip/project/sequence/ImageClip;

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/ImageClip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->copyTitleImage()Lcom/adobe/premiereclip/media/TitleImage;

    move-result-object v8

    .line 388
    invoke-virtual {v8}, Lcom/adobe/premiereclip/media/TitleImage;->getClipAsset()Lcom/adobe/premiereclip/media/ClipAsset;

    move-result-object v1

    .line 389
    new-instance v0, Lcom/adobe/premiereclip/project/sequence/AssetReference;

    iget-object v1, v1, Lcom/adobe/premiereclip/media/ClipAsset;->clipAssetID:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->assetReference:Lcom/adobe/premiereclip/project/sequence/AssetReference;

    .line 390
    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->assetReference:Lcom/adobe/premiereclip/project/sequence/AssetReference;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->assetReference:Lcom/adobe/premiereclip/project/sequence/AssetReference;

    .line 391
    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getOriginalAssetPath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->assetReference:Lcom/adobe/premiereclip/project/sequence/AssetReference;

    invoke-virtual {v5}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getOriginalAssetDate()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->assetReference:Lcom/adobe/premiereclip/project/sequence/AssetReference;

    invoke-virtual {v6}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getMediaType()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/adobe/premiereclip/project/sequence/AssetReference;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-object v1, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->assetReference:Lcom/adobe/premiereclip/project/sequence/AssetReference;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setWidth(I)V

    .line 393
    iget-object v1, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->assetReference:Lcom/adobe/premiereclip/project/sequence/AssetReference;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setHeight(I)V

    .line 394
    iget-object v1, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->assetReference:Lcom/adobe/premiereclip/project/sequence/AssetReference;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getRotation()Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setRotation(Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;)V

    .line 395
    iget-object v1, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->assetReference:Lcom/adobe/premiereclip/project/sequence/AssetReference;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getDurationUs()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setDurationUs(J)V

    .line 396
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUs()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDurationUs()J

    move-result-wide v3

    move-object v5, v7

    invoke-static/range {v0 .. v5}, Lcom/adobe/premiereclip/project/sequence/Sequence;->createClip(Lcom/adobe/premiereclip/project/sequence/AssetReference;JJLjava/lang/String;)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v1

    move-object v0, v1

    .line 397
    check-cast v0, Lcom/adobe/premiereclip/project/sequence/ImageClip;

    invoke-virtual {v0, v8}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->setTitleImage(Lcom/adobe/premiereclip/media/TitleImage;)V

    .line 404
    :goto_0
    sget-boolean v0, Lcom/adobe/premiereclip/project/sequence/Clip;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 401
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUs()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDurationUs()J

    move-result-wide v4

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Lcom/adobe/premiereclip/project/sequence/Sequence;->createClip(Lcom/adobe/premiereclip/project/sequence/AssetReference;JJLjava/lang/String;)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v1

    goto :goto_0

    .line 405
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getSpeed()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->setSpeed(F)V

    .line 406
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Clip;->isMuted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 407
    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Clip;->muteClip()V

    .line 409
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAudioFadeInApplied()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->setAudioFadeInApplied(Z)V

    .line 410
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAudioFadeOutApplied()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->setAudioFadeOutApplied(Z)V

    .line 411
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Clip;->isAvailable()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->setAvailability(Z)V

    .line 412
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipOptionEffects()Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->getExposure()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->setExposure(F)V

    .line 413
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipOptionEffects()Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->getHighlights()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->setHighlights(F)V

    .line 414
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipOptionEffects()Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->getShadows()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->setShadows(F)V

    .line 415
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getVolume()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->setVolume(F)V

    .line 416
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getSmartVolumeApplied()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->setSmartVolumeApplied(Z)V

    .line 418
    return-object v1
.end method

.method public disabledTransition()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->disableTransition:Z

    return v0
.end method

.method public getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->assetReference:Lcom/adobe/premiereclip/project/sequence/AssetReference;

    return-object v0
.end method

.method public getAudioFadeInApplied()Z
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->audioFadeInApplied:Z

    return v0
.end method

.method public getAudioFadeOutApplied()Z
    .locals 1

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->audioFadeOutApplied:Z

    return v0
.end method

.method public getClipGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->clipGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public getClipId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->clipId:Ljava/lang/String;

    return-object v0
.end method

.method public getClipOptionEffects()Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->clipOptionsEffects:Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;

    return-object v0
.end method

.method public getClipType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->clipType:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    return-object v0
.end method

.method public getClipTypeString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 196
    sget-object v0, Lcom/adobe/premiereclip/project/sequence/Clip$1;->$SwitchMap$com$adobe$premiereclip$project$sequence$Clip$CLIP_TYPE:[I

    iget-object v1, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->clipType:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 199
    const-string/jumbo v0, "None"

    .line 214
    :goto_0
    return-object v0

    .line 202
    :pswitch_0
    const-string/jumbo v0, "Title"

    goto :goto_0

    .line 205
    :pswitch_1
    const-string/jumbo v0, "StillImage"

    goto :goto_0

    .line 208
    :pswitch_2
    const-string/jumbo v0, "Video"

    goto :goto_0

    .line 211
    :pswitch_3
    const-string/jumbo v0, "Audio"

    goto :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getDimensions()[Ljava/lang/Object;
    .locals 5

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getWidth()I

    move-result v1

    .line 158
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getHeight()I

    move-result v0

    .line 160
    iget-object v2, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->clipType:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    sget-object v3, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->IMAGE_NON_TITLE:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    if-ne v2, v3, :cond_0

    .line 161
    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    .line 162
    iget v3, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->maxWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->maxHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    .line 163
    iget v3, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->maxWidth:I

    if-le v1, v3, :cond_0

    .line 164
    iget v1, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->maxWidth:I

    .line 165
    int-to-float v0, v1

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 175
    :cond_0
    :goto_0
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getRotation()Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    move-result-object v1

    aput-object v1, v2, v0

    return-object v2

    .line 168
    :cond_1
    iget v3, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->maxHeight:I

    if-le v0, v3, :cond_0

    .line 169
    iget v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->maxHeight:I

    .line 170
    int-to-float v1, v0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_0
.end method

.method public getDurationUs()J
    .locals 4

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getEndTimeUs()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUs()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getDurationUsWithSpeed()J
    .locals 4

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDurationUs()J

    move-result-wide v0

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->speed:D

    div-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public getEndTimeUs()J
    .locals 2

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->tempUnavailable:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->contentOut:J

    goto :goto_0
.end method

.method public getEndTimeUsWithSpeed()J
    .locals 4

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getEndTimeUs()J

    move-result-wide v0

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->speed:D

    div-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public getLook()Lcom/adobe/premiereclip/looks/BaseLook;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->look:Lcom/adobe/premiereclip/looks/BaseLook;

    return-object v0
.end method

.method public getOriginalDimensions()[Ljava/lang/Object;
    .locals 4

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getWidth()I

    move-result v0

    .line 151
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getHeight()I

    move-result v1

    .line 153
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getRotation()Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    move-result-object v1

    aput-object v1, v2, v0

    return-object v2
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 426
    iget v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->scale:F

    return v0
.end method

.method public getScalingOn()Z
    .locals 2

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->scalingOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->clipType:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    sget-object v1, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->IMAGE_NON_TITLE:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSmartVolumeApplied()Z
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->smartVolumeApplied:Z

    return v0
.end method

.method public getSpeed()F
    .locals 2

    .prologue
    .line 312
    iget-wide v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->speed:D

    double-to-float v0, v0

    return v0
.end method

.method public getStartTimeUs()J
    .locals 2

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->tempUnavailable:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->contentIn:J

    goto :goto_0
.end method

.method public getStartTimeUsWithSpeed()J
    .locals 4

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUs()J

    move-result-wide v0

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->speed:D

    div-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public getTimeScale()J
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->assetReference:Lcom/adobe/premiereclip/project/sequence/AssetReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->assetReference:Lcom/adobe/premiereclip/project/sequence/AssetReference;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getMediaType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    const-wide/32 v0, 0xac44

    .line 231
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x7530

    goto :goto_0
.end method

.method public getVolume()F
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->volume:F

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->availability:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->tempUnavailable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBumper()Z
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->clipType:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    sget-object v1, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->VIDEO_BUMPER:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMuted()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->muted:Z

    return v0
.end method

.method public muteClip()V
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->muted:Z

    .line 283
    return-void
.end method

.method public restoreClipOptions()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 378
    new-instance v0, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;-><init>(FFF)V

    iput-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->clipOptionsEffects:Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;

    .line 379
    return-void
.end method

.method public setAudioFadeInApplied(Z)V
    .locals 0

    .prologue
    .line 332
    iput-boolean p1, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->audioFadeInApplied:Z

    .line 333
    return-void
.end method

.method public setAudioFadeOutApplied(Z)V
    .locals 0

    .prologue
    .line 336
    iput-boolean p1, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->audioFadeOutApplied:Z

    .line 337
    return-void
.end method

.method public setAvailability(Z)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 269
    iput-boolean p1, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->availability:Z

    .line 270
    iget-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->availability:Z

    if-nez v0, :cond_0

    .line 271
    invoke-virtual {p0, v2, v3}, Lcom/adobe/premiereclip/project/sequence/Clip;->setStartTimeUs(J)V

    .line 272
    invoke-virtual {p0, v2, v3}, Lcom/adobe/premiereclip/project/sequence/Clip;->setEndTimeUs(J)V

    .line 274
    :cond_0
    return-void
.end method

.method public setBumper()V
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->VIDEO_BUMPER:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->setClipType(Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;)V

    .line 147
    return-void
.end method

.method public setClipGroupId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->clipGroupId:Ljava/lang/String;

    return-void
.end method

.method protected setClipType(Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->clipType:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    .line 375
    return-void
.end method

.method public setDCXExposure(F)V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->clipOptionsEffects:Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->setDCXExposure(F)V

    .line 309
    return-void
.end method

.method public setDisableTransition(Z)V
    .locals 0

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->disableTransition:Z

    .line 127
    return-void
.end method

.method public setEndTimeUs(J)V
    .locals 1

    .prologue
    .line 260
    iput-wide p1, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->contentOut:J

    .line 261
    return-void
.end method

.method public setExposure(F)V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->clipOptionsEffects:Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->setExposure(F)V

    .line 301
    return-void
.end method

.method public setHighlights(F)V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->clipOptionsEffects:Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->setHighlights(F)V

    .line 349
    return-void
.end method

.method public setLook(Lcom/adobe/premiereclip/looks/BaseLook;)V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->clipType:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    sget-object v1, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->IMAGE_TITLE:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->clipType:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    sget-object v1, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->STORY_CARD:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->clipType:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    sget-object v1, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->VIDEO_BUMPER:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    if-ne v0, v1, :cond_1

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    iput-object p1, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->look:Lcom/adobe/premiereclip/looks/BaseLook;

    goto :goto_0
.end method

.method protected setMaxHeight(I)V
    .locals 0

    .prologue
    .line 183
    iput p1, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->maxHeight:I

    .line 184
    return-void
.end method

.method protected setMaxWidth(I)V
    .locals 0

    .prologue
    .line 179
    iput p1, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->maxWidth:I

    .line 180
    return-void
.end method

.method public setScale(F)V
    .locals 0

    .prologue
    .line 422
    iput p1, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->scale:F

    .line 423
    return-void
.end method

.method public setScalingOn(Z)V
    .locals 0

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->scalingOn:Z

    .line 135
    return-void
.end method

.method public setSeekExposure(F)V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->clipOptionsEffects:Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->setSeekExposure(F)V

    .line 305
    return-void
.end method

.method public setShadows(F)V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->clipOptionsEffects:Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->setShadows(F)V

    .line 353
    return-void
.end method

.method public setSmartVolumeApplied(Z)V
    .locals 0

    .prologue
    .line 344
    iput-boolean p1, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->smartVolumeApplied:Z

    .line 345
    return-void
.end method

.method public setSpeed(F)V
    .locals 2

    .prologue
    .line 316
    float-to-double v0, p1

    iput-wide v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->speed:D

    .line 317
    return-void
.end method

.method public setStartTimeUs(J)V
    .locals 1

    .prologue
    .line 256
    iput-wide p1, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->contentIn:J

    .line 257
    return-void
.end method

.method public setTempUnavailable(Z)V
    .locals 0

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->tempUnavailable:Z

    .line 131
    return-void
.end method

.method public setVolume(F)V
    .locals 0

    .prologue
    .line 290
    iput p1, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->volume:F

    .line 291
    return-void
.end method

.method public unMuteClip()V
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/Clip;->muted:Z

    .line 287
    return-void
.end method
