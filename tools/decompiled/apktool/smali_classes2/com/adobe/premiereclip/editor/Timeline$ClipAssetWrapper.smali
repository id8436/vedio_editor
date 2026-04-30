.class public Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;
.super Ljava/lang/Object;
.source "Timeline.java"


# instance fields
.field private available:Z

.field private clipAsset:Lcom/adobe/premiereclip/media/ClipAsset;

.field public final clipId:Ljava/lang/String;

.field private durationUs:J

.field private id:J

.field private isStoryCard:Z

.field private startTimeUs:J

.field final synthetic this$0:Lcom/adobe/premiereclip/editor/Timeline;

.field private type:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/editor/Timeline;Lcom/adobe/premiereclip/media/ClipAsset;JLjava/lang/String;ZJJZLcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;)V
    .locals 1

    .prologue
    .line 320
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->this$0:Lcom/adobe/premiereclip/editor/Timeline;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    iput-object p2, p0, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->clipAsset:Lcom/adobe/premiereclip/media/ClipAsset;

    .line 322
    iput-wide p3, p0, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->id:J

    .line 323
    iput-object p5, p0, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->clipId:Ljava/lang/String;

    .line 324
    iput-boolean p6, p0, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->available:Z

    .line 325
    iput-wide p9, p0, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->durationUs:J

    .line 326
    invoke-virtual {p0, p7, p8}, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->setStartTimeUs(J)V

    .line 327
    iput-boolean p11, p0, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->isStoryCard:Z

    .line 328
    iput-object p12, p0, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->type:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    .line 329
    return-void
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;)Z
    .locals 1

    .prologue
    .line 309
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->isStoryCard:Z

    return v0
.end method


# virtual methods
.method public getCacheKey()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x5f

    .line 383
    const/4 v0, 0x0

    .line 384
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->clipId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->clipAsset:Lcom/adobe/premiereclip/media/ClipAsset;

    iget-object v1, v1, Lcom/adobe/premiereclip/media/ClipAsset;->clipAssetID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 386
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->getType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v1

    sget-object v2, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->VIDEO:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    if-ne v1, v2, :cond_0

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->startTimeUs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 390
    :cond_0
    return-object v0
.end method

.method public getClipAsset()Lcom/adobe/premiereclip/media/ClipAsset;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->clipAsset:Lcom/adobe/premiereclip/media/ClipAsset;

    return-object v0
.end method

.method public getClipDurationUs()J
    .locals 2

    .prologue
    .line 362
    iget-wide v0, p0, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->durationUs:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 336
    iget-wide v0, p0, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->id:J

    return-wide v0
.end method

.method public getOptimizedStartTime(J)J
    .locals 5

    .prologue
    .line 352
    const-wide/32 v0, 0x927c0

    .line 353
    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    .line 355
    iget-wide v2, p0, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->durationUs:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    iget-wide v0, p0, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->durationUs:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    .line 358
    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    move-wide v0, p1

    goto :goto_0
.end method

.method public getStartTimeMs()J
    .locals 4

    .prologue
    .line 344
    iget-wide v0, p0, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->startTimeUs:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->type:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->available:Z

    return v0
.end method

.method public isStoryCard()Z
    .locals 1

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->isStoryCard:Z

    return v0
.end method

.method public setClipDurationUs(J)V
    .locals 1

    .prologue
    .line 366
    iput-wide p1, p0, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->durationUs:J

    .line 367
    return-void
.end method

.method public setStartTimeUs(J)V
    .locals 3

    .prologue
    .line 348
    invoke-virtual {p0, p1, p2}, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->getOptimizedStartTime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->startTimeUs:J

    .line 349
    return-void
.end method
