.class public Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;
.super Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;
.source "CommunityVideosFragment.java"

# interfaces
.implements Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed$CommunityFeedABResult;


# static fields
.field private static final GO_URL_COMMUNITY:Ljava/lang/String; = "https://www.adobe.com/go/clipcommunityfeed/"


# instance fields
.field private final AB_TESTING:Z

.field private abTestCommunityFeed:Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;

.field private titleListener:Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityFeedTitleListener;

.field private final useStaging:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;->useStaging:Z

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;->AB_TESTING:Z

    .line 76
    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "communityVideoList.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 78
    const-string/jumbo v5, "community"

    .line 79
    const v1, 0x7f04012d

    .line 80
    const v2, 0x7f040169

    .line 81
    const v3, 0x7f0a043a

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;->popupOptionsDrawableIdList:Ljava/util/ArrayList;

    move-object v0, p0

    .line 85
    invoke-virtual/range {v0 .. v5}, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;->initializeFragment(IIILjava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;)Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;->abTestCommunityFeed:Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;

    return-object v0
.end method

.method public static newInstance(Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityFeedTitleListener;)Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;

    invoke-direct {v0}, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;-><init>()V

    .line 68
    iput-object p0, v0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;->titleListener:Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityFeedTitleListener;

    .line 69
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 70
    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;->setArguments(Landroid/os/Bundle;)V

    .line 71
    sput-object v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->communityVideosFragmentInstance:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

    .line 72
    return-object v0
.end method

.method private refreshVideoListAdapter(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;->mAdapter:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;

    if-eqz v0, :cond_0

    .line 111
    iget-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;->mAdapter:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;

    new-instance v2, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$VideoListRetriever;

    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;->mAdapter:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;

    check-cast v0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$VideoListRetriever;-><init>(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;)V

    iput-object v2, v1, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->mVideoListRetriever:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$VideoListRetriever;

    .line 112
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;->mAdapter:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->mVideoListRetriever:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$VideoListRetriever;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$VideoListRetriever;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;->disableSwipeRefreshLayout()V

    goto :goto_0
.end method


# virtual methods
.method protected createVideoListAdapter()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityVideoListAdapter;-><init>(Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;->mAdapter:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;

    .line 96
    invoke-virtual {p0}, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;->refreshVideoListAdapter()V

    .line 97
    return-void
.end method

.method protected varargs getJSONArrayOfVideosFromUrl([Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 174
    :try_start_0
    invoke-static {v0}, Lcom/adobe/premiereclip/util/JsonReader;->readJsonArrayFromUrl(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 180
    :goto_0
    return-object v0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 178
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected makeVideosList(Lorg/json/JSONArray;Z)Ljava/util/ArrayList;
    .locals 13
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

    .prologue
    const/4 v10, 0x0

    .line 120
    if-nez p1, :cond_0

    .line 167
    :goto_0
    return-object v10

    .line 121
    :cond_0
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setCommunityVideosCount(I)V

    .line 122
    if-nez p2, :cond_1

    .line 123
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didFetchCommunityVideosList()V

    .line 126
    :cond_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 127
    const/4 v0, 0x0

    move v9, v0

    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v9, v0, :cond_3

    .line 132
    :try_start_0
    invoke-virtual {p1, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 133
    const-string/jumbo v1, "ccv_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 134
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 135
    const-string/jumbo v3, "author"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 136
    const-string/jumbo v4, "description"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 141
    if-nez p2, :cond_2

    .line 143
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "https://api.ccv.adobe.com/api/v1/videos/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "/info?options=title,description,thumbnail,posterframe,username,post_date,duration,privacy,hls_playlist"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-static {v0}, Lcom/adobe/premiereclip/util/JsonReader;->readJsonObjectFromUrl(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 145
    const-string/jumbo v0, "post_date"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 146
    :try_start_2
    const-string/jumbo v4, "posterframe"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 147
    const-string/jumbo v7, "url"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 148
    :try_start_3
    const-string/jumbo v7, "hls_playlist"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-object v7, v6

    move-object v6, v4

    move-object v4, v0

    .line 160
    :goto_2
    :try_start_4
    new-instance v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;

    const v8, 0x7f0a04dc

    .line 161
    invoke-virtual {p0, v8}, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;->getStringWrapped(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 164
    :goto_3
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto/16 :goto_1

    .line 149
    :catch_0
    move-exception v0

    move-object v4, v10

    move-object v6, v10

    .line 150
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-object v7, v10

    move-object v12, v4

    move-object v4, v6

    move-object v6, v12

    .line 151
    goto :goto_2

    .line 155
    :cond_2
    :try_start_6
    const-string/jumbo v4, "hls_playlist"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-object v7, v0

    move-object v6, v10

    move-object v4, v10

    .line 157
    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    move-object v7, v10

    move-object v6, v10

    move-object v4, v10

    goto :goto_2

    .line 163
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v10

    goto :goto_3

    :cond_3
    move-object v10, v11

    .line 167
    goto/16 :goto_0

    .line 149
    :catch_3
    move-exception v4

    move-object v6, v0

    move-object v0, v4

    move-object v4, v10

    goto :goto_4

    :catch_4
    move-exception v6

    move-object v12, v6

    move-object v6, v0

    move-object v0, v12

    goto :goto_4
.end method

.method public onABGroupDecided(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;->titleListener:Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityFeedTitleListener;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;->titleListener:Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityFeedTitleListener;

    invoke-interface {v0, p1}, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment$CommunityFeedTitleListener;->onResetCommunityFeedTitle(Ljava/lang/String;)V

    .line 188
    :cond_0
    if-eqz p3, :cond_1

    .line 189
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;->videoListFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/premiereclip/util/FileOps;->delete(Ljava/lang/String;)Z

    .line 191
    :cond_1
    invoke-direct {p0, p2}, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;->refreshVideoListAdapter(Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->onAttach(Landroid/content/Context;)V

    .line 91
    new-instance v0, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;

    invoke-direct {v0, p1}, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;->abTestCommunityFeed:Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;

    .line 92
    return-void
.end method

.method protected refreshVideoListAdapter()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;->abTestCommunityFeed:Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/CommunityVideosFragment;->abTestCommunityFeed:Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;

    invoke-virtual {v0, p0}, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;->decideGroup(Lcom/adobe/premiereclip/analytics/ABTesting$ABInterface;)V

    .line 104
    :cond_0
    return-void
.end method
