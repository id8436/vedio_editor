.class public Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "TrackActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private currentProgress:I

.field private currentSeekBar:Landroid/widget/SeekBar;

.field private currentTrackIndex:I

.field private isSongPlaying:Z

.field private songList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/project/sequence/AudioClip;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/adobe/premiereclip/music/TrackActivity;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/music/TrackActivity;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/project/sequence/AudioClip;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 305
    iput-object p1, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 306
    iput-object p2, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->songList:Ljava/util/ArrayList;

    .line 307
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->currentTrackIndex:I

    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->currentSeekBar:Landroid/widget/SeekBar;

    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->isSongPlaying:Z

    .line 310
    return-void
.end method

.method static synthetic access$1002(Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;Z)Z
    .locals 0

    .prologue
    .line 298
    iput-boolean p1, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->isSongPlaying:Z

    return p1
.end method

.method static synthetic access$700(Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;)I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->currentTrackIndex:I

    return v0
.end method

.method static synthetic access$702(Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;I)I
    .locals 0

    .prologue
    .line 298
    iput p1, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->currentTrackIndex:I

    return p1
.end method

.method static synthetic access$800(Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->songList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private disableSongView(Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 512
    iget-object v0, p1, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 513
    iget-object v0, p1, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 514
    iget-object v0, p1, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->mSongView:Landroid/widget/RelativeLayout;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 515
    return-void
.end method

.method private enableSongView(Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 518
    iget-object v0, p1, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 519
    iget-object v0, p1, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 520
    iget-object v0, p1, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->mSongView:Landroid/widget/RelativeLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 521
    return-void
.end method


# virtual methods
.method public disableSeekBar(Landroid/widget/SeekBar;)V
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 355
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 356
    return-void
.end method

.method public getCurrentSeekBar()Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->currentSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public getCurrentTrack()Lcom/adobe/premiereclip/project/sequence/AudioClip;
    .locals 2

    .prologue
    .line 365
    iget v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->currentTrackIndex:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 366
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->songList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->currentTrackIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/AudioClip;

    .line 368
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->songList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 298
    check-cast p1, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->onBindViewHolder(Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;I)V
    .locals 11

    .prologue
    const v10, 0x7f0202f7

    const/4 v9, 0x0

    .line 389
    iget-object v1, p1, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->mSongName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->songList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/AudioClip;

    iget-object v0, v0, Lcom/adobe/premiereclip/project/sequence/AudioClip;->songName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->songList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/AudioClip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->getDurationUs()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 391
    const-string/jumbo v2, "%02d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 392
    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v9

    const/4 v4, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 393
    invoke-virtual {v5, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 394
    invoke-virtual {v8, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sub-long v0, v6, v0

    .line 393
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    .line 391
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 396
    iget-object v1, p1, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->mSongDuration:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    const-string/jumbo v0, "TrackVV"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "currentIndex and position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->currentTrackIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->currentTrackIndex:I

    if-ne v0, p2, :cond_1

    .line 401
    iget-boolean v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->isSongPlaying:Z

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p1, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->mPlayButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackActivity;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/music/TrackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 407
    :goto_0
    iget-object v0, p1, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->mSongView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackActivity;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/music/TrackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110190

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 408
    iget-object v0, p1, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->setCurrentSeekBar(Landroid/widget/SeekBar;)V

    .line 409
    iget-object v0, p1, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->currentProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 410
    iput v9, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->currentProgress:I

    .line 418
    :goto_1
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->songList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/AudioClip;

    iget-boolean v0, v0, Lcom/adobe/premiereclip/project/sequence/AudioClip;->isInvalid:Z

    if-eqz v0, :cond_2

    .line 419
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->disableSongView(Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;)V

    .line 424
    :goto_2
    return-void

    .line 405
    :cond_0
    iget-object v0, p1, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->mPlayButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackActivity;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/music/TrackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 413
    :cond_1
    const-string/jumbo v0, "TrackView"

    const-string/jumbo v1, "set play at onbind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p1, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->disableSeekBar(Landroid/widget/SeekBar;)V

    .line 415
    iget-object v0, p1, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->mSongView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackActivity;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/music/TrackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1101ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 416
    iget-object v0, p1, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->mPlayButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackActivity;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/music/TrackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 422
    :cond_2
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->enableSongView(Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;)V

    goto :goto_2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0, p1, p2}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;
    .locals 3

    .prologue
    .line 378
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040182

    const/4 v2, 0x0

    .line 379
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 381
    new-instance v1, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;-><init>(Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;Landroid/view/View;)V

    .line 382
    iget-object v0, v1, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->mSongDuration:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 383
    iget-object v0, v1, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->mSongName:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 384
    return-object v1
.end method

.method public setCurrentProgress()V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->currentSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->currentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->currentProgress:I

    .line 320
    :cond_0
    return-void
.end method

.method public setCurrentSeekBar(Landroid/widget/SeekBar;)V
    .locals 2

    .prologue
    .line 323
    iput-object p1, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->currentSeekBar:Landroid/widget/SeekBar;

    .line 324
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->currentSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackActivity;

    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->currentSeekBar:Landroid/widget/SeekBar;

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/util/Utilities;->setSeekBarTheme(Landroid/content/Context;Landroid/widget/SeekBar;)V

    .line 326
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->currentSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$1;-><init>(Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 351
    return-void
.end method

.method public setPause()V
    .locals 2

    .prologue
    .line 359
    const-string/jumbo v0, "TrackVV"

    const-string/jumbo v1, "setpause called in adapter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->isSongPlaying:Z

    .line 361
    iget v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->currentTrackIndex:I

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->notifyItemChanged(I)V

    .line 362
    return-void
.end method
