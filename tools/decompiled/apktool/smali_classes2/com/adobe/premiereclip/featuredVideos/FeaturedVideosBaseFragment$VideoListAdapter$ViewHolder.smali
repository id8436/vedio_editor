.class public Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "FeaturedVideosBaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public key:Ljava/lang/String;

.field public mCardView:Landroid/view/View;

.field public mImageView:Landroid/widget/ImageView;

.field public mTextView:Landroid/widget/TextView;

.field public optionsButton:Landroid/widget/ImageButton;

.field final synthetic this$1:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;

.field public videoTitle:Ljava/lang/String;

.field public videoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 500
    iput-object p1, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;

    .line 501
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 502
    invoke-static {p2}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 503
    const v0, 0x7f1205b5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;->mCardView:Landroid/view/View;

    .line 504
    const v0, 0x7f1205b8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    .line 505
    const v0, 0x7f1205b6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 506
    const v0, 0x7f1205b7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;->optionsButton:Landroid/widget/ImageButton;

    .line 507
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 512
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;->videoUrl:Ljava/lang/String;

    .line 513
    iget-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;

    iget-object v1, v1, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 514
    if-eqz v1, :cond_0

    .line 515
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;->key:Ljava/lang/String;

    iget-object v4, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    .line 517
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 515
    invoke-virtual {v2, v3, v4}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapCommunityVideoWithCCVID(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    :goto_0
    if-eqz v0, :cond_1

    .line 526
    iget-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;->mCardView:Landroid/view/View;

    iget-object v2, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;

    iget-object v2, v2, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c02dd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v1, v2}, Lcom/adobe/premiereclip/util/LollipopUtils;->setElevation(Landroid/view/View;F)V

    .line 527
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;

    iget-object v2, v2, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 528
    const-string/jumbo v2, "videoTitle"

    iget-object v3, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;->videoTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 529
    const-string/jumbo v2, "videoPlayUri"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 530
    const-string/jumbo v0, "playbackEndBehave"

    const-string/jumbo v2, "finish"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->startActivity(Landroid/content/Intent;)V

    .line 544
    :goto_1
    return-void

    .line 520
    :cond_0
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;->key:Ljava/lang/String;

    iget-object v4, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    .line 522
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 520
    invoke-virtual {v2, v3, v4}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapMyPublishedVideoWithCCVID(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 534
    :cond_1
    if-eqz v1, :cond_2

    .line 535
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didFailToPlayVideoForClipCommunityURLWithCCVID(Ljava/lang/String;)V

    .line 537
    :cond_2
    new-instance v0, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    iget-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;

    iget-object v1, v1, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;

    iget-object v2, v2, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

    const v3, 0x7f0a0525

    .line 538
    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->getStringWrapped(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;

    iget-object v3, v3, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

    const v4, 0x7f0a0506

    .line 539
    invoke-virtual {v3, v4}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->getStringWrapped(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 541
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    .line 542
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

    iput-boolean v5, v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->needsRefresh:Z

    goto :goto_1
.end method
