.class public Lcom/adobe/premiereclip/project/sequence/VideoClip;
.super Lcom/adobe/premiereclip/project/sequence/Clip;
.source "VideoClip.java"


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/project/sequence/AssetReference;JJLjava/lang/String;)V
    .locals 8

    .prologue
    .line 25
    sget-object v6, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->VIDEO:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/adobe/premiereclip/project/sequence/Clip;-><init>(Lcom/adobe/premiereclip/project/sequence/AssetReference;JJLcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;Ljava/lang/String;)V

    .line 26
    return-void
.end method


# virtual methods
.method public getVideoSegmentStartTimesWithPace(FF)[F
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/VideoClip;->getClipType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v1

    sget-object v2, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->VIDEO:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    if-ne v1, v2, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/VideoClip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/adobe/premiereclip/project/sequence/VideoSegmenter;->getVideoSegmentsForAssetReference(Lcom/adobe/premiereclip/project/sequence/AssetReference;FF)[F

    move-result-object v0

    .line 34
    :cond_0
    return-object v0
.end method
