.class public Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;
.super Landroid/app/Activity;
.source "ClipPlayerActivity.java"

# interfaces
.implements Lcom/adobe/premiereclip/clipPlayer/CustomVideoView$PlayPauseListener;


# instance fields
.field private controlsAutoHideTimeout:I

.field private countDownTimer:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$CustomCountDownTimer;

.field private initialPlayCall:Z

.field private loadingSpinner:Landroid/widget/ImageView;

.field private mBackBtn:Landroid/widget/ImageView;

.field private mScrubSetterTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mScrubbing:Z

.field private mTopBar:Landroid/widget/LinearLayout;

.field private mVideoView:Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;

.field private mediaControls:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$CustomMediaController;

.field private position:I

.field private replaying:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    iput v1, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->position:I

    .line 59
    const/16 v0, 0x1388

    iput v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->controlsAutoHideTimeout:I

    .line 60
    iput-boolean v1, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->replaying:Z

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->initialPlayCall:Z

    .line 62
    iput-boolean v1, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mScrubbing:Z

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->position:I

    return v0
.end method

.method static synthetic access$002(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;I)I
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->position:I

    return p1
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;)Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mVideoView:Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->replaying:Z

    return v0
.end method

.method static synthetic access$202(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;Z)Z
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->replaying:Z

    return p1
.end method

