.class public Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;
.super Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;
.source "PublishedVideosFragment.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;

    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;-><init>(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;)V

    return-void
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;ILandroid/view/View;)V
    .locals 0

    .prologue
    .line 273
    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->openPVOptionsPopup(ILandroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;)V
    .locals 0

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->onClickDeleteVideo(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;)V

    return-void
.end method

.method static synthetic access$400(Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;)V
    .locals 0

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->onClickSharePublishedVideo(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;)V

    return-void
.end method

.method private onClickDeleteVideo(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;)V
    .locals 5

    .prologue
    .line 314
    new-instance v0, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;

    iget-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;

    const v3, 0x7f0a03ef

    .line 315
    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->getStringWrapped(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;

    const v4, 0x7f0a03f0

    .line 316
    invoke-virtual {v3, v4}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->getStringWrapped(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 318
    iget-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;

    const v2, 0x7f0a03f2

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->getStringWrapped(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$1;-><init>(Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;)V

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->setAcceptButton(Ljava/lang/String;Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;)V

    .line 325
    iget-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;

    const v2, 0x7f0a0391

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->getStringWrapped(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->setRejectButton(Ljava/lang/String;Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;)V

    .line 326
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->show()V

    .line 327
    return-void
.end method

.method private onClickSharePublishedVideo(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;)V
    .locals 4

    .prologue
    .line 330
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    .line 331
    invoke-virtual {p1}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->getUUID()Ljava/lang/String;

    move-result-object v1

    .line 332
    invoke-virtual {p1}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->getVideoTitle()Ljava/lang/String;

    move-result-object v2

    .line 330
    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapShareForExportPublishedVideoWithCCVID(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;

    invoke-static {v0}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->access$000(Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;)Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;

    move-result-object v0

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;

    new-instance v1, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;

    iget-object v2, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$2;

    invoke-direct {v3, p0}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$2;-><init>(Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;)V

    invoke-direct {v1, v2, v3}, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;-><init>(Landroid/app/Activity;Lcom/adobe/premiereclip/sharing/SharingIntentsOptions$Listener;)V

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->access$002(Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;)Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;

    invoke-static {v0}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->access$000(Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;)Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->getShareUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->getVideoTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;->onShareClicked(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method private openPVOptionsPopup(ILandroid/view/View;)V
    .locals 4

    .prologue
    .line 415
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 417
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v2

    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->videos:Ljava/util/ArrayList;

    .line 418
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->getUUID()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->videos:Ljava/util/ArrayList;

    .line 419
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->getVideoTitle()Ljava/lang/String;

    move-result-object v0

    .line 417
    invoke-virtual {v2, v3, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapOptionsForMyPublishedVideoWithCCVID(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v2

    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->videos:Ljava/util/ArrayList;

    .line 422
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->getUUID()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->videos:Ljava/util/ArrayList;

    .line 423
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->getVideoTitle()Ljava/lang/String;

    move-result-object v0

    .line 421
    invoke-virtual {v2, v3, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didShowOptionsViewForMyPublishedVideo(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    new-instance v0, Landroid/widget/ListPopupWindow;

    invoke-direct {v0, v1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 426
    iget-object v2, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;

    iput-object v0, v2, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->activePopupWindow:Landroid/widget/ListPopupWindow;

    .line 428
    invoke-virtual {v0, p2}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 430
    new-instance v2, Lcom/adobe/premiereclip/adapter/PopupListAdapter;

    iget-object v3, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;

    iget-object v3, v3, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->popupOptionsDrawableIdList:Ljava/util/ArrayList;

    invoke-direct {v2, v1, v3}, Lcom/adobe/premiereclip/adapter/PopupListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 431
    invoke-static {v1, v0}, Lcom/adobe/premiereclip/util/Utilities;->preparePopupView(Landroid/content/Context;Landroid/widget/ListPopupWindow;)V

    .line 432
    new-instance v1, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$3;-><init>(Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;Landroid/widget/ListPopupWindow;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 466
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 467
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 468
    return-void
.end method

.method private setVideoStatus(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$PublishedVideoViewHolder;)V
    .locals 5

    .prologue
    const v4, 0x7f0a04dc

    const v3, 0x7f0a04db

    .line 295
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    invoke-virtual {p1}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->getStatus()Ljava/lang/String;

    move-result-object v0

    .line 298
    iget-object v1, p2, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$PublishedVideoViewHolder;->mStatusBox:Landroid/widget/TextView;

    const v2, 0x7f020320

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 299
    iget-object v1, p2, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$PublishedVideoViewHolder;->mStatusBox:Landroid/widget/TextView;

    const v2, 0x7f0a04da

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 301
    iget-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;

    invoke-virtual {v1, v4}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->getStringWrapped(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 302
    iget-object v0, p2, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$PublishedVideoViewHolder;->mStatusBox:Landroid/widget/TextView;

    const v1, 0x7f020323

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 303
    iget-object v0, p2, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$PublishedVideoViewHolder;->mStatusBox:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 306
    :cond_2
    iget-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;

    invoke-virtual {v1, v3}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->getStringWrapped(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p2, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$PublishedVideoViewHolder;->mStatusBox:Landroid/widget/TextView;

    const v1, 0x7f020322

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 308
    iget-object v0, p2, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$PublishedVideoViewHolder;->mStatusBox:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 273
    check-cast p1, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->onBindViewHolder(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;I)V
    .locals 5

    .prologue
    .line 283
    invoke-super {p0, p1, p2}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->onBindViewHolder(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;I)V

    .line 284
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;

    .line 285
    invoke-virtual {v0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->getStatus()Ljava/lang/String;

    .line 286
    check-cast p1, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$PublishedVideoViewHolder;

    .line 288
    iget-object v1, p1, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$PublishedVideoViewHolder;->mPostDate:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;

    const v4, 0x7f0a041a

    invoke-virtual {v3, v4}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->getStringWrapped(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->getPostDateString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    invoke-direct {p0, v0, p1}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->setVideoStatus(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$PublishedVideoViewHolder;)V

    .line 291
    iget-object v0, p1, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$PublishedVideoViewHolder;->mCardView:Landroid/view/View;

    iget-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/util/LollipopUtils;->setElevation(Landroid/view/View;F)V

    .line 292
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 273
    invoke-virtual {p0, p1, p2}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;
    .locals 2

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->inflateViewAndSetHeight(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 278
    new-instance v1, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$PublishedVideoViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$PublishedVideoViewHolder;-><init>(Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;Landroid/view/View;)V

    .line 279
    return-object v1
.end method
