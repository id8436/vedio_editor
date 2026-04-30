.class public Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;
.super Landroid/app/Activity;
.source "VideoPlaybackActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private currentPosition:I

.field private mBackButton:Landroid/widget/ImageView;

.field private mCountDownTimer:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;

.field private mCurrentDuration:Landroid/widget/TextView;

.field private mFastForwardButton:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mIsVideoReadyToBePlayed:Z

.field private mIsVideoSizeKnown:Z

.field private mLoadingSpinner:Landroid/widget/ProgressBar;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPlayPauseButton:Landroid/widget/ImageView;

.field private mPlayerControls:Landroid/widget/RelativeLayout;

.field private mPreview:Landroid/view/SurfaceView;

.field private mRewindButton:Landroid/widget/ImageView;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mTotalDuration:Landroid/widget/TextView;

.field private mUpdateTimeTask:Ljava/lang/Runnable;

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private offsetDuration:I

.field private pauseDoneOnce:Z

.field private pauseState:Z

.field private playStarted:Z

.field private playerContainerLandscapeSize:[I

.field private playerContainerPortraitSize:[I

.field private restart:Z

.field private videoUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    const/16 v0, 0x1388

    iput v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->offsetDuration:I

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->videoUri:Landroid/net/Uri;

    .line 75
    iput-boolean v1, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mIsVideoSizeKnown:Z

    .line 76
    iput-boolean v1, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mIsVideoReadyToBePlayed:Z

    .line 77
    iput v1, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->currentPosition:I

    .line 78
    iput-boolean v1, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->pauseDoneOnce:Z

    .line 79
    iput-boolean v1, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->pauseState:Z

    .line 80
    iput-boolean v1, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->restart:Z

    .line 81
    iput-boolean v1, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->playStarted:Z

    .line 89
    new-instance v0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$1;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$1;-><init>(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mUpdateTimeTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->getFormattedDuration(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;I)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->seekMediaPlayer(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mCountDownTimer:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mUpdateTimeTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;II)I
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->progressToTimer(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->updateProgressBar()V

    return-void
.end method

.method static synthetic access$1500(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mPlayerControls:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mBackButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mCurrentDuration:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;I)I
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->currentPosition:I

    return p1
.end method

.method static synthetic access$400(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;II)I
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->timeToProgress(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->pauseMediaPlayer()V

    return-void
.end method

.method static synthetic access$800(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->resumeMediaPlayer()V

    return-void
.end method

.method static synthetic access$900(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->offsetDuration:I

    return v0
.end method

.method private addBackButtonListener()V
    .locals 2

    .prologue
    .line 490
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mBackButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$6;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$6;-><init>(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 496
    return-void
.end method

.method private addPlayerControlListeners()V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mPlayPauseButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$2;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$2;-><init>(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mFastForwardButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$3;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$3;-><init>(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mRewindButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$4;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$4;-><init>(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 450
    return-void
.end method

.method private calculateDisplayDimensions()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 507
    invoke-virtual {p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 508
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 509
    invoke-virtual {v0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 511
    invoke-virtual {p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v6, :cond_0

    move v0, v1

    .line 513
    :goto_0
    if-eqz v0, :cond_1

    .line 514
    iget v0, v3, Landroid/graphics/Point;->y:I

    .line 519
    :goto_1
    mul-int/lit8 v4, v0, 0x9

    div-int/lit8 v4, v4, 0x10

    .line 520
    new-array v5, v6, [I

    aput v0, v5, v2

    aput v4, v5, v1

    iput-object v5, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->playerContainerPortraitSize:[I

    .line 522
    iget v0, v3, Landroid/graphics/Point;->x:I

    .line 523
    mul-int/lit8 v3, v0, 0x10

    div-int/lit8 v3, v3, 0x9

    .line 525
    new-array v4, v6, [I

    aput v3, v4, v2

    aput v0, v4, v1

    iput-object v4, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->playerContainerLandscapeSize:[I

    .line 527
    const-string/jumbo v0, "VideoPlayback"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "portrait "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->playerContainerPortraitSize:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->playerContainerPortraitSize:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "    landscape "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->playerContainerLandscapeSize:[I

    aget v2, v4, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->playerContainerLandscapeSize:[I

    aget v1, v3, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    return-void

    :cond_0
    move v0, v2

    .line 511
    goto :goto_0

    .line 517
    :cond_1
    iget v0, v3, Landroid/graphics/Point;->x:I

    goto :goto_1
.end method

.method private fitVideoInScreen(II)V
    .locals 6

    .prologue
    .line 311
    iget v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mVideoWidth:I

    .line 312
    iget v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mVideoHeight:I

    .line 315
    int-to-double v0, p1

    iget v2, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mVideoWidth:I

    int-to-double v2, v2

    iget v4, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mVideoHeight:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 317
    if-le v0, p2, :cond_0

    .line 319
    iget v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mVideoWidth:I

    int-to-double v0, v0

    iget v2, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mVideoHeight:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    int-to-double v2, p2

    mul-double/2addr v0, v2

    double-to-int p1, v0

    .line 321
    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p1, p2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 322
    return-void

    :cond_0
    move p2, v0

    goto :goto_0
.end method

.method private getFormattedDuration(I)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 581
    const v0, 0x36ee80

    if-ge p1, v0, :cond_0

    .line 582
    const-string/jumbo v0, "%02d:%02d"

    new-array v1, v9, [Ljava/lang/Object;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, p1

    .line 583
    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, p1

    .line 584
    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v6, p1

    .line 585
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 584
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v8

    .line 582
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 589
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "%02d:%02d:%02d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, p1

    .line 590
    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, p1

    .line 591
    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v6, p1

    .line 592
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 591
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v8

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, p1

    .line 593
    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v6, p1

    .line 594
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 593
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v9

    .line 589
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private hideMediaControls()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 540
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mPlayerControls:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 541
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mBackButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 542
    return-void
.end method

.method private hideSpinner()V
    .locals 2

    .prologue
    .line 536
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mLoadingSpinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 537
    return-void
.end method

.method private initMediaPlayer()V
    .locals 2

    .prologue
    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 328
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 329
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 330
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->videoUri:Landroid/net/Uri;

    invoke-virtual {v0, p0, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 331
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 332
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 333
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 334
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 335
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :goto_0
    return-void

    .line 338
    :catch_0
    move-exception v0

    .line 339
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 340
    invoke-direct {p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->showVideoUnavailableDialog()V

    goto :goto_0
.end method

.method private pauseMediaPlayer()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 357
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 359
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mPlayPauseButton:Landroid/widget/ImageView;

    const v1, 0x7f020246

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 360
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mCountDownTimer:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;->cancelTimer()V

    .line 361
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mCountDownTimer:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 363
    :cond_0
    return-void
.end method

.method private playBackComplete()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 393
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 394
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mCurrentDuration:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->getFormattedDuration(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    iput v2, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->currentPosition:I

    .line 398
    invoke-direct {p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->pauseMediaPlayer()V

    .line 399
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 400
    return-void
.end method

.method private progressToTimer(II)I
    .locals 4

    .prologue
    .line 381
    int-to-double v0, p1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    int-to-double v2, p2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 384
    return v0
.end method

.method private releaseMediaPlayer()V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 371
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 372
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 374
    :cond_1
    return-void
.end method

.method private resumeMediaPlayer()V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 348
    invoke-direct {p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->updateProgressBar()V

    .line 349
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mPlayPauseButton:Landroid/widget/ImageView;

    const v1, 0x7f020245

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 350
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mCountDownTimer:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;->cancelTimer()V

    .line 351
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mCountDownTimer:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 353
    :cond_0
    return-void
.end method

.method private seekMediaPlayer(I)V
    .locals 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 454
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->timeToProgress(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 455
    return-void
.end method

.method private setFullScreenUI()V
    .locals 2

    .prologue
    .line 499
    invoke-static {p0}, Lcom/adobe/premiereclip/util/ScreenUtils;->fullscreen(Landroid/app/Activity;)V

    .line 500
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->setRequestedOrientation(I)V

    .line 501
    invoke-virtual {p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 502
    invoke-virtual {p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 503
    return-void
.end method

.method private setPlayerDimensions()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 301
    invoke-virtual {p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 302
    :goto_0
    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->playerContainerLandscapeSize:[I

    aget v0, v0, v2

    iget-object v2, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->playerContainerLandscapeSize:[I

    aget v1, v2, v1

    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->fitVideoInScreen(II)V

    .line 308
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 301
    goto :goto_0

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->playerContainerPortraitSize:[I

    aget v0, v0, v2

    iget-object v1, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->playerContainerLandscapeSize:[I

    aget v1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->fitVideoInScreen(II)V

    goto :goto_1
.end method

.method private setSeekBarListener()V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$5;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$5;-><init>(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 487
    return-void
.end method

.method private showMediaControls()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 545
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mPlayerControls:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 546
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mBackButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 547
    return-void
.end method

.method private showSpinner()V
    .locals 2

    .prologue
    .line 532
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mLoadingSpinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 533
    return-void
.end method

.method private showVideoUnavailableDialog()V
    .locals 4

    .prologue
    .line 550
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mPlayerControls:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 551
    new-instance v0, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    const v1, 0x7f0a0525

    .line 552
    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0506

    .line 553
    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 556
    new-instance v1, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$7;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$7;-><init>(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->setAcceptButtonListener(Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;)V

    .line 562
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    .line 563
    return-void
.end method

.method private startVideoPlayback()V
    .locals 3

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->hideSpinner()V

    .line 281
    invoke-direct {p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->showMediaControls()V

    .line 282
    invoke-direct {p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->setPlayerDimensions()V

    .line 283
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mCountDownTimer:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;->cancelTimer()V

    .line 284
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mCountDownTimer:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 285
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->currentPosition:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 287
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->currentPosition:I

    iget-object v2, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->timeToProgress(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 288
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mTotalDuration:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->getFormattedDuration(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->pauseDoneOnce:Z

    if-eqz v0, :cond_2

    .line 291
    invoke-direct {p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->pauseMediaPlayer()V

    .line 292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->pauseDoneOnce:Z

    .line 298
    :cond_1
    :goto_0
    return-void

    .line 294
    :cond_2
    iget-boolean v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->playStarted:Z

    if-nez v0, :cond_1

    .line 295
    invoke-direct {p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->resumeMediaPlayer()V

    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->playStarted:Z

    goto :goto_0
.end method

.method private timeToProgress(II)I
    .locals 4

    .prologue
    .line 388
    int-to-double v0, p1

    int-to-double v2, p2

    div-double/2addr v0, v2

    .line 389
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private updateProgressBar()V
    .locals 4

    .prologue
    .line 377
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mUpdateTimeTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 378
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 180
    invoke-direct {p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->releaseMediaPlayer()V

    .line 181
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 182
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->pauseState:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mIsVideoReadyToBePlayed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mIsVideoSizeKnown:Z

    if-eqz v0, :cond_0

    .line 224
    iget-boolean v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->restart:Z

    if-eqz v0, :cond_1

    .line 225
    invoke-direct {p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->playBackComplete()V

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 194
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 195
    invoke-direct {p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->setPlayerDimensions()V

    .line 196
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->requestWindowFeature(I)Z

    .line 113
    const v0, 0x7f040037

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->setContentView(I)V

    .line 115
    const v0, 0x7f12017d

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mPlayerControls:Landroid/widget/RelativeLayout;

    .line 116
    const v0, 0x7f12017c

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mPreview:Landroid/view/SurfaceView;

    .line 117
    const v0, 0x7f12017e

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mSeekBar:Landroid/widget/SeekBar;

    .line 118
    const v0, 0x7f120181

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mPlayPauseButton:Landroid/widget/ImageView;

    .line 119
    const v0, 0x7f120182

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mFastForwardButton:Landroid/widget/ImageView;

    .line 120
    const v0, 0x7f120183

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mRewindButton:Landroid/widget/ImageView;

    .line 121
    const v0, 0x7f120185

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mLoadingSpinner:Landroid/widget/ProgressBar;

    .line 122
    const v0, 0x7f120180

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mCurrentDuration:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f12017f

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mTotalDuration:Landroid/widget/TextView;

    .line 124
    const v0, 0x7f120184

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mBackButton:Landroid/widget/ImageView;

    .line 126
    invoke-direct {p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->addPlayerControlListeners()V

    .line 127
    invoke-direct {p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->setSeekBarListener()V

    .line 128
    invoke-direct {p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->addBackButtonListener()V

    .line 130
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mPreview:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mHolder:Landroid/view/SurfaceHolder;

    .line 131
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 133
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mHandler:Landroid/os/Handler;

    .line 134
    new-instance v0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;

    const-wide/16 v2, 0xfa0

    const-wide/16 v4, 0x32

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;-><init>(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;JJ)V

    iput-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mCountDownTimer:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;

    .line 136
    invoke-direct {p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->calculateDisplayDimensions()V

    .line 139
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "videoPlayUri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->videoUri:Landroid/net/Uri;

    .line 140
    invoke-virtual {p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "playbackEndBehave"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "restart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->restart:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->videoUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->showVideoUnavailableDialog()V

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->showSpinner()V

    .line 150
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 187
    invoke-direct {p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->releaseMediaPlayer()V

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mCountDownTimer:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;

    .line 189
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 190
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 258
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mCountDownTimer:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;->cancelTimer()V

    .line 259
    invoke-direct {p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->releaseMediaPlayer()V

    .line 260
    invoke-virtual {p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->finish()V

    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 200
    sparse-switch p2, :sswitch_data_0

    .line 218
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    .line 202
    :sswitch_0
    invoke-direct {p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->pauseMediaPlayer()V

    .line 203
    iget-object v1, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mCountDownTimer:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;->cancelTimer()V

    .line 204
    invoke-direct {p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->showSpinner()V

    goto :goto_0

    .line 207
    :sswitch_1
    invoke-direct {p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->hideSpinner()V

    .line 208
    iget-object v1, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->resumeMediaPlayer()V

    goto :goto_0

    .line 213
    :sswitch_2
    iget-object v1, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->resumeMediaPlayer()V

    goto :goto_0

    .line 200
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x2bd -> :sswitch_0
        0x2be -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 160
    iput-boolean v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->pauseDoneOnce:Z

    .line 161
    iput-boolean v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->pauseState:Z

    .line 162
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->currentPosition:I

    .line 164
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 165
    invoke-direct {p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->pauseMediaPlayer()V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mCountDownTimer:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;->cancelTimer()V

    .line 168
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 169
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mIsVideoReadyToBePlayed:Z

    .line 250
    iget-boolean v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mIsVideoSizeKnown:Z

    if-eqz v0, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->startVideoPlayback()V

    .line 253
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 173
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->pauseState:Z

    .line 175
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 154
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 155
    invoke-direct {p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->setFullScreenUI()V

    .line 156
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3

    .prologue
    .line 234
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 235
    :cond_0
    const-string/jumbo v0, "VideoPlayback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid video width("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") or height("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_1
    :goto_0
    return-void

    .line 238
    :cond_2
    iput p3, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mVideoHeight:I

    .line 239
    iput p2, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mVideoWidth:I

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mIsVideoSizeKnown:Z

    .line 242
    iget-boolean v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mIsVideoReadyToBePlayed:Z

    if-eqz v0, :cond_1

    .line 243
    invoke-direct {p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->startVideoPlayback()V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .prologue
    .line 267
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->initMediaPlayer()V

    .line 277
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .prologue
    .line 271
    return-void
.end method

.method public touchMediaControls(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 577
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mPlayerControls:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 578
    return-void
.end method

.method public touchPlayer(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mPlayerControls:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 567
    invoke-direct {p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->hideMediaControls()V

    .line 574
    :goto_0
    return-void

    .line 570
    :cond_0
    invoke-direct {p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->showMediaControls()V

    .line 571
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mCountDownTimer:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;->cancelTimer()V

    .line 572
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->mCountDownTimer:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_0
.end method
