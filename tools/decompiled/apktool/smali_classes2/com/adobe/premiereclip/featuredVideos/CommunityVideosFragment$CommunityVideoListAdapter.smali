.class public Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;
.super Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;
.source "CommunityVideosFragment.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;

    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;-><init>(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;)V

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;)V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;->playVideoInBrowser(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;)V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;->playVideoInApp(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;)V

    return-void
.end method

.method private openCVOptionsPopup(ILandroid/view/View;)V
    .locals 4

    .prologue
    .line 264
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 266
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v2

    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;->videos:Ljava/util/ArrayList;

    .line 267
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->getUUID()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;->videos:Ljava/util/ArrayList;

    .line 268
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->getVideoTitle()Ljava/lang/String;

    move-result-object v0

    .line 266
    invoke-virtual {v2, v3, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapOptionsForCommunityVideoWithCCVID(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    new-instance v0, Landroid/widget/ListPopupWindow;

    invoke-direct {v0, v1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 271
    iget-object v2, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;

    iput-object v0, v2, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;->activePopupWindow:Landroid/widget/ListPopupWindow;

    .line 273
    invoke-virtual {v0, p2}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 275
    new-instance v2, Lcom/adobe/premiereclip/adapter/PopupListAdapter;

    iget-object v3, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;

    iget-object v3, v3, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;->popupOptionsDrawableIdList:Ljava/util/ArrayList;

    invoke-direct {v2, v1, v3}, Lcom/adobe/premiereclip/adapter/PopupListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 276
    invoke-static {v1, v0}, Lcom/adobe/premiereclip/util/Utilities;->preparePopupView(Landroid/content/Context;Landroid/widget/ListPopupWindow;)V

    .line 277
    new-instance v1, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$1;-><init>(Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;Landroid/widget/ListPopupWindow;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 297
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 298
    return-void
.end method

.method private playVideoInApp(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;)V
    .locals 3

    .prologue
    .line 218
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    const-string/jumbo v1, "videoTitle"

    invoke-virtual {p1}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->getVideoTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string/jumbo v1, "videoPlayUri"

    invoke-virtual {p1}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->getVideoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 221
    const-string/jumbo v1, "playbackEndBehave"

    const-string/jumbo v2, "finish"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    iget-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;->startActivity(Landroid/content/Intent;)V

    .line 223
    return-void
.end method

.method private playVideoInBrowser(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;)V
    .locals 3

    .prologue
    .line 226
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {p1}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->getShareUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 228
    :try_start_0
    iget-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 194
    check-cast p1, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;->onBindViewHolder(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;I)V
    .locals 3

    .prologue
    .line 204
    invoke-super {p0, p1, p2}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->onBindViewHolder(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;I)V

    .line 205
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;

    .line 206
    check-cast p1, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$CommunityVideoViewHolder;

    .line 207
    iget-object v1, p1, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$CommunityVideoViewHolder;->mAuthor:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->getAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;

    iget-boolean v0, v0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;->needsRefresh:Z

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;->scheduleTimerForRefreshList()V

    .line 211
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;->needsRefresh:Z

    .line 214
    :cond_0
    iget-object v0, p1, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$CommunityVideoViewHolder;->mCardView:Landroid/view/View;

    iget-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/util/LollipopUtils;->setElevation(Landroid/view/View;F)V

    .line 215
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0, p1, p2}, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;
    .locals 2

    .prologue
    .line 198
    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;->inflateViewAndSetHeight(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 199
    new-instance v1, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$CommunityVideoViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter$CommunityVideoViewHolder;-><init>(Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;Landroid/view/View;)V

    .line 200
    return-object v1
.end method
