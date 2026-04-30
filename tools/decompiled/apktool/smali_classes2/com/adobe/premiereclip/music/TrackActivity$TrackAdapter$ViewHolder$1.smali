.class Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder$1;
.super Ljava/lang/Object;
.source "TrackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$2:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;

.field final synthetic val$this$1:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;)V
    .locals 0

    .prologue
    .line 446
    iput-object p1, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder$1;->this$2:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;

    iput-object p2, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder$1;->val$this$1:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const v4, 0x7f0202f6

    const/4 v3, 0x1

    .line 449
    const-string/jumbo v0, "TrackViewHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "playonclick : currentindex and layoutposition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder$1;->this$2:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;

    iget-object v2, v2, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    invoke-static {v2}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->access$700(Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder$1;->this$2:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->getLayoutPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder$1;->this$2:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;

    iget-object v0, v0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    invoke-static {v0}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->access$800(Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder$1;->this$2:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/AudioClip;

    iget-boolean v0, v0, Lcom/adobe/premiereclip/project/sequence/AudioClip;->isInvalid:Z

    if-eqz v0, :cond_0

    .line 474
    :goto_0
    return-void

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder$1;->this$2:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;

    iget-object v0, v0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    invoke-static {v0}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->access$700(Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;)I

    move-result v0

    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder$1;->this$2:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->getLayoutPosition()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 455
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder$1;->this$2:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;

    iget-object v0, v0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/music/TrackActivity;->access$000(Lcom/adobe/premiereclip/music/TrackActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder$1;->this$2:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;

    iget-object v0, v0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/music/TrackActivity;->access$900(Lcom/adobe/premiereclip/music/TrackActivity;)V

    .line 457
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder$1;->this$2:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;

    iget-object v0, v0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->access$1002(Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;Z)Z

    .line 458
    const-string/jumbo v0, "Tracks"

    const-string/jumbo v1, "play on click"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder$1;->this$2:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;

    iget-object v0, v0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->mPlayButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder$1;->this$2:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;

    iget-object v1, v1, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    iget-object v1, v1, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackActivity;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/music/TrackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder$1;->this$2:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;

    iget-object v0, v0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/music/TrackActivity;->access$1100(Lcom/adobe/premiereclip/music/TrackActivity;)V

    .line 463
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder$1;->this$2:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;

    iget-object v0, v0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    invoke-static {v0, v3}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->access$1002(Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;Z)Z

    .line 464
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder$1;->this$2:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;

    iget-object v0, v0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->mPlayButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder$1;->this$2:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;

    iget-object v1, v1, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    iget-object v1, v1, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackActivity;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/music/TrackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 468
    :cond_2
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder$1;->this$2:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;

    iget-object v0, v0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder$1;->this$2:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;

    iget-object v1, v1, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->setCurrentSeekBar(Landroid/widget/SeekBar;)V

    .line 469
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder$1;->this$2:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;

    iget-object v0, v0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    invoke-static {v0, v3}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->access$1002(Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;Z)Z

    .line 470
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder$1;->this$2:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;

    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder$1;->this$2:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->access$1200(Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;I)V

    .line 471
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder$1;->this$2:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;

    iget-object v0, v0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/music/TrackActivity;->access$1100(Lcom/adobe/premiereclip/music/TrackActivity;)V

    .line 472
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder$1;->this$2:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;

    iget-object v0, v0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->mPlayButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder$1;->this$2:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;

    iget-object v1, v1, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;

    iget-object v1, v1, Lcom/adobe/premiereclip/music/TrackActivity$TrackAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackActivity;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/music/TrackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method
