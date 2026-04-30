.class public Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile;
.super Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;
.source "AdobeAssetIllustratorFile.java"


# instance fields
.field createAIRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;


# direct methods
.method private constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    .line 193
    return-void
.end method

.method public static create(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Ljava/util/ArrayList;ZLcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;",
            ">;Z",
            "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile;",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getValidatedAssetName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    if-nez v1, :cond_0

    .line 79
    :goto_0
    return-object v0

    .line 65
    :cond_0
    iget-object v2, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->href:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    :try_start_0
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->resourceFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 74
    iput-object v1, v2, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->name:Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->resourceCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 78
    invoke-direct/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile;->internalCreate(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Ljava/util/ArrayList;ZLcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile;

    goto :goto_0

    .line 70
    :catch_0
    move-exception v1

    .line 71
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public static create(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponents;ZLcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;)V
    .locals 7
    .param p1    # Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCManifest;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponents;",
            "Z",
            "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile;",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getHref()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->resourceFromHref(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v1

    .line 95
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getHref()Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->collectionFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v0

    .line 97
    new-instance v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile;

    invoke-direct {v2, v1, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    .line 99
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 100
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile;->setCreationDate(Ljava/util/Date;)V

    .line 102
    const-string/jumbo v0, "application/illustrator"

    iput-object v0, v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->type:Ljava/lang/String;

    .line 103
    const-string/jumbo v0, "application/illustrator"

    iput-object v0, v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile;->type:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeImage:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getSessionForService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;

    .line 107
    new-instance v6, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile$1;

    invoke-direct {v6, v2, v1, p5}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile$1;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->createAI(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponents;ZLandroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p5, v0}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private internalCreate(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Ljava/util/ArrayList;ZLcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;",
            ">;Z",
            "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile;",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 141
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeImage:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getSessionForService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;

    move-object v2, v0

    .line 142
    :goto_0
    if-nez v2, :cond_1

    move-object p0, v1

    .line 182
    :goto_1
    return-object p0

    :cond_0
    move-object v2, v1

    .line 141
    goto :goto_0

    .line 146
    :cond_1
    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->href:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;-><init>()V

    .line 149
    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;->AdobeImageOutputDispositionReference:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;

    iput-object v3, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;->disposition:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;

    .line 150
    iput-object v0, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;->location:Ljava/lang/String;

    .line 151
    iput-boolean p4, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;->overwrite:Z

    .line 153
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 154
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    .line 155
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getHref()Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->resourceFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 158
    :cond_2
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile$2;

    invoke-direct {v0, p0, p5, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile$2;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile;)V

    invoke-virtual {v2, v1, v3, v0, p6}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->createAI(Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;Ljava/util/List;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile;->createAIRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 198
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile;

    if-eqz v0, :cond_0

    .line 199
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 201
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 206
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;->hashCode()I

    move-result v0

    return v0
.end method
