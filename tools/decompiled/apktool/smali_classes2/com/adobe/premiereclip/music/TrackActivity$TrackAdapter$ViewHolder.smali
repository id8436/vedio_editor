.class public Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "TrackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public mPlayButton:Landroid/widget/ImageView;

.field public mSeekBar:Landroid/widget/SeekBar;

.field public mSongDuration:Landroid/widget/TextView;

.field public mSongName:Landroid/widget/TextView;

.field public mSongView:Landroid/widget/RelativeLayout;

.field final synthetic this$1:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 432
    iput-object p1, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    .line 433
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 434
    invoke-static {p2}, Lcom/h/a/d;->a(Landroid/view/View;)V

    move-object v0, p2

    .line 436
    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->mSongView:Landroid/widget/RelativeLayout;

    .line 437
    const v0, 0x7f120600

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->mPlayButton:Landroid/widget/ImageView;

    .line 438
    const v0, 0x7f120602

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->mSongName:Landroid/widget/TextView;

    .line 439
    const v0, 0x7f120603

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->mSongDuration:Landroid/widget/TextView;

    .line 440
    const v0, 0x7f120601

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->mSeekBar:Landroid/widget/SeekBar;

    .line 441
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    const-string/jumbo v0, "TrackViewHolder"

    const-string/jumbo v1, "viewholder constructor : setting seekbar invisible"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 444
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 446
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->mPlayButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder$1;-><init>(Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    return-void
.end method

.method static synthetic access$1200(Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;I)V
    .locals 0

    .prologue
    .line 426
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->setCurrentSong(I)V

    return-void
.end method

.method private setCurrentSong(I)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 491
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/music/TrackActivity;->access$1300(Lcom/adobe/premiereclip/music/TrackActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 492
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/music/TrackActivity;->access$1300(Lcom/adobe/premiereclip/music/TrackActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 493
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackActivity;

    const v1, 0x7f12016b

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/music/TrackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    invoke-static {v0}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->access$700(Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;)I

    move-result v0

    .line 497
    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    invoke-static {v1, p1}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->access$702(Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;I)I

    .line 498
    const-string/jumbo v1, "TrackViewHolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "old and new position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    invoke-static {v3}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->access$700(Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    invoke-static {v1}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->access$700(Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 501
    if-ltz v0, :cond_1

    .line 502
    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->notifyItemChanged(I)V

    .line 503
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    invoke-static {v1}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->access$700(Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->notifyItemChanged(I)V

    .line 505
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    invoke-static {v0}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->access$800(Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    invoke-static {v1}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->access$700(Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/AudioClip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetUri()Landroid/net/Uri;

    move-result-object v0

    .line 506
    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    iget-object v1, v1, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackActivity;

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/music/TrackActivity;->prepareMusicPlayer(Landroid/net/Uri;)V

    .line 508
    :cond_2
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 481
    const-string/jumbo v0, "TrackViewHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "viewonclick : currentindex and layoutposition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    invoke-static {v2}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->access$700(Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->getLayoutPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    invoke-static {v0}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->access$700(Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;)I

    move-result v0

    invoke-virtual {p0}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->getLayoutPosition()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 484
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->access$1002(Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;Z)Z

    .line 485
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->setCurrentSeekBar(Landroid/widget/SeekBar;)V

    .line 486
    invoke-virtual {p0}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->getLayoutPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->setCurrentSong(I)V

    .line 488
    :cond_0
    return-void
.end method
