.class abstract Lcom/adobe/premiereclip/sharing/YouTubeBaseAsync;
.super Landroid/os/AsyncTask;
.source "YouTubeBaseAsync.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Lcom/google/api/services/youtube/model/Video;",
        ">;"
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "YoutubeBaseAsync"


# instance fields
.field final activity:Lcom/adobe/premiereclip/sharing/YouTubeExport;

.field description:Ljava/lang/String;

.field error:Z

.field tag:Ljava/lang/String;

.field title:Ljava/lang/String;

.field videoAccess:Ljava/lang/String;

.field final youtube:Lcom/google/api/services/youtube/YouTube;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/sharing/YouTubeExport;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/YouTubeBaseAsync;->activity:Lcom/adobe/premiereclip/sharing/YouTubeExport;

    .line 45
    iget-object v0, p1, Lcom/adobe/premiereclip/sharing/YouTubeExport;->youtube:Lcom/google/api/services/youtube/YouTube;

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeBaseAsync;->youtube:Lcom/google/api/services/youtube/YouTube;

    .line 46
    iget-object v0, p1, Lcom/adobe/premiereclip/sharing/YouTubeExport;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeBaseAsync;->title:Ljava/lang/String;

    .line 47
    iget-object v0, p1, Lcom/adobe/premiereclip/sharing/YouTubeExport;->mDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeBaseAsync;->description:Ljava/lang/String;

    .line 48
    iget-object v0, p1, Lcom/adobe/premiereclip/sharing/YouTubeExport;->mTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeBaseAsync;->tag:Ljava/lang/String;

    .line 49
    iget-object v0, p1, Lcom/adobe/premiereclip/sharing/YouTubeExport;->mVideoAccess:Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeBaseAsync;->videoAccess:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeBaseAsync;->error:Z

    .line 51
    return-void
.end method


# virtual methods
.method protected abstract doInBackground()Lcom/google/api/services/youtube/model/Video;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected final varargs doInBackground([Ljava/lang/Void;)Lcom/google/api/services/youtube/model/Video;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/premiereclip/sharing/YouTubeBaseAsync;->doInBackground()Lcom/google/api/services/youtube/model/Video;
    :try_end_0
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/GooglePlayServicesAvailabilityIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    .line 71
    :catch_0
    move-exception v0

    .line 73
    const-string/jumbo v0, "YoutubeBaseAsync"

    const-string/jumbo v1, "GooglePlayServicesAvailabilityIOException"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iput-boolean v2, p0, Lcom/adobe/premiereclip/sharing/YouTubeBaseAsync;->error:Z

    .line 82
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 75
    :catch_1
    move-exception v0

    .line 76
    const-string/jumbo v0, "YoutubeBaseAsync"

    const-string/jumbo v1, "UserRecoverableAuthIOException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iput-boolean v2, p0, Lcom/adobe/premiereclip/sharing/YouTubeBaseAsync;->error:Z

    goto :goto_1

    .line 78
    :catch_2
    move-exception v0

    .line 79
    const-string/jumbo v0, "YoutubeBaseAsync"

    const-string/jumbo v1, "IOException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iput-boolean v2, p0, Lcom/adobe/premiereclip/sharing/YouTubeBaseAsync;->error:Z

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/sharing/YouTubeBaseAsync;->doInBackground([Ljava/lang/Void;)Lcom/google/api/services/youtube/model/Video;

    move-result-object v0

    return-object v0
.end method

.method protected abstract onPostExecute(Lcom/google/api/services/youtube/model/Video;)V
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 32
    check-cast p1, Lcom/google/api/services/youtube/model/Video;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/sharing/YouTubeBaseAsync;->onPostExecute(Lcom/google/api/services/youtube/model/Video;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 57
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 61
    const-string/jumbo v0, "YouTubeProgress"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onProgressUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeBaseAsync;->activity:Lcom/adobe/premiereclip/sharing/YouTubeExport;

    iget-object v0, v0, Lcom/adobe/premiereclip/sharing/YouTubeExport;->mListener:Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;

    aget-object v1, p1, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v2, v1

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v2, v4

    invoke-interface {v0, v2, v3}, Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;->onProgress(D)V

    .line 64
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 32
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/sharing/YouTubeBaseAsync;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
