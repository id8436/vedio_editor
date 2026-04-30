.class public Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$CommunityVideoViewHolder;
.super Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;
.source "CommunityVideosFragment.java"


# instance fields
.field public mAuthor:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 237
    iput-object p1, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$CommunityVideoViewHolder;->this$1:Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;

    .line 238
    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;-><init>(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;Landroid/view/View;)V

    .line 239
    const v0, 0x7f1205b9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$CommunityVideoViewHolder;->mAuthor:Landroid/widget/TextView;

    .line 240
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$CommunityVideoViewHolder;->optionsButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$CommunityVideoViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$CommunityVideoViewHolder$1;-><init>(Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$CommunityVideoViewHolder;Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$CommunityVideoViewHolder;->this$1:Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;

    invoke-static {v0}, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;->access$100(Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;)Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;->setABTestSuccess()V

    .line 258
    invoke-super {p0, p1}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;->onClick(Landroid/view/View;)V

    .line 259
    return-void
.end method
