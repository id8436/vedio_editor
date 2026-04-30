.class Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;
.super Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;
.source "AdobeLibraryRepresentationDCXNode.java"


# instance fields
.field private mDcxNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

.field private mElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

.field private mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mDcxNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    .line 86
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 87
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    .line 88
    return-void
.end method

.method public constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;)V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mDcxNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    .line 79
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 80
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    .line 81
    return-void
.end method

.method public constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;)V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;-><init>()V

    .line 66
    const/4 v0, 0x0

    const-string/jumbo v1, "this is not a valid constructor when using the new direct modify representations. Use appendRepresentation or insertRepresentation in AdobeLibraryComposite."

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->verifyState(ZLjava/lang/String;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mDcxNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    .line 71
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 72
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->setMutableComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;)V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    return-object v0
.end method


# virtual methods
.method public clearOrder()V
    .locals 5

    .prologue
    .line 320
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->lock()V

    .line 323
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->beginChanges()V

    .line 324
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode$StEditComponentOperation;

    invoke-direct {v1, p0, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode$StEditComponentOperation;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;)V

    .line 326
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;->clearOrder()V

    .line 327
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->elementRepresentationsChanged()V

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 331
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_1
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode$StEditComponentOperation;->update()V

    goto :goto_0

    .line 332
    :catch_0
    move-exception v0

    .line 333
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getAllNodeDictKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mDcxNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mDcxNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getCustomKeys()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getContentPath(Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->lock()V

    .line 185
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->internalFilePathForRepresentation(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;Ljava/util/ArrayList;)Z

    move-result v0

    .line 187
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 188
    return v0
.end method

.method public getContentURL()Ljava/net/URI;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 149
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->isExternalLink()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->getDCXNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v0

    const-string/jumbo v3, "library#linkurl"

    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 176
    :goto_0
    return-object v0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    move-object v0, v2

    .line 176
    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->getComponent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    const-string/jumbo v3, "getContentURLForRepresentation is only valid for file based representations."

    invoke-static {v0, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->verifyState(ZLjava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->getComponent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v3

    invoke-static {v0, v3, v2, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageDCXServiceMapping;->resourceForComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;Z)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v1

    .line 160
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->serviceSession()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    .line 161
    if-eqz v0, :cond_0

    .line 163
    const-string/jumbo v3, "libraries"

    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;->getServiceForSchemaId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    move-result-object v3

    .line 165
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 168
    :try_start_1
    new-instance v0, Ljava/net/URI;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->href:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->getBaseURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageLastPathComponentUtil;->getRelativeTo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 169
    :catch_1
    move-exception v0

    .line 170
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    move v0, v1

    .line 157
    goto :goto_2
.end method

.method public getDCXNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mDcxNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    return-object v0
.end method

.method public getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v1

    .line 98
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;)V

    .line 105
    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;->setFilePath(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mSourceHref:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;->setSourceHref(Ljava/lang/String;)V

    .line 108
    return-object v0

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->getComponent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;

    move-result-object v1

    .line 102
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;)V

    goto :goto_0
.end method

.method public getMutableNode()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mDcxNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    return-object v0
.end method

.method public getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mDcxNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getMutableManifestNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v0

    return-object v0
.end method

.method public getNodeDictValueForKey(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mDcxNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mDcxNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNodeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mDcxNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mDcxNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getNodeId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNodeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mDcxNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public haveLocalFile()Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->haveLocalFileForRepresentation(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;)Z

    move-result v0

    return v0
.end method

.method public setContentLength(J)V
    .locals 5

    .prologue
    .line 278
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->lock()V

    .line 281
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->beginChanges()V

    .line 282
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode$StEditComponentOperation;

    invoke-direct {v1, p0, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode$StEditComponentOperation;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;)V

    .line 284
    invoke-super {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;->setContentLength(J)V

    .line 285
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->elementRepresentationsChanged()V

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :goto_1
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode$StEditComponentOperation;->update()V

    goto :goto_0

    .line 290
    :catch_0
    move-exception v0

    .line 291
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setFullSize(Z)V
    .locals 5

    .prologue
    .line 218
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->lock()V

    .line 221
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->beginChanges()V

    .line 222
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode$StEditComponentOperation;

    invoke-direct {v1, p0, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode$StEditComponentOperation;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;)V

    .line 224
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;->setFullSize(Z)V

    .line 225
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->elementRepresentationsChanged()V

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_1
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode$StEditComponentOperation;->update()V

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setHeight(I)V
    .locals 5

    .prologue
    .line 258
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->lock()V

    .line 261
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->beginChanges()V

    .line 262
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode$StEditComponentOperation;

    invoke-direct {v1, p0, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode$StEditComponentOperation;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;)V

    .line 264
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;->setHeight(I)V

    .line 265
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->elementRepresentationsChanged()V

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_1
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode$StEditComponentOperation;->update()V

    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setRelationship(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 198
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->lock()V

    .line 201
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->beginChanges()V

    .line 202
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode$StEditComponentOperation;

    invoke-direct {v1, p0, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode$StEditComponentOperation;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;)V

    .line 204
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;->setRelationship(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->elementRepresentationsChanged()V

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_1
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode$StEditComponentOperation;->update()V

    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->addErrorIfReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    const/4 v0, 0x0

    .line 314
    :goto_0
    return v0

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->lock()V

    .line 301
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->beginChanges()V

    .line 302
    new-instance v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode$StEditComponentOperation;

    invoke-direct {v2, p0, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode$StEditComponentOperation;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;)V

    .line 304
    invoke-super {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;->setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 305
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    if-eqz v1, :cond_1

    .line 306
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->elementRepresentationsChanged()V

    .line 307
    :cond_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 309
    :try_start_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :goto_1
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode$StEditComponentOperation;->update()V

    goto :goto_0

    .line 310
    :catch_0
    move-exception v1

    .line 311
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v4, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setWidth(I)V
    .locals 5

    .prologue
    .line 238
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->lock()V

    .line 241
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->beginChanges()V

    .line 242
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode$StEditComponentOperation;

    invoke-direct {v1, p0, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode$StEditComponentOperation;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;)V

    .line 244
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;->setWidth(I)V

    .line 245
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->elementRepresentationsChanged()V

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_1
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode$StEditComponentOperation;->update()V

    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
