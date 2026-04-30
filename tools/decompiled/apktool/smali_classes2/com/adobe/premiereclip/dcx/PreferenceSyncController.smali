.class public Lcom/adobe/premiereclip/dcx/PreferenceSyncController;
.super Lcom/adobe/sync/SyncController;
.source "PreferenceSyncController.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/adobe/sync/SyncController$ISyncControllerInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p7}, Lcom/adobe/sync/SyncController;-><init>(Ljava/lang/String;Lcom/adobe/sync/SyncController$ISyncControllerInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected initializeCompositeLoader()V
    .locals 6

    .prologue
    .line 79
    invoke-static {}, Lcom/adobe/sync/database/PreferenceCompositeLoader;->getInstance()Lcom/adobe/sync/database/PreferenceCompositeLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/PreferenceSyncController;->mRootDirectory:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/premiereclip/dcx/PreferenceSyncController;->mPulledProjectDirectory:Ljava/lang/String;

    iget-object v3, p0, Lcom/adobe/premiereclip/dcx/PreferenceSyncController;->mDeletedProjectDirectory:Ljava/lang/String;

    iget-object v4, p0, Lcom/adobe/premiereclip/dcx/PreferenceSyncController;->mSyncGroupName:Ljava/lang/String;

    iget-object v5, p0, Lcom/adobe/premiereclip/dcx/PreferenceSyncController;->mDCXSyncController:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/sync/database/PreferenceCompositeLoader;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;)V

    .line 80
    return-void
.end method

.method public loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-static {}, Lcom/adobe/sync/database/PreferenceCompositeLoader;->getInstance()Lcom/adobe/sync/database/PreferenceCompositeLoader;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/adobe/sync/database/PreferenceCompositeLoader;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    return-object v0
.end method

.method protected populateCompositeLocalPathMap(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 41
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 44
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 46
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 47
    if-eqz v3, :cond_2

    .line 49
    array-length v5, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v6, v3, v2

    .line 52
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/dcx/PreferenceSyncController;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    const-string/jumbo v7, "preferences"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/adobe/sync/database/PreferenceCompositeLoader;->getInstance()Lcom/adobe/sync/database/PreferenceCompositeLoader;

    move-result-object v7

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v0, v8, v9}, Lcom/adobe/sync/database/PreferenceCompositeLoader;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 55
    :goto_1
    if-nez v0, :cond_1

    .line 49
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 53
    goto :goto_1

    .line 58
    :cond_1
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v7, p0, Lcom/adobe/premiereclip/dcx/PreferenceSyncController;->mCompositeIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 61
    :catch_0
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/dcx/PreferenceSyncController;->logMessage(Ljava/lang/String;)V

    goto :goto_2

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/PreferenceSyncController;->mDCXSyncController:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    invoke-virtual {v0, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->scanLocalComposites(Ljava/util/ArrayList;)Z

    move-result v0

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SyncController scanLocalCompositesInPath "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    const-string/jumbo v0, "passed"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/dcx/PreferenceSyncController;->logMessage(Ljava/lang/String;)V

    .line 74
    :cond_3
    return-void

    .line 71
    :cond_4
    const-string/jumbo v0, "failed"

    goto :goto_3
.end method
