.class Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$FileDownloadProgressListener;
.super Ljava/lang/Object;
.source "GoogleDriveSource.java"

# interfaces
.implements Lcom/google/api/client/googleapis/media/MediaHttpDownloaderProgressListener;


# instance fields
.field finalProgress:I

.field lastProgress:I

.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 285
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$FileDownloadProgressListener;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    iput v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$FileDownloadProgressListener;->lastProgress:I

    .line 287
    iput v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$FileDownloadProgressListener;->finalProgress:I

    return-void
.end method


# virtual methods
.method public progressChanged(Lcom/google/api/client/googleapis/media/MediaHttpDownloader;)V
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 290
    const-string/jumbo v0, "GoogleDriveSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "download state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->getDownloadState()Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    sget-object v0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$13;->$SwitchMap$com$google$api$client$googleapis$media$MediaHttpDownloader$DownloadState:[I

    invoke-virtual {p1}, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->getDownloadState()Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 293
    :pswitch_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$FileDownloadProgressListener;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;->access$000(Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->isCancelDownload()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    const-string/jumbo v0, "GoogleDriveSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Download is in progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->getProgress()D

    move-result-wide v2

    mul-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const-string/jumbo v0, "GoogleDriveSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Last progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$FileDownloadProgressListener;->lastProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {p1}, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->getProgress()D

    move-result-wide v0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    iget v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$FileDownloadProgressListener;->lastProgress:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$FileDownloadProgressListener;->finalProgress:I

    .line 297
    const-string/jumbo v0, "GoogleDriveSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Final progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$FileDownloadProgressListener;->finalProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual {p1}, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->getProgress()D

    move-result-wide v0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    iput v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$FileDownloadProgressListener;->lastProgress:I

    .line 299
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$FileDownloadProgressListener;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;->access$000(Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-result-object v0

    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$FileDownloadProgressListener$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$FileDownloadProgressListener$1;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$FileDownloadProgressListener;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 308
    :pswitch_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$FileDownloadProgressListener;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;->access$000(Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->isCancelDownload()Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    const-string/jumbo v0, "GoogleDriveSource"

    const-string/jumbo v1, "Download is Complete!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$FileDownloadProgressListener;->lastProgress:I

    rsub-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$FileDownloadProgressListener;->finalProgress:I

    .line 311
    const-string/jumbo v0, "GoogleDriveSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Final progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$FileDownloadProgressListener;->finalProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$FileDownloadProgressListener;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;->access$000(Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-result-object v0

    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$FileDownloadProgressListener$2;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$FileDownloadProgressListener$2;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$FileDownloadProgressListener;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 291
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
