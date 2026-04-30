.class synthetic Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$13;
.super Ljava/lang/Object;
.source "GoogleDriveSource.java"


# static fields
.field static final synthetic $SwitchMap$com$google$api$client$googleapis$media$MediaHttpDownloader$DownloadState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 291
    invoke-static {}, Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;->values()[Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$13;->$SwitchMap$com$google$api$client$googleapis$media$MediaHttpDownloader$DownloadState:[I

    :try_start_0
    sget-object v0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$13;->$SwitchMap$com$google$api$client$googleapis$media$MediaHttpDownloader$DownloadState:[I

    sget-object v1, Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;->MEDIA_IN_PROGRESS:Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    invoke-virtual {v1}, Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$13;->$SwitchMap$com$google$api$client$googleapis$media$MediaHttpDownloader$DownloadState:[I

    sget-object v1, Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;->MEDIA_COMPLETE:Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    invoke-virtual {v1}, Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
