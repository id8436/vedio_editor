.class public Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad;
.super Lcom/adobe/premiereclip/sharing/YouTubeBaseAsync;
.source "YoutubeAsyncLoad.java"


# static fields
.field static final TAG:Ljava/lang/String; = "YoutubeAsyncLoadTask"

.field static cancelled:Z

.field static completed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    sput-boolean v0, Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad;->cancelled:Z

    .line 52
    sput-boolean v0, Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad;->completed:Z

    return-void
.end method

.method constructor <init>(Lcom/adobe/premiereclip/sharing/YouTubeExport;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/sharing/YouTubeBaseAsync;-><init>(Lcom/adobe/premiereclip/sharing/YouTubeExport;)V

    .line 56
    return-void
.end method

.method static abortUpload()V
    .locals 1

    .prologue
    .line 177
    sget-boolean v0, Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad;->completed:Z

    if-nez v0, :cond_0

    .line 178
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad;->cancelled:Z

    .line 179
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method private getFileFromUri(Landroid/net/Uri;)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    const-string/jumbo v0, "YoutubeAsyncLoadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 184
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    return-object v1
.end method

.method static run(Lcom/adobe/premiereclip/sharing/YouTubeExport;)V
    .locals 2

    .prologue
    .line 173
    new-instance v0, Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad;-><init>(Lcom/adobe/premiereclip/sharing/YouTubeExport;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 174
    return-void
.end method


# virtual methods
.method protected doInBackground()Lcom/google/api/services/youtube/model/Video;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 61
    const-string/jumbo v0, "video/*"

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad;->activity:Lcom/adobe/premiereclip/sharing/YouTubeExport;

    iget-object v1, v1, Lcom/adobe/premiereclip/sharing/YouTubeExport;->videoUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad;->getFileFromUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    .line 66
    const-string/jumbo v2, "YoutubeAsyncLoadTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "You chose "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to upload."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v2, Lcom/google/api/services/youtube/model/Video;

    invoke-direct {v2}, Lcom/google/api/services/youtube/model/Video;-><init>()V

    .line 71
    new-instance v3, Lcom/google/api/services/youtube/model/VideoStatus;

    invoke-direct {v3}, Lcom/google/api/services/youtube/model/VideoStatus;-><init>()V

    .line 72
    iget-object v4, p0, Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad;->videoAccess:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/api/services/youtube/model/VideoStatus;->setPrivacyStatus(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoStatus;

    .line 73
    invoke-virtual {v2, v3}, Lcom/google/api/services/youtube/model/Video;->setStatus(Lcom/google/api/services/youtube/model/VideoStatus;)Lcom/google/api/services/youtube/model/Video;

    .line 76
    new-instance v3, Lcom/google/api/services/youtube/model/VideoSnippet;

    invoke-direct {v3}, Lcom/google/api/services/youtube/model/VideoSnippet;-><init>()V

    .line 78
    iget-object v4, p0, Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/api/services/youtube/model/VideoSnippet;->setTitle(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoSnippet;

    .line 79
    iget-object v4, p0, Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/api/services/youtube/model/VideoSnippet;->setDescription(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoSnippet;

    .line 82
    iget-object v4, p0, Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad;->tag:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    const-string/jumbo v4, "YoutubeAsyncLoadTask"

    const-string/jumbo v5, "No tag added"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_0
    invoke-virtual {v2, v3}, Lcom/google/api/services/youtube/model/Video;->setSnippet(Lcom/google/api/services/youtube/model/VideoSnippet;)Lcom/google/api/services/youtube/model/Video;

    .line 95
    new-instance v3, Lcom/google/api/client/http/InputStreamContent;

    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v0, v4}, Lcom/google/api/client/http/InputStreamContent;-><init>(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 98
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/api/client/http/InputStreamContent;->setLength(J)Lcom/google/api/client/http/InputStreamContent;

    .line 99
    const-string/jumbo v0, "YoutubeAsyncLoadTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "videoFile.length()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad;->youtube:Lcom/google/api/services/youtube/YouTube;

    .line 102
    invoke-virtual {v0}, Lcom/google/api/services/youtube/YouTube;->videos()Lcom/google/api/services/youtube/YouTube$Videos;

    move-result-object v0

    const-string/jumbo v1, "snippet,statistics,status"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/api/services/youtube/YouTube$Videos;->insert(Ljava/lang/String;Lcom/google/api/services/youtube/model/Video;Lcom/google/api/client/http/AbstractInputStreamContent;)Lcom/google/api/services/youtube/YouTube$Videos$Insert;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/google/api/services/youtube/YouTube$Videos$Insert;->getMediaHttpUploader()Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    move-result-object v1

    .line 109
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->setDirectUploadEnabled(Z)Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    .line 110
    const/high16 v2, 0x100000

    invoke-virtual {v1, v2}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->setChunkSize(I)Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    .line 111
    new-instance v2, Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad$1;

    invoke-direct {v2, p0}, Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad$1;-><init>(Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad;)V

    .line 141
    invoke-virtual {v1, v2}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->setProgressListener(Lcom/google/api/client/googleapis/media/MediaHttpUploaderProgressListener;)Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    .line 144
    invoke-virtual {v0}, Lcom/google/api/services/youtube/YouTube$Videos$Insert;->execute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/Video;

    .line 169
    :goto_1
    return-object v0

    .line 86
    :cond_0
    const-string/jumbo v4, "YoutubeAsyncLoadTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tag added = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad;->tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 88
    iget-object v5, p0, Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad;->tag:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {v3, v4}, Lcom/google/api/services/youtube/model/VideoSnippet;->setTags(Ljava/util/List;)Lcom/google/api/services/youtube/model/VideoSnippet;
    :try_end_0
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/api/client/googleapis/json/GoogleJsonResponseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    goto/16 :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    const-string/jumbo v1, "YoutubeAsyncLoadTask"

    const-string/jumbo v2, "UserExceptionError"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad;->activity:Lcom/adobe/premiereclip/sharing/YouTubeExport;

    iget-object v1, v1, Lcom/adobe/premiereclip/sharing/YouTubeExport;->mActivity:Landroid/app/Activity;

    .line 152
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad;->activity:Lcom/adobe/premiereclip/sharing/YouTubeExport;

    .line 151
    invoke-virtual {v1, v0, v8}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 169
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    .line 154
    :catch_1
    move-exception v0

    .line 155
    const-string/jumbo v0, "YoutubeAsyncLoadTask"

    const-string/jumbo v1, "Cancelled by user"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 156
    :catch_2
    move-exception v0

    .line 157
    const-string/jumbo v1, "YoutubeAsyncLoadTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "GoogleJsonResponseException code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->getDetails()Lcom/google/api/client/googleapis/json/GoogleJsonError;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/api/client/googleapis/json/GoogleJsonError;->getCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->getDetails()Lcom/google/api/client/googleapis/json/GoogleJsonError;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/api/client/googleapis/json/GoogleJsonError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->printStackTrace()V

    .line 159
    iput-boolean v8, p0, Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad;->error:Z

    goto :goto_2

    .line 160
    :catch_3
    move-exception v0

    .line 161
    const-string/jumbo v1, "YoutubeAsyncLoadTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IOException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 163
    iput-boolean v8, p0, Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad;->error:Z

    goto :goto_2

    .line 164
    :catch_4
    move-exception v0

    .line 165
    const-string/jumbo v1, "YoutubeAsyncLoadTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Throwable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 167
    iput-boolean v8, p0, Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad;->error:Z

    goto/16 :goto_2
.end method

.method protected onPostExecute(Lcom/google/api/services/youtube/model/Video;)V
    .locals 4

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad;->error:Z

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad;->activity:Lcom/adobe/premiereclip/sharing/YouTubeExport;

    iget-object v0, v0, Lcom/adobe/premiereclip/sharing/YouTubeExport;->mListener:Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;

    const/4 v1, 0x0

    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a042e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;->onCompleted(ZLjava/lang/String;)V

    .line 201
    :goto_0
    return-void

    .line 194
    :cond_0
    sget-boolean v0, Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad;->cancelled:Z

    if-eqz v0, :cond_1

    .line 195
    const-string/jumbo v0, "YoutubeAsyncLoadTask"

    const-string/jumbo v1, "Upload Cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad;->activity:Lcom/adobe/premiereclip/sharing/YouTubeExport;

    iget-object v0, v0, Lcom/adobe/premiereclip/sharing/YouTubeExport;->mListener:Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;->onCompleted(ZLjava/lang/String;)V

    .line 199
    const-string/jumbo v0, "YoutubeAsyncLoadTask"

    const-string/jumbo v1, "Successful Upload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 48
    check-cast p1, Lcom/google/api/services/youtube/model/Video;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad;->onPostExecute(Lcom/google/api/services/youtube/model/Video;)V

    return-void
.end method
