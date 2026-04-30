.class Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$3;
.super Ljava/lang/Object;
.source "PublishedVideosFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;

.field final synthetic val$popupWindow:Landroid/widget/ListPopupWindow;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;Landroid/widget/ListPopupWindow;I)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$3;->this$1:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;

    iput-object p2, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$3;->val$popupWindow:Landroid/widget/ListPopupWindow;

    iput p3, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    const v3, 0x7f0a0525

    const v5, 0x7f0a0506

    const v2, 0x7f0a04da

    const/4 v4, 0x1

    .line 436
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$3;->val$popupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 437
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$3;->this$1:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->activePopupWindow:Landroid/widget/ListPopupWindow;

    .line 439
    if-nez p3, :cond_2

    .line 440
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$3;->this$1:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->videos:Ljava/util/ArrayList;

    iget v1, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$3;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->getStatus()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$3;->this$1:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;

    iget-object v1, v1, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->getStringWrapped(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    new-instance v0, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    iget-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$3;->this$1:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;

    iget-object v1, v1, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$3;->this$1:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;

    iget-object v2, v2, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;

    .line 442
    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->getStringWrapped(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$3;->this$1:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;

    iget-object v3, v3, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;

    .line 443
    invoke-virtual {v3, v5}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->getStringWrapped(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 445
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v1

    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$3;->this$1:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->videos:Ljava/util/ArrayList;

    iget v2, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$3;->val$position:I

    .line 448
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->getUUID()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$3;->this$1:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->videos:Ljava/util/ArrayList;

    iget v3, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$3;->val$position:I

    .line 449
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->getVideoTitle()Ljava/lang/String;

    move-result-object v0

    .line 447
    invoke-virtual {v1, v2, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapDeleteInOptionsForMyPublishedVideoWithCCVID(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$3;->this$1:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;

    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$3;->this$1:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->videos:Ljava/util/ArrayList;

    iget v2, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$3;->val$position:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->access$300(Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;)V

    goto :goto_0

    .line 452
    :cond_2
    if-ne p3, v4, :cond_0

    .line 453
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$3;->this$1:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->videos:Ljava/util/ArrayList;

    iget v1, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$3;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->getStatus()Ljava/lang/String;

    move-result-object v0

    .line 454
    iget-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$3;->this$1:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;

    iget-object v1, v1, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->getStringWrapped(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 455
    new-instance v0, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    iget-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$3;->this$1:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;

    iget-object v1, v1, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$3;->this$1:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;

    iget-object v2, v2, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;

    .line 456
    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->getStringWrapped(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$3;->this$1:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;

    iget-object v3, v3, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;

    .line 457
    invoke-virtual {v3, v5}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->getStringWrapped(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 459
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    goto :goto_0

    .line 461
    :cond_3
    iget-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$3;->this$1:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;

    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$3;->this$1:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->videos:Ljava/util/ArrayList;

    iget v2, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$3;->val$position:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->access$400(Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;)V

    goto/16 :goto_0
.end method
