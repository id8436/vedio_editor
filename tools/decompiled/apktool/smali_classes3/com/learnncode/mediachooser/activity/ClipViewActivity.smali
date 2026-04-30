.class public Lcom/learnncode/mediachooser/activity/ClipViewActivity;
.super Landroid/app/Activity;
.source "ClipViewActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/learnncode/mediachooser/p;


# instance fields
.field a:Landroid/view/SurfaceView;

.field b:Landroid/media/MediaPlayer;

.field c:Lcom/learnncode/mediachooser/m;

.field d:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/learnncode/mediachooser/activity/ClipViewActivity;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->closeAndGoBack()V

    return-void
.end method

.method private closeAndGoBack()V
    .locals 0

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->onBackPressed()V

    .line 124
    return-void
.end method

.method private h()V
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x0

    .line 63
    sget v0, Lcom/learnncode/mediachooser/j;->contanier_surface_view:I

    invoke-virtual {p0, v0}, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 64
    invoke-virtual {p0}, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 65
    invoke-virtual {p0}, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 66
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 67
    add-int/lit8 v2, v2, -0x14

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 68
    const/high16 v2, 0x3f100000    # 0.5625f

    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 69
    invoke-virtual {v1, v5, v4, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 70
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    return-void
.end method

.method private i()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 76
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->a:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    .line 77
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->a:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v2

    .line 79
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    int-to-float v3, v0

    .line 80
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    int-to-float v4, v0

    .line 83
    div-float v5, v3, v4

    .line 85
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->a:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 87
    cmpl-float v3, v4, v3

    if-lez v3, :cond_0

    .line 88
    int-to-float v3, v2

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 89
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 90
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    sub-int v2, v1, v2

    div-int/lit8 v2, v2, 0x2

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v2, v6, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 96
    :goto_0
    iget-object v1, p0, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->a:Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    return-void

    .line 92
    :cond_0
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 93
    int-to-float v1, v1

    div-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->d:Landroid/widget/Button;

    new-instance v1, Lcom/learnncode/mediachooser/activity/b;

    invoke-direct {v1, p0}, Lcom/learnncode/mediachooser/activity/b;-><init>(Lcom/learnncode/mediachooser/activity/ClipViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->b:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/learnncode/mediachooser/activity/c;

    invoke-direct {v1, p0}, Lcom/learnncode/mediachooser/activity/c;-><init>(Lcom/learnncode/mediachooser/activity/ClipViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 112
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 224
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 217
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 210
    :cond_0
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 194
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 186
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    .line 202
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public final onBackPressed()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 118
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 119
    sget v0, Lcom/learnncode/mediachooser/g;->push_right_in:I

    sget v1, Lcom/learnncode/mediachooser/g;->push_right_out:I

    invoke-virtual {p0, v0, v1}, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->overridePendingTransition(II)V

    .line 120
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    sget v0, Lcom/learnncode/mediachooser/k;->activity_clipview:I

    invoke-virtual {p0, v0}, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->setContentView(I)V

    .line 36
    invoke-direct {p0}, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->h()V

    .line 38
    sget v0, Lcom/learnncode/mediachooser/j;->videoSurface:I

    invoke-virtual {p0, v0}, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->a:Landroid/view/SurfaceView;

    .line 39
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->a:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 40
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 42
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->b:Landroid/media/MediaPlayer;

    .line 43
    new-instance v0, Lcom/learnncode/mediachooser/m;

    invoke-direct {v0, p0}, Lcom/learnncode/mediachooser/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->c:Lcom/learnncode/mediachooser/m;

    .line 44
    sget v0, Lcom/learnncode/mediachooser/j;->backArrowImageViewFromMediaChooser:I

    invoke-virtual {p0, v0}, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->d:Landroid/widget/Button;

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->b:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 48
    iget-object v1, p0, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->b:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "videoPlayUri"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v1, p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 49
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 59
    :goto_0
    invoke-direct {p0}, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->j()V

    .line 60
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 52
    :catch_1
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 54
    :catch_2
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 56
    :catch_3
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->c:Lcom/learnncode/mediachooser/m;

    invoke-virtual {v0, p0}, Lcom/learnncode/mediachooser/m;->setMediaPlayer(Lcom/learnncode/mediachooser/p;)V

    .line 153
    iget-object v1, p0, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->c:Lcom/learnncode/mediachooser/m;

    sget v0, Lcom/learnncode/mediachooser/j;->videoSurfaceContainer:I

    invoke-virtual {p0, v0}, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Lcom/learnncode/mediachooser/m;->setAnchorView(Landroid/view/ViewGroup;)V

    .line 154
    invoke-direct {p0}, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->i()V

    .line 155
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 156
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->c:Lcom/learnncode/mediachooser/m;

    invoke-virtual {v0}, Lcom/learnncode/mediachooser/m;->d()V

    .line 157
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 235
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 236
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->b:Landroid/media/MediaPlayer;

    .line 243
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 140
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 141
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .prologue
    .line 146
    return-void
.end method
