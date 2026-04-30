.class public Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;
.super Ljava/lang/Object;
.source "CCDownloadSession.java"

# interfaces
.implements Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudAssetBrowserCallback;


# static fields
.field public static final CANCEL_BY_USER:I = 0x0

.field public static final CANCEL_LOW_SPACE:I = 0x1


# instance fields
.field private activity:Landroid/app/Activity;

.field private ccDownloadDialog:Lcom/adobe/premiereclip/downloadmanager/CCDownloadDialog;

.field private downloadMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private downloadedMediaList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/media/MediaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private errorCount:I

.field private listener:Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession$Listener;

.field private numAssetsToBeDownloaded:I

.field private projectKey:Ljava/lang/String;

.field private rejectCount:I

.field private successCount:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->ccDownloadDialog:Lcom/adobe/premiereclip/downloadmanager/CCDownloadDialog;

    .line 54
    iput-object p1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->activity:Landroid/app/Activity;

    .line 55
    iput-object p2, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->projectKey:Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->init()V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->projectKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->cleanup()V

    return-void
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;)Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession$Listener;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->listener:Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession$Listener;

    return-object v0
.end method

.method private checkIfDownloadDone()V
    .locals 4

    .prologue
    .line 186
    iget v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->successCount:I

    iget v1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->errorCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->rejectCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->numAssetsToBeDownloaded:I

    if-ne v0, v1, :cond_0

    .line 187
    invoke-static {}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->getInstance()Lcom/adobe/premiereclip/source/CreativeCloudSource;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->projectKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->cancelCCDownloads(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->listener:Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession$Listener;

    iget-object v1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->downloadedMediaList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->numAssetsToBeDownloaded:I

    iget v3, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->rejectCount:I

    invoke-interface {v0, v1, v2, v3}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession$Listener;->onDownloadComplete(Ljava/util/ArrayList;II)V

    .line 189
    invoke-direct {p0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->cleanup()V

    .line 191
    :cond_0
    return-void
.end method

.method private cleanup()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->downloadMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 195
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->downloadedMediaList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 196
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->ccDownloadDialog:Lcom/adobe/premiereclip/downloadmanager/CCDownloadDialog;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->ccDownloadDialog:Lcom/adobe/premiereclip/downloadmanager/CCDownloadDialog;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadDialog;->dismiss()V

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->ccDownloadDialog:Lcom/adobe/premiereclip/downloadmanager/CCDownloadDialog;

    .line 200
    :cond_0
    return-void
.end method

.method public static getAssetListFromIntent(Landroid/content/Intent;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$ResultProvider;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$ResultProvider;-><init>(Landroid/content/Intent;)V

    .line 70
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$ResultProvider;->getSelectionAssetArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 71
    return-object v0
.end method

.method private declared-synchronized getTotalProgress()D
    .locals 5

    .prologue
    .line 177
    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 178
    :try_start_0
    iget-object v2, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->downloadMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 179
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    add-double/2addr v0, v2

    move-wide v2, v0

    .line 180
    goto :goto_0

    .line 181
    :cond_0
    iget v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->numAssetsToBeDownloaded:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-double v0, v0

    div-double v0, v2, v0

    .line 182
    monitor-exit p0

    return-wide v0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->downloadedMediaList:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->downloadMap:Ljava/util/HashMap;

    .line 62
    iput v1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->successCount:I

    .line 63
    iput v1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->numAssetsToBeDownloaded:I

    .line 64
    iput v1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->rejectCount:I

    .line 65
    iput v1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->errorCount:I

    .line 66
    return-void
.end method


# virtual methods
.method public onDownloadAsset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 4

    .prologue
    .line 150
    monitor-enter p0

    .line 151
    if-eqz p4, :cond_0

    .line 152
    :try_start_0
    iget v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->errorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->errorCount:I

    .line 164
    :goto_0
    invoke-direct {p0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->checkIfDownloadDone()V

    .line 165
    monitor-exit p0

    .line 166
    return-void

    .line 155
    :cond_0
    iget v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->successCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->successCount:I

    .line 156
    new-instance v0, Lcom/adobe/premiereclip/media/MediaInfo;

    invoke-direct {v0}, Lcom/adobe/premiereclip/media/MediaInfo;-><init>()V

    .line 157
    invoke-virtual {v0, p2}, Lcom/adobe/premiereclip/media/MediaInfo;->setAssetUrl(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/media/MediaInfo;->setLocalPath(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0, p3}, Lcom/adobe/premiereclip/media/MediaInfo;->setAssetDate(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->downloadedMediaList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->downloadMap:Ljava/util/HashMap;

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onRejectDownload()V
    .locals 1

    .prologue
    .line 170
    monitor-enter p0

    .line 171
    :try_start_0
    iget v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->rejectCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->rejectCount:I

    .line 172
    invoke-direct {p0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->checkIfDownloadDone()V

    .line 173
    monitor-exit p0

    .line 174
    return-void

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onStartDownload()V
    .locals 3

    .prologue
    .line 108
    monitor-enter p0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->ccDownloadDialog:Lcom/adobe/premiereclip/downloadmanager/CCDownloadDialog;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadDialog;

    iget-object v1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession$1;

    invoke-direct {v2, p0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession$1;-><init>(Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;)V

    invoke-direct {v0, v1, v2}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadDialog;-><init>(Landroid/app/Activity;Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->ccDownloadDialog:Lcom/adobe/premiereclip/downloadmanager/CCDownloadDialog;

    .line 132
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->ccDownloadDialog:Lcom/adobe/premiereclip/downloadmanager/CCDownloadDialog;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadDialog;->show()V

    .line 134
    :cond_0
    monitor-exit p0

    .line 135
    return-void

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onUpdateDownloadProgress(DLjava/lang/String;)V
    .locals 5

    .prologue
    .line 139
    monitor-enter p0

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->downloadMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->ccDownloadDialog:Lcom/adobe/premiereclip/downloadmanager/CCDownloadDialog;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->ccDownloadDialog:Lcom/adobe/premiereclip/downloadmanager/CCDownloadDialog;

    invoke-direct {p0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->getTotalProgress()D

    move-result-wide v2

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadDialog;->setPrepareProgress(I)V

    .line 145
    :cond_0
    monitor-exit p0

    .line 146
    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startDownload(Ljava/lang/String;IILandroid/content/Intent;Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession$Listener;)V
    .locals 7

    .prologue
    .line 75
    iput-object p5, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->listener:Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession$Listener;

    .line 76
    if-eqz p4, :cond_1

    .line 77
    invoke-direct {p0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->init()V

    .line 78
    invoke-static {p4}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->getAssetListFromIntent(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->numAssetsToBeDownloaded:I

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/util/Utilities;->canDownloadAssets(Ljava/util/ArrayList;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    invoke-static {}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->getInstance()Lcom/adobe/premiereclip/source/CreativeCloudSource;

    move-result-object v0

    iget-object v5, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->activity:Landroid/app/Activity;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->handleCreativeCloudImagePickerResponse(Ljava/lang/String;IILandroid/content/Intent;Landroid/content/Context;Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudAssetBrowserCallback;)V

    .line 89
    :cond_1
    :goto_0
    return-void

    .line 86
    :cond_2
    const/4 v0, 0x1

    invoke-interface {p5, v0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession$Listener;->onDownloadCancel(I)V

    goto :goto_0
.end method

.method public startDownloadFromLRApp(Ljava/lang/String;IILjava/util/ArrayList;Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession$Listener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;",
            ">;",
            "Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession$Listener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 93
    iput-object p5, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->listener:Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession$Listener;

    .line 94
    invoke-direct {p0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->init()V

    .line 95
    if-eqz p4, :cond_0

    .line 96
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->numAssetsToBeDownloaded:I

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->activity:Landroid/app/Activity;

    invoke-static {p4, v0}, Lcom/adobe/premiereclip/util/Utilities;->canDownloadLRAssets(Ljava/util/ArrayList;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    invoke-static {}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->getInstance()Lcom/adobe/premiereclip/source/CreativeCloudSource;

    move-result-object v0

    iget-object v5, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->activity:Landroid/app/Activity;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->handleCreativeCloudLightroomResponse(Ljava/lang/String;IILjava/util/ArrayList;Landroid/content/Context;Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudAssetBrowserCallback;)V

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_1
    const/4 v0, 0x1

    invoke-interface {p5, v0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession$Listener;->onDownloadCancel(I)V

    goto :goto_0
.end method
