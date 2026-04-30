.class public abstract Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "FeaturedVideosBaseFragment.java"


# static fields
.field protected static communityVideosFragmentInstance:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

.field protected static publishedVideosFragmentInstance:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;


# instance fields
.field protected activePopupWindow:Landroid/widget/ListPopupWindow;

.field private cacheDirSuffix:Ljava/lang/String;

.field private fragmentViewId:I

.field protected mAdapter:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;

.field private mContext:Landroid/content/Context;

.field private mErrorImage:Landroid/widget/ImageView;

.field private mErrorMsg:Landroid/widget/TextView;

.field private mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private mVideoListCached:Z

.field protected volatile needsRefresh:Z

.field protected noVideos:Z

.field private noVideosErrorMsgCode:I

.field protected popupOptionsDrawableIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected timerCheckInternet:Ljava/util/Timer;

.field protected volatile timerCheckInternetScheduled:Z

.field protected timerRefreshList:Ljava/util/Timer;

.field protected videoListFilePath:Ljava/lang/String;

.field private videoPosterHeight:I

.field private videosCacheDir:Ljava/lang/String;

.field private viewHolderViewId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    sput-object v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->communityVideosFragmentInstance:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

    .line 79
    sput-object v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->publishedVideosFragmentInstance:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 91
    iput-boolean v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->mVideoListCached:Z

    .line 96
    iput-boolean v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->noVideos:Z

    .line 99
    iput-boolean v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->needsRefresh:Z

    .line 101
    iput-boolean v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->timerCheckInternetScheduled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->recheckInternet()V

    return-void
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;)Z
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->isNetworkAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;)Z
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->checkConnectivityAndSetError()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->videosCacheDir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;)Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->mVideoListCached:Z

    return v0
.end method

.method static synthetic access$402(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;Z)Z
    .locals 0

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->mVideoListCached:Z

    return p1
.end method

.method static synthetic access$500(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;)I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->viewHolderViewId:I

    return v0
.end method

.method static synthetic access$600(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;)I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->videoPosterHeight:I

    return v0
.end method

