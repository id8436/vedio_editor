.class Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer;
.super Ljava/lang/Object;
.source "AdobePSDCompositeXfer.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static collectComponents(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;ZLcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;",
            "Z",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;",
            ")V"
        }
    .end annotation

    .prologue
    .line 826
    invoke-virtual {p3, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getComponentsOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v0

    .line 827
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 828
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 831
    :cond_0
    if-eqz p2, :cond_1

    .line 833
    invoke-virtual {p3, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getChildrenOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v0

    .line 834
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 835
    const/4 v2, 0x1

    invoke-static {p0, v0, v2, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer;->collectComponents(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;ZLcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)V

    goto :goto_0

    .line 838
    :cond_1
    return-void
.end method

.method static createUpdatedManifestFromPushedManifest(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 335
    .line 337
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->getData()[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 341
    :try_start_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->getData()[B

    move-result-object v3

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 350
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    .line 354
    :goto_1
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 355
    iget-object v3, p2, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->etag:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->setEtag(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getLinks()Lorg/json/JSONObject;

    move-result-object v0

    .line 360
    :try_start_2
    const-string/jumbo v3, "source"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v2, v0

    .line 368
    :goto_2
    if-eqz v2, :cond_0

    .line 369
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getLinks()Lorg/json/JSONObject;

    move-result-object v0

    .line 370
    if-nez v0, :cond_1

    .line 371
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 373
    :try_start_3
    const-string/jumbo v3, "source"

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageCopyUtils;->deepMutableCopyOfDictionary(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_5

    .line 385
    :goto_3
    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->setLinks(Lorg/json/JSONObject;)V

    .line 386
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getCompositeHref()Ljava/net/URI;

    move-result-object v0

    if-nez v0, :cond_0

    .line 387
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getHref()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->setCompositeHref(Ljava/net/URI;)V

    :cond_0
    move-object v0, v1

    .line 395
    :goto_4
    return-object v0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AdobePSDCompositeXfer.createUpdatedManifestFromPushedManifest"

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 346
    goto :goto_0

    .line 344
    :catch_1
    move-exception v0

    .line 345
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v2

    goto :goto_0

    .line 351
    :catch_2
    move-exception v1

    .line 352
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v4, "AdobePSDCompositeXfer.createUpdatedManifestFromPushedManifest"

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_1

    .line 361
    :catch_3
    move-exception v0

    .line 362
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v4, "AdobePSDCompositeXfer.createUpdatedManifestFromPushedManifest"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 379
    :cond_1
    :try_start_4
    const-string/jumbo v3, "source"

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageCopyUtils;->deepMutableCopyOfDictionary(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    .line 380
    :catch_4
    move-exception v2

    .line 381
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v4, "AdobePSDCompositeXfer.createUpdatedManifestFromPushedManifest"

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 374
    :catch_5
    move-exception v2

    goto :goto_3

    :cond_2
    move-object v0, v2

    goto :goto_4
.end method

.method static ensureLeadingSlash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 324
    const-string/jumbo v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static internalPullComponentsForLayers(Ljava/util/ArrayList;ZLcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;)Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;",
            ">;Z",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;",
            "Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;",
            ")",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 788
    .line 789
    if-eqz p0, :cond_4

    .line 790
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 792
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPulled()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v0

    .line 793
    if-nez v0, :cond_3

    .line 794
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    move-object v1, v0

    .line 797
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;

    .line 798
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    invoke-static {v2, v0, p1, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer;->collectComponents(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;ZLcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)V

    goto :goto_1

    :cond_0
    move-object v0, v2

    .line 804
    :goto_2
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->pullComponents(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v0

    .line 810
    if-eqz v0, :cond_1

    .line 811
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->getPulled()Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 812
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->getPulled()Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;

    move-result-object v3

    .line 818
    :cond_1
    :goto_3
    return-object v3

    .line 814
    :cond_2
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;

    move-result-object v3

    goto :goto_3

    :cond_3
    move-object v1, v0

    goto :goto_0

    :cond_4
    move-object v0, v3

    goto :goto_2
.end method

.method static internalPullMinimalPSDComposite(Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;)Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    .line 735
    const-string/jumbo v0, "composite should not be null"

    invoke-static {v0, p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 736
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 737
    const-string/jumbo v1, "composite.dcxComposite should not be null"

    invoke-static {v1, v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 741
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$10;

    invoke-direct {v1, p2, v0, p1, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$10;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;)V

    .line 777
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    invoke-static {v0, p2, p3, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->internalPullMinimalComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXCompositeManifestDownload;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v0

    .line 780
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->getPulled()Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;

    move-result-object v0

    goto :goto_0
.end method

.method static internalPullPSDComposite(Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;)Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 721
    invoke-static {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer;->internalPullMinimalPSDComposite(Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;)Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;

    move-result-object v1

    .line 723
    if-eqz v1, :cond_0

    .line 724
    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p2, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer;->internalPullComponentsForLayers(Ljava/util/ArrayList;ZLcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;)Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;

    move-result-object v0

    .line 727
    :cond_0
    return-object v0
.end method

.method static postFailureOnPullCompletionHandler(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPullCompletionHandler;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 1

    .prologue
    .line 701
    if-eqz p1, :cond_1

    .line 702
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$9;

    invoke-direct {v0, p0, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$9;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPullCompletionHandler;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 711
    :cond_1
    if-eqz p0, :cond_0

    .line 712
    invoke-interface {p0, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPullCompletionHandler;->onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    goto :goto_0
.end method

.method public static postFailureOnPushCompletionHandler(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPushCompletionHandler;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 1

    .prologue
    .line 306
    if-eqz p1, :cond_1

    .line 307
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$4;

    invoke-direct {v0, p0, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$4;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPushCompletionHandler;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    if-eqz p0, :cond_0

    .line 318
    invoke-interface {p0, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPushCompletionHandler;->onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    goto :goto_0
.end method

.method public static pullComponentsForLayers(Ljava/util/ArrayList;ZLcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPullCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;",
            ">;Z",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;",
            "Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPullCompletionHandler;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;"
        }
    .end annotation

    .prologue
    .line 586
    new-instance v5, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-direct {v5}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;-><init>()V

    .line 588
    new-instance v8, Ljava/util/concurrent/FutureTask;

    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$8;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$8;-><init>(Ljava/util/ArrayList;ZLcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPullCompletionHandler;)V

    invoke-direct {v8, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 621
    invoke-virtual {v5, v8}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->setFuture(Ljava/util/concurrent/Future;)V

    .line 623
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->transferQueue()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;->execute(Ljava/lang/Runnable;)V

    .line 625
    return-object v5
.end method

.method public static pullComponentsForLayers(Ljava/util/ArrayList;ZLcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;)Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;",
            ">;Z",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;",
            "Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;",
            ")",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    .line 693
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;-><init>()V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer;->internalPullComponentsForLayers(Ljava/util/ArrayList;ZLcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;)Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;

    move-result-object v0

    return-object v0
.end method

.method public static pullMinimalPSDComposite(Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPullCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 8

    .prologue
    .line 516
    new-instance v4, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-direct {v4}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;-><init>()V

    .line 518
    new-instance v7, Ljava/util/concurrent/FutureTask;

    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$7;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$7;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPullCompletionHandler;)V

    invoke-direct {v7, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 551
    invoke-virtual {v4, v7}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->setFuture(Ljava/util/concurrent/Future;)V

    .line 553
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->transferQueue()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;->execute(Ljava/lang/Runnable;)V

    .line 555
    return-object v4
.end method

.method public static pullMinimalPSDComposite(Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;)Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    .line 673
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer;->internalPullMinimalPSDComposite(Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;)Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;

    move-result-object v0

    return-object v0
.end method

.method public static pullPSDComposite(Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPullCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 13

    .prologue
    .line 435
    new-instance v5, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-direct {v5}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;-><init>()V

    .line 436
    const/4 v0, 0x1

    new-array v1, v0, [Z

    const/4 v0, 0x0

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 438
    new-instance v12, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$6;

    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$5;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$5;-><init>([ZLcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPullCompletionHandler;)V

    move-object v6, v12

    move-object v7, v0

    move-object v8, v1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$6;-><init>(Ljava/util/concurrent/Callable;[ZLcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPullCompletionHandler;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;)V

    .line 484
    invoke-virtual {v5, v12}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->setFuture(Ljava/util/concurrent/Future;)V

    .line 486
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->transferQueue()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;->execute(Ljava/lang/Runnable;)V

    .line 488
    return-object v5
.end method

.method public static pullPSDComposite(Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;)Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    .line 650
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer;->internalPullPSDComposite(Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;)Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;

    move-result-object v0

    return-object v0
.end method

.method public static pushPSDComposite(Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;ZLcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPushCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 10

    .prologue
    .line 106
    new-instance v6, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$1;

    invoke-direct {v6, p3, p0, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;)V

    .line 150
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->WARN:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "Warning: pushComposite has been called with a composite that has uncommitted changes in its current branch. "

    const-string/jumbo v2, "Uncommitted changes will not be included in the pushed composite."

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->copyCommittedManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 169
    new-instance v5, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-direct {v5}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;-><init>()V

    .line 171
    new-instance v9, Ljava/util/concurrent/FutureTask;

    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$2;

    move-object v1, p0

    move v3, p1

    move-object v4, p3

    move-object v7, p5

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$2;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;ZLcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXCompositeManifestUploadRequest;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPushCompletionHandler;)V

    invoke-direct {v9, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 210
    invoke-virtual {v5, v9}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->setFuture(Ljava/util/concurrent/Future;)V

    .line 212
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->transferQueue()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;->execute(Ljava/lang/Runnable;)V

    .line 214
    :goto_0
    return-object v5

    .line 163
    :catch_0
    move-exception v0

    .line 164
    if-eqz p4, :cond_1

    .line 165
    invoke-static {p4, p5, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer;->postFailureOnPushCompletionHandler(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPushCompletionHandler;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 166
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static pushPSDComposite(Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;ZLcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    .line 240
    new-instance v5, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$3;

    invoke-direct {v5, p3, p0, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$3;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;)V

    .line 276
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->WARN:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "Warning: pushComposite has been called with a composite that has uncommitted changes in its current branch. "

    const-string/jumbo v2, "Uncommitted changes will not be included in the pushed composite."

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_0
    const/4 v1, 0x0

    .line 288
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->copyCommittedManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 295
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    new-instance v4, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-direct {v4}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;-><init>()V

    move v2, p1

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->internalPushComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;ZLcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXCompositeManifestUploadRequest;)Z

    move-result v0

    return v0

    .line 290
    :catch_0
    move-exception v0

    .line 291
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AdobePSDCompositeXfer.pushPSDComposite"

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