.method static synthetic access$300(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->hideSpinner()V

    return-void
.end method

.method static synthetic access$400(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->showSpinner()V

    return-void
.end method

.method static synthetic access$500(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;)Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$CustomCountDownTimer;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->countDownTimer:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$CustomCountDownTimer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->showMediaControls()V

    return-void
.end method

.method static synthetic access$700(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mScrubbing:Z

    return v0
.end method

.method static synthetic access$702(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;Z)Z
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mScrubbing:Z

    return p1
.end method

.method static synthetic access$800(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;)Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$CustomMediaController;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mediaControls:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$CustomMediaController;

    return-object v0
.end method

.method static synthetic access$900(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->hideMediaControls()V

    return-void
.end method

.method private convertToPx(I)I
    .locals 2

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 386
    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private hideMediaControls()V
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mTopBar:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mediaControls:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$CustomMediaController;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$CustomMediaController;->hide()V

    .line 374
    return-void
.end method

.method private hideSpinner()V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->loadingSpinner:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->loadingSpinner:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 369
    return-void
.end method

.method private mediaControlsShown()Z
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 329
    const/4 v0, 0x1

    .line 331
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showMediaControls()V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mTopBar:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->bringToFront()V

    .line 379
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mediaControls:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$CustomMediaController;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$CustomMediaController;->showIndefinite()V

    .line 380
    return-void
.end method

.method private showSpinner()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->loadingSpinner:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->loadingSpinner:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 363
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->loadingSpinner:Landroid/widget/ImageView;

    const v1, 0x7f050030

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 364
    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mVideoView:Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mVideoView:Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;->stopPlayback()V

    .line 294
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 295
    const v0, 0x7f05002d

    const v1, 0x7f05002e

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->overridePendingTransition(II)V

    .line 296
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 271
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 286
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mVideoView:Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;->requestLayout()V

    .line 287
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/16 v5, 0x1a

    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const/4 v1, 0x0

    .line 71
    new-instance v2, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    const v0, 0x7f0a0525

    .line 72
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f0a0506

    .line 73
    invoke-virtual {p0, v3}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, p0, v0, v3, v4}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 76
    new-instance v0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$1;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$1;-><init>(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;)V

    invoke-virtual {v2, v0}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->setAcceptButtonListener(Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;)V

    .line 84
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "videoPlayUri"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 90
    :goto_0
    if-nez v1, :cond_0

    .line 91
    invoke-virtual {v2}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    .line 95
    :cond_0
    const v0, 0x7f04001e

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->setContentView(I)V

    .line 98
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mediaControls:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$CustomMediaController;

    if-nez v0, :cond_1

    .line 99
    new-instance v0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$CustomMediaController;

    invoke-direct {v0, p0, p0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$CustomMediaController;-><init>(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mediaControls:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$CustomMediaController;

    .line 102
    :cond_1
    const v0, 0x7f1200ee

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mTopBar:Landroid/widget/LinearLayout;

    .line 105
    const v0, 0x7f1200ed

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;

    iput-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mVideoView:Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;

    .line 106
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mVideoView:Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;

    invoke-virtual {v0, p0}, Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;->setPlayPauseListener(Lcom/adobe/premiereclip/clipPlayer/CustomVideoView$PlayPauseListener;)V

    .line 109
    :try_start_1
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mVideoView:Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;

    iget-object v3, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mediaControls:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$CustomMediaController;

    invoke-virtual {v0, v3}, Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 111
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mVideoView:Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;->setVideoURI(Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 119
    :goto_1
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mVideoView:Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;->requestFocus()Z

    .line 121
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->loadingSpinner:Landroid/widget/ImageView;

    .line 122
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->loadingSpinner:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020181

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0, v5}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->convertToPx(I)I

    move-result v1

    invoke-direct {p0, v5}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->convertToPx(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 124
    const/16 v1, 0xd

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 125
    iget-object v1, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->loadingSpinner:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    const v0, 0x7f1200ec

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 127
    iget-object v1, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->loadingSpinner:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 130
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mVideoView:Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;

    new-instance v1, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$2;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$2;-><init>(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 143
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mVideoView:Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;

    new-instance v1, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$3;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$3;-><init>(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 171
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mVideoView:Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;

    new-instance v1, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$4;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$4;-><init>(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 179
    new-instance v0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$CustomCountDownTimer;

    iget v1, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->controlsAutoHideTimeout:I

    int-to-long v2, v1

    iget v1, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->controlsAutoHideTimeout:I

    int-to-long v4, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$CustomCountDownTimer;-><init>(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;JJ)V

    iput-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->countDownTimer:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$CustomCountDownTimer;

    .line 181
    const-string/jumbo v0, "finish"

    .line 183
    :try_start_2
    invoke-virtual {p0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "playbackEndBehave"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 189
    :goto_2
    const-string/jumbo v1, "restart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mVideoView:Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;

    new-instance v1, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$5;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$5;-><init>(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 208
    :goto_3
    const v0, 0x7f1200ef

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mBackBtn:Landroid/widget/ImageView;

    .line 209
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mBackBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$7;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$7;-><init>(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    invoke-virtual {p0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 217
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 113
    :catch_1
    move-exception v0

    .line 114
    const-string/jumbo v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    invoke-virtual {v2}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    goto/16 :goto_1

    .line 185
    :catch_2
    move-exception v1

    .line 186
    const-string/jumbo v1, "ClipPlayer"

    const-string/jumbo v2, "Playback end behavior not specified, taking default"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mVideoView:Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;

    new-instance v1, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$6;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$6;-><init>(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    goto :goto_3
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 221
    iput-object v1, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mVideoView:Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;

    .line 222
    iput-object v1, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->loadingSpinner:Landroid/widget/ImageView;

    .line 223
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mediaControls:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$CustomMediaController;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$CustomMediaController;->hideImmediate()V

    .line 224
    iput-object v1, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mediaControls:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$CustomMediaController;

    .line 225
    iput-object v1, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mBackBtn:Landroid/widget/ImageView;

    .line 226
    iput-object v1, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mTopBar:Landroid/widget/LinearLayout;

    .line 227
    iput-object v1, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->countDownTimer:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$CustomCountDownTimer;

    .line 228
    iput-object v1, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mScrubSetterTask:Landroid/os/AsyncTask;

    .line 229
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 230
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 251
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 252
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mVideoView:Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mVideoView:Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->position:I

    .line 255
    :cond_0
    invoke-static {}, Lcom/adobe/mobile/Config;->pauseCollectingLifecycleData()V

    .line 256
    return-void
.end method

.method public onPauseClip()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->countDownTimer:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$CustomCountDownTimer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$CustomCountDownTimer;->restart()V

    .line 325
    return-void
.end method

.method public onPlayClip()V
    .locals 1

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->initialPlayCall:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mediaControlsShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    :cond_0
    invoke-direct {p0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->showMediaControls()V

    .line 313
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->countDownTimer:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$CustomCountDownTimer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$CustomCountDownTimer;->restart()V

    .line 319
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->initialPlayCall:Z

    .line 320
    return-void

    .line 317
    :cond_1
    invoke-direct {p0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->hideMediaControls()V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 243
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 245
    const-string/jumbo v0, "Position"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->position:I

    .line 246
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mVideoView:Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;

    iget v1, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->position:I

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;->seekTo(I)V

    .line 247
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 260
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 261
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mVideoView:Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mVideoView:Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;

    iget v1, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->position:I

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;->seekTo(I)V

    .line 264
    :cond_0
    invoke-direct {p0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->showSpinner()V

    .line 265
    invoke-direct {p0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->hideMediaControls()V

    .line 266
    invoke-static {p0}, Lcom/adobe/mobile/Config;->collectLifecycleData(Landroid/app/Activity;)V

    .line 267
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 234
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 236
    const-string/jumbo v0, "Position"

    iget-object v1, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mVideoView:Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;->getCurrentPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 237
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mVideoView:Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;->pause()V

    .line 238
    return-void
.end method

.method public onSeek()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 336
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->countDownTimer:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$CustomCountDownTimer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$CustomCountDownTimer;->restart()V

    .line 337
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mScrubSetterTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mScrubSetterTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 339
    :cond_0
    iput-boolean v1, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mScrubbing:Z

    .line 341
    new-instance v0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$8;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$8;-><init>(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mScrubSetterTask:Landroid/os/AsyncTask;

    .line 357
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mScrubSetterTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 358
    return-void
.end method

.method public touchPlayer(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->mediaControlsShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    invoke-direct {p0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->hideMediaControls()V

    .line 307
    :goto_0
    return-void

    .line 304
    :cond_0
    invoke-direct {p0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->showMediaControls()V

    .line 305
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->countDownTimer:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$CustomCountDownTimer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$CustomCountDownTimer;->restart()V

    goto :goto_0
.end method
