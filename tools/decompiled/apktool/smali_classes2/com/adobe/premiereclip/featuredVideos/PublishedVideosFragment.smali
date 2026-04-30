.class public Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;
.super Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;
.source "PublishedVideosFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PublishedVideosFragment"

.field private static publishedVideoListPath:Ljava/lang/String;


# instance fields
.field private sharingIntentsOptions:Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;

.field private videoDeleted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 72
    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "publishedVideoList.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->publishedVideoListPath:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->videoDeleted:Z

    .line 77
    const-string/jumbo v5, "published"

    .line 78
    const v1, 0x7f040132

    .line 79
    const v2, 0x7f040180

    .line 80
    const v3, 0x7f0a0441

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->popupOptionsDrawableIdList:Ljava/util/ArrayList;

    .line 83
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->popupOptionsDrawableIdList:Ljava/util/ArrayList;

    const v4, 0x7f020188

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->popupOptionsDrawableIdList:Ljava/util/ArrayList;

    const v4, 0x7f0202c9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v4, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->publishedVideoListPath:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->initializeFragment(IIILjava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;)Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->sharingIntentsOptions:Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;

    return-object v0
.end method

.method static synthetic access$002(Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;)Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->sharingIntentsOptions:Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;

    return-object p1
.end method

.method static synthetic access$102(Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;Z)Z
    .locals 0

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->videoDeleted:Z

    return p1
.end method

.method public static clearPublishedVideoList()V
    .locals 2

    .prologue
    .line 99
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->publishedVideoListPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static newInstance()Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;

    invoke-direct {v0}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;-><init>()V

    .line 91
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 92
    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->setArguments(Landroid/os/Bundle;)V

    .line 93
    sput-object v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->publishedVideosFragmentInstance:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

    .line 94
    return-object v0
.end method


