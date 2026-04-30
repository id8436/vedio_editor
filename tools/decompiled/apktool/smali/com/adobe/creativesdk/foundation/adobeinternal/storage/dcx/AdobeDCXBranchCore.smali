.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;
.super Ljava/lang/Object;
.source "AdobeDCXBranchCore.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private _manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

.field private _metadata:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;

.field private _weakBranchOrElement:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;",
            ">;"
        }
    .end annotation
.end field

.field private _weakComposite:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_weakComposite:Ljava/lang/ref/WeakReference;

    .line 53
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    .line 54
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_metadata:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;

    .line 55
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_weakBranchOrElement:Ljava/lang/ref/WeakReference;

    .line 56
    return-void
.end method

.method private appendNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 994
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Parameter node shouldn\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 995
    :cond_0
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getNodeId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "NodeId must not be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 998
    :cond_1
    if-nez p2, :cond_2

    .line 999
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getMutableManifestNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->addChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-object v1, v0

    .line 1004
    :goto_0
    if-eqz v1, :cond_4

    .line 1005
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->getWeakDCXNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v2, "Unexpected live DCXNode discovered for newly added node with ID %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1006
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1001
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getMutableManifestNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v1

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getMutableManifestNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->addChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-object v1, v0

    goto :goto_0

    .line 1009
    :cond_3
    invoke-virtual {p1, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->setMutableManifestNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;)V

    .line 1010
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_weakBranchOrElement:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->setHostBranchOrElement(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;)V

    .line 1011
    invoke-virtual {v1, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->setWeakDCXNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)V

    .line 1014
    :goto_1
    return-object p1

    :cond_4
    const/4 p1, 0x0

    goto :goto_1
.end method

.method private getPathForSideBySideXMP(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1272
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByDeletingPathExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1273
    const-string/jumbo v1, "xmp"

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingPathExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1274
    return-object v0
.end method

.method private insertNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;J)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 1050
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Parameter node shouldn\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1051
    :cond_0
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getNodeId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "NodeId must not be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1054
    :cond_1
    if-nez p2, :cond_2

    .line 1055
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getMutableManifestNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->insertChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;J)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-object v1, v0

    .line 1060
    :goto_0
    if-eqz v1, :cond_4

    .line 1061
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->getWeakDCXNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v2, "Unexpected live DCXNode discovered for newly added node with ID %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1062
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1057
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getMutableManifestNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v1

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getMutableManifestNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p3, p4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->insertChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;J)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-object v1, v0

    goto :goto_0

    .line 1065
    :cond_3
    invoke-virtual {p1, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->setMutableManifestNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;)V

    .line 1066
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_weakBranchOrElement:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->setHostBranchOrElement(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;)V

    .line 1067
    invoke-virtual {v1, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->setWeakDCXNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)V

    .line 1070
    :goto_1
    return-object p1

    :cond_4
    const/4 p1, 0x0

    goto :goto_1
.end method

