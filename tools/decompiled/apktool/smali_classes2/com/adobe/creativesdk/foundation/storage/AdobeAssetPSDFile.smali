.class public Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;
.super Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;
.source "AdobeAssetPSDFile.java"


# instance fields
.field private _layerRenditionRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

.field private _layerRenditionRequests:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;",
            ">;"
        }
    .end annotation
.end field

.field private _previewPSDCompositeRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

.field private _pullPSDCompositeRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

.field private _pushPSDCompositeRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

.field private final lock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method protected constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 878
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    .line 84
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->_layerRenditionRequests:Ljava/util/LinkedHashMap;

    .line 85
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->_layerRenditionRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 86
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->lock:Ljava/util/concurrent/locks/Lock;

    .line 1050
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->_pullPSDCompositeRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 1051
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->_pushPSDCompositeRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 1052
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->_previewPSDCompositeRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 879
    return-void
.end method

.method static synthetic access$002(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->_previewPSDCompositeRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    return-object p1
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->_pullPSDCompositeRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    return-object v0
.end method

.method static synthetic access$102(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->_pullPSDCompositeRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    return-object p1
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->_pushPSDCompositeRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    return-object v0
.end method

.method static synthetic access$202(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->_pushPSDCompositeRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    return-object p1
.end method

.method static synthetic access$300(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->lock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;)Ljava/util/LinkedHashMap;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->_layerRenditionRequests:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$502(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->_layerRenditionRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    return-object p1
.end method

.method public static create(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponents;ZLcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;
    .locals 8
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
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;"
        }
    .end annotation

    .prologue
    .line 131
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getHref()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->resourceFromHref(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v1

    .line 136
    iput-object p0, v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->name:Ljava/lang/String;

    .line 137
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->collectionFromHref(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v0

    .line 140
    new-instance v7, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    invoke-direct {v7, v1, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    .line 142
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 143
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->setCreationDate(Ljava/util/Date;)V

    .line 144
    const-string/jumbo v0, "image/vnd.adobe.photoshop"

    iput-object v0, v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->type:Ljava/lang/String;

    .line 145
    const-string/jumbo v0, "image/vnd.adobe.photoshop"

    iput-object v0, v7, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->type:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeImage:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getSessionForService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;

    .line 150
    new-instance v6, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$1;

    invoke-direct {v6, p5, v7, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$1;-><init>(Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;)V

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->createPSD(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponents;ZLandroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    .line 173
    :goto_0
    return-object v7

    .line 171
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p5, v0}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected static createWithPSDComposite(Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;ZLcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;",
            "Z",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;",
            "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 957
    if-nez p2, :cond_0

    .line 959
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object p2

    .line 965
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->getPsdHref()Ljava/lang/String;

    move-result-object v1

    .line 966
    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageLastPathComponentUtil;->stringByDeletingLastPathComponent(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 974
    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->resourceFromHref(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v1

    .line 975
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->collectionFromHref(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v2

    .line 977
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    .line 978
    invoke-virtual {v0, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 980
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$9;

    invoke-direct {v1, p3, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$9;-><init>(Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;)V

    invoke-virtual {v0, p0, p1, v1, p4}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->pushPSDComposite(Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;ZLcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;)V

    .line 1010
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->setCreationDate(Ljava/util/Date;)V

    .line 1012
    :cond_1
    :goto_0
    return-object v0

    .line 967
    :catch_0
    move-exception v1

    .line 968
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 969
    if-eqz p3, :cond_1

    .line 970
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorBadRequest:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createStorageError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static createWithPSDComposite(Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;ZLcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;",
            "Z",
            "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;"
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->createWithPSDComposite(Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;ZLcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    move-result-object v0

    return-object v0
.end method

.method private getImageSession()Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;
    .locals 2

    .prologue
    .line 1017
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeImage:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getSessionForService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;

    .line 1019
    return-object v0
.end method

.method private getStorageSession()Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;
    .locals 2

    .prologue
    .line 1024
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeStorage:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getSessionForService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    .line 1026
    return-object v0
.end method

.method protected static pushPSDComposite(ZLcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 534
    .line 535
    if-eqz p2, :cond_1

    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeImage:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    invoke-virtual {p2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getSessionForService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;

    move-object v3, v0

    .line 536
    :goto_0
    if-nez v3, :cond_2

    .line 558
    :cond_0
    :goto_1
    return v1

    :cond_1
    move-object v3, v2

    .line 535
    goto :goto_0

    .line 539
    :cond_2
    if-eqz p2, :cond_4

    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeStorage:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    invoke-virtual {p2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getSessionForService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    .line 540
    :goto_2
    if-eqz v0, :cond_0

    .line 545
    :try_start_0
    invoke-static {p1, p0, v3, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer;->pushPSDComposite(Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;ZLcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;)Z

    move-result v0

    .line 549
    if-eqz v0, :cond_3

    .line 551
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->acceptPushWithError()Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_3
    :goto_3
    move v1, v0

    .line 558
    goto :goto_1

    :cond_4
    move-object v0, v2

    .line 539
    goto :goto_2

    .line 553
    :catch_0
    move-exception v0

    .line 555
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PSD composite push request for %@ has failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->getPsdHref()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_3
.end method


# virtual methods
.method cacheKeyForLayer(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 885
    const-string/jumbo v1, "%s_%s_%d_%d-%d"

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v0, "none"

    :goto_0
    aput-object v0, v2, v3

    const/4 v3, 0x1

    if-nez p2, :cond_1

    const-string/jumbo v0, "default"

    :goto_1
    aput-object v0, v2, v3

    const/4 v0, 0x2

    invoke-virtual {p3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;->getIntVal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget v3, p4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;->width:F

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    iget v3, p4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;->height:F

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 886
    return-object v0

    .line 885
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public cancelLayerRenditionRequest(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 857
    if-eqz p1, :cond_1

    .line 858
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 861
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->_layerRenditionRequests:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->_layerRenditionRequests:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 863
    if-eqz v0, :cond_0

    .line 864
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 869
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 872
    :cond_1
    return-void

    .line 869
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 870
    throw v0
.end method

.method public cancelPullPSDCompositeRequest()V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->_pullPSDCompositeRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->_pullPSDCompositeRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->cancel()V

    .line 375
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->_pullPSDCompositeRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 377
    :cond_0
    return-void
.end method

.method public cancelPushPSDCompositeRequest()V
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->_pushPSDCompositeRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->_pushPSDCompositeRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->cancel()V

    .line 481
    :cond_0
    return-void
.end method

.method createLayerRenditionTmpDir()Ljava/lang/String;
    .locals 3

    .prologue
    .line 911
    const-string/jumbo v0, "PSDLayerRenditionTemp"

    .line 912
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/apache/commons/io/FileUtils;->getTempDirectoryPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 914
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 915
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 917
    :try_start_0
    invoke-static {v1}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 922
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 938
    return-object v0

    .line 918
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method createLayerRenditionTmpFileWithExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 943
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->generateUuid()Ljava/lang/String;

    move-result-object v0

    .line 945
    const-string/jumbo v1, "temp%s.%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 946
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->createLayerRenditionTmpDir()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1036
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    if-eqz v0, :cond_0

    .line 1037
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1039
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreviewWithAppliedLayerCompId(Ljava/lang/Integer;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreview;",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 190
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 192
    const-string/jumbo v1, "psd%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/apache/commons/io/FileUtils;->getTempDirectoryPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    :try_start_0
    invoke-static {v1}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 204
    const-string/jumbo v1, "preview.json"

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;-><init>()V

    .line 208
    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;->AdobeImageOutputDispositionDownload:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;

    iput-object v2, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;->disposition:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;

    .line 209
    iput-object v0, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;->path:Ljava/lang/String;

    .line 210
    iput-object v6, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;->location:Ljava/lang/String;

    .line 211
    iput-object v6, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;->mediaRange:Ljava/lang/String;

    .line 213
    new-instance v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$2;

    invoke-direct {v2, p0, v0, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$2;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    .line 256
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->getImageSession()Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;

    move-result-object v0

    .line 257
    if-nez v0, :cond_1

    .line 281
    :goto_1
    return-void

    .line 260
    :cond_1
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->href:Ljava/net/URI;

    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->resourceFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->describePSD(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->_previewPSDCompositeRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    goto :goto_1

    .line 199
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getRenditionForLayer(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;)Ljava/lang/String;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;",
            "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
            "<[B",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 583
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->scaledDimensions(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    move-result-object v4

    .line 586
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->cacheKeyForLayer(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;)Ljava/lang/String;

    move-result-object v11

    .line 596
    const-string/jumbo v4, "com.adobe.cc.storage"

    .line 601
    :try_start_0
    new-instance v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;

    move-object/from16 v5, p0

    move-object/from16 v6, p5

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v12, p6

    invoke-direct/range {v4 .. v12}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;Ljava/lang/String;Landroid/os/Handler;)V

    .line 642
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->resourceItem()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v5

    iget-object v13, v5, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->internalID:Ljava/lang/String;

    const-string/jumbo v5, "%d_%d-%d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {p3 .. p3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;->getIntVal()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p4

    iget v8, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;->width:F

    float-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    move-object/from16 v0, p4

    iget v8, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;->height:F

    float-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;->AdobeCommonCacheKeepInMemoryCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;

    .line 643
    invoke-static {v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v15

    const-string/jumbo v16, "com.adobe.cc.storage"

    move-object/from16 v17, v4

    move-object/from16 v18, p6

    .line 642
    invoke-virtual/range {v12 .. v18}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getDataFromGUID(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 646
    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v5, "AdobeAssetFile:GetRenditionFromCache"

    const-string/jumbo v6, "Rendition request for %s ended in error."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->href:Ljava/net/URI;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    if-eqz p5, :cond_0

    .line 648
    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onError(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    :cond_0
    :goto_0
    return-object v11

    .line 650
    :catch_0
    move-exception v4

    .line 651
    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v6, "AdobeAssetPSDFile.getRenditionForLayer"

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v4}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method getRenditionFromServerForLayer(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
            "<[B",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;"
        }
    .end annotation

    .prologue
    .line 680
    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$10;->$SwitchMap$com$adobe$creativesdk$foundation$storage$AdobeAssetFileRenditionType:[I

    invoke-virtual/range {p3 .. p3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 698
    const-string/jumbo v4, "image/png"

    .line 699
    const-string/jumbo v3, "png"

    move-object v5, v4

    move-object v4, v3

    .line 706
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->scaledDimensions(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    move-result-object v9

    .line 708
    invoke-direct/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->getImageSession()Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;

    move-result-object v3

    .line 709
    if-nez v3, :cond_0

    .line 710
    const/4 v3, 0x0

    .line 845
    :goto_1
    return-object v3

    .line 684
    :pswitch_0
    const-string/jumbo v4, "image/gif"

    .line 685
    const-string/jumbo v3, "gif"

    move-object v5, v4

    move-object v4, v3

    .line 686
    goto :goto_0

    .line 688
    :pswitch_1
    const-string/jumbo v4, "image/jpeg"

    .line 689
    const-string/jumbo v3, "jpeg"

    move-object v5, v4

    move-object v4, v3

    .line 690
    goto :goto_0

    .line 692
    :pswitch_2
    const-string/jumbo v4, "image/tiff"

    .line 693
    const-string/jumbo v3, "tiff"

    move-object v5, v4

    move-object v4, v3

    .line 694
    goto :goto_0

    .line 713
    :cond_0
    new-instance v14, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;

    invoke-direct {v14}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;-><init>()V

    .line 714
    sget-object v6, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;->AdobeImageOutputDispositionDownload:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;

    iput-object v6, v14, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;->disposition:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;

    .line 715
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->createLayerRenditionTmpFileWithExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v14, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;->path:Ljava/lang/String;

    .line 716
    const/4 v4, 0x0

    iput-object v4, v14, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;->location:Ljava/lang/String;

    .line 717
    iput-object v5, v14, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;->mediaRange:Ljava/lang/String;

    .line 720
    sget-object v10, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFitType;->AdobeImageConstrain:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFitType;

    .line 722
    new-instance v15, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-direct {v15, v0, v1, v14, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    .line 830
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->resourceItem()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v5, v9, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;->width:F

    iget v8, v9, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;->height:F

    cmpl-float v5, v5, v8

    if-ltz v5, :cond_2

    iget v5, v9, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;->width:F

    .line 831
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    :goto_2
    iget v5, v9, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;->height:F

    iget v11, v9, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;->width:F

    cmpl-float v5, v5, v11

    if-ltz v5, :cond_3

    iget v5, v9, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;->height:F

    .line 832
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    :goto_3
    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v5, p1

    move-object/from16 v12, p2

    move-object/from16 v16, p7

    .line 830
    invoke-virtual/range {v3 .. v16}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->render(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Ljava/lang/Number;Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFitType;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v3

    .line 835
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 838
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->_layerRenditionRequests:Ljava/util/LinkedHashMap;

    if-nez v4, :cond_1

    .line 839
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->_layerRenditionRequests:Ljava/util/LinkedHashMap;

    .line 841
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->_layerRenditionRequests:Ljava/util/LinkedHashMap;

    move-object/from16 v0, p5

    invoke-virtual {v4, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 843
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_1

    .line 831
    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    .line 832
    :cond_3
    const/4 v9, 0x0

    goto :goto_3

    .line 843
    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 844
    throw v3

    .line 680
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1047
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;->hashCode()I

    move-result v0

    return v0
.end method

.method isCachedForKey(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 892
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->resourceItem()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v1

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->internalID:Ljava/lang/String;

    const-string/jumbo v2, "com.adobe.cc.storage"

    invoke-virtual {v0, v1, p1, v2}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->containsItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public pullPSDCompositeAt(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 299
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->getHref()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$3;

    invoke-direct {v1, p0, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$3;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    .line 308
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->getImageSession()Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;

    move-result-object v2

    .line 309
    if-nez v2, :cond_1

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->getStorageSession()Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    move-result-object v3

    .line 313
    if-eqz v3, :cond_0

    .line 316
    new-instance v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$4;

    invoke-direct {v4, p0, v0, p2, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$4;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;)V

    .line 317
    invoke-static {v0, v2, v3, v4, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer;->pullPSDComposite(Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPullCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->_pullPSDCompositeRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 362
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->_pullPSDCompositeRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->registerListener(Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;)V

    goto :goto_0
.end method

.method public pushPSDComposite(Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;ZLcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;",
            "Z",
            "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 398
    new-instance v6, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$5;

    invoke-direct {v6, p0, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$5;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    .line 407
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->getImageSession()Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;

    move-result-object v2

    .line 408
    if-nez v2, :cond_1

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->getStorageSession()Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    move-result-object v3

    .line 412
    if-eqz v3, :cond_0

    .line 416
    new-instance v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$6;

    invoke-direct {v4, p0, p1, p3, v6}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$6;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;)V

    move-object v0, p1

    move v1, p2

    move-object v5, p4

    .line 417
    invoke-static/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer;->pushPSDComposite(Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;ZLcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPushCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->_pushPSDCompositeRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 469
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->_pushPSDCompositeRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    invoke-virtual {v0, v6}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->registerListener(Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;)V

    goto :goto_0
.end method

.method public pushPSDComposite(Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;Z)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 499
    .line 500
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->getImageSession()Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;

    move-result-object v0

    .line 501
    if-nez v0, :cond_1

    .line 527
    :cond_0
    :goto_0
    return v1

    .line 504
    :cond_1
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->getStorageSession()Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    move-result-object v2

    .line 505
    if-eqz v2, :cond_0

    .line 510
    :try_start_0
    invoke-static {p1, p2, v0, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer;->pushPSDComposite(Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;ZLcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;)Z

    move-result v0

    .line 514
    if-eqz v0, :cond_2

    .line 516
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->acceptPushWithError()Z

    move-result v0

    .line 517
    if-eqz v0, :cond_2

    .line 518
    const-string/jumbo v2, "Product Saves"

    const-string/jumbo v3, "Creative Cloud"

    invoke-static {v2, v3}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSDKReporter;->trackSharingAction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    move v1, v0

    .line 527
    goto :goto_0

    .line 522
    :catch_0
    move-exception v0

    .line 524
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PSD composite push request for %@ has failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->getHref()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_1
.end method

.method scaledDimensions(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;
    .locals 1

    .prologue
    .line 900
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 901
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 906
    return-object p1
.end method
