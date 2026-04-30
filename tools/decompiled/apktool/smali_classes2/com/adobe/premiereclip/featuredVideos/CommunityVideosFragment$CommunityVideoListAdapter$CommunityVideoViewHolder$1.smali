.class Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$CommunityVideoViewHolder$1;
.super Ljava/lang/Object;
.source "CommunityVideosFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$2:Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$CommunityVideoViewHolder;

.field final synthetic val$this$1:Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$CommunityVideoViewHolder;Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$CommunityVideoViewHolder$1;->this$2:Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$CommunityVideoViewHolder;

    iput-object p2, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$CommunityVideoViewHolder$1;->val$this$1:Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 244
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$CommunityVideoViewHolder$1;->this$2:Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$CommunityVideoViewHolder;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$CommunityVideoViewHolder;->getAdapterPosition()I

    move-result v1

    .line 245
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v2

    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$CommunityVideoViewHolder$1;->this$2:Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$CommunityVideoViewHolder;

    iget-object v0, v0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$CommunityVideoViewHolder;->this$1:Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;->videos:Ljava/util/ArrayList;

    .line 246
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->getUUID()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$CommunityVideoViewHolder$1;->this$2:Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$CommunityVideoViewHolder;

    iget-object v0, v0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$CommunityVideoViewHolder;->this$1:Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;->videos:Ljava/util/ArrayList;

    .line 247
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->getVideoTitle()Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-virtual {v2, v3, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapOpenInSafariInOptionsForCommunityVideoWithCCVID(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$CommunityVideoViewHolder$1;->this$2:Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$CommunityVideoViewHolder;

    iget-object v2, v0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$CommunityVideoViewHolder;->this$1:Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;

    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$CommunityVideoViewHolder$1;->this$2:Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$CommunityVideoViewHolder;

    iget-object v0, v0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$CommunityVideoViewHolder;->this$1:Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;

    invoke-static {v2, v0}, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;->access$000(Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;)V

    .line 249
    return-void
.end method