.method private internalAddComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 524
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Manifest must be loaded."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 525
    :cond_0
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    if-eqz p6, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "UCID and sourceFile both cannot be specified"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 526
    :cond_1
    if-nez p6, :cond_2

    .line 527
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    if-nez p5, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "sourceFile and sourceHref must not both be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 531
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_weakComposite:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    .line 532
    sget-boolean v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Using branch after the composite has been released"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 536
    :cond_3
    if-eqz p3, :cond_f

    .line 538
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getLocalStorage()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXLocalStorageProtocol;

    move-result-object v1

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-interface {v1, p1, v3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXLocalStorageProtocol;->getNewPathOfComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Ljava/lang/String;

    move-result-object v1

    .line 539
    if-nez v1, :cond_4

    .line 629
    :goto_0
    return-object v2

    .line 542
    :cond_4
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    .line 545
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 546
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    .line 547
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 550
    :cond_5
    invoke-static {p3}, Lorg/apache/commons/io/FilenameUtils;->normalizeNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 551
    invoke-static {v1}, Lorg/apache/commons/io/FilenameUtils;->normalizeNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 553
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 554
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 557
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 558
    invoke-virtual {v0, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->addPathToInflightLocalComponentFiles(Ljava/lang/String;)V

    .line 560
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 562
    if-eqz p4, :cond_7

    .line 563
    invoke-static {v7, v6}, Lorg/apache/commons/io/FileUtils;->copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    :cond_6
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getLocalStorage()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXLocalStorageProtocol;

    move-result-object v3

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-interface {v3, p1, v5, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXLocalStorageProtocol;->updateComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 583
    invoke-virtual {v0, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->removePathFromInflightLocalComponentFiles(Ljava/lang/String;)V

    goto :goto_0

    .line 565
    :cond_7
    :try_start_1
    invoke-static {v6}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 566
    invoke-static {v7, v6}, Lorg/apache/commons/io/FileUtils;->copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V

    .line 567
    invoke-static {v5}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 568
    sget-boolean v7, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v7, :cond_6

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 570
    :catch_0
    move-exception v1

    move-object v2, v1

    .line 572
    const-string/jumbo v1, ""

    .line 573
    if-eqz v5, :cond_8

    if-eqz v6, :cond_8

    .line 574
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "srcFile:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "destFile"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 575
    :cond_8
    const-string/jumbo v3, "csdk_android_dcx"

    const-string/jumbo v5, "internalAddComponent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "copy/move failed-reason:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->logAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    invoke-virtual {v0, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->removePathFromInflightLocalComponentFiles(Ljava/lang/String;)V

    .line 578
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorFileIO:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    const-string/jumbo v1, "Copy/Move failed: internalAddComponent"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createDCXError(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;Ljava/lang/String;Ljava/lang/Exception;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    move-result-object v0

    throw v0

    .line 586
    :cond_9
    invoke-virtual {v0, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->removePathFromInflightLocalComponentFiles(Ljava/lang/String;)V

    .line 592
    :goto_1
    if-nez p2, :cond_a

    .line 593
    :try_start_2
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v4, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->addComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    :try_end_2
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    :goto_2
    move-object v5, v2

    .line 601
    :goto_3
    if-eqz v3, :cond_b

    .line 602
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v0, p5, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->setSourceHref(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)V

    .line 604
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v0, p6, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->setUCIDForComponent(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)V

    move-object v2, v3

    .line 629
    goto/16 :goto_0

    .line 595
    :cond_a
    :try_start_3
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v4, p2, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->addComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    :try_end_3
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v3

    goto :goto_2

    .line 597
    :catch_1
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    .line 598
    goto :goto_3

    .line 607
    :cond_b
    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->localComponentAssetsAreImmutable()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 609
    if-eqz p4, :cond_d

    .line 610
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 624
    :goto_4
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getLocalStorage()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXLocalStorageProtocol;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-interface {v0, p1, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXLocalStorageProtocol;->didRemoveComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;)V

    .line 626
    :cond_c
    throw v5

    .line 613
    :cond_d
    :try_start_4
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lorg/apache/commons/io/FileUtils;->moveFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 614
    :catch_2
    move-exception v3

    move-object v4, v3

    .line 616
    const-string/jumbo v3, ""

    .line 617
    if-eqz p3, :cond_e

    if-eqz v1, :cond_e

    .line 618
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "srcFile:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "destFile:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 619
    :goto_5
    const-string/jumbo v3, "csdk_android_dcx"

    const-string/jumbo v6, "internalAddComponent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "moveFile failed-reason:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->logAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2, v4}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_e
    move-object v1, v3

    goto :goto_5

    :cond_f
    move-object v1, v2

    goto/16 :goto_1
.end method

.method private updateComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Ljava/lang/String;ZLjava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 682
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Manifest not loaded"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 683
    :cond_0
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Parameter component must not be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 684
    :cond_1
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "ComponentId must not be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 685
    :cond_2
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    if-eqz p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Both sourceFile and UCID cannot be valid"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 688
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_weakComposite:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    .line 689
    sget-boolean v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Using branch after the composite has been released"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 691
    :cond_4
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v1, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getUCIDOfComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Ljava/lang/String;

    move-result-object v1

    .line 692
    if-nez v1, :cond_6

    const/4 v1, 0x1

    move v2, v1

    .line 694
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object v1, p1

    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;

    .line 695
    :goto_1
    const/4 v4, 0x0

    .line 698
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->localComponentAssetsAreImmutable()Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getLocalStorage()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXLocalStorageProtocol;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    const/4 v5, 0x0

    invoke-interface {v2, p1, v3, v0, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXLocalStorageProtocol;->getPathOfComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Z)Ljava/lang/String;

    move-result-object v2

    .line 700
    :goto_2
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v3, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getSourceHrefOfComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Ljava/lang/String;

    move-result-object v5

    .line 703
    const/4 v3, 0x0

    .line 705
    if-nez p2, :cond_5

    if-eqz p4, :cond_13

    .line 706
    :cond_5
    if-eqz p2, :cond_10

    .line 708
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getLocalStorage()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXLocalStorageProtocol;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-interface {v3, p1, v4, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXLocalStorageProtocol;->getNewPathOfComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Ljava/lang/String;

    move-result-object v4

    .line 709
    if-nez v4, :cond_9

    .line 710
    const/4 v0, 0x0

    .line 835
    :goto_3
    return-object v0

    .line 692
    :cond_6
    const/4 v1, 0x0

    move v2, v1

    goto :goto_0

    .line 694
    :cond_7
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;

    move-result-object v1

    goto :goto_1

    .line 698
    :cond_8
    const/4 v2, 0x0

    goto :goto_2

    .line 712
    :cond_9
    invoke-static {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByDeletingLastPathComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 715
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 716
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_a

    .line 717
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 720
    :cond_a
    invoke-static {p2}, Lorg/apache/commons/io/FilenameUtils;->normalizeNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 721
    invoke-static {v4}, Lorg/apache/commons/io/FilenameUtils;->normalizeNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 723
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 724
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 727
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 728
    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->addPathToInflightLocalComponentFiles(Ljava/lang/String;)V

    .line 730
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 732
    if-eqz p3, :cond_e

    .line 733
    invoke-static {v9, v8}, Lorg/apache/commons/io/FileUtils;->copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 753
    :cond_b
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->getState()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->getState()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "unmodified"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 754
    const-string/jumbo v6, "modified"

    invoke-virtual {v1, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->setState(Ljava/lang/String;)V

    .line 768
    :cond_c
    :goto_4
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getLocalStorage()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXLocalStorageProtocol;

    move-result-object v6

    iget-object v7, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-interface {v6, v1, v7, v0, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXLocalStorageProtocol;->updateComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 769
    if-eqz v3, :cond_d

    .line 770
    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->removePathFromInflightLocalComponentFiles(Ljava/lang/String;)V

    .line 772
    :cond_d
    const/4 v0, 0x0

    goto :goto_3

    .line 735
    :cond_e
    :try_start_1
    invoke-static {v8}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 736
    invoke-static {v9, v8}, Lorg/apache/commons/io/FileUtils;->copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V

    .line 737
    invoke-static {v7}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 738
    sget-boolean v8, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v8, :cond_b

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_b

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 740
    :catch_0
    move-exception v1

    move-object v2, v1

    .line 742
    const-string/jumbo v1, ""

    .line 743
    if-eqz p2, :cond_f

    if-eqz v4, :cond_f

    .line 744
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "srcFile:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "destFile:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 745
    :cond_f
    const-string/jumbo v4, "csdk_android_dcx"

    const-string/jumbo v5, "updateComponent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "copy/move/delete failed-reason:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->logAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->removePathFromInflightLocalComponentFiles(Ljava/lang/String;)V

    .line 748
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AdobeDCXCompositeMutaleBranch.updateComponentInBranchOrElement"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 749
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 761
    :cond_10
    const-wide/16 v6, 0x0

    invoke-virtual {v1, v6, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->setLength(J)V

    .line 762
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->getState()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->getState()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "unmodified"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 763
    const-string/jumbo v6, "modified"

    invoke-virtual {v1, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->setState(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 775
    :cond_11
    if-eqz v3, :cond_12

    .line 776
    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->removePathFromInflightLocalComponentFiles(Ljava/lang/String;)V

    .line 780
    :cond_12
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v3, p4, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->setUCIDForComponent(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)V

    .line 782
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->setSourceHref(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)V

    .line 787
    :cond_13
    :try_start_2
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v3, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->updateComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    :try_end_2
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto/16 :goto_3

    .line 788
    :catch_1
    move-exception v1

    .line 789
    if-eqz v4, :cond_16

    .line 793
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->localComponentAssetsAreImmutable()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 794
    if-eqz v2, :cond_14

    .line 795
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getLocalStorage()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXLocalStorageProtocol;

    move-result-object v3

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;

    move-result-object v4

    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-interface {v3, v4, v6, v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXLocalStorageProtocol;->updateComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;)Z

    .line 798
    :cond_14
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getLocalStorage()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXLocalStorageProtocol;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    const/4 v6, 0x0

    invoke-interface {v3, p1, v4, v0, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXLocalStorageProtocol;->getPathOfComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Z)Ljava/lang/String;

    move-result-object v3

    .line 799
    if-nez v2, :cond_18

    if-nez v3, :cond_17

    const/4 v2, 0x1

    .line 801
    :goto_5
    if-nez v3, :cond_19

    .line 802
    const-string/jumbo v3, "csdk_android_dcx"

    const-string/jumbo v4, "updateComponent"

    const-string/jumbo v6, "manifest_update_comp failed "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "compositeID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, "componentID"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, "final path:null reverted:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v6, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->logAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    :cond_15
    :goto_6
    if-eqz v5, :cond_16

    .line 829
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v0, v5, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->setSourceHref(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)V

    .line 832
    :cond_16
    throw v1

    .line 799
    :cond_17
    const/4 v2, 0x0

    goto :goto_5

    :cond_18
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_5

    .line 804
    :cond_19
    const-string/jumbo v4, "csdk_android_dcx"

    const-string/jumbo v6, "updateComponent"

    const-string/jumbo v7, "manifest_update_comp failed "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "compositeID:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v8, "componentID"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v8, "final path:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " reverted:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v6, v7, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->logAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method


# virtual methods
.method public addChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 961
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Parameter node shouldn\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 962
    :cond_0
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "NodeId must not be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 964
    :cond_1
    if-nez p2, :cond_2

    .line 965
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->addChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    .line 967
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->addChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    goto :goto_0
.end method

.method public addComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 507
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 508
    :cond_0
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 510
    :cond_1
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;

    move-result-object v1

    .line 511
    const-string/jumbo v0, "modified"

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->setState(Ljava/lang/String;)V

    .line 512
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->getComponentId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 513
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->generateUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->setComponentId(Ljava/lang/String;)V

    .line 515
    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->internalAddComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    return-object v0
.end method

.method public addComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;ZLcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 1394
    .line 1395
    invoke-static {p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXFileMetadata;->isMetadataUpdatableForFile(Ljava/lang/String;)Z

    move-result v0

    .line 1397
    if-eqz v0, :cond_8

    .line 1398
    if-eqz p4, :cond_7

    .line 1399
    invoke-static {}, Lorg/apache/commons/io/FileUtils;->getTempDirectoryPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->generateUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1401
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v7

    move v1, v7

    :goto_0
    move-object p3, v2

    .line 1414
    :goto_1
    invoke-static {p5, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXFileMetadata;->updateMetadata(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v8, v0

    move v9, v7

    move-object v3, p3

    move v0, v1

    .line 1421
    :goto_2
    if-eqz v0, :cond_6

    move-object v5, v6

    .line 1422
    check-cast v5, Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->addComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;ZLjava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    .line 1423
    if-eqz v0, :cond_3

    .line 1425
    :goto_3
    if-eqz v8, :cond_0

    .line 1427
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1429
    :cond_0
    if-nez v7, :cond_4

    .line 1435
    :goto_4
    return-object v6

    .line 1403
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1404
    const-string/jumbo v0, ""

    .line 1405
    if-eqz p3, :cond_1

    if-eqz v2, :cond_1

    .line 1406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "srcFile:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "destFile:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1407
    :cond_1
    const-string/jumbo v3, "csdk_android_dcx"

    const-string/jumbo v5, "addComponent-depr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "copy failed-reason:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v5, v8, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->logAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v6, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v4

    move v1, v4

    .line 1410
    goto :goto_0

    :cond_2
    move v8, v0

    move v9, v4

    move-object v3, p3

    move v0, v4

    .line 1417
    goto :goto_2

    :cond_3
    move v7, v4

    .line 1423
    goto :goto_3

    .line 1432
    :cond_4
    if-nez v9, :cond_5

    .line 1433
    invoke-virtual {p0, p5, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->addSideBySideMetadata(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    :cond_5
    move-object v6, v0

    .line 1435
    goto :goto_4

    :cond_6
    move v7, v0

    move-object v0, v6

    goto :goto_3

    :cond_7
    move v0, v4

    move v1, v7

    goto/16 :goto_1

    :cond_8
    move v8, v4

    move v9, v4

    move v0, v7

    move-object v3, p3

    goto/16 :goto_2
.end method

.method public addComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;ZLjava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 472
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 473
    :cond_0
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 475
    :cond_1
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;

    move-result-object v1

    .line 476
    const-string/jumbo v0, "modified"

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->setState(Ljava/lang/String;)V

    .line 477
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->getComponentId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 478
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->generateUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->setComponentId(Ljava/lang/String;)V

    .line 480
    :cond_2
    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->internalAddComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    return-object v0
.end method

.method public addComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 519
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getMutableManifestNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->addComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    return-object v0
.end method

.method public addComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Ljava/lang/String;ZLcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 1439
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getMutableManifestNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->addComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;ZLcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    return-object v0
.end method

.method public addComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Ljava/lang/String;ZLjava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 484
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getMutableManifestNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->addComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;ZLjava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    return-object v0
.end method

.method public addComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 436
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p5, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 437
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;

    if-nez p2, :cond_1

    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->generateUuid()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v5, 0x0

    const-string/jumbo v6, "modified"

    move-object v2, p5

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 439
    invoke-virtual {v0, p4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->setRelationship(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p0, v0, p6, p8, p7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->addComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v1, p2

    .line 437
    goto :goto_0
.end method

.method public addComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;ZLjava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 401
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p5, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 402
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;

    if-nez p2, :cond_1

    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->generateUuid()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v5, 0x0

    const-string/jumbo v6, "modified"

    move-object v2, p5

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 404
    invoke-virtual {v0, p4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->setRelationship(Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, v0

    move-object v3, p6

    move-object v4, p7

    move v5, p8

    move-object/from16 v6, p9

    .line 405
    invoke-virtual/range {v1 .. v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->addComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;ZLjava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v1, p2

    .line 402
    goto :goto_0
.end method

.method public addComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 445
    invoke-virtual {p6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getMutableManifestNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->addComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    return-object v0
.end method

.method public addComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Ljava/lang/String;ZLjava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 410
    if-nez p6, :cond_0

    const/4 v6, 0x0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->addComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;ZLjava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual/range {p6 .. p6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getMutableManifestNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v6

    goto :goto_0
.end method

.method addSideBySideMetadata(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 1323
    invoke-virtual {p0, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->findParentNodeOfComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v1

    .line 1325
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->getPathForSideBySideXMP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1326
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_weakBranchOrElement:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;

    invoke-virtual {p1, v1, v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->saveAsComponentOfNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    .line 1327
    return-object v0
.end method

.method public appendNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 988
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    invoke-direct {v0, p3, p4, p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    invoke-direct {p0, v0, p5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->appendNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v0

    return-object v0
.end method

.method public copyChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;J)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1136
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->copyChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;JLjava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    return-object v0
.end method

.method public copyChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;JLjava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1162
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1163
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_weakComposite:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    .line 1164
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getWeakComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v4

    .line 1165
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Using branch after the composite has been released"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1166
    :cond_1
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez v4, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Using \'from\' branch after the composite has been released"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1167
    :cond_2
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v3

    iget-object v8, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    const/4 v9, 0x0

    move-object v2, p1

    move-object v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-virtual/range {v1 .. v11}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->addChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;JLcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;ZLjava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    return-object v0
.end method

.method public copyComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 874
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->copyComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    return-object v0
.end method

.method public copyComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 894
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Parameter branchOrElement shouldn\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 895
    :cond_0
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "branchOrElement must be of type AdobeDCXCompositeBranch or AdobeDCXElement"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 898
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_weakComposite:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    .line 899
    invoke-interface {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;->getBranchCore()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;

    move-result-object v1

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_weakComposite:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    .line 900
    sget-boolean v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Using branch after the composite has been released"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 901
    :cond_2
    sget-boolean v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    if-nez v3, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Using \'from\' branch after its composite has been released"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 903
    :cond_3
    invoke-interface {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;->getBranchCore()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;

    move-result-object v1

    iget-object v2, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v4, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->addComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;ZLjava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    return-object v0
.end method

.method public copyComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 878
    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->copyComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getMutableManifestNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v0

    goto :goto_0
.end method

.method public copyComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 907
    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->copyComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getMutableManifestNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v0

    goto :goto_0
.end method

.method public copyNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;J)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1140
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v7, v6

    invoke-virtual/range {v1 .. v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->copyNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;JLjava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v0

    return-object v0
.end method

.method public copyNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;JLjava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 1171
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getHostBranchOrElement()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;

    move-result-object v0

    .line 1172
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_weakComposite:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    .line 1173
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;->getBranchCore()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;

    move-result-object v2

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_weakComposite:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    .line 1174
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;->getBranchCore()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;

    move-result-object v2

    iget-object v3, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    .line 1176
    sget-boolean v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "copyNode must only be called using a node that already exists on a branch or element."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1177
    :cond_0
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Using branch after the composite has been released"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1178
    :cond_1
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez v4, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Using \'from\' branch after its composite has been released"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1180
    :cond_2
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getMutableManifestNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v2

    if-nez p2, :cond_3

    const/4 v5, 0x0

    .line 1181
    :goto_0
    iget-object v8, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    const/4 v9, 0x0

    move-wide/from16 v6, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    .line 1180
    invoke-virtual/range {v1 .. v11}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->addChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;JLcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;ZLjava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    .line 1183
    const/4 v1, 0x0

    .line 1184
    if-eqz v0, :cond_5

    .line 1186
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getDcxNodeWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v1

    .line 1187
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getHostBranchOrElement()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "New DCXNode unexpectedly refers to a host branch or element."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1181
    :cond_3
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getMutableManifestNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v5

    goto :goto_0

    .line 1188
    :cond_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_weakBranchOrElement:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->setHostBranchOrElement(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;)V

    move-object v0, v1

    .line 1190
    :goto_1
    return-object v0

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method public findParentNodeOfComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    .locals 3

    .prologue
    .line 238
    const/4 v0, 0x0

    .line 239
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->findParentOfComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    .line 240
    if-eqz v1, :cond_1

    .line 241
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getDcxNodeWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v1

    .line 242
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getHostBranchOrElement()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getHostBranchOrElement()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_weakBranchOrElement:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Live DCXNode in manifest unexpectedly refers to a different host branch or element."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_weakBranchOrElement:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->setHostBranchOrElement(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;)V

    move-object v0, v1

    .line 245
    :cond_1
    return-object v0
.end method

.method public findParentOfChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 361
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->findParentOfChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    return-object v0
.end method

.method public findParentOfComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->findParentOfComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    return-object v0
.end method

.method public findParentOfNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    .locals 3

    .prologue
    .line 365
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    const/4 v0, 0x0

    .line 372
    :goto_0
    return-object v0

    .line 367
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getMutableManifestNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->findParentOfChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    .line 368
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getDcxNodeWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v1

    .line 369
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getHostBranchOrElement()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getHostBranchOrElement()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_weakBranchOrElement:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eq v0, v2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Live DCXNode in manifest unexpectedly refers to a different host branch or element."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_weakBranchOrElement:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->setHostBranchOrElement(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;)V

    move-object v0, v1

    .line 372
    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAllComponents()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getAllComponents()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getChildWithAbsolutePath(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 338
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getChildWithAbsolutePath(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    return-object v0
.end method

.method public getChildWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getAllChildren()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    return-object v0
.end method

.method public getChildrenOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 284
    if-nez p1, :cond_0

    .line 285
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getChildren()Ljava/util/List;

    move-result-object v0

    .line 287
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getChildrenOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getChildrenOfNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->getChildrenOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v0

    .line 292
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 293
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 294
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getDcxNodeWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v3

    .line 295
    if-eqz v3, :cond_0

    .line 297
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getHostBranchOrElement()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getHostBranchOrElement()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;

    move-result-object v0

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_weakBranchOrElement:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eq v0, v4, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Live DCXNode in manifest unexpectedly refers to a different host branch or element."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 291
    :cond_1
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getMutableManifestNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v0

    goto :goto_0

    .line 300
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_weakBranchOrElement:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;

    invoke-virtual {v3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->setHostBranchOrElement(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;)V

    .line 301
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 304
    :cond_3
    return-object v1
.end method

.method public getComponentWithAbsolutePath(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getComponentWithAbsolutePath(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    return-object v0
.end method

.method public getComponentWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getAllComponents()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    return-object v0
.end method

.method public getComponentsOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 206
    if-nez p1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getComponents()Ljava/util/List;

    move-result-object v0

    .line 209
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getComponentsOfChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getComponentsOfNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getMutableManifestNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->getComponentsOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->getComponentsOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getCompositeArchivalState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getCompositeArchivalState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompositeState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getCompositeState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getEtag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLinks()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getLinks()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method getManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    return-object v0
.end method

.method getMetadata()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_metadata:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;

    return-object v0
.end method

.method public getMetadataForComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 1293
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->getSideBySideMetadataComponentFor(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    .line 1294
    if-eqz v0, :cond_0

    .line 1296
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->getPathForComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Ljava/lang/String;

    move-result-object v1

    .line 1297
    if-eqz v1, :cond_0

    .line 1298
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;-><init>(Ljava/lang/String;)V

    .line 1299
    if-nez v0, :cond_1

    .line 1300
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorUnparsableMetadata:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    const-string/jumbo v1, "Metadata could not be parsed"

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createDCXError(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    move-result-object v0

    throw v0

    .line 1305
    :cond_0
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->getPathForComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Ljava/lang/String;

    move-result-object v0

    .line 1306
    if-eqz v0, :cond_2

    .line 1307
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXFileMetadata;->getMetadataForFile(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;

    move-result-object v0

    .line 1309
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMetadataForElement(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1371
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "elementNode must have name and path properties to be considered an element"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1372
    :cond_1
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "META-INF/metadata.xml"

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1373
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->getComponentWithAbsolutePath(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v3

    .line 1374
    if-eqz v3, :cond_2

    .line 1377
    :try_start_0
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_weakBranchOrElement:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;

    invoke-direct {v1, v0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1384
    :goto_0
    return-object v0

    .line 1378
    :catch_0
    move-exception v0

    .line 1379
    :goto_1
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 1380
    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 1384
    goto :goto_0

    .line 1378
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public getMetadataForElementNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;
    .locals 1

    .prologue
    .line 1388
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getMutableManifestNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->getMetadataForElement(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeWithAbsolutePath(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    .locals 3

    .prologue
    .line 342
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getDcxNodeWithAbsolutePath(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v1

    .line 343
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getHostBranchOrElement()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getHostBranchOrElement()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_weakBranchOrElement:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Live DCXNode in manifest unexpectedly refers to a different host branch or element."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 345
    :cond_0
    if-eqz v1, :cond_1

    .line 346
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_weakBranchOrElement:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->setHostBranchOrElement(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;)V

    .line 348
    :cond_1
    return-object v1
.end method

.method public getNodeWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    .locals 3

    .prologue
    .line 320
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getDcxNodeWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v1

    .line 321
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getHostBranchOrElement()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getHostBranchOrElement()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_weakBranchOrElement:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Live DCXNode in manifest unexpectedly refers to a different host branch or element."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 323
    :cond_0
    if-eqz v1, :cond_1

    .line 324
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_weakBranchOrElement:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->setHostBranchOrElement(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;)V

    .line 326
    :cond_1
    return-object v1
.end method

.method public getOrCreateMetadataForComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 1313
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->getMetadataForComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;

    move-result-object v0

    .line 1314
    if-nez v0, :cond_0

    .line 1315
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->getPathForComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Ljava/lang/String;

    move-result-object v0

    .line 1316
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXFileMetadata;->getOrCreateMetadataForFile(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;

    move-result-object v0

    .line 1318
    :cond_0
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getPathForComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_weakComposite:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    .line 255
    sget-boolean v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Using branch after the composite has been released"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_weakBranchOrElement:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;

    .line 258
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPulled()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 259
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getLocalStorage()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXLocalStorageProtocol;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-interface {v2, p1, v3, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXLocalStorageProtocol;->getPathOfComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Z)Ljava/lang/String;

    move-result-object v0

    .line 260
    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 263
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRenditionAtNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;IILjava/util/List;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1443
    if-nez p1, :cond_0

    .line 1444
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->getRoot()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object p1

    .line 1448
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1449
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1450
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1453
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1454
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->getComponentsOfNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1455
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->getChildrenOfNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1458
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1459
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1460
    instance-of v0, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getRelationship()Ljava/lang/String;

    move-result-object v0

    .line 1461
    :goto_2
    const-string/jumbo v2, "rendition"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1462
    instance-of v0, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    if-eqz v0, :cond_4

    move-object v0, v1

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getType()Ljava/lang/String;

    move-result-object v0

    .line 1463
    :goto_3
    if-eqz v0, :cond_2

    .line 1464
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 1465
    const/4 v0, -0x1

    if-eq v9, v0, :cond_2

    .line 1470
    instance-of v0, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    if-eqz v0, :cond_5

    move-object v0, v1

    .line 1471
    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    const-string/jumbo v2, "width"

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v1

    .line 1472
    check-cast v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    const-string/jumbo v5, "height"

    invoke-virtual {v2, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    move-object v5, v2

    .line 1477
    :goto_4
    if-nez v0, :cond_6

    move v2, v3

    :goto_5
    if-nez v5, :cond_7

    move v0, v3

    :goto_6
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1479
    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore$Tuple;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v2, p0, v1, v5, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore$Tuple;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1480
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 1460
    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getRelationship()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 1462
    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getType()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    move-object v0, v1

    .line 1474
    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    const-string/jumbo v2, "width"

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v1

    .line 1475
    check-cast v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    const-string/jumbo v5, "height"

    invoke-virtual {v2, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    move-object v5, v2

    goto :goto_4

    .line 1477
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v2, v0

    goto :goto_5

    :cond_7
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_6

    .line 1486
    :cond_8
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v1, v4

    .line 1563
    :cond_9
    :goto_7
    return-object v1

    .line 1493
    :cond_a
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore$1;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore$1;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;)V

    .line 1514
    invoke-static {v7, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1519
    if-gtz p2, :cond_b

    if-lez p3, :cond_f

    .line 1522
    :cond_b
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v4

    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore$Tuple;

    .line 1523
    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore$Tuple;->l:Ljava/lang/Object;

    .line 1526
    instance-of v0, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    if-eqz v0, :cond_e

    move-object v0, v1

    .line 1527
    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    const-string/jumbo v2, "width"

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v1

    .line 1528
    check-cast v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    const-string/jumbo v4, "height"

    invoke-virtual {v2, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1533
    :goto_8
    if-eqz p2, :cond_d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, p2, :cond_c

    :cond_d
    if-eqz p3, :cond_9

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, p3, :cond_c

    goto :goto_7

    :cond_e
    move-object v0, v1

    .line 1530
    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    const-string/jumbo v2, "width"

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v1

    .line 1531
    check-cast v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    const-string/jumbo v4, "height"

    invoke-virtual {v2, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    goto :goto_8

    .line 1543
    :cond_f
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_10

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "We must always have at least one rendtion tuple in our sorted array."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1545
    :cond_10
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 1546
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore$Tuple;

    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore$Tuple;->l:Ljava/lang/Object;

    .line 1547
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore$Tuple;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore$Tuple;->r:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 1548
    add-int/lit8 v1, v1, -0x1

    move-object v3, v0

    move v10, v1

    move-object v1, v2

    move v2, v10

    :goto_9
    if-ltz v2, :cond_9

    .line 1549
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore$Tuple;

    iget-object v4, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore$Tuple;->l:Ljava/lang/Object;

    .line 1550
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore$Tuple;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore$Tuple;->r:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 1552
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v5, v3, :cond_9

    .line 1548
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move-object v3, v0

    move-object v1, v4

    goto :goto_9
.end method

.method public getRoot()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getRootNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getDcxNodeWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v1

    .line 187
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_weakBranchOrElement:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->setHostBranchOrElement(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;)V

    .line 188
    return-object v1
.end method

.method getSideBySideMetadataComponentFor(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1278
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->findParentOfComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v2

    .line 1279
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->getPathForSideBySideXMP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1280
    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->getComponentWithAbsolutePath(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v1

    .line 1282
    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->findParentOfComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 1288
    :cond_0
    :goto_0
    return-object v0

    .line 1285
    :cond_1
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getRelationship()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "metadata"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1288
    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getWeakComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_weakComposite:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    return-object v0
.end method

.method public insertChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;J)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1033
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Parameter node shouldn\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1034
    :cond_0
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "NodeId must not be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1036
    :cond_1
    if-nez p2, :cond_2

    .line 1037
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v0, p1, p3, p4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->insertChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;J)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    .line 1039
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->insertChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;J)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    goto :goto_0
.end method

.method public insertNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;J)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 1044
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    invoke-direct {v0, p3, p4, p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    invoke-direct {p0, v0, p5, p6, p7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->insertNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;J)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v0

    return-object v0
.end method

.method public isComponentUnmanaged(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 267
    if-nez p1, :cond_1

    .line 270
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v1, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getUCIDOfComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public moveChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;J)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1087
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Parameter node shouldn\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1088
    :cond_0
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "NodeId must not be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1090
    :cond_1
    if-nez p2, :cond_2

    .line 1091
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v0, p1, p3, p4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->moveChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;J)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    .line 1093
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->moveChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;J)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    goto :goto_0
.end method

.method public moveComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 849
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Parameter component must not be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 850
    :cond_0
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "ComponentId must not be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 852
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->moveComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    return-object v0
.end method

.method public moveComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 856
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Parameter component must not be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 857
    :cond_0
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "ComponentId must not be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 859
    :cond_1
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getMutableManifestNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->moveComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    return-object v0
.end method

.method public moveNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;J)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 1098
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Parameter node shouldn\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1099
    :cond_0
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getNodeId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "NodeId must not be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1102
    :cond_1
    if-nez p2, :cond_2

    .line 1103
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getMutableManifestNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->moveChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;J)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-object v1, v0

    .line 1108
    :goto_0
    if-eqz v1, :cond_4

    .line 1109
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->getWeakDCXNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->getWeakDCXNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v0

    if-eq v0, p1, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v2, "Unexpected DCXNode instance mismatch for node with ID %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1110
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1105
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getMutableManifestNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v1

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getMutableManifestNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p3, p4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->moveChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;J)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-object v1, v0

    goto :goto_0

    .line 1113
    :cond_3
    invoke-virtual {p1, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->setMutableManifestNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;)V

    .line 1114
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_weakBranchOrElement:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->setHostBranchOrElement(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;)V

    .line 1115
    invoke-virtual {v1, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->setWeakDCXNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)V

    .line 1118
    :goto_1
    return-object p1

    :cond_4
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->remove(Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public removeChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1247
    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    const-string/jumbo v3, "Parameter node shouldn\'t be null."

    invoke-static {v0, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->verifyArgument(ZLjava/lang/String;)V

    .line 1248
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :goto_1
    const-string/jumbo v0, "NodeId must not be null"

    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->verifyArgument(ZLjava/lang/String;)V

    .line 1249
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_weakComposite:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    .line 1250
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1251
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v2, p1, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->removeChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/util/ArrayList;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v2

    .line 1252
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 1253
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getLocalStorage()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXLocalStorageProtocol;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1254
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getLocalStorage()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXLocalStorageProtocol;

    move-result-object v4

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-interface {v4, v1, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXLocalStorageProtocol;->didRemoveComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;)V

    .line 1255
    :cond_0
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v4, v6, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->setSourceHref(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)V

    .line 1256
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v4, v6, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->setUCIDForComponent(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)V

    goto :goto_2

    :cond_1
    move v0, v2

    .line 1247
    goto :goto_0

    :cond_2
    move v1, v2

    .line 1248
    goto :goto_1

    .line 1258
    :cond_3
    return-object v2
.end method

.method public removeComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    .locals 2

    .prologue
    .line 918
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Parameter component must not be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 919
    :cond_0
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "ComponentId must not be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 922
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_weakComposite:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    .line 923
    sget-boolean v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Using branch after the composite has been released"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 925
    :cond_2
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v0, p1, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->removeComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    return-object v0
.end method

.method public removeNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    .locals 1

    .prologue
    .line 1262
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getMutableManifestNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->removeChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 1263
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->unbindFromHost()V

    .line 1264
    return-object p1
.end method

.method public replaceComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 668
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Parameter branchOrElement shouldn\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 669
    :cond_0
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "branchOrElement must be of type AdobeDCXCompositeBranch or AdobeDCXElement"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 672
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_weakComposite:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    .line 673
    invoke-interface {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;->getBranchCore()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;

    move-result-object v1

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_weakComposite:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    .line 674
    sget-boolean v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Using branch after the composite has been released"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 675
    :cond_2
    sget-boolean v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    if-nez v3, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Using \'from\' branch after its composite has been released"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 677
    :cond_3
    invoke-interface {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;->getBranchCore()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;

    move-result-object v1

    iget-object v2, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    const/4 v6, 0x1

    move-object v1, p1

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->addComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;ZLjava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    return-object v0
.end method

.method public replaceNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1213
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getHostBranchOrElement()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;

    move-result-object v0

    .line 1214
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_weakComposite:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    .line 1215
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;->getBranchCore()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;

    move-result-object v2

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_weakComposite:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    .line 1216
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;->getBranchCore()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;

    move-result-object v2

    iget-object v3, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    .line 1218
    sget-boolean v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "replaceNode must only be called using a node that already exists on a branch."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1219
    :cond_0
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Using branch after the composite has been released"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1220
    :cond_1
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez v4, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Using \'from\' branch after its composite has been released"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1222
    :cond_2
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getNodeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->getChildWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    .line 1223
    sget-boolean v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Couldn\'t find existing node."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1225
    :cond_3
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getMutableManifestNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v2

    const-wide/16 v6, 0x0

    iget-object v8, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    const/4 v9, 0x1

    move-object v10, p2

    move-object v11, p3

    invoke-virtual/range {v1 .. v11}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->addChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;JLcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;ZLjava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    .line 1229
    if-eqz v0, :cond_5

    .line 1231
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getDcxNodeWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v5

    .line 1232
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getHostBranchOrElement()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getHostBranchOrElement()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_weakBranchOrElement:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Updated DCXNode refers to an unexpected host branch or element."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1234
    :cond_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_weakBranchOrElement:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;

    invoke-virtual {v5, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->setHostBranchOrElement(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;)V

    .line 1236
    :cond_5
    return-object v5
.end method

.method public setCompositeArchivalState(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->setCompositeArchivalState(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public setCompositeState(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->setCompositeState(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->setEtag(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public setLinks(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->setLinks(Lorg/json/JSONObject;)V

    .line 107
    return-void
.end method

.method setManifest(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    .line 72
    return-void
.end method

.method setMetadata(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_metadata:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;

    .line 64
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->setName(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->setType(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method setWeakComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_weakComposite:Ljava/lang/ref/WeakReference;

    .line 80
    return-void
.end method

.method public updateChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1204
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1205
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_weakComposite:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    .line 1206
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getWeakComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v4

    .line 1207
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Using branch after the composite has been released"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1208
    :cond_1
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez v4, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Using \'from\' branch after the composite has been released"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1209
    :cond_2
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v3

    const-wide/16 v6, 0x0

    iget-object v8, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    const/4 v9, 0x1

    move-object v2, p1

    move-object v10, v5

    move-object v11, v5

    invoke-virtual/range {v1 .. v11}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->addChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;JLcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;ZLjava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    return-object v0
.end method

.method public updateChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 941
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Parameter node shouldn\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 942
    :cond_0
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "NodeId must not be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 944
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->updateChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v0

    return-object v0
.end method

.method public updateComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 664
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->updateComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Ljava/lang/String;ZLjava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    return-object v0
.end method

.method public updateComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Ljava/lang/String;Z)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 648
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->updateComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Ljava/lang/String;ZLjava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    return-object v0
.end method

.method public updateMetadata(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1332
    invoke-virtual {p0, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->getSideBySideMetadataComponentFor(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v3

    .line 1333
    if-eqz v3, :cond_2

    .line 1335
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->_weakBranchOrElement:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;

    invoke-virtual {p1, v3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->updateComponentInBranchOrElement(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    move v2, v0

    .line 1365
    :cond_0
    :goto_1
    return v2

    :cond_1
    move v0, v2

    .line 1335
    goto :goto_0

    .line 1337
    :cond_2
    invoke-virtual {p0, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->getPathForComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Ljava/lang/String;

    move-result-object v0

    .line 1338
    if-eqz v0, :cond_0

    .line 1340
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXFileMetadata;->isMetadataUpdatableForFile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1342
    invoke-static {}, Lorg/apache/commons/io/FileUtils;->getTempDirectoryPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->generateUuid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1344
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v0}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1350
    invoke-static {p1, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXFileMetadata;->updateMetadata(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    move v3, v2

    move v0, v2

    .line 1356
    :goto_2
    if-nez v3, :cond_3

    .line 1357
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1360
    :cond_3
    :goto_3
    if-nez v0, :cond_0

    .line 1361
    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->addSideBySideMetadata(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    .line 1362
    if-eqz v0, :cond_6

    :goto_4
    move v2, v1

    goto :goto_1

    .line 1345
    :catch_0
    move-exception v0

    .line 1346
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1353
    :cond_4
    invoke-virtual {p0, p2, v4, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->updateComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Ljava/lang/String;Z)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    .line 1354
    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    move v3, v0

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_5

    :cond_6
    move v1, v2

    .line 1362
    goto :goto_4

    :cond_7
    move v0, v2

    goto :goto_3
.end method
