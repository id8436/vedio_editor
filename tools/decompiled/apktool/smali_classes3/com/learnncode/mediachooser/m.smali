.class public Lcom/learnncode/mediachooser/m;
.super Landroid/widget/FrameLayout;
.source "VideoControllerView.java"


# instance fields
.field a:Ljava/lang/StringBuilder;

.field b:Ljava/util/Formatter;

.field private c:Lcom/learnncode/mediachooser/p;

.field private d:Landroid/content/Context;

.field private e:Landroid/view/ViewGroup;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/ProgressBar;

.field private h:Landroid/widget/TextView;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Landroid/widget/ImageButton;

.field private m:Landroid/os/Handler;

.field private n:Landroid/view/View$OnClickListener;

.field private o:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 111
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/learnncode/mediachooser/m;-><init>(Landroid/content/Context;Z)V

    .line 113
    const-string/jumbo v0, "VideoControllerView"

    const-string/jumbo v1, "VideoControllerView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 103
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 90
    new-instance v0, Lcom/learnncode/mediachooser/q;

    invoke-direct {v0, p0}, Lcom/learnncode/mediachooser/q;-><init>(Lcom/learnncode/mediachooser/m;)V

    iput-object v0, p0, Lcom/learnncode/mediachooser/m;->m:Landroid/os/Handler;

    .line 364
    new-instance v0, Lcom/learnncode/mediachooser/n;

    invoke-direct {v0, p0}, Lcom/learnncode/mediachooser/n;-><init>(Lcom/learnncode/mediachooser/m;)V

    iput-object v0, p0, Lcom/learnncode/mediachooser/m;->n:Landroid/view/View$OnClickListener;

    .line 418
    new-instance v0, Lcom/learnncode/mediachooser/o;

    invoke-direct {v0, p0}, Lcom/learnncode/mediachooser/o;-><init>(Lcom/learnncode/mediachooser/m;)V

    iput-object v0, p0, Lcom/learnncode/mediachooser/m;->o:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 104
    iput-object p1, p0, Lcom/learnncode/mediachooser/m;->d:Landroid/content/Context;

    .line 105
    iput-boolean p2, p0, Lcom/learnncode/mediachooser/m;->k:Z

    .line 107
    const-string/jumbo v0, "VideoControllerView"

    const-string/jumbo v1, "VideoControllerView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 162
    sget v0, Lcom/learnncode/mediachooser/j;->pause:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/learnncode/mediachooser/m;->l:Landroid/widget/ImageButton;

    .line 163
    iget-object v0, p0, Lcom/learnncode/mediachooser/m;->l:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/learnncode/mediachooser/m;->l:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 165
    iget-object v0, p0, Lcom/learnncode/mediachooser/m;->l:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/learnncode/mediachooser/m;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    :cond_0
    sget v0, Lcom/learnncode/mediachooser/j;->mediacontroller_progress:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/learnncode/mediachooser/m;->g:Landroid/widget/ProgressBar;

    .line 172
    iget-object v0, p0, Lcom/learnncode/mediachooser/m;->g:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    .line 173
    iget-object v0, p0, Lcom/learnncode/mediachooser/m;->g:Landroid/widget/ProgressBar;

    instance-of v0, v0, Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/learnncode/mediachooser/m;->g:Landroid/widget/ProgressBar;

    check-cast v0, Landroid/widget/SeekBar;

    .line 175
    iget-object v1, p0, Lcom/learnncode/mediachooser/m;->o:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/learnncode/mediachooser/m;->g:Landroid/widget/ProgressBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 180
    :cond_2
    sget v0, Lcom/learnncode/mediachooser/j;->time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/learnncode/mediachooser/m;->h:Landroid/widget/TextView;

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/learnncode/mediachooser/m;->a:Ljava/lang/StringBuilder;

    .line 182
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/learnncode/mediachooser/m;->a:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/learnncode/mediachooser/m;->b:Ljava/util/Formatter;

    .line 184
    return-void
.end method

