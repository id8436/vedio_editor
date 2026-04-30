.class public Lcom/dd/crop/TextureVideoView;
.super Landroid/view/TextureView;
.source "TextureVideoView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/media/MediaPlayer;

.field private c:I

.field private d:Z

.field private e:F

.field private f:F

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Lcom/dd/crop/f;

.field private m:Lcom/dd/crop/g;

.field private n:Lcom/dd/crop/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/dd/crop/TextureVideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dd/crop/TextureVideoView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 49
    iput v0, p0, Lcom/dd/crop/TextureVideoView;->c:I

    .line 50
    iput-boolean v0, p0, Lcom/dd/crop/TextureVideoView;->d:Z

    .line 74
    invoke-direct {p0}, Lcom/dd/crop/TextureVideoView;->i()V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    iput v0, p0, Lcom/dd/crop/TextureVideoView;->c:I

    .line 50
    iput-boolean v0, p0, Lcom/dd/crop/TextureVideoView;->d:Z

    .line 79
    invoke-direct {p0}, Lcom/dd/crop/TextureVideoView;->i()V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    iput v0, p0, Lcom/dd/crop/TextureVideoView;->c:I

    .line 50
    iput-boolean v0, p0, Lcom/dd/crop/TextureVideoView;->d:Z

    .line 84
    invoke-direct {p0}, Lcom/dd/crop/TextureVideoView;->i()V

    .line 85
    return-void
.end method

.method static synthetic a(Lcom/dd/crop/TextureVideoView;F)F
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/dd/crop/TextureVideoView;->f:F

    return p1
.end method

.method static synthetic a(Lcom/dd/crop/TextureVideoView;Lcom/dd/crop/g;)Lcom/dd/crop/g;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/dd/crop/TextureVideoView;->m:Lcom/dd/crop/g;

    return-object p1
.end method

.method static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 404
    sget-object v0, Lcom/dd/crop/TextureVideoView;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    return-void
.end method