# virtual methods
.method protected createVideoListAdapter()V
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;-><init>(Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->mAdapter:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;

    .line 146
    invoke-virtual {p0}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->refreshVideoListAdapter()V

    .line 147
    return-void
.end method

.method protected varargs getJSONArrayOfVideosFromUrl([Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 7

    .prologue
    .line 243
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 244
    const/4 v1, 0x1

    aget-object v2, p1, v1

    .line 245
    const/4 v1, 0x0

    .line 247
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 249
    const-string/jumbo v3, "GET"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 250
    const-string/jumbo v3, "User-Agent"

    const-string/jumbo v4, "PremiereClip"

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string/jumbo v3, "Accept"

    const-string/jumbo v4, "application/json"

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bearer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 253
    const-string/jumbo v4, "Authorization"

    invoke-virtual {v0, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 256
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 257
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 258
    invoke-static {v3}, Lcom/adobe/premiereclip/util/JsonReader;->readAll(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    .line 259
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 260
    new-instance v0, Lorg/json/JSONArray;

    const-string/jumbo v4, "videos"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 270
    :goto_0
    return-object v0

    .line 262
    :catch_0
    move-exception v0

    .line 263
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 268
    goto :goto_0

    .line 265
    :catch_1
    move-exception v0

    .line 266
    const/4 v3, 0x5

    const-string/jumbo v4, "PublishedVideosFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to fetch list of videos from Url. Access token = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/crashlytics/android/Crashlytics;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    .line 262
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method protected makeVideosList(Lorg/json/JSONArray;Z)Ljava/util/ArrayList;
    .locals 16
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
    .line 163
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 239
    :goto_0
    return-object v1

    .line 164
    :cond_0
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->setMyPublishedVideosCount(I)V

    .line 165
    if-nez p2, :cond_1

    .line 166
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didFetchMyPublishedVideosList()V

    .line 169
    :cond_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 170
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->needsRefresh:Z

    .line 171
    const/4 v1, 0x0

    move v10, v1

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v10, v1, :cond_5

    .line 174
    const/4 v11, 0x0

    .line 176
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 177
    const-string/jumbo v1, "ccv_id"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 179
    const/4 v3, 0x0

    .line 180
    const/4 v9, 0x0

    .line 181
    const/4 v5, 0x0

    .line 182
    const/4 v6, 0x0

    .line 183
    const/4 v7, 0x0

    .line 184
    const/4 v8, 0x0

    .line 185
    const v1, 0x7f0a04da

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->getStringWrapped(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v13

    .line 186
    if-eqz p2, :cond_2

    .line 188
    :try_start_1
    const-string/jumbo v1, "title"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 189
    :try_start_2
    const-string/jumbo v3, "post_date"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    .line 190
    :try_start_3
    const-string/jumbo v4, "hls_playlist"

    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    .line 191
    :try_start_4
    const-string/jumbo v5, "status"

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a

    move-object v8, v4

    move-object v4, v9

    move-object v9, v5

    move-object v5, v3

    move-object v3, v1

    .line 225
    :goto_2
    :try_start_5
    new-instance v1, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;

    invoke-direct/range {v1 .. v9}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 231
    :goto_3
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_1

    .line 193
    :catch_0
    move-exception v1

    move-object v4, v8

    move-object v15, v5

    move-object v5, v3

    move-object v3, v15

    :goto_4
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-object v8, v4

    move-object v4, v9

    move-object v9, v13

    move-object v15, v3

    move-object v3, v5

    move-object v5, v15

    goto :goto_2

    .line 197
    :cond_2
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "https://api.ccv.adobe.com/api/v1/videos/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "/info?options=title,description,thumbnail,posterframe,username,post_date,duration,privacy,hls_playlist"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 198
    invoke-static {v1}, Lcom/adobe/premiereclip/util/JsonReader;->readJsonObjectFromUrl(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 200
    const-string/jumbo v1, "privacy"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 201
    const-string/jumbo v4, "unlisted"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 202
    const v1, 0x7f0a04db

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->getStringWrapped(I)Ljava/lang/String;

    move-result-object v13

    .line 210
    :goto_5
    const-string/jumbo v1, "title"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 211
    :try_start_8
    const-string/jumbo v3, "username"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 212
    :try_start_9
    const-string/jumbo v4, "post_date"

    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 213
    :try_start_a
    const-string/jumbo v5, "description"

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 214
    :try_start_b
    const-string/jumbo v6, "posterframe"

    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    .line 215
    const-string/jumbo v9, "url"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 216
    :try_start_c
    const-string/jumbo v7, "hls_playlist"

    invoke-virtual {v14, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    move-object v9, v13

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v1

    .line 222
    goto/16 :goto_2

    .line 204
    :cond_3
    :try_start_d
    const-string/jumbo v4, "public"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 205
    const v1, 0x7f0a04dc

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->getStringWrapped(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_5

    .line 208
    :cond_4
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->needsRefresh:Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    goto :goto_5

    .line 218
    :catch_1
    move-exception v1

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v3

    move-object v3, v9

    .line 219
    :goto_6
    :try_start_e
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 220
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->needsRefresh:Z

    .line 221
    const v1, 0x7f0a04da

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->getStringWrapped(I)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    move-result-object v9

    move-object v15, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v7

    move-object v7, v15

    goto/16 :goto_2

    .line 227
    :catch_2
    move-exception v1

    .line 228
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 229
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->needsRefresh:Z

    move-object v1, v11

    goto/16 :goto_3

    .line 234
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->needsRefresh:Z

    if-eqz v1, :cond_6

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->scheduleTimerForRefreshList()V

    .line 236
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->needsRefresh:Z

    :cond_6
    move-object v1, v12

    .line 239
    goto/16 :goto_0

    .line 218
    :catch_3
    move-exception v3

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v1

    move-object v1, v3

    move-object v3, v9

    goto :goto_6

    :catch_4
    move-exception v4

    move-object v15, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v1

    move-object v1, v15

    goto :goto_6

    :catch_5
    move-exception v5

    move-object v15, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v1

    move-object v1, v15

    goto :goto_6

    :catch_6
    move-exception v6

    move-object v15, v6

    move-object v6, v7

    move-object v7, v1

    move-object v1, v15

    goto :goto_6

    :catch_7
    move-exception v7

    move-object v15, v7

    move-object v7, v1

    move-object v1, v15

    goto :goto_6

    .line 193
    :catch_8
    move-exception v3

    move-object v4, v8

    move-object v15, v3

    move-object v3, v5

    move-object v5, v1

    move-object v1, v15

    goto/16 :goto_4

    :catch_9
    move-exception v4

    move-object v5, v1

    move-object v1, v4

    move-object v4, v8

    goto/16 :goto_4

    :catch_a
    move-exception v5

    move-object v15, v5

    move-object v5, v1

    move-object v1, v15

    goto/16 :goto_4
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->onPause()V

    .line 125
    iget-boolean v0, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->videoDeleted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->mAdapter:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->mAdapter:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->videos:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->videoListFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->mAdapter:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->videos:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->videoListFilePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->writeVideoListToDisk(Ljava/util/ArrayList;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->videoDeleted:Z

    .line 134
    :cond_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    const-string/jumbo v0, "PublishedVideosFragment"

    const-string/jumbo v1, "Cannot write published video list to disk on pause"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->onResume()V

    .line 108
    invoke-virtual {p0}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 109
    invoke-virtual {p0}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 110
    invoke-virtual {p0}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$1;-><init>(Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 120
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->onStop()V

    .line 139
    const-string/jumbo v0, "PublishedVideosFragment"

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->sharingIntentsOptions:Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;

    if-eqz v0, :cond_0

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->sharingIntentsOptions:Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;

    .line 142
    :cond_0
    return-void
.end method

.method protected refreshVideoListAdapter()V
    .locals 5

    .prologue
    .line 150
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    .line 152
    const-string/jumbo v2, "https://api.ccv.adobe.com/api/v1/videos?max=100"

    .line 153
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->mAdapter:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;

    if-eqz v0, :cond_0

    .line 154
    iget-object v3, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->mAdapter:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;

    new-instance v4, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$VideoListRetriever;

    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->mAdapter:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;

    check-cast v0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$VideoListRetriever;-><init>(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;)V

    iput-object v4, v3, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->mVideoListRetriever:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$VideoListRetriever;

    .line 155
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->mAdapter:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->mVideoListRetriever:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$VideoListRetriever;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object v1, v3, v2

    invoke-virtual {v0, v3}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$VideoListRetriever;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->disableSwipeRefreshLayout()V

    goto :goto_0
.end method
