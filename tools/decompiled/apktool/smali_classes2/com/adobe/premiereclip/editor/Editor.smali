.class public Lcom/adobe/premiereclip/editor/Editor;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Lcom/adobe/premiereclip/editor/RangeSeekBar$OnRangeSeekBarChangeListener;
.implements Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;
.implements Lcom/adobe/premiereclip/mediaengine/SequencePlayer$Listener;
.implements Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$Listener;
.implements Lcom/adobe/premiereclip/util/ProjectPosterTask$TaskCompleted;


# static fields
.field private static final TAG:Ljava/lang/String; = "Editor"

.field public static final seeksPerSec:I = 0x3


# instance fields
.field private bumperPath:Ljava/lang/String;

.field private canAddBumper:Z

.field protected clipSaveState:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;

.field protected context:Landroid/content/Context;

.field protected currentClipIndex:I

.field protected currentProject:Lcom/adobe/premiereclip/project/Project;

.field private delayedInit:Z

.field private editorListener:Lcom/adobe/premiereclip/editor/Editor$Listener;

.field private exportFile:Ljava/io/File;

.field private exportMode:Z

.field private gpuMediaSurfaceView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

.field private initialized:Z

.field private pendingPosterTask:Z

.field private player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

.field private posterClipDirty:Z

.field private prevSeekOffset:F

.field private projectPosterResources:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

.field private scrubTimeMs:J

.field private scrubbing:Z

.field private sequenceExporter:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;

.field private sequenceRenderer:Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;

.field private snapToBeatController:Lcom/adobe/premiereclip/editor/SnapToBeatController;

.field protected timeline:Lcom/adobe/premiereclip/editor/Timeline;

.field private trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/adobe/premiereclip/editor/Timeline;Lcom/adobe/premiereclip/project/Project;Lcom/adobe/premiereclip/editor/SnapToBeatController;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/Editor;->context:Landroid/content/Context;

    .line 134
    iput-boolean v4, p0, Lcom/adobe/premiereclip/editor/Editor;->pendingPosterTask:Z

    .line 135
    if-eqz p2, :cond_0

    .line 136
    iput-object p2, p0, Lcom/adobe/premiereclip/editor/Editor;->timeline:Lcom/adobe/premiereclip/editor/Timeline;

    .line 137
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->timeline:Lcom/adobe/premiereclip/editor/Timeline;

    invoke-virtual {v0, p0}, Lcom/adobe/premiereclip/editor/Timeline;->setTimelineListener(Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;)V

    .line 139
    :cond_0
    iput-object p4, p0, Lcom/adobe/premiereclip/editor/Editor;->snapToBeatController:Lcom/adobe/premiereclip/editor/SnapToBeatController;

    .line 140
    iput-object p3, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    .line 141
    iput-boolean v4, p0, Lcom/adobe/premiereclip/editor/Editor;->initialized:Z

    .line 142
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;-><init>(IJZ)V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->clipSaveState:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;

    .line 144
    iput-boolean v4, p0, Lcom/adobe/premiereclip/editor/Editor;->posterClipDirty:Z

    .line 145
    iput-boolean v4, p0, Lcom/adobe/premiereclip/editor/Editor;->scrubbing:Z

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/editor/Editor;)Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->sequenceRenderer:Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/editor/Editor;)Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/Editor;->pendingPosterTask:Z

    return v0
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/editor/Editor;)Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/Editor;->initialized:Z

    return v0
.end method

