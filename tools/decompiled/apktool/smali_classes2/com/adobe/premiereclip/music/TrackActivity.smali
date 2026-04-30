.class public Lcom/adobe/premiereclip/music/TrackActivity;
.super Lcom/adobe/premiereclip/editor/TopOfEditorActivity;
.source "TrackActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field private mAdapter:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

.field private mAddButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private mLocation:Ljava/lang/String;

.field private mProjKey:Ljava/lang/String;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mTitle:Landroid/widget/TextView;

.field private mUpdateTimeTask:Ljava/lang/Runnable;

.field private musicPlayer:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;-><init>()V

    .line 223
    new-instance v0, Lcom/adobe/premiereclip/music/TrackActivity$1;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/music/TrackActivity$1;-><init>(Lcom/adobe/premiereclip/music/TrackActivity;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity;->mUpdateTimeTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/music/TrackActivity;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity;->musicPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/music/TrackActivity;JJ)I
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/adobe/premiereclip/music/TrackActivity;->getProgressPercentage(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/adobe/premiereclip/music/TrackActivity;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/adobe/premiereclip/music/TrackActivity;->resumeMusicPlayer()V

    return-void
.end method

.method static synthetic access$1300(Lcom/adobe/premiereclip/music/TrackActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity;->mAddButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/music/TrackActivity;)Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity;->mAdapter:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/adobe/premiereclip/music/TrackActivity;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/adobe/premiereclip/music/TrackActivity;->songCompletionTask()V

    return-void
.end method

.method static synthetic access$400(Lcom/adobe/premiereclip/music/TrackActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/adobe/premiereclip/music/TrackActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity;->mUpdateTimeTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/adobe/premiereclip/music/TrackActivity;II)I
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/music/TrackActivity;->progressToTimer(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/adobe/premiereclip/music/TrackActivity;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/adobe/premiereclip/music/TrackActivity;->pauseMusicPlayer()V

    return-void
.end method

.method private getProgressPercentage(JJ)I
    .locals 5

    .prologue
    const-wide/16 v2, 0x3e8

    .line 242
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 244
    div-long v0, p1, v2

    long-to-int v0, v0

    int-to-long v0, v0

    .line 245
    div-long v2, p3, v2

    long-to-int v2, v2

    int-to-long v2, v2

    .line 248
    long-to-double v0, v0

    long-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    return v0
.end method

.method private pauseMusicPlayer()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackActivity;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 199
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity;->musicPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity;->musicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity;->musicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 204
    :cond_0
    return-void
.end method

.method private progressToTimer(II)I
    .locals 6

    .prologue
    .line 255
    .line 256
    div-int/lit16 v0, p2, 0x3e8

    .line 257
    int-to-double v2, p1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    int-to-double v0, v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 260
    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method private resumeMusicPlayer()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity;->musicPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity;->musicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/premiereclip/music/TrackActivity;->updateProgressBar()V

    .line 211
    return-void
.end method

.method private songCompletionTask()V
    .locals 2

    .prologue
    .line 269
    const-string/jumbo v0, "Tracks"

    const-string/jumbo v1, "finished playing song"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackActivity;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 271
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity;->mAdapter:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->getCurrentSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    .line 272
    if-eqz v0, :cond_0

    .line 273
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity;->mAdapter:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->setPause()V

    .line 275
    return-void
.end method

.method private startMusicPlayer()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity;->musicPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity;->musicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 193
    invoke-virtual {p0}, Lcom/adobe/premiereclip/music/TrackActivity;->updateProgressBar()V

    .line 195
    :cond_0
    return-void
.end method


# virtual methods
.method public addTrack(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 278
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity;->mAdapter:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->getCurrentTrack()Lcom/adobe/premiereclip/project/sequence/AudioClip;

    move-result-object v0

    .line 279
    if-eqz v0, :cond_0

    .line 280
    const-string/jumbo v1, "Tracks"

    const-string/jumbo v2, "add pressed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-static {}, Lcom/adobe/premiereclip/project/ProjectManager;->getInstance()Lcom/adobe/premiereclip/project/ProjectManager;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/music/TrackActivity;->mProjKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/project/ProjectManager;->getProjectWithKey(Ljava/lang/String;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioTrackGroup()Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->replaceAudioClip(Lcom/adobe/premiereclip/project/sequence/AudioClip;)V

    .line 284
    invoke-static {}, Lcom/adobe/premiereclip/project/ProjectManager;->getInstance()Lcom/adobe/premiereclip/project/ProjectManager;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/music/TrackActivity;->mProjKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/project/ProjectManager;->getProjectWithKey(Ljava/lang/String;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/premiereclip/dcx/DCXWriter;->addAudioTrack(Lcom/adobe/premiereclip/project/sequence/Sequence;)V

    .line 285
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 286
    const-string/jumbo v2, "track_location"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/adobe/premiereclip/music/TrackActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/adobe/premiereclip/project/sequence/AudioClip;->songName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const-string/jumbo v0, "track_selected"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 288
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/music/TrackActivity;->setResult(ILandroid/content/Intent;)V

    .line 290
    invoke-virtual {p0}, Lcom/adobe/premiereclip/music/TrackActivity;->onBackPressed()V

    .line 292
    :cond_0
    return-void
.end method

.method public final closeAndGoBack(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/adobe/premiereclip/music/TrackActivity;->onBackPressed()V

    .line 296
    return-void
.end method

.method public final onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 149
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity;->mAdapter:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->getCurrentSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackActivity;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 154
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity;->musicPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity;->musicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity;->musicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity;->musicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 160
    iput-object v2, p0, Lcom/adobe/premiereclip/music/TrackActivity;->musicPlayer:Landroid/media/MediaPlayer;

    .line 162
    :cond_2
    invoke-super {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onBackPressed()V

    .line 163
    const v0, 0x7f05002d

    const v1, 0x7f05002e

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/music/TrackActivity;->overridePendingTransition(II)V

    .line 164
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .prologue
    .line 266
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v0, 0x7f040032

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/music/TrackActivity;->setContentView(I)V

    .line 75
    invoke-static {p0}, Lcom/h/a/d;->a(Landroid/app/Activity;)V

    .line 77
    const v0, 0x7f12016d

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/music/TrackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 78
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 79
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackActivity;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity;->mHandler:Landroid/os/Handler;

    .line 82
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity;->musicPlayer:Landroid/media/MediaPlayer;

    .line 83
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity;->musicPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 84
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity;->musicPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 86
    const v0, 0x7f12016a

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/music/TrackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity;->mTitle:Landroid/widget/TextView;

    .line 87
    const v0, 0x7f12016c

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/music/TrackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity;->mAddButton:Landroid/widget/Button;

    .line 88
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity;->mAddButton:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 90
    invoke-virtual {p0}, Lcom/adobe/premiereclip/music/TrackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "category"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-virtual {p0}, Lcom/adobe/premiereclip/music/TrackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-virtual {p0}, Lcom/adobe/premiereclip/music/TrackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "name"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    const-string/jumbo v4, "Hammersmith"

    iput-object v4, p0, Lcom/adobe/premiereclip/music/TrackActivity;->mLocation:Ljava/lang/String;

    .line 97
    invoke-virtual {p0}, Lcom/adobe/premiereclip/music/TrackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a036e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 98
    invoke-static {p0, v2}, Lcom/adobe/premiereclip/music/SoundTrackManager;->getSongsinMediaStoreforAlbum(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 114
    :cond_0
    :goto_0
    new-instance v1, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    invoke-direct {v1, p0, v0}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;-><init>(Lcom/adobe/premiereclip/music/TrackActivity;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/adobe/premiereclip/music/TrackActivity;->mAdapter:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    .line 115
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackActivity;->mAdapter:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 116
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {p0}, Lcom/adobe/premiereclip/music/TrackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "project_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity;->mProjKey:Ljava/lang/String;

    .line 119
    return-void

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/premiereclip/music/TrackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a036f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 101
    invoke-static {p0, v2}, Lcom/adobe/premiereclip/music/SoundTrackManager;->getSongsinMediaStoreforArtist(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/premiereclip/music/TrackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a04d4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 104
    invoke-static {p0}, Lcom/adobe/premiereclip/music/SoundTrackManager;->getAllSongsinMediaStore(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 106
    :cond_3
    invoke-virtual {p0}, Lcom/adobe/premiereclip/music/TrackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a03e9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 107
    const-string/jumbo v0, "Premiere Clip Themes"

    iput-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity;->mLocation:Ljava/lang/String;

    .line 108
    invoke-static {p0}, Lcom/adobe/premiereclip/music/SoundTrackManager;->getClipSoundTracks(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 110
    :cond_4
    invoke-virtual {p0}, Lcom/adobe/premiereclip/music/TrackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0453

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-static {p0, v2}, Lcom/adobe/premiereclip/music/SoundTrackManager;->getSongsinMediaStoreforPlaylist(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 130
    invoke-super {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onPause()V

    .line 131
    invoke-static {}, Lcom/adobe/mobile/Config;->pauseCollectingLifecycleData()V

    .line 132
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 124
    invoke-super {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onResume()V

    .line 125
    invoke-static {p0}, Lcom/adobe/mobile/Config;->collectLifecycleData(Landroid/app/Activity;)V

    .line 126
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 136
    invoke-super {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onStart()V

    .line 137
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity;->mAdapter:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->setCurrentProgress()V

    .line 142
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity;->mAdapter:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->setPause()V

    .line 143
    invoke-direct {p0}, Lcom/adobe/premiereclip/music/TrackActivity;->pauseMusicPlayer()V

    .line 144
    invoke-super {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onStop()V

    .line 145
    return-void
.end method

.method public prepareMusicPlayer(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackActivity;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity;->musicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 172
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity;->musicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 173
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity;->musicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 174
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity;->musicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 177
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity;->mAdapter:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->getCurrentSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_0

    .line 179
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 183
    :catch_1
    move-exception v0

    .line 184
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 185
    :catch_2
    move-exception v0

    .line 186
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateProgressBar()V
    .locals 4

    .prologue
    .line 217
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackActivity;->mUpdateTimeTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 218
    return-void
.end method