.method static synthetic a(Lcom/dd/crop/TextureVideoView;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/dd/crop/TextureVideoView;->i:Z

    return v0
.end method

.method static synthetic a(Lcom/dd/crop/TextureVideoView;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/dd/crop/TextureVideoView;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/dd/crop/TextureVideoView;F)F
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/dd/crop/TextureVideoView;->e:F

    return p1
.end method

.method static synthetic b(Lcom/dd/crop/TextureVideoView;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/dd/crop/TextureVideoView;->j()V

    return-void
.end method

.method static synthetic c(Lcom/dd/crop/TextureVideoView;)Lcom/dd/crop/e;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dd/crop/TextureVideoView;->n:Lcom/dd/crop/e;

    return-object v0
.end method

.method static synthetic d(Lcom/dd/crop/TextureVideoView;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/dd/crop/TextureVideoView;->j:Z

    return v0
.end method

.method static synthetic e(Lcom/dd/crop/TextureVideoView;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/dd/crop/TextureVideoView;->h:Z

    return v0
.end method

.method static synthetic f(Lcom/dd/crop/TextureVideoView;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/dd/crop/TextureVideoView;->k:Z

    return v0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/dd/crop/TextureVideoView;->k()V

    .line 89
    sget-object v0, Lcom/dd/crop/f;->a:Lcom/dd/crop/f;

    invoke-virtual {p0, v0}, Lcom/dd/crop/TextureVideoView;->setScaleType(Lcom/dd/crop/f;)V

    .line 90
    invoke-virtual {p0, p0}, Lcom/dd/crop/TextureVideoView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 91
    return-void
.end method

.method private j()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v8, 0x40000000    # 2.0f

    .line 99
    invoke-virtual {p0}, Lcom/dd/crop/TextureVideoView;->getWidth()I

    move-result v1

    int-to-float v3, v1

    .line 100
    invoke-virtual {p0}, Lcom/dd/crop/TextureVideoView;->getHeight()I

    move-result v1

    int-to-float v4, v1

    .line 106
    iget v1, p0, Lcom/dd/crop/TextureVideoView;->f:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    iget v1, p0, Lcom/dd/crop/TextureVideoView;->e:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_0

    .line 108
    iget v0, p0, Lcom/dd/crop/TextureVideoView;->f:F

    div-float v1, v0, v3

    .line 109
    iget v0, p0, Lcom/dd/crop/TextureVideoView;->e:F

    div-float/2addr v0, v4

    .line 118
    :goto_0
    const-string/jumbo v5, "Video Details"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    sget-object v5, Lcom/dd/crop/d;->a:[I

    iget-object v6, p0, Lcom/dd/crop/TextureVideoView;->l:Lcom/dd/crop/f;

    invoke-virtual {v6}, Lcom/dd/crop/f;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 139
    div-float v2, v3, v8

    float-to-int v3, v2

    .line 140
    div-float v2, v4, v8

    float-to-int v2, v2

    .line 144
    :goto_1
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 145
    int-to-float v3, v3

    int-to-float v2, v2

    invoke-virtual {v4, v1, v0, v3, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 148
    invoke-virtual {p0, v4}, Lcom/dd/crop/TextureVideoView;->setTransform(Landroid/graphics/Matrix;)V

    .line 149
    return-void

    .line 110
    :cond_0
    iget v1, p0, Lcom/dd/crop/TextureVideoView;->f:F

    iget v5, p0, Lcom/dd/crop/TextureVideoView;->e:F

    div-float/2addr v1, v5

    div-float v5, v3, v4

    cmpl-float v1, v1, v5

    if-lez v1, :cond_1

    .line 112
    iget v1, p0, Lcom/dd/crop/TextureVideoView;->e:F

    div-float v1, v4, v1

    iget v5, p0, Lcom/dd/crop/TextureVideoView;->f:F

    div-float v5, v3, v5

    div-float/2addr v1, v5

    goto :goto_0

    .line 115
    :cond_1
    iget v1, p0, Lcom/dd/crop/TextureVideoView;->f:F

    div-float v1, v3, v1

    iget v5, p0, Lcom/dd/crop/TextureVideoView;->e:F

    div-float v5, v4, v5

    div-float/2addr v1, v5

    move v9, v1

    move v1, v0

    move v0, v9

    goto :goto_0

    :pswitch_0
    move v3, v2

    .line 129
    goto :goto_1

    .line 131
    :pswitch_1
    float-to-int v3, v3

    .line 132
    float-to-int v2, v4

    .line 133
    goto :goto_1

    .line 135
    :pswitch_2
    div-float v2, v3, v8

    float-to-int v3, v2

    .line 136
    div-float v2, v4, v8

    float-to-int v2, v2

    .line 137
    goto :goto_1

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private k()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 152
    iget-object v0, p0, Lcom/dd/crop/TextureVideoView;->b:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/dd/crop/TextureVideoView;->b:Landroid/media/MediaPlayer;

    .line 157
    :goto_0
    iput-boolean v1, p0, Lcom/dd/crop/TextureVideoView;->i:Z

    .line 158
    iput-boolean v1, p0, Lcom/dd/crop/TextureVideoView;->j:Z

    .line 159
    iput-boolean v1, p0, Lcom/dd/crop/TextureVideoView;->k:Z

    .line 160
    sget-object v0, Lcom/dd/crop/g;->a:Lcom/dd/crop/g;

    iput-object v0, p0, Lcom/dd/crop/TextureVideoView;->m:Lcom/dd/crop/g;

    .line 161
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/dd/crop/TextureVideoView;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/dd/crop/TextureVideoView;->b:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/dd/crop/a;

    invoke-direct {v1, p0}, Lcom/dd/crop/a;-><init>(Lcom/dd/crop/TextureVideoView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 225
    iget-object v0, p0, Lcom/dd/crop/TextureVideoView;->b:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/dd/crop/b;

    invoke-direct {v1, p0}, Lcom/dd/crop/b;-><init>(Lcom/dd/crop/TextureVideoView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 241
    iget-object v0, p0, Lcom/dd/crop/TextureVideoView;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 244
    iget-object v0, p0, Lcom/dd/crop/TextureVideoView;->b:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/dd/crop/c;

    invoke-direct {v1, p0}, Lcom/dd/crop/c;-><init>(Lcom/dd/crop/TextureVideoView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 267
    :goto_0
    return-void

    .line 259
    :catch_0
    move-exception v0

    .line 260
    sget-object v1, Lcom/dd/crop/TextureVideoView;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 261
    :catch_1
    move-exception v0

    .line 262
    sget-object v1, Lcom/dd/crop/TextureVideoView;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 263
    :catch_2
    move-exception v0

    .line 264
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 265
    sget-object v1, Lcom/dd/crop/TextureVideoView;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 276
    iget-boolean v0, p0, Lcom/dd/crop/TextureVideoView;->g:Z

    if-nez v0, :cond_0

    .line 277
    const-string/jumbo v0, "play() was called but data source was not set."

    invoke-static {v0}, Lcom/dd/crop/TextureVideoView;->a(Ljava/lang/String;)V

    .line 325
    :goto_0
    return-void

    .line 281
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dd/crop/TextureVideoView;->j:Z

    .line 283
    iget-boolean v0, p0, Lcom/dd/crop/TextureVideoView;->i:Z

    if-nez v0, :cond_1

    .line 284
    const-string/jumbo v0, "play() was called but video is not prepared yet, waiting."

    invoke-static {v0}, Lcom/dd/crop/TextureVideoView;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 288
    :cond_1
    iget-boolean v0, p0, Lcom/dd/crop/TextureVideoView;->h:Z

    if-nez v0, :cond_2

    .line 289
    const-string/jumbo v0, "play() was called but view is not available yet, waiting."

    invoke-static {v0}, Lcom/dd/crop/TextureVideoView;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 293
    :cond_2
    iget-object v0, p0, Lcom/dd/crop/TextureVideoView;->m:Lcom/dd/crop/g;

    sget-object v1, Lcom/dd/crop/g;->b:Lcom/dd/crop/g;

    if-ne v0, v1, :cond_3

    .line 294
    const-string/jumbo v0, "play() was called but video is already playing."

    invoke-static {v0}, Lcom/dd/crop/TextureVideoView;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 298
    :cond_3
    iget-object v0, p0, Lcom/dd/crop/TextureVideoView;->m:Lcom/dd/crop/g;

    sget-object v1, Lcom/dd/crop/g;->d:Lcom/dd/crop/g;

    if-ne v0, v1, :cond_4

    .line 299
    const-string/jumbo v0, "play() was called but video is paused, resuming."

    invoke-static {v0}, Lcom/dd/crop/TextureVideoView;->a(Ljava/lang/String;)V

    .line 300
    sget-object v0, Lcom/dd/crop/g;->b:Lcom/dd/crop/g;

    iput-object v0, p0, Lcom/dd/crop/TextureVideoView;->m:Lcom/dd/crop/g;

    .line 301
    iget-object v0, p0, Lcom/dd/crop/TextureVideoView;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    .line 305
    :cond_4
    iget-object v0, p0, Lcom/dd/crop/TextureVideoView;->m:Lcom/dd/crop/g;

    sget-object v1, Lcom/dd/crop/g;->e:Lcom/dd/crop/g;

    if-ne v0, v1, :cond_5

    .line 306
    const-string/jumbo v0, "play() called but video ended"

    invoke-static {v0}, Lcom/dd/crop/TextureVideoView;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 310
    :cond_5
    iget-object v0, p0, Lcom/dd/crop/TextureVideoView;->m:Lcom/dd/crop/g;

    sget-object v1, Lcom/dd/crop/g;->c:Lcom/dd/crop/g;

    if-ne v0, v1, :cond_6

    .line 311
    const-string/jumbo v0, "play() was called but video already ended, starting over."

    invoke-static {v0}, Lcom/dd/crop/TextureVideoView;->a(Ljava/lang/String;)V

    .line 312
    sget-object v0, Lcom/dd/crop/g;->b:Lcom/dd/crop/g;

    iput-object v0, p0, Lcom/dd/crop/TextureVideoView;->m:Lcom/dd/crop/g;

    .line 313
    iget-object v0, p0, Lcom/dd/crop/TextureVideoView;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 314
    iget-object v0, p0, Lcom/dd/crop/TextureVideoView;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    .line 318
    :cond_6
    iget-boolean v0, p0, Lcom/dd/crop/TextureVideoView;->d:Z

    if-eqz v0, :cond_7

    .line 319
    iget-object v0, p0, Lcom/dd/crop/TextureVideoView;->b:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/dd/crop/TextureVideoView;->c:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 320
    iput-boolean v2, p0, Lcom/dd/crop/TextureVideoView;->d:Z

    .line 323
    :cond_7
    sget-object v0, Lcom/dd/crop/g;->b:Lcom/dd/crop/g;

    iput-object v0, p0, Lcom/dd/crop/TextureVideoView;->m:Lcom/dd/crop/g;

    .line 324
    iget-object v0, p0, Lcom/dd/crop/TextureVideoView;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/dd/crop/TextureVideoView;->k()V

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/dd/crop/TextureVideoView;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dd/crop/TextureVideoView;->g:Z

    .line 187
    invoke-direct {p0}, Lcom/dd/crop/TextureVideoView;->l()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    sget-object v1, Lcom/dd/crop/TextureVideoView;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/dd/crop/TextureVideoView;->m:Lcom/dd/crop/g;

    sget-object v1, Lcom/dd/crop/g;->d:Lcom/dd/crop/g;

    if-ne v0, v1, :cond_1

    .line 332
    const-string/jumbo v0, "pause() was called but video already paused."

    invoke-static {v0}, Lcom/dd/crop/TextureVideoView;->a(Ljava/lang/String;)V

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/dd/crop/TextureVideoView;->m:Lcom/dd/crop/g;

    sget-object v1, Lcom/dd/crop/g;->c:Lcom/dd/crop/g;

    if-ne v0, v1, :cond_2

    .line 337
    const-string/jumbo v0, "pause() was called but video already stopped."

    invoke-static {v0}, Lcom/dd/crop/TextureVideoView;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 341
    :cond_2
    iget-object v0, p0, Lcom/dd/crop/TextureVideoView;->m:Lcom/dd/crop/g;

    sget-object v1, Lcom/dd/crop/g;->e:Lcom/dd/crop/g;

    if-ne v0, v1, :cond_3

    .line 342
    const-string/jumbo v0, "pause() was called but video already ended."

    invoke-static {v0}, Lcom/dd/crop/TextureVideoView;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 346
    :cond_3
    sget-object v0, Lcom/dd/crop/g;->d:Lcom/dd/crop/g;

    iput-object v0, p0, Lcom/dd/crop/TextureVideoView;->m:Lcom/dd/crop/g;

    .line 347
    iget-object v0, p0, Lcom/dd/crop/TextureVideoView;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/dd/crop/TextureVideoView;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/dd/crop/TextureVideoView;->m:Lcom/dd/crop/g;

    sget-object v1, Lcom/dd/crop/g;->c:Lcom/dd/crop/g;

    if-ne v0, v1, :cond_1

    .line 358
    const-string/jumbo v0, "stop() was called but video already stopped."

    invoke-static {v0}, Lcom/dd/crop/TextureVideoView;->a(Ljava/lang/String;)V

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/dd/crop/TextureVideoView;->m:Lcom/dd/crop/g;

    sget-object v1, Lcom/dd/crop/g;->e:Lcom/dd/crop/g;

    if-ne v0, v1, :cond_2

    .line 363
    const-string/jumbo v0, "stop() was called but video already ended."

    invoke-static {v0}, Lcom/dd/crop/TextureVideoView;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 367
    :cond_2
    sget-object v0, Lcom/dd/crop/g;->c:Lcom/dd/crop/g;

    iput-object v0, p0, Lcom/dd/crop/TextureVideoView;->m:Lcom/dd/crop/g;

    .line 368
    iget-object v0, p0, Lcom/dd/crop/TextureVideoView;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/dd/crop/TextureVideoView;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 370
    iget-object v0, p0, Lcom/dd/crop/TextureVideoView;->b:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dd/crop/TextureVideoView;->k:Z

    .line 379
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/dd/crop/TextureVideoView;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 468
    sget-object v0, Lcom/dd/crop/g;->e:Lcom/dd/crop/g;

    iput-object v0, p0, Lcom/dd/crop/TextureVideoView;->m:Lcom/dd/crop/g;

    .line 469
    iget-object v0, p0, Lcom/dd/crop/TextureVideoView;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 470
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 473
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dd/crop/TextureVideoView;->d:Z

    .line 474
    return-void
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/dd/crop/TextureVideoView;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 477
    iget-boolean v0, p0, Lcom/dd/crop/TextureVideoView;->h:Z

    return v0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .prologue
    .line 426
    const-string/jumbo v0, "OnVideo"

    const-string/jumbo v1, "Surface Available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v0, p0, Lcom/dd/crop/TextureVideoView;->m:Lcom/dd/crop/g;

    sget-object v1, Lcom/dd/crop/g;->e:Lcom/dd/crop/g;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/dd/crop/TextureVideoView;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 429
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 430
    iget-object v1, p0, Lcom/dd/crop/TextureVideoView;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 431
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dd/crop/TextureVideoView;->h:Z

    .line 433
    invoke-direct {p0}, Lcom/dd/crop/TextureVideoView;->j()V

    .line 435
    iget-boolean v0, p0, Lcom/dd/crop/TextureVideoView;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dd/crop/TextureVideoView;->j:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dd/crop/TextureVideoView;->i:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dd/crop/TextureVideoView;->k:Z

    if-nez v0, :cond_0

    .line 436
    const-string/jumbo v0, "View is available and play() was called."

    invoke-static {v0}, Lcom/dd/crop/TextureVideoView;->a(Ljava/lang/String;)V

    .line 437
    invoke-virtual {p0}, Lcom/dd/crop/TextureVideoView;->a()V

    .line 440
    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 448
    const-string/jumbo v0, "OnVideo"

    const-string/jumbo v1, "Surface Destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v0, p0, Lcom/dd/crop/TextureVideoView;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/dd/crop/TextureVideoView;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/dd/crop/TextureVideoView;->c:I

    .line 451
    iget-object v0, p0, Lcom/dd/crop/TextureVideoView;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 452
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dd/crop/TextureVideoView;->b:Landroid/media/MediaPlayer;

    .line 454
    :cond_0
    iput-boolean v2, p0, Lcom/dd/crop/TextureVideoView;->h:Z

    .line 455
    return v2
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .prologue
    .line 444
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 460
    return-void
.end method

.method public setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    .locals 6

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/dd/crop/TextureVideoView;->k()V

    .line 200
    :try_start_0
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    .line 201
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .line 202
    iget-object v0, p0, Lcom/dd/crop/TextureVideoView;->b:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dd/crop/TextureVideoView;->g:Z

    .line 204
    invoke-direct {p0}, Lcom/dd/crop/TextureVideoView;->l()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    sget-object v1, Lcom/dd/crop/TextureVideoView;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/dd/crop/TextureVideoView;->k()V

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/dd/crop/TextureVideoView;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dd/crop/TextureVideoView;->g:Z

    .line 172
    invoke-direct {p0}, Lcom/dd/crop/TextureVideoView;->l()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    sget-object v1, Lcom/dd/crop/TextureVideoView;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setListener(Lcom/dd/crop/e;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/dd/crop/TextureVideoView;->n:Lcom/dd/crop/e;

    .line 415
    return-void
.end method

.method public setLooping(Z)V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/dd/crop/TextureVideoView;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 386
    return-void
.end method

.method public setScaleType(Lcom/dd/crop/f;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/dd/crop/TextureVideoView;->l:Lcom/dd/crop/f;

    .line 95
    return-void
.end method
