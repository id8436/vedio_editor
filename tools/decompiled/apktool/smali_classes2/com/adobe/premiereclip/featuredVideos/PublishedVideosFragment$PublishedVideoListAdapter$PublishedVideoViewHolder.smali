.class public Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$PublishedVideoViewHolder;
.super Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;
.source "PublishedVideosFragment.java"


# instance fields
.field public mPostDate:Landroid/widget/TextView;

.field public mStatusBox:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 399
    iput-object p1, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$PublishedVideoViewHolder;->this$1:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;

    .line 400
    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;-><init>(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;Landroid/view/View;)V

    .line 401
    const v0, 0x7f1205f6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$PublishedVideoViewHolder;->mStatusBox:Landroid/widget/TextView;

    .line 402
    const v0, 0x7f1205f7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$PublishedVideoViewHolder;->mPostDate:Landroid/widget/TextView;

    .line 403
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$PublishedVideoViewHolder;->optionsButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$PublishedVideoViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$PublishedVideoViewHolder$1;-><init>(Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$PublishedVideoViewHolder;Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    return-void
.end method
