.class Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$1;
.super Ljava/lang/Object;
.source "CommunityVideosFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;

.field final synthetic val$popupWindow:Landroid/widget/ListPopupWindow;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;Landroid/widget/ListPopupWindow;I)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$1;->this$1:Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;

    iput-object p2, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$1;->val$popupWindow:Landroid/widget/ListPopupWindow;

    iput p3, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$1;->val$popupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 282
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$1;->this$1:Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;->activePopupWindow:Landroid/widget/ListPopupWindow;

    .line 284
    if-nez p3, :cond_1

    .line 285
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v1

    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$1;->this$1:Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;->videos:Ljava/util/ArrayList;

    iget v2, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$1;->val$position:I

    .line 286
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->getUUID()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$1;->this$1:Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;->videos:Ljava/util/ArrayList;

    iget v3, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$1;->val$position:I

    .line 287
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->getVideoTitle()Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-virtual {v1, v2, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapPlayVideoInOptionsForCommunityVideoWithCCVID(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$1;->this$1:Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;

    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$1;->this$1:Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;->videos:Ljava/util/ArrayList;

    iget v2, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$1;->val$position:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;->access$200(Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;)V

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 290
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v1

    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$1;->this$1:Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;->videos:Ljava/util/ArrayList;

    iget v2, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$1;->val$position:I

    .line 291
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->getUUID()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$1;->this$1:Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;->videos:Ljava/util/ArrayList;

    iget v3, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$1;->val$position:I

    .line 292
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->getVideoTitle()Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-virtual {v1, v2, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapOpenInSafariInOptionsForCommunityVideoWithCCVID(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$1;->this$1:Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;

    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$1;->this$1:Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;->videos:Ljava/util/ArrayList;

    iget v2, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$1;->val$position:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;->access$000(Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;)V

    goto :goto_0
.end method
