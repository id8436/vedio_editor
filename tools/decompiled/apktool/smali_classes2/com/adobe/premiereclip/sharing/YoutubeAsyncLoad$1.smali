.class Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad$1;
.super Ljava/lang/Object;
.source "YoutubeAsyncLoad.java"

# interfaces
.implements Lcom/google/api/client/googleapis/media/MediaHttpUploaderProgressListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad$1;->this$0:Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public progressChanged(Lcom/google/api/client/googleapis/media/MediaHttpUploader;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 115
    sget-object v0, Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad$2;->$SwitchMap$com$google$api$client$googleapis$media$MediaHttpUploader$UploadState:[I

    invoke-virtual {p1}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->getUploadState()Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 139
    :goto_0
    return-void

    .line 117
    :pswitch_0
    const-string/jumbo v0, "YoutubeAsyncLoadTask"

    const-string/jumbo v1, "Initiation Started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    :pswitch_1
    const-string/jumbo v0, "YoutubeAsyncLoadTask"

    const-string/jumbo v1, "Initiation Completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 123
    :pswitch_2
    sget-boolean v0, Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad;->cancelled:Z

    if-ne v0, v4, :cond_0

    .line 124
    const-string/jumbo v0, "YoutubeAsyncLoadTask"

    const-string/jumbo v1, "Upload Cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    .line 127
    :cond_0
    const-string/jumbo v0, "YoutubeAsyncLoadTask"

    const-string/jumbo v1, "Upload in progress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string/jumbo v0, "YoutubeAsyncLoadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Upload percentage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->getProgress()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad$1;->this$0:Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad;

    new-array v1, v4, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->getProgress()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad;->access$000(Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad;[Ljava/lang/Object;)V

    goto :goto_0

    .line 132
    :pswitch_3
    const-string/jumbo v0, "YoutubeAsyncLoadTask"

    const-string/jumbo v1, "Upload Completed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    sput-boolean v4, Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad;->completed:Z

    goto :goto_0

    .line 136
    :pswitch_4
    const-string/jumbo v0, "YoutubeAsyncLoadTask"

    const-string/jumbo v1, "Upload Not Started!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