.method static synthetic a(Lcom/learnncode/mediachooser/m;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/learnncode/mediachooser/m;->h()V

    return-void
.end method

.method static synthetic a(Lcom/learnncode/mediachooser/m;Z)Z
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/learnncode/mediachooser/m;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/learnncode/mediachooser/m;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/learnncode/mediachooser/m;->m:Landroid/os/Handler;

    return-object v0
.end method

.method private b(I)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 264
    div-int/lit16 v0, p1, 0x3e8

    .line 266
    rem-int/lit8 v1, v0, 0x3c

    .line 267
    div-int/lit8 v2, v0, 0x3c

    rem-int/lit8 v2, v2, 0x3c

    .line 268
    div-int/lit16 v0, v0, 0xe10

    .line 270
    iget-object v3, p0, Lcom/learnncode/mediachooser/m;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 271
    if-lez v0, :cond_0

    .line 272
    iget-object v3, p0, Lcom/learnncode/mediachooser/m;->b:Ljava/util/Formatter;

    const-string/jumbo v4, "%d:%02d:%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-virtual {v3, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 274
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/learnncode/mediachooser/m;->b:Ljava/util/Formatter;

    const-string/jumbo v3, "%02d:%02d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-virtual {v0, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/learnncode/mediachooser/m;)Lcom/learnncode/mediachooser/p;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/learnncode/mediachooser/m;->c:Lcom/learnncode/mediachooser/p;

    return-object v0
.end method

.method static synthetic d(Lcom/learnncode/mediachooser/m;)I
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/learnncode/mediachooser/m;->g()I

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/learnncode/mediachooser/m;)Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/learnncode/mediachooser/m;->j:Z

    return v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/learnncode/mediachooser/m;->c:Lcom/learnncode/mediachooser/p;

    if-nez v0, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/learnncode/mediachooser/m;->l:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/learnncode/mediachooser/m;->c:Lcom/learnncode/mediachooser/p;

    invoke-interface {v0}, Lcom/learnncode/mediachooser/p;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/learnncode/mediachooser/m;->l:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic f(Lcom/learnncode/mediachooser/m;)Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/learnncode/mediachooser/m;->i:Z

    return v0
.end method

.method private g()I
    .locals 6

    .prologue
    .line 279
    iget-object v0, p0, Lcom/learnncode/mediachooser/m;->c:Lcom/learnncode/mediachooser/p;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/learnncode/mediachooser/m;->j:Z

    if-eqz v0, :cond_2

    .line 280
    :cond_0
    const/4 v0, 0x0

    .line 298
    :cond_1
    :goto_0
    return v0

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/learnncode/mediachooser/m;->c:Lcom/learnncode/mediachooser/p;

    invoke-interface {v0}, Lcom/learnncode/mediachooser/p;->d()I

    move-result v0

    .line 284
    iget-object v1, p0, Lcom/learnncode/mediachooser/m;->c:Lcom/learnncode/mediachooser/p;

    invoke-interface {v1}, Lcom/learnncode/mediachooser/p;->c()I

    move-result v1

    .line 285
    iget-object v2, p0, Lcom/learnncode/mediachooser/m;->g:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_4

    .line 286
    if-lez v1, :cond_3

    .line 288
    const-wide/16 v2, 0x3e8

    int-to-long v4, v0

    mul-long/2addr v2, v4

    int-to-long v4, v1

    div-long/2addr v2, v4

    .line 289
    iget-object v4, p0, Lcom/learnncode/mediachooser/m;->g:Landroid/widget/ProgressBar;

    long-to-int v2, v2

    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 291
    :cond_3
    iget-object v2, p0, Lcom/learnncode/mediachooser/m;->c:Lcom/learnncode/mediachooser/p;

    invoke-interface {v2}, Lcom/learnncode/mediachooser/p;->f()I

    move-result v2

    .line 292
    iget-object v3, p0, Lcom/learnncode/mediachooser/m;->g:Landroid/widget/ProgressBar;

    mul-int/lit8 v2, v2, 0xa

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 295
    :cond_4
    iget-object v2, p0, Lcom/learnncode/mediachooser/m;->h:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 296
    iget-object v2, p0, Lcom/learnncode/mediachooser/m;->h:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/learnncode/mediachooser/m;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/learnncode/mediachooser/m;->c:Lcom/learnncode/mediachooser/p;

    if-nez v0, :cond_0

    .line 395
    :goto_0
    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/learnncode/mediachooser/m;->c:Lcom/learnncode/mediachooser/p;

    invoke-interface {v0}, Lcom/learnncode/mediachooser/p;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/learnncode/mediachooser/m;->c:Lcom/learnncode/mediachooser/p;

    invoke-interface {v0}, Lcom/learnncode/mediachooser/p;->b()V

    .line 394
    :goto_1
    invoke-virtual {p0}, Lcom/learnncode/mediachooser/m;->d()V

    goto :goto_0

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/learnncode/mediachooser/m;->c:Lcom/learnncode/mediachooser/p;

    invoke-interface {v0}, Lcom/learnncode/mediachooser/p;->a()V

    goto :goto_1
