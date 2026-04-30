.class public Lcom/adobe/sync/Server2ServerCopy;
.super Ljava/lang/Object;
.source "Server2ServerCopy.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static trigger(Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Ljava/lang/String;Lcom/adobe/sync/database/ComponentWaitingModel;)V
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p3}, Lcom/adobe/sync/database/ComponentWaitingModel;->getComponentId()Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-virtual {p3}, Lcom/adobe/sync/database/ComponentWaitingModel;->getCompositeId()Ljava/lang/String;

    move-result-object v10

    .line 33
    invoke-virtual {p3}, Lcom/adobe/sync/database/ComponentWaitingModel;->getUCID()Ljava/lang/String;

    move-result-object v7

    .line 35
    const-string/jumbo v1, "preference"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    invoke-static {}, Lcom/adobe/sync/database/PreferenceCompositeLoader;->getInstance()Lcom/adobe/sync/database/PreferenceCompositeLoader;

    move-result-object v1

    invoke-virtual {v1, v10, v0, v0}, Lcom/adobe/sync/database/PreferenceCompositeLoader;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v1

    move-object v9, v1

    .line 41
    :goto_0
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 42
    invoke-virtual {v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getComponentWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    move-object v8, v0

    .line 44
    :goto_1
    if-nez v8, :cond_1

    .line 45
    const-string/jumbo v0, "Server2ServerCopy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sync: component  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not found in composite "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :goto_2
    return-void

    .line 38
    :cond_0
    invoke-static {}, Lcom/adobe/sync/database/CompositeLoader;->getInstance()Lcom/adobe/sync/database/CompositeLoader;

    move-result-object v1

    invoke-virtual {v1, v10, v0, v0}, Lcom/adobe/sync/database/CompositeLoader;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v1

    move-object v9, v1

    goto :goto_0

    .line 51
    :cond_1
    :try_start_0
    invoke-virtual {v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    .line 52
    invoke-virtual {v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getName()Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-virtual {v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getType()Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-virtual {v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getRelationship()Ljava/lang/String;

    move-result-object v4

    .line 55
    invoke-virtual {v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 56
    invoke-virtual {v0, v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->findParentOfComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v6

    .line 58
    invoke-virtual {v0, v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->removeComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-object v8, p2

    .line 59
    invoke-virtual/range {v0 .. v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->addComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 60
    invoke-virtual {v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->commitChanges()Z

    .line 61
    invoke-virtual {p1, v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->resumeSyncForComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 63
    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;->printStackTrace()V

    .line 65
    const-string/jumbo v1, "Server2ServerCopy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Sync: removing and adding  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " in composite "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " for server-to-server copy could not be done because of exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 67
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    move-object v8, v0

    goto/16 :goto_1
.end method
