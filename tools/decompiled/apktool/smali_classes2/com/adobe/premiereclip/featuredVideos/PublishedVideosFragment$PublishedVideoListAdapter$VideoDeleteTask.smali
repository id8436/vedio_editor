.class Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$VideoDeleteTask;
.super Landroid/os/AsyncTask;
.source "PublishedVideosFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;

.field private video:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;


# direct methods
.method protected constructor <init>(Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$VideoDeleteTask;->this$1:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$VideoDeleteTask;->video:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 6

    .prologue
    .line 355
    const/4 v1, -0x1

    .line 358
    :try_start_0
    new-instance v0, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "https://api.ccv.adobe.com/api/v1/videos/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$VideoDeleteTask;->video:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->getUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 359
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v2

    .line 360
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    .line 362
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 363
    const-string/jumbo v3, "DELETE"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 364
    const-string/jumbo v3, "User-Agent"

    const-string/jumbo v4, "PremiereClip"

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bearer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 366
    const-string/jumbo v3, "Authorization"

    invoke-virtual {v0, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 368
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 369
    const/16 v0, 0xcc

    if-ne v1, v0, :cond_0

    .line 370
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$VideoDeleteTask;->video:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;

    .line 371
    invoke-virtual {v2}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->getUUID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$VideoDeleteTask;->video:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;

    .line 372
    invoke-virtual {v3}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->getVideoTitle()Ljava/lang/String;

    move-result-object v3

    .line 370
    invoke-virtual {v0, v2, v3}, Lcom/adobe/premiereclip/metrics/Metrics;->didDeleteVideoMyPublishedVideoWithCCVID(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    move v0, v1

    .line 377
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 375
    :catch_0
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 376
    :catch_1
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 351
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$VideoDeleteTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 382
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_1

    .line 383
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$VideoDeleteTask;->this$1:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->videos:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$VideoDeleteTask;->video:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 384
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$VideoDeleteTask;->this$1:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$VideoDeleteTask;->this$1:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;

    iput-boolean v2, v0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->noVideos:Z

    .line 386
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$VideoDeleteTask;->this$1:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->showNoVideosErrorMessage()V

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$VideoDeleteTask;->this$1:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->notifyDataSetChanged()V

    .line 389
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$VideoDeleteTask;->this$1:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;

    invoke-static {v0, v2}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;->access$102(Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment;Z)Z

    .line 391
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 351
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/featuredVideos/PublishedVideosFragment$PublishedVideoListAdapter$VideoDeleteTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