.method static synthetic access$700(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method private checkConnectivityAndSetError()Z
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v0, 0x0

    .line 249
    invoke-direct {p0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->isNetworkAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 250
    iget-boolean v1, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->noVideos:Z

    if-eqz v1, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->showNoVideosErrorMessage()V

    .line 269
    :goto_0
    return v0

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->mErrorMsg:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    iget-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->mErrorImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 256
    iget-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setVisibility(I)V

    goto :goto_0

    .line 261
    :cond_1
    iget-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setVisibility(I)V

    .line 262
    iget-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->mErrorMsg:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    iget-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->mErrorMsg:Landroid/widget/TextView;

    const v2, 0x7f0a043c

    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->getStringWrapped(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->mErrorImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 267
    invoke-direct {p0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->scheduleTimerForCheckingInternet()V

    .line 269
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private clearCache()V
    .locals 5

    .prologue
    .line 226
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->mAdapter:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->mAdapter:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->videos:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->mAdapter:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 228
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 230
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->mAdapter:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;

    .line 231
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->videosCacheDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->getUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ".jpg"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->mAdapter:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->videos:Ljava/util/ArrayList;

    .line 239
    :cond_1
    return-void
.end method

.method public static displayErrorIfNoInternet()V
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->communityVideosFragmentInstance:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

    if-eqz v0, :cond_0

    .line 202
    sget-object v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->communityVideosFragmentInstance:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

    invoke-direct {v0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->checkConnectivityAndSetError()Z

    .line 204
    :cond_0
    sget-object v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->publishedVideosFragmentInstance:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

    if-eqz v0, :cond_1

    .line 205
    sget-object v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->publishedVideosFragmentInstance:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

    invoke-direct {v0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->checkConnectivityAndSetError()Z

    .line 207
    :cond_1
    return-void
.end method

.method private isNetworkAvailable()Z
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    .line 243
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 244
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static onLogout()V
    .locals 2

    .prologue
    .line 188
    invoke-static {}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->clearPublishedVideoList()V

    .line 190
    :try_start_0
    sget-object v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->communityVideosFragmentInstance:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

    iget-object v0, v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->mAdapter:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->mVideoListRetriever:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$VideoListRetriever;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$VideoListRetriever;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    :try_start_1
    sget-object v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->publishedVideosFragmentInstance:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

    invoke-direct {v0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->clearCache()V

    .line 195
    sget-object v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->publishedVideosFragmentInstance:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

    iget-object v0, v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->mAdapter:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->mVideoListRetriever:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$VideoListRetriever;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$VideoListRetriever;->cancel(Z)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 198
    :goto_1
    return-void

    .line 192
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 197
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method private recheckInternet()V
    .locals 1

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->refreshVideoListAdapter()V

    .line 306
    :goto_0
    return-void

    .line 304
    :cond_0
    invoke-direct {p0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->scheduleTimerForCheckingInternet()V

    goto :goto_0
.end method

.method private scheduleTimerForCheckingInternet()V
    .locals 4

    .prologue
    .line 282
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->timerCheckInternet:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 283
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->timerCheckInternet:Ljava/util/Timer;

    .line 286
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->timerCheckInternetScheduled:Z

    if-nez v0, :cond_1

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->timerCheckInternetScheduled:Z

    .line 288
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->timerCheckInternet:Ljava/util/Timer;

    new-instance v1, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$2;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$2;-><init>(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 297
    :cond_1
    return-void
.end method

.method protected static writeVideoListToDisk(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 322
    if-nez p0, :cond_0

    .line 332
    :goto_0
    return-void

    .line 323
    :cond_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    move v1, v2

    .line 324
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 325
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;

    .line 326
    invoke-virtual {v0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 324
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 328
    :cond_1
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 329
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    .line 330
    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    goto :goto_0
.end method


# virtual methods
.method protected abstract createVideoListAdapter()V
.end method

.method protected disableSwipeRefreshLayout()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 219
    return-void
.end method

.method protected varargs abstract getJSONArrayOfVideosFromUrl([Ljava/lang/String;)Lorg/json/JSONArray;
.end method

.method protected getStringWrapped(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 663
    invoke-virtual {p0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 664
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 665
    :cond_0
    const-string/jumbo v0, ""

    .line 667
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected initializeFragment(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 211
    iput p1, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->fragmentViewId:I

    .line 212
    iput-object p4, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->videoListFilePath:Ljava/lang/String;

    .line 213
    iput-object p5, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->cacheDirSuffix:Ljava/lang/String;

    .line 214
    iput p2, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->viewHolderViewId:I

    .line 215
    iput p3, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->noVideosErrorMsgCode:I

    .line 216
    return-void
.end method

.method protected abstract makeVideosList(Lorg/json/JSONArray;Z)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;",
            ">;"
        }
    .end annotation
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 112
    iput-object p1, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->mContext:Landroid/content/Context;

    .line 113
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 107
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 118
    iget v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->fragmentViewId:I

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 120
    const v0, 0x7f1204f8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->mErrorMsg:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f1204f7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->mErrorImage:Landroid/widget/ImageView;

    .line 122
    const v0, 0x7f1204f6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 123
    const v0, 0x7f1204f5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 124
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-array v2, v5, [I

    const v3, 0x7f1101a3

    aput v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 125
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v2, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$1;

    invoke-direct {v2, p0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$1;-><init>(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 133
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 136
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 137
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 138
    invoke-virtual {p0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->createVideoListAdapter()V

    .line 140
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->mAdapter:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 142
    invoke-virtual {p0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 143
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 144
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 145
    iget v0, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c02dc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    .line 146
    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->videoPosterHeight:I

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->cacheDirSuffix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->videosCacheDir:Ljava/lang/String;

    .line 149
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->videosCacheDir:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 151
    return-object v1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 162
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 164
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->timerCheckInternet:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->timerCheckInternet:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 166
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->timerCheckInternet:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->timerCheckInternet:Ljava/util/Timer;

    .line 169
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->timerCheckInternetScheduled:Z

    .line 170
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 174
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 175
    invoke-direct {p0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->checkConnectivityAndSetError()Z

    .line 176
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 156
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 157
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->mAdapter:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->notifyDataSetChanged()V

    .line 158
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 180
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 182
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->activePopupWindow:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->activePopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 185
    :cond_0
    return-void
.end method

.method protected abstract refreshVideoListAdapter()V
.end method

.method protected scheduleTimerForRefreshList()V
    .locals 4

    .prologue
    .line 309
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->timerRefreshList:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 310
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->timerRefreshList:Ljava/util/Timer;

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->timerRefreshList:Ljava/util/Timer;

    new-instance v1, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$3;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$3;-><init>(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 319
    return-void
.end method

.method protected showNoVideosErrorMessage()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 274
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->mErrorImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 275
    iget v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->noVideosErrorMsgCode:I

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->getStringWrapped(I)Ljava/lang/String;

    move-result-object v0

    .line 276
    iget-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setVisibility(I)V

    .line 277
    iget-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->mErrorMsg:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    iget-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->mErrorMsg:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    return-void
.end method