.method private checkFileAvailability()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 188
    const-string/jumbo v0, "Editor"

    const-string/jumbo v1, "Checking file avail"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v5

    move v1, v2

    move v3, v2

    .line 191
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 192
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 193
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/adobe/premiereclip/util/Utilities;->checkIfFileExists(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 194
    const-string/jumbo v3, "Editor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unavailable clip found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/project/sequence/Clip;->setAvailability(Z)V

    move v3, v4

    .line 191
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 199
    :cond_1
    if-eqz v3, :cond_2

    .line 200
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->context:Landroid/content/Context;

    const v1, 0x7f0a050b

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 203
    :cond_2
    return-void
.end method

.method public static createBumperClip(Ljava/lang/String;)Lcom/adobe/premiereclip/project/sequence/Clip;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 1275
    if-eqz p0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1276
    :cond_0
    const/4 v0, 0x0

    .line 1294
    :goto_0
    return-object v0

    .line 1278
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1279
    new-instance v1, Lcom/adobe/premiereclip/media/MediaInfo;

    invoke-direct {v1}, Lcom/adobe/premiereclip/media/MediaInfo;-><init>()V

    .line 1280
    invoke-virtual {v1, p0}, Lcom/adobe/premiereclip/media/MediaInfo;->setAssetUrl(Ljava/lang/String;)V

    .line 1281
    invoke-virtual {v1, p0}, Lcom/adobe/premiereclip/media/MediaInfo;->setLocalPath(Ljava/lang/String;)V

    .line 1282
    new-instance v2, Ljava/util/Date;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getFormattedDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1283
    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/media/MediaInfo;->setAssetDate(Ljava/lang/String;)V

    .line 1284
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1285
    invoke-static {}, Lcom/adobe/premiereclip/media/MediaManager;->getInstance()Lcom/adobe/premiereclip/media/MediaManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/media/MediaManager;->addAssets(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1286
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/adobe/premiereclip/media/ClipAsset;

    .line 1287
    new-instance v0, Lcom/adobe/premiereclip/project/sequence/AssetReference;

    iget-object v1, v7, Lcom/adobe/premiereclip/media/ClipAsset;->clipAssetID:Ljava/lang/String;

    iget-object v2, v7, Lcom/adobe/premiereclip/media/ClipAsset;->fileUri:Landroid/net/Uri;

    iget-object v3, v7, Lcom/adobe/premiereclip/media/ClipAsset;->filePath:Ljava/lang/String;

    iget-object v4, v7, Lcom/adobe/premiereclip/media/ClipAsset;->originalPath:Ljava/lang/String;

    iget-object v5, v7, Lcom/adobe/premiereclip/media/ClipAsset;->originalAssetDate:Ljava/lang/String;

    iget-object v6, v7, Lcom/adobe/premiereclip/media/ClipAsset;->assetType:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/adobe/premiereclip/project/sequence/AssetReference;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    iget v1, v7, Lcom/adobe/premiereclip/media/ClipAsset;->width:I

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setWidth(I)V

    .line 1290
    iget v1, v7, Lcom/adobe/premiereclip/media/ClipAsset;->height:I

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setHeight(I)V

    .line 1291
    iget-object v1, v7, Lcom/adobe/premiereclip/media/ClipAsset;->rotation:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setRotation(Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;)V

    .line 1292
    invoke-virtual {v0, v8, v9}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setDurationUs(J)V

    .line 1293
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    move-wide v1, v8

    move-wide v3, v8

    .line 1294
    invoke-static/range {v0 .. v5}, Lcom/adobe/premiereclip/project/sequence/Sequence;->createClip(Lcom/adobe/premiereclip/project/sequence/AssetReference;JJLjava/lang/String;)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v0

    goto :goto_0
.end method

.method private initMediaEngine()V
    .locals 4

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/Editor;->initialized:Z

    if-eqz v0, :cond_0

    .line 331
    :goto_0
    return-void

    .line 301
    :cond_0
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Editor;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->gpuMediaSurfaceView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    .line 304
    :try_start_0
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Editor;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/Editor;->gpuMediaSurfaceView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    iget-object v3, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;-><init>(Landroid/content/Context;Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;Lcom/adobe/premiereclip/project/sequence/Sequence;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->sequenceRenderer:Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;

    .line 305
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->gpuMediaSurfaceView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    new-instance v1, Lcom/adobe/premiereclip/editor/Editor$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/Editor$1;-><init>(Lcom/adobe/premiereclip/editor/Editor;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->runOnDraw(Ljava/lang/Runnable;)V

    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/Editor;->initialized:Z

    .line 319
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Editor;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/Editor;->gpuMediaSurfaceView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    new-instance v3, Lcom/adobe/premiereclip/editor/Editor$2;

    invoke-direct {v3, p0}, Lcom/adobe/premiereclip/editor/Editor$2;-><init>(Lcom/adobe/premiereclip/editor/Editor;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;-><init>(Landroid/content/Context;Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$Listener;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->projectPosterResources:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

    .line 327
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->gpuMediaSurfaceView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->requestRender()V
    :try_end_0
    .catch Lcom/google/android/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    invoke-virtual {v0}, Lcom/google/android/exoplayer/ExoPlaybackException;->printStackTrace()V

    goto :goto_0
.end method

.method private insertVideoBug()V
    .locals 14

    .prologue
    .line 212
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v8

    .line 215
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->removeAllClipsFromTrack(I)V

    .line 217
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    .line 218
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget-object v0, v0, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXReader;->getOverlayPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 219
    if-eqz v10, :cond_5

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 221
    new-instance v1, Lcom/adobe/premiereclip/media/MediaInfo;

    invoke-direct {v1}, Lcom/adobe/premiereclip/media/MediaInfo;-><init>()V

    .line 222
    invoke-virtual {v1, v10}, Lcom/adobe/premiereclip/media/MediaInfo;->setAssetUrl(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v1, v10}, Lcom/adobe/premiereclip/media/MediaInfo;->setLocalPath(Ljava/lang/String;)V

    .line 224
    new-instance v2, Ljava/util/Date;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getFormattedDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 225
    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/media/MediaInfo;->setAssetDate(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-static {}, Lcom/adobe/premiereclip/media/MediaManager;->getInstance()Lcom/adobe/premiereclip/media/MediaManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/media/MediaManager;->addAssets(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 228
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/adobe/premiereclip/media/ClipAsset;

    .line 229
    new-instance v0, Lcom/adobe/premiereclip/project/sequence/AssetReference;

    iget-object v1, v7, Lcom/adobe/premiereclip/media/ClipAsset;->clipAssetID:Ljava/lang/String;

    iget-object v2, v7, Lcom/adobe/premiereclip/media/ClipAsset;->fileUri:Landroid/net/Uri;

    iget-object v3, v7, Lcom/adobe/premiereclip/media/ClipAsset;->filePath:Ljava/lang/String;

    iget-object v4, v7, Lcom/adobe/premiereclip/media/ClipAsset;->originalPath:Ljava/lang/String;

    iget-object v5, v7, Lcom/adobe/premiereclip/media/ClipAsset;->originalAssetDate:Ljava/lang/String;

    iget-object v6, v7, Lcom/adobe/premiereclip/media/ClipAsset;->assetType:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/adobe/premiereclip/project/sequence/AssetReference;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget v1, v7, Lcom/adobe/premiereclip/media/ClipAsset;->width:I

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setWidth(I)V

    .line 232
    iget v1, v7, Lcom/adobe/premiereclip/media/ClipAsset;->height:I

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setHeight(I)V

    .line 233
    iget-object v1, v7, Lcom/adobe/premiereclip/media/ClipAsset;->rotation:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setRotation(Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;)V

    .line 234
    const-wide/32 v2, 0x989680

    invoke-virtual {v0, v2, v3}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setDurationUs(J)V

    .line 236
    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    move-object v5, v9

    invoke-static/range {v0 .. v5}, Lcom/adobe/premiereclip/project/sequence/Sequence;->createClip(Lcom/adobe/premiereclip/project/sequence/AssetReference;JJLjava/lang/String;)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v3

    .line 238
    if-eqz v3, :cond_1

    .line 242
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getWidth()I

    move-result v1

    int-to-float v4, v1

    .line 243
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getHeight()I

    move-result v1

    int-to-float v5, v1

    .line 244
    div-float v6, v4, v5

    .line 248
    const v1, 0x3fe38e39

    cmpl-float v1, v6, v1

    if-lez v1, :cond_3

    .line 249
    const/high16 v2, 0x44f00000    # 1920.0f

    .line 250
    const/high16 v1, 0x44f00000    # 1920.0f

    div-float/2addr v1, v6

    move v13, v1

    move v1, v2

    move v2, v13

    .line 256
    :goto_0
    const/high16 v7, 0x44f00000    # 1920.0f

    cmpg-float v7, v4, v7

    if-gez v7, :cond_0

    const/high16 v7, 0x44870000    # 1080.0f

    cmpg-float v7, v5, v7

    if-gez v7, :cond_0

    .line 262
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/adobe/premiereclip/editor/Editor;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "temp_watermark.png"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 264
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 265
    float-to-int v11, v1

    float-to-int v12, v2

    invoke-static {v11, v12, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 267
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 268
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 270
    float-to-int v4, v4

    float-to-int v5, v5

    invoke-static {v10, v4, v5}, Lcom/adobe/premiereclip/util/Utilities;->getScaledBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 272
    const/4 v5, 0x0

    const/4 v10, 0x0

    invoke-virtual {v11, v4, v5, v10, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 274
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-static {v9, v7, v4, v5}, Lcom/adobe/premiereclip/util/FileOps;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;I)V

    .line 276
    invoke-virtual {v0, v7}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setAssetPath(Ljava/lang/String;)V

    .line 277
    float-to-int v4, v1

    invoke-virtual {v0, v4}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setWidth(I)V

    .line 278
    float-to-int v4, v2

    invoke-virtual {v0, v4}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setHeight(I)V

    .line 281
    :cond_0
    const/high16 v0, 0x44f00000    # 1920.0f

    div-float/2addr v1, v0

    .line 282
    const/high16 v0, 0x44870000    # 1080.0f

    div-float/2addr v2, v0

    .line 283
    const v0, 0x3fe38e39

    cmpl-float v0, v6, v0

    if-lez v0, :cond_4

    move v0, v1

    .line 284
    :goto_1
    invoke-virtual {v3, v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->setScale(F)V

    .line 285
    const/4 v0, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v1, v4

    const v4, 0x3fe38e39

    mul-float/2addr v1, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v2, v4

    invoke-virtual {v8, v0, v1, v2}, Lcom/adobe/premiereclip/project/sequence/Sequence;->setTrackXYOffset(IFF)V

    :cond_1
    move-object v0, v3

    .line 291
    :goto_2
    if-eqz v0, :cond_2

    .line 292
    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->addClipToTrack(Lcom/adobe/premiereclip/project/sequence/Clip;I)V

    .line 295
    :cond_2
    return-void

    .line 252
    :cond_3
    const/high16 v1, 0x44870000    # 1080.0f

    mul-float v2, v1, v6

    .line 253
    const/high16 v1, 0x44870000    # 1080.0f

    move v13, v1

    move v1, v2

    move v2, v13

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 283
    goto :goto_1

    .line 288
    :cond_5
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3, v9}, Lcom/adobe/premiereclip/project/sequence/Sequence;->createEmptyVideoClip(JJLjava/lang/String;)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v0

    goto :goto_2
.end method

.method private notifyClipSelection(Z)V
    .locals 4

    .prologue
    .line 442
    if-eqz p1, :cond_0

    .line 443
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    .line 444
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    if-le v1, v2, :cond_0

    iget v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    if-ltz v1, :cond_0

    .line 445
    iget v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 446
    instance-of v1, v0, Lcom/adobe/premiereclip/project/sequence/ImageClip;

    if-eqz v1, :cond_0

    .line 447
    const-string/jumbo v2, "storycard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "story card text: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v1, v0

    check-cast v1, Lcom/adobe/premiereclip/project/sequence/ImageClip;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->getStoryCardText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    check-cast v0, Lcom/adobe/premiereclip/project/sequence/ImageClip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->isStoryCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->editorListener:Lcom/adobe/premiereclip/editor/Editor$Listener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/adobe/premiereclip/editor/Editor$Listener;->onClipSelected(Z)V

    .line 456
    :goto_0
    return-void

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->editorListener:Lcom/adobe/premiereclip/editor/Editor$Listener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/adobe/premiereclip/editor/Editor$Listener;->onClipSelected(Z)V

    goto :goto_0
.end method

.method private onUpdateSequenceDuration()V
    .locals 4

    .prologue
    .line 383
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    .line 384
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getSequenceDurationUs()J

    move-result-wide v2

    .line 386
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Editor;->timeline:Lcom/adobe/premiereclip/editor/Timeline;

    invoke-virtual {v1, v2, v3}, Lcom/adobe/premiereclip/editor/Timeline;->updateDuration(J)V

    .line 387
    invoke-virtual {v0, v2, v3}, Lcom/adobe/premiereclip/project/sequence/Sequence;->setDurationOfOverlayTrack(J)V

    .line 388
    return-void
.end method

.method private resetSequence()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->resetClips()V

    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/Editor;->delayedInit:Z

    .line 394
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->editorListener:Lcom/adobe/premiereclip/editor/Editor$Listener;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->editorListener:Lcom/adobe/premiereclip/editor/Editor$Listener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/editor/Editor$Listener;->triggerRemovePlayerView()V

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->editorListener:Lcom/adobe/premiereclip/editor/Editor$Listener;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->editorListener:Lcom/adobe/premiereclip/editor/Editor$Listener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/editor/Editor$Listener;->triggerAddPlayerView()V

    goto :goto_0
.end method

.method private seekToClipTime(IJ)V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->seekToClipTime(IJ)V

    .line 380
    return-void
.end method

.method private snapToBeatForClip(IZ)V
    .locals 14

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->snapToBeatController:Lcom/adobe/premiereclip/editor/SnapToBeatController;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/SnapToBeatController;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->snapToBeatController:Lcom/adobe/premiereclip/editor/SnapToBeatController;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/SnapToBeatController;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1272
    :cond_0
    :goto_0
    return-void

    .line 1204
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v2

    .line 1205
    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 1208
    iget-object v3, p0, Lcom/adobe/premiereclip/editor/Editor;->snapToBeatController:Lcom/adobe/premiereclip/editor/SnapToBeatController;

    const/4 v4, 0x1

    if-nez p2, :cond_2

    iget v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    if-eq p1, v0, :cond_6

    :cond_2
    const/4 v0, 0x1

    .line 1209
    :goto_1
    invoke-virtual {v3, p1, v2, v4, v0}, Lcom/adobe/premiereclip/editor/SnapToBeatController;->getSyncPointsForClip(ILcom/adobe/premiereclip/project/sequence/Sequence;ZZ)Ljava/util/ArrayList;

    move-result-object v8

    .line 1210
    const-string/jumbo v0, "Editor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "snapping beats for clip index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1216
    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUsWithSpeed()J

    move-result-wide v2

    .line 1217
    if-eqz p1, :cond_3

    .line 1218
    invoke-static {v8, v2, v3}, Lcom/adobe/premiereclip/editor/SnapToBeatController;->binary_search(Ljava/util/ArrayList;J)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_3

    .line 1219
    const-string/jumbo v0, "Editor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "The start time "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " isn\'t present as a filtered sync point."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    :cond_3
    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getEndTimeUsWithSpeed()J

    move-result-wide v10

    .line 1225
    invoke-static {v8, v10, v11}, Lcom/adobe/premiereclip/editor/SnapToBeatController;->lower_bound(Ljava/util/ArrayList;J)I

    move-result v9

    .line 1226
    const-wide v6, 0x7fffffffffffffffL

    .line 1227
    const/4 v0, -0x1

    if-ne v9, v0, :cond_7

    .line 1228
    const-string/jumbo v0, "Editor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Couldn\'t find lower bound for end time "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    :goto_2
    cmp-long v0, v6, v10

    if-ltz v0, :cond_0

    .line 1233
    const-wide/high16 v4, -0x8000000000000000L

    .line 1234
    if-lez v9, :cond_8

    .line 1235
    add-int/lit8 v0, v9, -0x1

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    iget-wide v4, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->time:J

    .line 1240
    :cond_4
    :goto_3
    sub-long v12, v10, v4

    sub-long v10, v6, v10

    cmp-long v0, v12, v10

    if-gez v0, :cond_9

    cmp-long v0, v4, v2

    if-lez v0, :cond_9

    .line 1250
    :goto_4
    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getDurationUs()J

    move-result-wide v6

    long-to-float v0, v6

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getSpeed()F

    move-result v6

    div-float/2addr v0, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v0, v6

    float-to-long v6, v0

    .line 1251
    cmp-long v0, v4, v6

    if-lez v0, :cond_5

    .line 1252
    sub-long v10, v4, v6

    cmp-long v0, v10, v2

    if-gtz v0, :cond_5

    .line 1254
    sub-long v10, v4, v6

    sub-long v10, v2, v10

    .line 1255
    long-to-float v0, v10

    long-to-float v9, v6

    div-float/2addr v0, v9

    invoke-virtual {p0, p1, v0}, Lcom/adobe/premiereclip/editor/Editor;->setClipStartTime(IF)V

    .line 1259
    :cond_5
    const-string/jumbo v0, "Editor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setting local offset "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "clip duration "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    long-to-float v0, v4

    long-to-float v4, v6

    div-float v10, v0, v4

    .line 1263
    invoke-virtual {p0, p1, v10}, Lcom/adobe/premiereclip/editor/Editor;->setClipEndTimeLocal(IF)V

    .line 1264
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->timeline:Lcom/adobe/premiereclip/editor/Timeline;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDurationUsWithSpeed()J

    move-result-wide v4

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/premiereclip/editor/Timeline;->updateTimeOfClipAt(IJJ)V

    .line 1265
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/Editor;->onUpdateSequenceDuration()V

    .line 1267
    iget v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    if-ne p1, v0, :cond_0

    .line 1268
    iget-object v4, p0, Lcom/adobe/premiereclip/editor/Editor;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    move-object v5, v8

    move-wide v8, v2

    invoke-virtual/range {v4 .. v9}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->setSyncPoints(Ljava/util/ArrayList;JJ)V

    .line 1269
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    invoke-virtual {v0, v10}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->setSelectedMaxValue(F)V

    goto/16 :goto_0

    .line 1208
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1230
    :cond_7
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    iget-wide v6, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->time:J

    goto/16 :goto_2

    .line 1236
    :cond_8
    const/4 v0, -0x1

    if-ne v9, v0, :cond_4

    .line 1237
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    iget-wide v4, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->time:J

    goto/16 :goto_3

    .line 1242
    :cond_9
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, v6, v4

    if-gez v0, :cond_0

    move-wide v4, v6

    .line 1243
    goto/16 :goto_4
.end method


# virtual methods
.method public addAssets(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/media/ClipAsset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 986
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/adobe/premiereclip/project/Project;->addAssetsAtIndex(Ljava/util/ArrayList;I)V

    .line 987
    iget v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/Editor;->snapToBeatForClipsOnward(IZ)V

    .line 990
    return-void
.end method

.method public createTitleImage()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1157
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1158
    new-instance v0, Lcom/adobe/premiereclip/media/TitleImage;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget-object v2, v2, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/adobe/premiereclip/media/TitleImage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    iget v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1161
    const/4 v1, 0x0

    move v2, v1

    .line 1167
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1168
    invoke-virtual {v0}, Lcom/adobe/premiereclip/media/TitleImage;->getClipAsset()Lcom/adobe/premiereclip/media/ClipAsset;

    move-result-object v1

    iget-object v4, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/adobe/premiereclip/project/Project;->createClip(Lcom/adobe/premiereclip/media/ClipAsset;Ljava/util/ArrayList;)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v1

    check-cast v1, Lcom/adobe/premiereclip/project/sequence/ImageClip;

    .line 1170
    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->setTitleImage(Lcom/adobe/premiereclip/media/TitleImage;)V

    .line 1171
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1173
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0, v3, v2}, Lcom/adobe/premiereclip/project/Project;->addClipsAtIndex(Ljava/util/ArrayList;I)V

    .line 1174
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->timeline:Lcom/adobe/premiereclip/editor/Timeline;

    if-eqz v0, :cond_0

    .line 1175
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->timeline:Lcom/adobe/premiereclip/editor/Timeline;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/editor/Timeline;->addClip(Lcom/adobe/premiereclip/project/sequence/Clip;I)V

    .line 1177
    :cond_0
    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/editor/Editor;->playerReInit(I)V

    .line 1178
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/adobe/premiereclip/editor/Editor;->snapToBeatForClipsOnward(IZ)V

    .line 1179
    return-void

    .line 1164
    :cond_1
    iget v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    add-int/lit8 v1, v1, 0x1

    move v2, v1

    goto :goto_0
.end method

.method public duplicateClip()V
    .locals 3

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/Editor;->pauseInternal()V

    .line 586
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 587
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->copyClip()Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v1

    .line 588
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v2

    .line 589
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipTypeString()Ljava/lang/String;

    move-result-object v0

    .line 588
    invoke-virtual {v2, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapDuplicateClipForClipType(Ljava/lang/String;)V

    .line 591
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 592
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget v2, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/project/Project;->addClipsAtIndex(Ljava/util/ArrayList;I)V

    .line 595
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->timeline:Lcom/adobe/premiereclip/editor/Timeline;

    if-eqz v0, :cond_0

    .line 596
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Editor;->timeline:Lcom/adobe/premiereclip/editor/Timeline;

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    iget v2, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/editor/Timeline;->addClip(Lcom/adobe/premiereclip/project/sequence/Clip;I)V

    .line 598
    :cond_0
    iget v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/Editor;->playerReInit(I)V

    .line 599
    iget v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/Editor;->snapToBeatForClipsOnward(IZ)V

    .line 600
    return-void
.end method

.method public endExport()V
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->sequenceExporter:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->sequenceExporter:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->release()V

    .line 643
    :cond_0
    return-void
.end method

.method public finishTwoFingerSwipe()V
    .locals 12

    .prologue
    const-wide v10, 0x412e848000000000L    # 1000000.0

    .line 780
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 781
    iget v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Editor;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getSelectedMinValue()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/Editor;->setClipStartTime(IF)V

    .line 782
    iget v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Editor;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getSelectedMaxValue()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/Editor;->setClipEndTime(IF)V

    .line 783
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v1

    .line 784
    invoke-virtual {v8}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUsWithSpeed()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v10

    .line 785
    invoke-virtual {v8}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDurationUsWithSpeed()J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v4, v10

    .line 786
    invoke-virtual {v8}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getDurationUs()J

    move-result-wide v6

    long-to-double v6, v6

    div-double/2addr v6, v10

    .line 783
    invoke-virtual/range {v1 .. v7}, Lcom/adobe/premiereclip/metrics/Metrics;->didTwoFingerPan(DDD)V

    .line 787
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/Editor;->delayedInit:Z

    .line 788
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->timeline:Lcom/adobe/premiereclip/editor/Timeline;

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->timeline:Lcom/adobe/premiereclip/editor/Timeline;

    iget v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    invoke-virtual {v8}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUs()J

    move-result-wide v2

    invoke-virtual {v8}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDurationUsWithSpeed()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/premiereclip/editor/Timeline;->updateTimeOfClipAt(IJJ)V

    .line 794
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/Editor;->onScrubbingEnded()V

    .line 796
    return-void
.end method

.method public foundUnavailableClip(I)V
    .locals 2

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 1347
    :cond_0
    :goto_0
    return-void

    .line 1343
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 1344
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Editor;->timeline:Lcom/adobe/premiereclip/editor/Timeline;

    if-eqz v1, :cond_0

    .line 1345
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Editor;->timeline:Lcom/adobe/premiereclip/editor/Timeline;

    invoke-virtual {v1, v0, p1}, Lcom/adobe/premiereclip/editor/Timeline;->resetClip(Lcom/adobe/premiereclip/project/sequence/Clip;I)V

    goto :goto_0
.end method

.method public getCurrentClipIndex()I
    .locals 1

    .prologue
    .line 1006
    iget v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    return v0
.end method

.method public getExportFilePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 334
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH-mm-ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/Project;->getProjectExportName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayerState()Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    if-nez v0, :cond_0

    .line 407
    sget-object v0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;->PAUSED:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    .line 409
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->getPlayerState()Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    move-result-object v0

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->gpuMediaSurfaceView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    return-object v0
.end method

.method public init()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 160
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v3

    .line 162
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/Editor;->checkFileAvailability()V

    .line 164
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/Editor;->insertVideoBug()V

    .line 166
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    .line 167
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->timeline:Lcom/adobe/premiereclip/editor/Timeline;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->timeline:Lcom/adobe/premiereclip/editor/Timeline;

    iget v4, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    invoke-virtual {v0, v3, v4}, Lcom/adobe/premiereclip/editor/Timeline;->setClips(Ljava/util/ArrayList;I)V

    .line 170
    :cond_0
    invoke-static {}, Lcom/adobe/premiereclip/util/ProjectPosterTask;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/Editor;->updateProjectPoster()V

    .line 174
    :cond_1
    iget v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/Editor;->initialized:Z

    if-eqz v0, :cond_5

    .line 184
    :cond_2
    :goto_1
    return v2

    .line 166
    :cond_3
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->clipSaveState:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;

    iget v0, v0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;->clipIndex:I

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->clipSaveState:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;

    iget v0, v0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;->clipIndex:I

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0

    .line 179
    :cond_5
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/Editor;->initMediaEngine()V

    .line 180
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    .line 181
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    invoke-virtual {v0, p0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->setListener(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$Listener;)V

    .line 182
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Editor;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->sequenceExporter:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;

    .line 183
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->sequenceExporter:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;

    invoke-virtual {v0, p0}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->setListener(Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$Listener;)V

    .line 184
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public initPlayback()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 339
    iget-boolean v1, p0, Lcom/adobe/premiereclip/editor/Editor;->initialized:Z

    if-nez v1, :cond_1

    .line 353
    :cond_0
    :goto_0
    return v0

    .line 342
    :cond_1
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->setModeToPlayback()V

    .line 343
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 345
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Editor;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/Editor;->sequenceRenderer:Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;

    iget-object v3, p0, Lcom/adobe/premiereclip/editor/Editor;->clipSaveState:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->init(Landroid/content/Context;Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;)V

    .line 346
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->timeline:Lcom/adobe/premiereclip/editor/Timeline;

    if-eqz v0, :cond_2

    .line 347
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->timeline:Lcom/adobe/premiereclip/editor/Timeline;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/Timeline;->refreshClipsTime(Ljava/util/ArrayList;)V

    .line 348
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/Editor;->onUpdateSequenceDuration()V

    .line 350
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public makeClipIntoStoryCard(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 561
    instance-of v1, v0, Lcom/adobe/premiereclip/project/sequence/ImageClip;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 562
    check-cast v1, Lcom/adobe/premiereclip/project/sequence/ImageClip;

    invoke-virtual {v1, p1}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->setStoryCard(Ljava/lang/String;)V

    .line 563
    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXWriter;->updateClip(Lcom/adobe/premiereclip/project/sequence/Clip;)V

    .line 565
    :cond_0
    return-void
.end method

.method public maybeUpdatePoster()V
    .locals 2

    .prologue
    .line 934
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/Editor;->posterClipDirty:Z

    if-eqz v0, :cond_0

    .line 935
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/Editor;->posterClipDirty:Z

    .line 936
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->timeline:Lcom/adobe/premiereclip/editor/Timeline;

    if-eqz v0, :cond_1

    .line 937
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getPosterClipIndex()I

    move-result v0

    .line 938
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 939
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Editor;->timeline:Lcom/adobe/premiereclip/editor/Timeline;

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/editor/Timeline;->resetClipThumb(I)V

    .line 945
    :cond_0
    :goto_0
    return-void

    .line 942
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/Editor;->updateProjectPoster()V

    goto :goto_0
.end method

.method public onClipChanged(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1094
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getPosterClipIndex()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 1095
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getThumbPath()Ljava/lang/String;

    move-result-object v0

    .line 1097
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public onClipMoved(II)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1069
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/Editor;->pauseInternal()V

    .line 1070
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->getCurrentClipOffset()J

    move-result-wide v4

    .line 1071
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/premiereclip/project/Project;->moveAsset(II)V

    .line 1073
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 1076
    add-int/lit8 v1, p2, -0x1

    if-ltz v1, :cond_1

    .line 1077
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/premiereclip/project/sequence/Clip;

    move-object v2, v1

    .line 1079
    :goto_0
    add-int/lit8 v1, p2, 0x1

    iget-object v6, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v6}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 1080
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 1082
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1083
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1084
    invoke-static {v2, v3, v1}, Lcom/adobe/premiereclip/dcx/DCXWriter;->moveClips(Lcom/adobe/premiereclip/project/sequence/Clip;Ljava/util/ArrayList;Lcom/adobe/premiereclip/project/sequence/Clip;)V

    .line 1085
    iput p2, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    .line 1087
    iget v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    invoke-virtual {p0, v0, v4, v5}, Lcom/adobe/premiereclip/editor/Editor;->playerReInit(IJ)V

    .line 1088
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/Editor;->snapToBeatForClipsOnward(IZ)V

    .line 1090
    return-void

    :cond_0
    move-object v1, v3

    goto :goto_1

    :cond_1
    move-object v2, v3

    goto :goto_0
.end method

.method public onClipRemoved(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1045
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/Editor;->pauseInternal()V

    .line 1046
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 1047
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1, p1}, Lcom/adobe/premiereclip/project/Project;->removeAsset(I)V

    .line 1049
    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXWriter;->removeClip(Lcom/adobe/premiereclip/project/sequence/Clip;)V

    .line 1052
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1053
    iget v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    if-lt v1, v0, :cond_0

    .line 1054
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    .line 1057
    :cond_0
    iget v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    invoke-virtual {p0, v1, v2}, Lcom/adobe/premiereclip/editor/Editor;->setCurrentClipIndex(IZ)V

    .line 1058
    if-nez v0, :cond_1

    .line 1059
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/Editor;->releaseInternal()V

    .line 1065
    :goto_0
    return-void

    .line 1061
    :cond_1
    iget v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/Editor;->playerReInit(I)V

    .line 1062
    iget v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    invoke-virtual {p0, v0, v2}, Lcom/adobe/premiereclip/editor/Editor;->snapToBeatForClipsOnward(IZ)V

    goto :goto_0
.end method

.method public onClipSelected(I)V
    .locals 1

    .prologue
    .line 1040
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/adobe/premiereclip/editor/Editor;->selectClip(IZ)V

    .line 1041
    return-void
.end method

.method public onEnded(Z)V
    .locals 2

    .prologue
    .line 1384
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/Editor;->initialized:Z

    if-eqz v0, :cond_0

    .line 1385
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->editorListener:Lcom/adobe/premiereclip/editor/Editor$Listener;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Editor;->exportFile:Ljava/io/File;

    invoke-interface {v0, v1, p1}, Lcom/adobe/premiereclip/editor/Editor$Listener;->onExportEnded(Ljava/io/File;Z)V

    .line 1387
    :cond_0
    return-void
.end method

.method public onLoadingCompleted()V
    .locals 2

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->editorListener:Lcom/adobe/premiereclip/editor/Editor$Listener;

    if-eqz v0, :cond_0

    .line 1359
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->editorListener:Lcom/adobe/premiereclip/editor/Editor$Listener;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->isPaused()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/adobe/premiereclip/editor/Editor$Listener;->onLoadingCompleted(Z)V

    .line 1361
    :cond_0
    return-void
.end method

.method public onLoadingStarted()V
    .locals 1

    .prologue
    .line 1351
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->editorListener:Lcom/adobe/premiereclip/editor/Editor$Listener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/Editor;->scrubbing:Z

    if-nez v0, :cond_0

    .line 1352
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->editorListener:Lcom/adobe/premiereclip/editor/Editor$Listener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/editor/Editor$Listener;->onLoadingStarted()V

    .line 1354
    :cond_0
    return-void
.end method

.method public onPaused()V
    .locals 1

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->editorListener:Lcom/adobe/premiereclip/editor/Editor$Listener;

    if-eqz v0, :cond_0

    .line 1334
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->editorListener:Lcom/adobe/premiereclip/editor/Editor$Listener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/editor/Editor$Listener;->onPlayerPaused()V

    .line 1336
    :cond_0
    return-void
.end method

.method public onProgress(D)V
    .locals 1

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->editorListener:Lcom/adobe/premiereclip/editor/Editor$Listener;

    invoke-interface {v0, p1, p2}, Lcom/adobe/premiereclip/editor/Editor$Listener;->onExportProgress(D)V

    .line 1380
    return-void
.end method

.method public onProjectPosterSaved(Z)V
    .locals 1

    .prologue
    .line 1107
    if-eqz p1, :cond_0

    .line 1109
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getPosterPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXWriter;->setProjectPoster(Ljava/lang/String;)V

    .line 1110
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->setPosterProperties()V

    .line 1113
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->timeline:Lcom/adobe/premiereclip/editor/Timeline;

    if-eqz v0, :cond_1

    .line 1114
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->timeline:Lcom/adobe/premiereclip/editor/Timeline;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Timeline;->projectPosterSaved()V

    .line 1119
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget-object v0, v0, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/premiereclip/util/BitmapCache;->markBitmapDirty(Ljava/lang/String;)V

    .line 1120
    return-void
.end method

.method public onProjectPosterUpdated()V
    .locals 0

    .prologue
    .line 1102
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/Editor;->updateProjectPoster()V

    .line 1103
    return-void
.end method

.method public onReleased()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1365
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/Editor;->exportMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->sequenceExporter:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;

    if-nez v0, :cond_1

    .line 1366
    :cond_0
    iput-boolean v1, p0, Lcom/adobe/premiereclip/editor/Editor;->exportMode:Z

    .line 1375
    :goto_0
    return-void

    .line 1369
    :cond_1
    iput-boolean v1, p0, Lcom/adobe/premiereclip/editor/Editor;->exportMode:Z

    .line 1370
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->sequenceExporter:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Editor;->sequenceRenderer:Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->init(Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;)V

    .line 1371
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/Editor;->getExportFilePath()Ljava/lang/String;

    move-result-object v0

    .line 1373
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Editor;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/util/Utilities;->getExportMediaFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->exportFile:Ljava/io/File;

    .line 1374
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->sequenceExporter:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Editor;->exportFile:Ljava/io/File;

    iget-boolean v2, p0, Lcom/adobe/premiereclip/editor/Editor;->canAddBumper:Z

    iget-object v3, p0, Lcom/adobe/premiereclip/editor/Editor;->bumperPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->exportSequence(Ljava/io/File;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public onScrubberMoved(F)V
    .locals 6

    .prologue
    const v5, 0x3eaaaaab

    .line 679
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/adobe/premiereclip/editor/Editor;->scrubTimeMs:J

    sub-long/2addr v0, v2

    .line 680
    long-to-float v2, v0

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    cmpg-float v2, v2, v5

    if-gez v2, :cond_0

    .line 681
    const-string/jumbo v2, "SeekRestrict"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " not seeking timeElapsed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :goto_0
    return-void

    .line 684
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adobe/premiereclip/editor/Editor;->scrubTimeMs:J

    .line 685
    iget v0, p0, Lcom/adobe/premiereclip/editor/Editor;->prevSeekOffset:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/adobe/premiereclip/editor/Editor;->prevSeekOffset:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    .line 686
    :cond_1
    const-string/jumbo v0, "SeekRestrict"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " seeking offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/adobe/premiereclip/editor/Editor;->prevSeekOffset:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iput p1, p0, Lcom/adobe/premiereclip/editor/Editor;->prevSeekOffset:F

    .line 692
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->seekCurrentClipToOffset(F)V

    goto :goto_0

    .line 689
    :cond_2
    const-string/jumbo v0, "SeekRestrict"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " not seeking offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/adobe/premiereclip/editor/Editor;->prevSeekOffset:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onScrubbingEnded()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 696
    iput-boolean v1, p0, Lcom/adobe/premiereclip/editor/Editor;->scrubbing:Z

    .line 697
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->setScrubbing(Z)V

    .line 698
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Editor;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getSelectedScrubberValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->seekCurrentClipToOffset(F)V

    .line 699
    return-void
.end method

.method public onScrubbingStarted()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 670
    iput-boolean v2, p0, Lcom/adobe/premiereclip/editor/Editor;->scrubbing:Z

    .line 671
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adobe/premiereclip/editor/Editor;->scrubTimeMs:J

    .line 672
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/adobe/premiereclip/editor/Editor;->prevSeekOffset:F

    .line 673
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/Editor;->pauseInternal()V

    .line 674
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->setScrubbing(Z)V

    .line 675
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->setClipPlayback(Z)V

    .line 676
    return-void
.end method

.method public onThumbMoveEnded(Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;)V
    .locals 14

    .prologue
    const/4 v0, 0x1

    const/4 v10, 0x0

    const-wide v12, 0x412e848000000000L    # 1000000.0

    .line 728
    .line 729
    sget-object v1, Lcom/adobe/premiereclip/editor/Editor$3;->$SwitchMap$com$adobe$premiereclip$editor$RangeSeekBar$Thumb:[I

    invoke-virtual {p1}, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 756
    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->editorListener:Lcom/adobe/premiereclip/editor/Editor$Listener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/editor/Editor$Listener;->onRangeSeekbarThumbMoveEnded()V

    .line 757
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/Editor;->onScrubbingEnded()V

    .line 758
    return-void

    :pswitch_0
    move v6, v0

    .line 733
    :goto_1
    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/Editor;->delayedInit:Z

    .line 735
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 736
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->timeline:Lcom/adobe/premiereclip/editor/Timeline;

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->timeline:Lcom/adobe/premiereclip/editor/Timeline;

    iget v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    invoke-virtual {v8}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUs()J

    move-result-wide v2

    invoke-virtual {v8}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDurationUsWithSpeed()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/premiereclip/editor/Timeline;->updateTimeOfClipAt(IJJ)V

    .line 738
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/Editor;->onUpdateSequenceDuration()V

    .line 741
    :cond_0
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v1

    .line 742
    invoke-virtual {v8}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipTypeString()Ljava/lang/String;

    move-result-object v2

    .line 743
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 744
    invoke-virtual {v8}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUsWithSpeed()J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v4, v12

    .line 745
    invoke-virtual {v8}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDurationUsWithSpeed()J

    move-result-wide v6

    long-to-double v6, v6

    div-double/2addr v6, v12

    .line 746
    invoke-virtual {v8}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getDurationUs()J

    move-result-wide v8

    long-to-double v8, v8

    div-double/2addr v8, v12

    .line 741
    invoke-virtual/range {v1 .. v9}, Lcom/adobe/premiereclip/metrics/Metrics;->didTrimClipForClipType(Ljava/lang/String;Ljava/lang/Boolean;DDD)V

    .line 750
    iget v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    invoke-virtual {p0, v0, v10}, Lcom/adobe/premiereclip/editor/Editor;->snapToBeatForClipsOnward(IZ)V

    goto :goto_0

    :pswitch_1
    move v6, v10

    goto :goto_1

    .line 729
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onThumbMoveStarted(Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;)V
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->editorListener:Lcom/adobe/premiereclip/editor/Editor$Listener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/editor/Editor$Listener;->onRangeSeekbarThumbMoveStarted()V

    .line 723
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/Editor;->onScrubbingStarted()V

    .line 724
    return-void
.end method

.method public onThumbMoved(Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;)V
    .locals 3

    .prologue
    .line 703
    const/4 v0, 0x0

    .line 704
    sget-object v1, Lcom/adobe/premiereclip/editor/Editor$3;->$SwitchMap$com$adobe$premiereclip$editor$RangeSeekBar$Thumb:[I

    invoke-virtual {p1}, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 717
    :goto_0
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/Editor;->onScrubberMoved(F)V

    .line 718
    return-void

    .line 706
    :pswitch_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getSelectedMinValue()F

    move-result v0

    .line 707
    iget v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    invoke-virtual {p0, v1, v0}, Lcom/adobe/premiereclip/editor/Editor;->setClipStartTime(IF)V

    goto :goto_0

    .line 710
    :pswitch_1
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getSelectedMaxValue()F

    move-result v0

    .line 711
    iget v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    invoke-virtual {p0, v1, v0}, Lcom/adobe/premiereclip/editor/Editor;->setClipEndTime(IF)V

    goto :goto_0

    .line 714
    :pswitch_2
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getSelectedScrubberValue()F

    move-result v0

    goto :goto_0

    .line 704
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->pause()V

    .line 466
    :cond_0
    return-void
.end method

.method protected pauseInternal()V
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->pause()V

    .line 471
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->editorListener:Lcom/adobe/premiereclip/editor/Editor$Listener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/editor/Editor$Listener;->onPlayerPaused()V

    .line 473
    :cond_0
    return-void
.end method

.method public playClip()V
    .locals 2

    .prologue
    .line 550
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    if-eqz v0, :cond_1

    .line 551
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/Editor;->delayedInit:Z

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->reinitAudio(Z)V

    .line 553
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/Editor;->delayedInit:Z

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->playClip()V

    .line 557
    :cond_1
    return-void
.end method

.method public playSequence()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 540
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    if-eqz v0, :cond_1

    .line 541
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/Editor;->delayedInit:Z

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->reinitAudio(Z)V

    .line 543
    iput-boolean v1, p0, Lcom/adobe/premiereclip/editor/Editor;->delayedInit:Z

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->playSequence()V

    .line 547
    :cond_1
    return-void
.end method

.method public playerReInit(I)V
    .locals 2

    .prologue
    .line 413
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/adobe/premiereclip/editor/Editor;->playerReInit(IJ)V

    .line 414
    return-void
.end method

.method public playerReInit(IJ)V
    .locals 2

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/Editor;->initialized:Z

    if-nez v0, :cond_2

    .line 418
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/Editor;->init()Z

    move-result v0

    .line 419
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/Editor;->initPlayback()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->editorListener:Lcom/adobe/premiereclip/editor/Editor$Listener;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->editorListener:Lcom/adobe/premiereclip/editor/Editor$Listener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/editor/Editor$Listener;->triggerAddPlayerView()V

    .line 432
    :cond_0
    :goto_0
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-nez v0, :cond_3

    .line 433
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/adobe/premiereclip/editor/Editor;->selectClip(IZ)V

    .line 438
    :goto_1
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/Editor;->onUpdateSequenceDuration()V

    .line 439
    return-void

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->editorListener:Lcom/adobe/premiereclip/editor/Editor$Listener;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->editorListener:Lcom/adobe/premiereclip/editor/Editor$Listener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/editor/Editor$Listener;->triggerRemovePlayerView()V

    goto :goto_0

    .line 429
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/Editor;->pauseInternal()V

    .line 430
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/Editor;->resetSequence()V

    goto :goto_0

    .line 435
    :cond_3
    iput p1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    .line 436
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->seekToClipTime(IJ)V

    goto :goto_1
.end method

.method public release()V
    .locals 1

    .prologue
    .line 480
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/Editor;->release(Z)V

    .line 481
    return-void
.end method

.method public release(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 484
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->sequenceExporter:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;

    if-nez v0, :cond_0

    .line 485
    iput-boolean v2, p0, Lcom/adobe/premiereclip/editor/Editor;->initialized:Z

    .line 515
    :goto_0
    return-void

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    if-eqz v0, :cond_2

    .line 489
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->release()Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;

    move-result-object v0

    .line 490
    if-eqz p1, :cond_1

    .line 491
    iput-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->clipSaveState:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;

    .line 493
    :cond_1
    iput-object v1, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    .line 495
    :cond_2
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->sequenceExporter:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;

    if-eqz v0, :cond_3

    .line 496
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->sequenceExporter:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->release()V

    .line 497
    iput-object v1, p0, Lcom/adobe/premiereclip/editor/Editor;->sequenceExporter:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;

    .line 499
    :cond_3
    invoke-static {}, Lcom/adobe/premiereclip/util/ProjectPosterTask;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 500
    invoke-static {}, Lcom/adobe/premiereclip/util/ProjectPosterTask;->getInstance()Lcom/adobe/premiereclip/util/ProjectPosterTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/util/ProjectPosterTask;->cancel(Z)Z

    .line 501
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->projectPosterResources:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->release()V

    .line 504
    :cond_4
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->sequenceRenderer:Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;

    if-eqz v0, :cond_5

    .line 506
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->sequenceRenderer:Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->release()V

    .line 507
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->sequenceRenderer:Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;
    :try_end_0
    .catch Lcom/google/android/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    :cond_5
    :goto_1
    iput-boolean v2, p0, Lcom/adobe/premiereclip/editor/Editor;->initialized:Z

    .line 514
    iput-boolean v2, p0, Lcom/adobe/premiereclip/editor/Editor;->pendingPosterTask:Z

    goto :goto_0

    .line 508
    :catch_0
    move-exception v0

    .line 509
    invoke-virtual {v0}, Lcom/google/android/exoplayer/ExoPlaybackException;->printStackTrace()V

    goto :goto_1
.end method

.method protected releaseInternal()V
    .locals 2

    .prologue
    .line 518
    const-string/jumbo v0, "Project Poster"

    const-string/jumbo v1, "released"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/Editor;->release()V

    .line 521
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->editorListener:Lcom/adobe/premiereclip/editor/Editor$Listener;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->editorListener:Lcom/adobe/premiereclip/editor/Editor$Listener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/editor/Editor$Listener;->triggerRemovePlayerView()V

    .line 525
    :cond_0
    return-void
.end method

.method public replaceClipAtIndex(ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 568
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 569
    new-instance v1, Lcom/adobe/premiereclip/media/MediaInfo;

    invoke-direct {v1}, Lcom/adobe/premiereclip/media/MediaInfo;-><init>()V

    .line 570
    invoke-virtual {v1, p2}, Lcom/adobe/premiereclip/media/MediaInfo;->setAssetUrl(Ljava/lang/String;)V

    .line 571
    invoke-virtual {v1, p2}, Lcom/adobe/premiereclip/media/MediaInfo;->setLocalPath(Ljava/lang/String;)V

    .line 572
    new-instance v2, Ljava/util/Date;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getFormattedDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 573
    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/media/MediaInfo;->setAssetDate(Ljava/lang/String;)V

    .line 574
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    invoke-static {}, Lcom/adobe/premiereclip/media/MediaManager;->getInstance()Lcom/adobe/premiereclip/media/MediaManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/media/MediaManager;->addAssets(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 576
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 577
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/media/ClipAsset;

    .line 578
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1, p1, v0}, Lcom/adobe/premiereclip/project/Project;->replaceAssetAtIndex(ILcom/adobe/premiereclip/media/ClipAsset;)V

    .line 579
    iget v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/Editor;->playerReInit(I)V

    .line 580
    iget v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/Editor;->snapToBeatForClipsOnward(IZ)V

    .line 582
    :cond_0
    return-void
.end method

.method public saveCurrentClipIndex(I)V
    .locals 4

    .prologue
    .line 1010
    iput p1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    .line 1011
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->clipSaveState:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;

    iput p1, v0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;->clipIndex:I

    .line 1012
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    .line 1013
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    if-ltz p1, :cond_0

    .line 1014
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Editor;->clipSaveState:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUsWithSpeed()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;->clipOffset:J

    .line 1018
    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->clipSaveState:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;->isEnded:Z

    .line 1019
    return-void

    .line 1016
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->clipSaveState:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;->clipOffset:J

    goto :goto_0
.end method

.method public seekToClipSaveState()V
    .locals 4

    .prologue
    .line 375
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->clipSaveState:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;

    iget v0, v0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;->clipIndex:I

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Editor;->clipSaveState:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;

    iget-wide v2, v1, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;->clipOffset:J

    invoke-direct {p0, v0, v2, v3}, Lcom/adobe/premiereclip/editor/Editor;->seekToClipTime(IJ)V

    .line 376
    return-void
.end method

.method public seekToSequenceTime(J)V
    .locals 1

    .prologue
    .line 646
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/Editor;->initialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    if-eqz v0, :cond_0

    .line 647
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/Editor;->pauseInternal()V

    .line 648
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->seekToSequenceTime(J)V

    .line 650
    :cond_0
    return-void
.end method

.method public selectClip(IZ)V
    .locals 1

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    if-eqz v0, :cond_0

    .line 1031
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/Editor;->pauseInternal()V

    .line 1032
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->selectClip(IZ)V

    .line 1034
    :cond_0
    iput p1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    .line 1036
    return-void
.end method

.method public setClipEndTime(IF)V
    .locals 1

    .prologue
    .line 775
    invoke-virtual {p0, p1, p2}, Lcom/adobe/premiereclip/editor/Editor;->setClipEndTimeLocal(IF)V

    .line 776
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXWriter;->updateClip(Lcom/adobe/premiereclip/project/sequence/Clip;)V

    .line 777
    return-void
.end method

.method public setClipEndTimeLocal(IF)V
    .locals 3

    .prologue
    .line 770
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getDurationUs()J

    move-result-wide v0

    long-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-long v0, v0

    .line 771
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v2, p1, v0, v1}, Lcom/adobe/premiereclip/project/Project;->setEndTimeOfClipUs(IJ)V

    .line 772
    return-void
.end method

.method public setClipOptions(Lcom/adobe/premiereclip/editor/Editor$ClipOptions;F)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 803
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getPosterClipIndex()I

    move-result v0

    .line 804
    sget-object v1, Lcom/adobe/premiereclip/editor/Editor$3;->$SwitchMap$com$adobe$premiereclip$editor$Editor$ClipOptions:[I

    invoke-virtual {p1}, Lcom/adobe/premiereclip/editor/Editor$ClipOptions;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 884
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXWriter;->updateClip(Lcom/adobe/premiereclip/project/sequence/Clip;)V

    .line 885
    return-void

    .line 806
    :pswitch_0
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget v2, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    invoke-virtual {v1, v2, p2}, Lcom/adobe/premiereclip/project/Project;->setExposureOnClip(IF)V

    .line 807
    iget v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    if-ne v1, v0, :cond_0

    .line 808
    iput-boolean v7, p0, Lcom/adobe/premiereclip/editor/Editor;->posterClipDirty:Z

    goto :goto_0

    .line 812
    :pswitch_1
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget v2, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    invoke-virtual {v1, v2, p2}, Lcom/adobe/premiereclip/project/Project;->setHighlightsOnClip(IF)V

    .line 813
    iget v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    if-ne v1, v0, :cond_0

    .line 814
    iput-boolean v7, p0, Lcom/adobe/premiereclip/editor/Editor;->posterClipDirty:Z

    goto :goto_0

    .line 818
    :pswitch_2
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    .line 819
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget v3, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    invoke-virtual {v2, v3, v1}, Lcom/adobe/premiereclip/project/Project;->setShadowsOnClip(IF)V

    .line 820
    iget v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    if-ne v1, v0, :cond_0

    .line 821
    iput-boolean v7, p0, Lcom/adobe/premiereclip/editor/Editor;->posterClipDirty:Z

    goto :goto_0

    .line 825
    :pswitch_3
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/Editor;->pauseInternal()V

    .line 826
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getSpeed()F

    move-result v6

    .line 827
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->getCurrentClipOffset()J

    move-result-wide v8

    .line 828
    const-string/jumbo v0, "Player speed"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    invoke-virtual {v0, v1, p2}, Lcom/adobe/premiereclip/project/Project;->setSpeedOfClip(IF)V

    .line 830
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 831
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->timeline:Lcom/adobe/premiereclip/editor/Timeline;

    if-eqz v0, :cond_1

    .line 832
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->timeline:Lcom/adobe/premiereclip/editor/Timeline;

    iget v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUs()J

    move-result-wide v2

    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDurationUsWithSpeed()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/premiereclip/editor/Timeline;->updateTimeOfClipAt(IJJ)V

    .line 833
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/Editor;->onUpdateSequenceDuration()V

    .line 835
    :cond_1
    long-to-float v0, v8

    mul-float/2addr v0, v6

    div-float/2addr v0, p2

    float-to-long v0, v0

    .line 836
    const-string/jumbo v2, "Player speed"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "changed to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    invoke-virtual {v2, v7}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->reinitAudio(Z)V

    .line 838
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    iget v3, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    invoke-virtual {v2, v3, v0, v1}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->seekToClipTime(IJ)V

    .line 839
    iget v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    invoke-virtual {p0, v0, v10}, Lcom/adobe/premiereclip/editor/Editor;->snapToBeatForClipsOnward(IZ)V

    goto/16 :goto_0

    .line 842
    :pswitch_4
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/Editor;->pauseInternal()V

    .line 843
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    invoke-virtual {v0, v1, p2}, Lcom/adobe/premiereclip/project/Project;->setAudioVolumeOfClip(IF)V

    .line 844
    iput-boolean v7, p0, Lcom/adobe/premiereclip/editor/Editor;->delayedInit:Z

    goto/16 :goto_0

    .line 847
    :pswitch_5
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/Editor;->pauseInternal()V

    .line 848
    cmpl-float v0, p2, v3

    if-lez v0, :cond_2

    .line 849
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    invoke-virtual {v0, v1, v7}, Lcom/adobe/premiereclip/project/Project;->setAudioFadeInOfClip(IZ)V

    .line 854
    :goto_1
    iput-boolean v7, p0, Lcom/adobe/premiereclip/editor/Editor;->delayedInit:Z

    goto/16 :goto_0

    .line 852
    :cond_2
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    invoke-virtual {v0, v1, v10}, Lcom/adobe/premiereclip/project/Project;->setAudioFadeInOfClip(IZ)V

    goto :goto_1

    .line 857
    :pswitch_6
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/Editor;->pauseInternal()V

    .line 858
    cmpl-float v0, p2, v3

    if-lez v0, :cond_3

    .line 859
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    invoke-virtual {v0, v1, v7}, Lcom/adobe/premiereclip/project/Project;->setAudioFadeOutOfClip(IZ)V

    .line 864
    :goto_2
    iput-boolean v7, p0, Lcom/adobe/premiereclip/editor/Editor;->delayedInit:Z

    goto/16 :goto_0

    .line 862
    :cond_3
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    invoke-virtual {v0, v1, v10}, Lcom/adobe/premiereclip/project/Project;->setAudioFadeOutOfClip(IZ)V

    goto :goto_2

    .line 867
    :pswitch_7
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/Editor;->pauseInternal()V

    .line 868
    cmpl-float v0, p2, v3

    if-lez v0, :cond_4

    .line 869
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    invoke-virtual {v0, v1, v7}, Lcom/adobe/premiereclip/project/Project;->setSmartVolumeOfClip(IZ)V

    .line 874
    :goto_3
    iput-boolean v7, p0, Lcom/adobe/premiereclip/editor/Editor;->delayedInit:Z

    goto/16 :goto_0

    .line 872
    :cond_4
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    invoke-virtual {v0, v1, v10}, Lcom/adobe/premiereclip/project/Project;->setSmartVolumeOfClip(IZ)V

    goto :goto_3

    .line 877
    :pswitch_8
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/Editor;->pauseInternal()V

    .line 878
    cmpl-float v0, p2, v3

    if-lez v0, :cond_5

    .line 879
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/Project;->muteClip(I)V

    .line 882
    :goto_4
    iput-boolean v7, p0, Lcom/adobe/premiereclip/editor/Editor;->delayedInit:Z

    goto/16 :goto_0

    .line 881
    :cond_5
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/Project;->unMuteClip(I)V

    goto :goto_4

    .line 804
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public setClipPlayback()V
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->setClipPlayback(Z)V

    .line 531
    :cond_0
    return-void
.end method

.method public setClipStartTime(IF)V
    .locals 1

    .prologue
    .line 765
    invoke-virtual {p0, p1, p2}, Lcom/adobe/premiereclip/editor/Editor;->setClipStartTimeLocal(IF)V

    .line 766
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXWriter;->updateClip(Lcom/adobe/premiereclip/project/sequence/Clip;)V

    .line 767
    return-void
.end method

.method public setClipStartTimeLocal(IF)V
    .locals 3

    .prologue
    .line 761
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getDurationUs()J

    move-result-wide v0

    long-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-long v0, v0

    .line 762
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v2, p1, v0, v1}, Lcom/adobe/premiereclip/project/Project;->setStartTimeOfClipUs(IJ)V

    .line 763
    return-void
.end method

.method public setClipTime(FZ)V
    .locals 1

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/Editor;->scrubbing:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->isPaused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1307
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getSelectedScrubberValue()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 1308
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->setSelectedScrubberValue(F)V

    .line 1311
    :cond_1
    return-void
.end method

.method public setCurrentClip(I)V
    .locals 1

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    if-nez v0, :cond_0

    .line 1329
    :goto_0
    return-void

    .line 1328
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/adobe/premiereclip/editor/Editor;->setCurrentClipIndex(IZ)V

    goto :goto_0
.end method

.method protected setCurrentClipIndex(IZ)V
    .locals 1

    .prologue
    .line 1022
    iput p1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    .line 1023
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->timeline:Lcom/adobe/premiereclip/editor/Timeline;

    if-eqz v0, :cond_0

    .line 1024
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->timeline:Lcom/adobe/premiereclip/editor/Timeline;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/premiereclip/editor/Timeline;->setActiveClipIndex(IZ)V

    .line 1026
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/editor/Editor;->notifyClipSelection(Z)V

    .line 1027
    return-void
.end method

.method public setFadeIn(Z)V
    .locals 2

    .prologue
    .line 957
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->fadeInApplied()Z

    move-result v0

    .line 958
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->setFadeIn(Z)V

    .line 960
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->fadeInApplied()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 961
    invoke-static {p1}, Lcom/adobe/premiereclip/dcx/DCXWriter;->setFadeIn(Z)V

    .line 964
    :cond_0
    return-void
.end method

.method public setFadeOut(Z)V
    .locals 2

    .prologue
    .line 967
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->fadeOutApplied()Z

    move-result v0

    .line 968
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->setFadeOut(Z)V

    .line 970
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->fadeOutApplied()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 971
    invoke-static {p1}, Lcom/adobe/premiereclip/dcx/DCXWriter;->setFadeOut(Z)V

    .line 973
    :cond_0
    return-void
.end method

.method public setListener(Lcom/adobe/premiereclip/editor/Editor$Listener;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/Editor;->editorListener:Lcom/adobe/premiereclip/editor/Editor$Listener;

    .line 460
    return-void
.end method

.method public setLook(Lcom/adobe/premiereclip/looks/BaseLook;)V
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->setLook(Lcom/adobe/premiereclip/looks/BaseLook;)V

    .line 800
    return-void
.end method

.method public setPhotoMotion(Z)V
    .locals 2

    .prologue
    .line 976
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->photoMotionApplied()Z

    move-result v0

    .line 977
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->setPhotoMotion(Z)V

    .line 979
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->photoMotionApplied()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 980
    invoke-static {p1}, Lcom/adobe/premiereclip/dcx/DCXWriter;->setPhotoMotion(Z)V

    .line 982
    :cond_0
    return-void
.end method

.method public setScrubbing(Z)V
    .locals 1

    .prologue
    .line 653
    iput-boolean p1, p0, Lcom/adobe/premiereclip/editor/Editor;->scrubbing:Z

    .line 654
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->setScrubbing(Z)V

    .line 657
    :cond_0
    return-void
.end method

.method public setSequenceAudioOptions(Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;F)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 888
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    .line 889
    if-nez v2, :cond_0

    .line 890
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/Editor;->pauseInternal()V

    .line 891
    const-wide/16 v4, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/adobe/premiereclip/editor/Editor;->seekToSequenceTime(J)V

    .line 893
    :cond_0
    sget-object v3, Lcom/adobe/premiereclip/editor/Editor$3;->$SwitchMap$com$adobe$premiereclip$editor$Editor$SequenceAudioOptions:[I

    invoke-virtual {p1}, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 928
    :goto_0
    if-nez v2, :cond_1

    .line 929
    iput-boolean v1, p0, Lcom/adobe/premiereclip/editor/Editor;->delayedInit:Z

    .line 931
    :cond_1
    return-void

    .line 895
    :pswitch_0
    iget-object v3, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v3

    cmpl-float v4, p2, v6

    if-lez v4, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {v3, v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->setAudioFadeInApplied(Z)V

    .line 896
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXWriter;->updateAudioTrack(Lcom/adobe/premiereclip/project/sequence/Sequence;)V

    goto :goto_0

    .line 899
    :pswitch_1
    iget-object v3, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v3

    cmpl-float v4, p2, v6

    if-lez v4, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {v3, v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->setAudioFadeOutApplied(Z)V

    .line 900
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXWriter;->updateAudioTrack(Lcom/adobe/premiereclip/project/sequence/Sequence;)V

    goto :goto_0

    .line 903
    :pswitch_2
    iget-object v3, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v3

    cmpl-float v4, p2, v6

    if-lez v4, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {v3, v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->setAudioDuckApplied(Z)V

    .line 904
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXWriter;->updateAudioTrack(Lcom/adobe/premiereclip/project/sequence/Sequence;)V

    goto :goto_0

    .line 907
    :pswitch_3
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/adobe/premiereclip/project/sequence/Sequence;->setVolume(F)V

    .line 908
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXWriter;->updateAudioTrack(Lcom/adobe/premiereclip/project/sequence/Sequence;)V

    goto :goto_0

    .line 911
    :pswitch_4
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioTrackGroup()Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->removeAllClips()V

    .line 912
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXWriter;->deleteAudioTrack()V

    goto :goto_0

    .line 915
    :pswitch_5
    iget-object v3, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v3

    cmpl-float v4, p2, v6

    if-lez v4, :cond_5

    move v0, v1

    :cond_5
    invoke-virtual {v3, v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->setSnapToBeatApplied(Z)V

    .line 916
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXWriter;->updateAudioTrack(Lcom/adobe/premiereclip/project/sequence/Sequence;)V

    goto/16 :goto_0

    .line 919
    :pswitch_6
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXWriter;->updateAudioTrack(Lcom/adobe/premiereclip/project/sequence/Sequence;)V

    goto/16 :goto_0

    .line 922
    :pswitch_7
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/Editor;->pauseInternal()V

    .line 923
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/adobe/premiereclip/project/sequence/Sequence;->setAudioSyncPace(F)V

    .line 924
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXWriter;->updateAudioTrack(Lcom/adobe/premiereclip/project/sequence/Sequence;)V

    .line 925
    iput-boolean v1, p0, Lcom/adobe/premiereclip/editor/Editor;->delayedInit:Z

    goto/16 :goto_0

    .line 893
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setSequencePlayback()V
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->setClipPlayback(Z)V

    .line 537
    :cond_0
    return-void
.end method

.method public setSequenceTime(J)V
    .locals 1

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->editorListener:Lcom/adobe/premiereclip/editor/Editor$Listener;

    if-eqz v0, :cond_0

    .line 1300
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->editorListener:Lcom/adobe/premiereclip/editor/Editor$Listener;

    invoke-interface {v0, p1, p2}, Lcom/adobe/premiereclip/editor/Editor$Listener;->onPlayerTimeUpdate(J)V

    .line 1302
    :cond_0
    return-void
.end method

.method public setTransition(Z)V
    .locals 2

    .prologue
    .line 948
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->transitionAppliedOnSequence()Z

    move-result v0

    .line 949
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->setGlobalTransition(Z)V

    .line 951
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->transitionAppliedOnSequence()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 952
    invoke-static {p1}, Lcom/adobe/premiereclip/dcx/DCXWriter;->setCrossDissolves(Z)V

    .line 954
    :cond_0
    return-void
.end method

.method public setTrimBar(FF)V
    .locals 2

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    if-eqz v0, :cond_0

    .line 1316
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->setSelectedMaxValue(F)V

    .line 1317
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->setSelectedMinValue(F)V

    .line 1318
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    invoke-virtual {v0, p2}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->setSelectedMaxValue(F)V

    .line 1319
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->setSelectedScrubberValue(F)V

    .line 1321
    :cond_0
    return-void
.end method

.method public setTrimBar(Lcom/adobe/premiereclip/editor/RangeSeekBar;)V
    .locals 2

    .prologue
    .line 661
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    if-nez v0, :cond_0

    .line 667
    :goto_0
    return-void

    .line 664
    :cond_0
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/Editor;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    .line 665
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->setNotifyWhileDragging(Z)V

    .line 666
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    invoke-virtual {v0, p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->setOnRangeSeekBarChangeListener(Lcom/adobe/premiereclip/editor/RangeSeekBar$OnRangeSeekBarChangeListener;)V

    goto :goto_0
.end method

.method public snapToBeatForClipsOnward(IZ)V
    .locals 4

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->snapToBeatController:Lcom/adobe/premiereclip/editor/SnapToBeatController;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/SnapToBeatController;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->snapToBeatController:Lcom/adobe/premiereclip/editor/SnapToBeatController;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/SnapToBeatController;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1196
    :cond_0
    :goto_0
    return-void

    .line 1186
    :cond_1
    const-string/jumbo v0, "Editor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "snapping beats for clips from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    .line 1188
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1190
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1191
    :goto_1
    if-ge p1, v1, :cond_2

    .line 1192
    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/editor/Editor;->snapToBeatForClip(IZ)V

    .line 1193
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1191
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1195
    :cond_2
    invoke-static {v2}, Lcom/adobe/premiereclip/dcx/DCXWriter;->updateClips(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public splitClip()V
    .locals 10

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/Editor;->pauseInternal()V

    .line 604
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 605
    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Clip;->copyClip()Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v0

    .line 607
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 608
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget v3, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/adobe/premiereclip/project/Project;->addClipsAtIndex(Ljava/util/ArrayList;I)V

    .line 611
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getSelectedScrubberValue()F

    move-result v0

    .line 613
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/Editor;->snapToBeatController:Lcom/adobe/premiereclip/editor/SnapToBeatController;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/editor/SnapToBeatController;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/Editor;->snapToBeatController:Lcom/adobe/premiereclip/editor/SnapToBeatController;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/editor/SnapToBeatController;->isReady()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 615
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/Editor;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getSyncPoints()Ljava/util/ArrayList;

    move-result-object v2

    .line 616
    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getDurationUs()J

    move-result-wide v4

    long-to-float v3, v4

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getSpeed()F

    move-result v4

    div-float/2addr v3, v4

    float-to-long v4, v3

    .line 617
    long-to-float v3, v4

    mul-float/2addr v0, v3

    float-to-long v6, v0

    invoke-static {v2, v6, v7}, Lcom/adobe/premiereclip/editor/SnapToBeatController;->findClosestSyncPoint(Ljava/util/ArrayList;J)I

    move-result v0

    .line 619
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    iget-wide v2, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->time:J

    long-to-float v0, v2

    long-to-float v2, v4

    div-float/2addr v0, v2

    move v6, v0

    .line 622
    :goto_0
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    .line 623
    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipTypeString()Ljava/lang/String;

    move-result-object v1

    float-to-double v2, v6

    iget-object v4, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    .line 625
    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v4

    iget v5, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDurationUsWithSpeed()J

    move-result-wide v4

    const-wide/32 v8, 0xf4240

    div-long/2addr v4, v8

    long-to-double v4, v4

    .line 622
    invoke-virtual/range {v0 .. v5}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapSplitClipForClipType(Ljava/lang/String;DD)V

    .line 626
    iget v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    invoke-virtual {p0, v0, v6}, Lcom/adobe/premiereclip/editor/Editor;->setClipEndTime(IF)V

    .line 627
    iget v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v6}, Lcom/adobe/premiereclip/editor/Editor;->setClipStartTime(IF)V

    .line 629
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->timeline:Lcom/adobe/premiereclip/editor/Timeline;

    if-eqz v0, :cond_0

    .line 630
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Editor;->timeline:Lcom/adobe/premiereclip/editor/Timeline;

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    iget v2, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/editor/Timeline;->addClip(Lcom/adobe/premiereclip/project/sequence/Clip;I)V

    .line 631
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 632
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->timeline:Lcom/adobe/premiereclip/editor/Timeline;

    iget v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUs()J

    move-result-wide v2

    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDurationUsWithSpeed()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/premiereclip/editor/Timeline;->updateTimeOfClipAt(IJJ)V

    .line 634
    :cond_0
    iget v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/Editor;->playerReInit(I)V

    .line 636
    iget v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentClipIndex:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/Editor;->snapToBeatForClipsOnward(IZ)V

    .line 637
    return-void

    :cond_1
    move v6, v0

    goto/16 :goto_0
.end method

.method public startExport(Z)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 357
    iget-boolean v1, p0, Lcom/adobe/premiereclip/editor/Editor;->initialized:Z

    if-nez v1, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/Editor;->exportMode:Z

    .line 361
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget-object v1, v1, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/adobe/premiereclip/dcx/DCXReader;->isBumperEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/Editor;->canAddBumper:Z

    .line 362
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget-object v0, v0, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXReader;->getBumperPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->bumperPath:Ljava/lang/String;

    .line 363
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->release()Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->clipSaveState:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;

    goto :goto_0

    .line 361
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public storeClipSaveState()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->player:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->getClipSaveState()Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->clipSaveState:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;

    .line 372
    :cond_0
    return-void
.end method

.method public updateProjectPoster()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1123
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getThumbPath()Ljava/lang/String;

    move-result-object v0

    .line 1125
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/project/Project;->posterPropertiesEqual(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1126
    const-string/jumbo v1, "Editor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Aborting poster generation for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    :goto_0
    return-void

    .line 1130
    :cond_0
    const-string/jumbo v1, "Project Poster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "firstclip: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    if-nez v0, :cond_1

    .line 1132
    const-string/jumbo v0, "Project Poster"

    const-string/jumbo v1, "set null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0, v4}, Lcom/adobe/premiereclip/project/Project;->setPosterPath(Ljava/lang/String;)V

    .line 1134
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0, v4}, Lcom/adobe/premiereclip/project/Project;->setPosterHashValue(Ljava/lang/String;)V

    .line 1135
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0, v4}, Lcom/adobe/premiereclip/project/Project;->setNormalPosterPath(Ljava/lang/String;)V

    .line 1136
    invoke-static {v4}, Lcom/adobe/premiereclip/dcx/DCXWriter;->setProjectPoster(Ljava/lang/String;)V

    goto :goto_0

    .line 1139
    :cond_1
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/Editor;->initialized:Z

    if-nez v0, :cond_2

    .line 1140
    monitor-enter p0

    .line 1141
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/Editor;->pendingPosterTask:Z

    .line 1142
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1145
    :cond_2
    iput-boolean v5, p0, Lcom/adobe/premiereclip/editor/Editor;->pendingPosterTask:Z

    .line 1146
    invoke-static {}, Lcom/adobe/premiereclip/util/ProjectPosterTask;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1147
    const/4 v0, 0x6

    const-string/jumbo v1, "Editor"

    const-string/jumbo v2, "Found ProjectPosterTask running. Task should not be running"

    invoke-static {v0, v1, v2}, Lcom/crashlytics/android/Crashlytics;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1149
    :cond_3
    invoke-static {}, Lcom/adobe/premiereclip/util/ProjectPosterTask;->getInstance()Lcom/adobe/premiereclip/util/ProjectPosterTask;

    move-result-object v0

    .line 1150
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Editor;->projectPosterResources:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/util/ProjectPosterTask;->setProjectPosterResources(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;)V

    .line 1151
    invoke-virtual {v0, p0}, Lcom/adobe/premiereclip/util/ProjectPosterTask;->setTaskCompletedListener(Lcom/adobe/premiereclip/util/ProjectPosterTask$TaskCompleted;)V

    .line 1152
    sget-object v1, Lcom/adobe/premiereclip/util/Utilities;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v6, [Lcom/adobe/premiereclip/project/Project;

    iget-object v3, p0, Lcom/adobe/premiereclip/editor/Editor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/util/ProjectPosterTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