.end method


# virtual methods
.method protected a()Landroid/view/View;
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/learnncode/mediachooser/m;->d:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 154
    sget v1, Lcom/learnncode/mediachooser/k;->media_controller:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/learnncode/mediachooser/m;->f:Landroid/view/View;

    .line 156
    iget-object v0, p0, Lcom/learnncode/mediachooser/m;->f:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/learnncode/mediachooser/m;->a(Landroid/view/View;)V

    .line 158
    iget-object v0, p0, Lcom/learnncode/mediachooser/m;->f:Landroid/view/View;

    return-object v0
.end method

.method public a(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 222
    iget-boolean v0, p0, Lcom/learnncode/mediachooser/m;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/learnncode/mediachooser/m;->e:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 223
    invoke-direct {p0}, Lcom/learnncode/mediachooser/m;->g()I

    .line 224
    iget-object v0, p0, Lcom/learnncode/mediachooser/m;->l:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/learnncode/mediachooser/m;->l:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 227
    :cond_0
    invoke-direct {p0}, Lcom/learnncode/mediachooser/m;->f()V

    .line 229
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x50

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 235
    iget-object v1, p0, Lcom/learnncode/mediachooser/m;->e:Landroid/view/ViewGroup;

    invoke-virtual {v1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    iput-boolean v4, p0, Lcom/learnncode/mediachooser/m;->i:Z

    .line 238
    :cond_1
    invoke-virtual {p0}, Lcom/learnncode/mediachooser/m;->d()V

    .line 243
    iget-object v0, p0, Lcom/learnncode/mediachooser/m;->m:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 245
    iget-object v0, p0, Lcom/learnncode/mediachooser/m;->m:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 246
    if-eqz p1, :cond_2

    .line 247
    iget-object v1, p0, Lcom/learnncode/mediachooser/m;->m:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 248
    iget-object v1, p0, Lcom/learnncode/mediachooser/m;->m:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 250
    :cond_2
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/learnncode/mediachooser/m;->a(I)V

    .line 192
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/learnncode/mediachooser/m;->a(I)V

    .line 261
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/learnncode/mediachooser/m;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/learnncode/mediachooser/m;->l:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/learnncode/mediachooser/m;->c:Lcom/learnncode/mediachooser/p;

    if-nez v0, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/learnncode/mediachooser/m;->c:Lcom/learnncode/mediachooser/p;

    invoke-interface {v0}, Lcom/learnncode/mediachooser/p;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 378
    iget-object v0, p0, Lcom/learnncode/mediachooser/m;->l:Landroid/widget/ImageButton;

    sget v1, Lcom/learnncode/mediachooser/i;->ic_media_pause:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 380
    :cond_2
    iget-object v0, p0, Lcom/learnncode/mediachooser/m;->l:Landroid/widget/ImageButton;

    sget v1, Lcom/learnncode/mediachooser/i;->ic_media_play:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 315
    iget-object v1, p0, Lcom/learnncode/mediachooser/m;->c:Lcom/learnncode/mediachooser/p;

    if-nez v1, :cond_1

    .line 361
    :cond_0
    :goto_0
    return v0

    .line 319
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 320
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 321
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    move v1, v0

    .line 322
    :goto_1
    const/16 v4, 0x4f

    if-eq v3, v4, :cond_2

    const/16 v4, 0x55

    if-eq v3, v4, :cond_2

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_4

    .line 325
    :cond_2
    if-eqz v1, :cond_0

    .line 326
    invoke-direct {p0}, Lcom/learnncode/mediachooser/m;->h()V

    .line 327
    invoke-virtual {p0, v2}, Lcom/learnncode/mediachooser/m;->a(I)V

    .line 328
    iget-object v1, p0, Lcom/learnncode/mediachooser/m;->l:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 329
    iget-object v1, p0, Lcom/learnncode/mediachooser/m;->l:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    goto :goto_0

    :cond_3
    move v1, v2

    .line 321
    goto :goto_1

    .line 333
    :cond_4
    const/16 v4, 0x7e

    if-ne v3, v4, :cond_5

    .line 334
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/learnncode/mediachooser/m;->c:Lcom/learnncode/mediachooser/p;

    invoke-interface {v1}, Lcom/learnncode/mediachooser/p;->e()Z

    move-result v1

    if-nez v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/learnncode/mediachooser/m;->c:Lcom/learnncode/mediachooser/p;

    invoke-interface {v1}, Lcom/learnncode/mediachooser/p;->a()V

    .line 336
    invoke-virtual {p0}, Lcom/learnncode/mediachooser/m;->d()V

    .line 337
    invoke-virtual {p0, v2}, Lcom/learnncode/mediachooser/m;->a(I)V

    goto :goto_0

    .line 340
    :cond_5
    const/16 v4, 0x56

    if-eq v3, v4, :cond_6

    const/16 v4, 0x7f

    if-ne v3, v4, :cond_7

    .line 342
    :cond_6
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/learnncode/mediachooser/m;->c:Lcom/learnncode/mediachooser/p;

    invoke-interface {v1}, Lcom/learnncode/mediachooser/p;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/learnncode/mediachooser/m;->c:Lcom/learnncode/mediachooser/p;

    invoke-interface {v1}, Lcom/learnncode/mediachooser/p;->b()V

    .line 344
    invoke-virtual {p0}, Lcom/learnncode/mediachooser/m;->d()V

    .line 345
    invoke-virtual {p0, v2}, Lcom/learnncode/mediachooser/m;->a(I)V

    goto :goto_0

    .line 348
    :cond_7
    const/16 v4, 0x19

    if-eq v3, v4, :cond_8

    const/16 v4, 0x18

    if-eq v3, v4, :cond_8

    const/16 v4, 0xa4

    if-ne v3, v4, :cond_9

    .line 352
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 353
    :cond_9
    const/4 v4, 0x4

    if-eq v3, v4, :cond_a

    const/16 v4, 0x52

    if-ne v3, v4, :cond_b

    .line 354
    :cond_a
    if-eqz v1, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/learnncode/mediachooser/m;->c()V

    goto/16 :goto_0

    .line 360
    :cond_b
    invoke-virtual {p0, v2}, Lcom/learnncode/mediachooser/m;->a(I)V

    .line 361
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/learnncode/mediachooser/m;->c:Lcom/learnncode/mediachooser/p;

    if-nez v0, :cond_0

    .line 404
    :goto_0
    return-void

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/learnncode/mediachooser/m;->c:Lcom/learnncode/mediachooser/p;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/learnncode/mediachooser/p;->a(I)V

    .line 403
    iget-object v0, p0, Lcom/learnncode/mediachooser/m;->l:Landroid/widget/ImageButton;

    sget v1, Lcom/learnncode/mediachooser/i;->ic_media_play:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/learnncode/mediachooser/m;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/learnncode/mediachooser/m;->f:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/learnncode/mediachooser/m;->a(Landroid/view/View;)V

    .line 120
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x1

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 309
    invoke-virtual {p0, v0}, Lcom/learnncode/mediachooser/m;->a(I)V

    .line 310
    return v0
.end method

.method public setAnchorView(Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 133
    iput-object p1, p0, Lcom/learnncode/mediachooser/m;->e:Landroid/view/ViewGroup;

    .line 135
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 140
    invoke-virtual {p0}, Lcom/learnncode/mediachooser/m;->removeAllViews()V

    .line 141
    invoke-virtual {p0}, Lcom/learnncode/mediachooser/m;->a()Landroid/view/View;

    move-result-object v1

    .line 142
    invoke-virtual {p0, v1, v0}, Lcom/learnncode/mediachooser/m;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    invoke-virtual {p0}, Lcom/learnncode/mediachooser/m;->b()V

    .line 144
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/learnncode/mediachooser/m;->l:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/learnncode/mediachooser/m;->l:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/learnncode/mediachooser/m;->g:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/learnncode/mediachooser/m;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    .line 482
    :cond_1
    invoke-direct {p0}, Lcom/learnncode/mediachooser/m;->f()V

    .line 483
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 484
    return-void
.end method

.method public setMediaPlayer(Lcom/learnncode/mediachooser/p;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/learnncode/mediachooser/m;->c:Lcom/learnncode/mediachooser/p;

    .line 124
    invoke-virtual {p0}, Lcom/learnncode/mediachooser/m;->d()V

    .line 125
    return-void
.end method
