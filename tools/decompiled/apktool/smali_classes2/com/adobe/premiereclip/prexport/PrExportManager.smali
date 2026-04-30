.class public Lcom/adobe/premiereclip/prexport/PrExportManager;
.super Ljava/lang/Object;
.source "PrExportManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/adobe/premiereclip/prexport/PrExportTransferManager$TransferListener;


# static fields
.field private static final MSG_CANCEL:I = 0x1

.field private static final MSG_START:I = 0x0

.field private static final PPRO_EXPORT_FOLDER_NAME:Ljava/lang/String; = "AdobePremiereClipExport"

.field private static final PPRO_EXPORT_MEDIA_FOLDER:Ljava/lang/String; = "media"


# instance fields
.field private componentTransfers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;",
            ">;"
        }
    .end annotation
.end field

.field private conversionProgress:F

.field private exportCancelled:Z

.field private exportListener:Lcom/adobe/premiereclip/prexport/PrExportManager$PrExportCallback;

.field private mExportHandler:Landroid/os/Handler;

.field private mExportThread:Landroid/os/HandlerThread;

.field private mProjectXml:Lcom/adobe/premiereclip/prexport/fcpxml/XmlDocument;

.field private mUiHandler:Landroid/os/Handler;

.field private mediaTransferProgress:F

.field private mediaTransfers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/prexport/PrExportTransfer;",
            ">;"
        }
    .end annotation
.end field

.field private projectExportName:Ljava/lang/String;

.field private requestsLeft:I

.field private sourceProject:Lcom/adobe/premiereclip/project/Project;

.field private totalSteps:I

.field private transferManager:Lcom/adobe/premiereclip/prexport/PrExportTransferManager;

.field private xmlFilePath:Ljava/lang/String;

.field private xmlTransferProgress:F


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/project/Project;Lcom/adobe/premiereclip/prexport/PrExportManager$PrExportCallback;Landroid/os/Handler;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->sourceProject:Lcom/adobe/premiereclip/project/Project;

    .line 99
    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/Project;->getProjectExportName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->projectExportName:Ljava/lang/String;

    .line 100
    iput-object p2, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->exportListener:Lcom/adobe/premiereclip/prexport/PrExportManager$PrExportCallback;

    .line 101
    iput-object p3, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->mUiHandler:Landroid/os/Handler;

    .line 102
    iput-boolean v3, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->exportCancelled:Z

    .line 104
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":Handler"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->mExportThread:Landroid/os/HandlerThread;

    .line 105
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->mExportThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 106
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->mExportThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->mExportHandler:Landroid/os/Handler;

    .line 108
    new-instance v0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;

    iget-object v1, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->mExportHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;-><init>(Lcom/adobe/premiereclip/prexport/PrExportTransferManager$TransferListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->transferManager:Lcom/adobe/premiereclip/prexport/PrExportTransferManager;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->mediaTransfers:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->componentTransfers:Ljava/util/ArrayList;

    .line 112
    iput v3, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->requestsLeft:I

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->mProjectXml:Lcom/adobe/premiereclip/prexport/fcpxml/XmlDocument;

    .line 114
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->xmlFilePath:Ljava/lang/String;

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/prexport/PrExportManager;Z)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/prexport/PrExportManager;->createFolderInCCIfNotExistsOnCompletion(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/prexport/PrExportManager;Z)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/prexport/PrExportManager;->userHasEnoughSpaceForMediaAndXmlOnCompletion(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/prexport/PrExportManager;)Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->exportCancelled:Z

    return v0
.end method

.method static synthetic access$300(Lcom/adobe/premiereclip/prexport/PrExportManager;)Lcom/adobe/premiereclip/prexport/PrExportManager$PrExportCallback;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->exportListener:Lcom/adobe/premiereclip/prexport/PrExportManager$PrExportCallback;

    return-object v0
.end method

.method private componentsForTransfer()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 604
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->sourceProject:Lcom/adobe/premiereclip/project/Project;

    iget-object v1, v1, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getProjectPathFromProjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 605
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/adobe/premiereclip/dcx/DCXModelController;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v2

    .line 607
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v3

    .line 609
    invoke-direct {p0}, Lcom/adobe/premiereclip/prexport/PrExportManager;->getComponentIdToComponentMapForNonSyntheticMedia()Ljava/util/HashMap;

    move-result-object v0

    .line 610
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 612
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 613
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 614
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 617
    :cond_0
    invoke-direct {p0}, Lcom/adobe/premiereclip/prexport/PrExportManager;->getLookComponent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    .line 618
    if-eqz v0, :cond_1

    .line 619
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    :cond_1
    invoke-direct {p0}, Lcom/adobe/premiereclip/prexport/PrExportManager;->getBackgroundTrackComponent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    .line 622
    if-eqz v0, :cond_2

    .line 623
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->requestsLeft:I

    .line 626
    const-string/jumbo v0, "PrExportMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "componentsfortransfer requests left : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->requestsLeft:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->requestsLeft:I

    if-nez v0, :cond_3

    .line 629
    invoke-direct {p0}, Lcom/adobe/premiereclip/prexport/PrExportManager;->componentsForTransferOnCompletion()V

    .line 632
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "AdobePremiereClipExport/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/adobe/premiereclip/prexport/PrExportManager;->getProjectCCFolderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "media"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 635
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->sourceProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->isOverlayEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 636
    invoke-direct {p0}, Lcom/adobe/premiereclip/prexport/PrExportManager;->getOverlayComponent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    .line 637
    if-eqz v0, :cond_4

    .line 638
    iget-object v5, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->sourceProject:Lcom/adobe/premiereclip/project/Project;

    iget-object v5, v5, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-static {v5}, Lcom/adobe/premiereclip/dcx/DCXReader;->getOverlayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 640
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getHref()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 642
    new-instance v7, Lcom/adobe/premiereclip/prexport/PrExportTransfer;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v5, v6, v4, v8}, Lcom/adobe/premiereclip/prexport/PrExportTransfer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    iget-object v5, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->transferManager:Lcom/adobe/premiereclip/prexport/PrExportTransferManager;

    invoke-virtual {v5, v7, v0}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->itemExistsAtDestination(Lcom/adobe/premiereclip/prexport/PrExportTransfer;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)V

    .line 649
    :cond_4
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->sourceProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    iget-object v5, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->sourceProject:Lcom/adobe/premiereclip/project/Project;

    iget-object v5, v5, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/adobe/premiereclip/project/sequence/Sequence;->isBumperEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 650
    invoke-direct {p0}, Lcom/adobe/premiereclip/prexport/PrExportManager;->getBumperComponent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v5

    .line 651
    if-eqz v5, :cond_6

    .line 652
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->sourceProject:Lcom/adobe/premiereclip/project/Project;

    iget-object v0, v0, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXReader;->getBumperName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 653
    const-string/jumbo v6, "Default"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 654
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, ".mp4"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 657
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getHref()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 659
    new-instance v7, Lcom/adobe/premiereclip/prexport/PrExportTransfer;

    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v0, v6, v4, v8}, Lcom/adobe/premiereclip/prexport/PrExportTransfer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->transferManager:Lcom/adobe/premiereclip/prexport/PrExportTransferManager;

    invoke-virtual {v0, v7, v5}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->itemExistsAtDestination(Lcom/adobe/premiereclip/prexport/PrExportTransfer;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)V

    .line 667
    :cond_6
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 668
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 670
    const-string/jumbo v1, ""

    .line 671
    invoke-static {v0, v3}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getPathForComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Ljava/lang/String;

    move-result-object v5

    .line 672
    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 673
    const-string/jumbo v1, "."

    invoke-virtual {v5, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 676
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getHref()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 677
    const-string/jumbo v6, "PrExportMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "componentsfortransfer -  got media sourcepath : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 680
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getType()Ljava/lang/String;

    move-result-object v6

    .line 682
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "AdobePremiereClipExport/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/adobe/premiereclip/prexport/PrExportManager;->getProjectCCFolderName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "media"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 684
    const-string/jumbo v8, "PrExportMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "component src path: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "    target folder: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "   target name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "   media type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    new-instance v8, Lcom/adobe/premiereclip/prexport/PrExportTransfer;

    invoke-direct {v8, v1, v5, v7, v6}, Lcom/adobe/premiereclip/prexport/PrExportTransfer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    iget-object v1, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->transferManager:Lcom/adobe/premiereclip/prexport/PrExportTransferManager;

    invoke-virtual {v1, v8, v0}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->itemExistsAtDestination(Lcom/adobe/premiereclip/prexport/PrExportTransfer;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 693
    :catch_0
    move-exception v0

    .line 694
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 695
    invoke-direct {p0, v11, v11}, Lcom/adobe/premiereclip/prexport/PrExportManager;->doExportOnCompletion(ZZ)V

    .line 698
    :cond_8
    return-void
.end method

.method private componentsForTransferOnCompletion()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 588
    iget-boolean v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->exportCancelled:Z

    if-eqz v0, :cond_0

    .line 589
    const-string/jumbo v0, "PrExportManager"

    const-string/jumbo v1, "export cancelled due to error - componentsfortransferoncompletion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-direct {p0, v2, v2}, Lcom/adobe/premiereclip/prexport/PrExportManager;->doExportOnCompletion(ZZ)V

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->mediaTransfers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->totalSteps:I

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/adobe/premiereclip/prexport/PrExportManager;->getProjectXmlCCAssetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->xmlFilePath:Ljava/lang/String;

    .line 596
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->mProjectXml:Lcom/adobe/premiereclip/prexport/fcpxml/XmlDocument;

    iget-object v1, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->xmlFilePath:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/prexport/PrExportManager;->writeXmlToFile(Lcom/adobe/premiereclip/prexport/fcpxml/XmlDocument;Ljava/lang/String;)V

    .line 598
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->conversionProgress:F

    .line 600
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->componentTransfers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->xmlFilePath:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/prexport/PrExportManager;->userHasEnoughSpaceForMediaAndXml(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 601
    return-void
.end method

.method private convertProjectToXml()Lcom/adobe/premiereclip/prexport/fcpxml/XmlDocument;
    .locals 3

    .prologue
    .line 118
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/Project;

    iget-object v1, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->sourceProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getProjectName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/Project;-><init>(Ljava/lang/String;)V

    .line 119
    new-instance v1, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;

    invoke-direct {v1}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;-><init>()V

    .line 120
    iget-object v2, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->sourceProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1, v2, v0}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->convertProject(Lcom/adobe/premiereclip/project/Project;Lcom/adobe/premiereclip/prexport/fcpxml/Project;)V

    .line 122
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlDocument;

    invoke-direct {v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlDocument;-><init>()V

    .line 123
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/ProjectXmlGenerator;

    invoke-direct {v2}, Lcom/adobe/premiereclip/prexport/fcpxml/ProjectXmlGenerator;-><init>()V

    .line 124
    invoke-virtual {v2, v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/ProjectXmlGenerator;->convertProjectToXml(Lcom/adobe/premiereclip/prexport/fcpxml/Project;Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 126
    return-object v1
.end method

.method private createExportFoldersInCC(Z)V
    .locals 6

    .prologue
    .line 506
    const-string/jumbo v0, "files/AdobePremiereClipExport"

    .line 507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/adobe/premiereclip/prexport/PrExportManager;->getProjectCCFolderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 508
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "media"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 510
    const-string/jumbo v3, "PrExportMgr"

    const-string/jumbo v4, "create export folders in CC"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const-string/jumbo v3, "PrExportMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "exportfolderpath : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "  ,  projectfolderpath : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "  ,  mediafolderpath : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    if-eqz p1, :cond_0

    .line 514
    const-string/jumbo v0, "PrExportMgr"

    const-string/jumbo v1, "creating project and media folder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-direct {p0, v2}, Lcom/adobe/premiereclip/prexport/PrExportManager;->createFolderInCCIfNotExists(Ljava/lang/String;)V

    .line 521
    :goto_0
    return-void

    .line 518
    :cond_0
    const-string/jumbo v0, "PrExportMgr"

    const-string/jumbo v2, "creating only project folder"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/prexport/PrExportManager;->createFolderInCCIfNotExists(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createExportFoldersInCCOnCompletion(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 421
    if-nez p1, :cond_0

    .line 422
    const-string/jumbo v0, "PrExportMgr"

    const-string/jumbo v1, "CC folder creation failed - abort"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-direct {p0, v2, v2}, Lcom/adobe/premiereclip/prexport/PrExportManager;->doExportOnCompletion(ZZ)V

    .line 434
    :goto_0
    return-void

    .line 427
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->exportCancelled:Z

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->xmlFilePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/prexport/PrExportManager;->deleteXmlFile(Ljava/lang/String;)V

    .line 429
    invoke-direct {p0, v2, v2}, Lcom/adobe/premiereclip/prexport/PrExportManager;->doExportOnCompletion(ZZ)V

    goto :goto_0

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->transferManager:Lcom/adobe/premiereclip/prexport/PrExportTransferManager;

    iget-object v1, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->mediaTransfers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->copyAll(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private createFolderInCCIfNotExists(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 447
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeStorage:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getSessionForService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    .line 448
    iget-object v1, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->mExportHandler:Landroid/os/Handler;

    .line 450
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->collectionFromHref(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v1

    .line 452
    if-eqz v1, :cond_0

    .line 453
    const-string/jumbo v2, "PrExportMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "folder to be created is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->href:Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_0
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStoragePagingMode;->AdobeStorageFirstPage:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStoragePagingMode;

    new-instance v3, Lcom/adobe/premiereclip/prexport/PrExportManager$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/adobe/premiereclip/prexport/PrExportManager$1;-><init>(Lcom/adobe/premiereclip/prexport/PrExportManager;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->getDirectory(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStoragePagingMode;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageCollectionRequestCompletionHandler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    .line 495
    return-void
.end method

.method private createFolderInCCIfNotExistsOnCompletion(Z)V
    .locals 2

    .prologue
    .line 437
    if-eqz p1, :cond_0

    .line 438
    const-string/jumbo v0, "PrExportMgr"

    const-string/jumbo v1, "created folder in CC"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :goto_0
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/prexport/PrExportManager;->createExportFoldersInCCOnCompletion(Z)V

    .line 444
    return-void

    .line 441
    :cond_0
    const-string/jumbo v0, "PrExportMgr"

    const-string/jumbo v1, "failed to create folder in CC"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private deleteXmlFile(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 415
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 418
    :cond_0
    return-void
.end method

.method private doExport()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 720
    iput-boolean v3, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->exportCancelled:Z

    .line 722
    invoke-direct {p0}, Lcom/adobe/premiereclip/prexport/PrExportManager;->convertProjectToXml()Lcom/adobe/premiereclip/prexport/fcpxml/XmlDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->mProjectXml:Lcom/adobe/premiereclip/prexport/fcpxml/XmlDocument;

    .line 723
    const-string/jumbo v0, "PrExportManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "project xml is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->mProjectXml:Lcom/adobe/premiereclip/prexport/fcpxml/XmlDocument;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlDocument;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->mProjectXml:Lcom/adobe/premiereclip/prexport/fcpxml/XmlDocument;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->mProjectXml:Lcom/adobe/premiereclip/prexport/fcpxml/XmlDocument;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlDocument;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 726
    :cond_0
    const-string/jumbo v0, "PrExportManager"

    const-string/jumbo v1, "error in exporting xml"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->exportCancelled:Z

    .line 728
    invoke-direct {p0, v3, v3}, Lcom/adobe/premiereclip/prexport/PrExportManager;->doExportOnCompletion(ZZ)V

    .line 732
    :goto_0
    return-void

    .line 731
    :cond_1
    invoke-direct {p0}, Lcom/adobe/premiereclip/prexport/PrExportManager;->componentsForTransfer()V

    goto :goto_0
.end method

.method private doExportOnCompletion(ZZ)V
    .locals 2

    .prologue
    .line 701
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adobe/premiereclip/prexport/PrExportManager$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/adobe/premiereclip/prexport/PrExportManager$3;-><init>(Lcom/adobe/premiereclip/prexport/PrExportManager;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 716
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->mExportThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 717
    return-void
.end method

.method private getBackgroundTrackComponent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 273
    .line 274
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    .line 275
    iget-object v2, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->sourceProject:Lcom/adobe/premiereclip/project/Project;

    iget-object v2, v2, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getProjectPathFromProjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 279
    if-eqz v0, :cond_1

    .line 280
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    .line 281
    if-eqz v2, :cond_1

    .line 282
    invoke-static {v2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getBackgroundTrackNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_1

    .line 284
    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->appPropertiesFromNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lorg/json/JSONObject;

    move-result-object v0

    .line 285
    const-string/jumbo v3, "mediaRef"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 286
    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    aget-object v0, v0, v3

    .line 287
    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getChildWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    .line 289
    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getComponentsOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v0

    .line 291
    if-eqz v0, :cond_1

    .line 292
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 293
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 294
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getRelationship()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "primary"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 304
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private getBumperComponent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 232
    invoke-static {}, Lcom/adobe/sync/database/CompositeLoader;->getInstance()Lcom/adobe/sync/database/CompositeLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->sourceProject:Lcom/adobe/premiereclip/project/Project;

    iget-object v1, v1, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v2}, Lcom/adobe/sync/database/CompositeLoader;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getBumperNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    .line 234
    const-string/jumbo v2, "video"

    invoke-direct {p0, v1, v0, v2}, Lcom/adobe/premiereclip/prexport/PrExportManager;->getComponentForManifestNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    return-object v0
.end method

.method private getComponentForManifestNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    .locals 3

    .prologue
    .line 222
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getComponentsOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v0

    .line 223
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 224
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getRelationship()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getComponentIdToAssetReferenceMapForNonSyntheticMedia()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/premiereclip/project/sequence/AssetReference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 310
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->sourceProject:Lcom/adobe/premiereclip/project/Project;

    iget-object v1, v1, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getProjectPathFromProjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v0, v4}, Lcom/adobe/premiereclip/dcx/DCXModelController;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 314
    iget-object v1, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->sourceProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v1

    .line 316
    if-eqz v0, :cond_2

    .line 317
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v3

    .line 318
    if-eqz v3, :cond_2

    .line 319
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 320
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 321
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v1

    sget-object v5, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->IMAGE_TITLE:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    invoke-virtual {v1, v5}, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 325
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getComponentWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v1

    .line 326
    invoke-virtual {v3, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->findParentOfComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    .line 327
    if-eqz v1, :cond_0

    .line 328
    invoke-virtual {v3, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getComponentsOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v1

    .line 329
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 330
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 331
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getRelationship()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "primary"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 332
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 333
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v6

    invoke-virtual {v2, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 344
    :cond_2
    return-object v2
.end method

.method private getComponentIdToComponentMapForNonSyntheticMedia()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 350
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->sourceProject:Lcom/adobe/premiereclip/project/Project;

    iget-object v2, v2, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getProjectPathFromProjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lcom/adobe/premiereclip/dcx/DCXModelController;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 354
    iget-object v2, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->sourceProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v2

    .line 356
    if-eqz v0, :cond_2

    .line 357
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v3

    .line 358
    if-eqz v3, :cond_2

    .line 359
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 360
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 361
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v4

    sget-object v5, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->IMAGE_TITLE:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    invoke-virtual {v4, v5}, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v4

    sget-object v5, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->VIDEO_BUMPER:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    invoke-virtual {v4, v5}, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 365
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getComponentWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    .line 366
    invoke-virtual {v3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->findParentOfComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    .line 367
    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {v3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getComponentsOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v0

    .line 369
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 370
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 371
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getRelationship()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "primary"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 372
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 373
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 384
    :cond_2
    return-object v1
.end method

.method private getLookComponent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 244
    .line 245
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    .line 246
    iget-object v2, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->sourceProject:Lcom/adobe/premiereclip/project/Project;

    iget-object v2, v2, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getProjectPathFromProjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 250
    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_1

    .line 253
    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getLookNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v2

    .line 255
    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getComponentsOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_1

    .line 258
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 259
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 260
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getRelationship()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "primary"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 269
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private getOverlayComponent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 238
    invoke-static {}, Lcom/adobe/sync/database/CompositeLoader;->getInstance()Lcom/adobe/sync/database/CompositeLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->sourceProject:Lcom/adobe/premiereclip/project/Project;

    iget-object v1, v1, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v2}, Lcom/adobe/sync/database/CompositeLoader;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getOverlayNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    .line 240
    const-string/jumbo v2, "image"

    invoke-direct {p0, v1, v0, v2}, Lcom/adobe/premiereclip/prexport/PrExportManager;->getComponentForManifestNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    return-object v0
.end method

.method private getProgress()D
    .locals 4

    .prologue
    .line 157
    iget v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->totalSteps:I

    if-nez v0, :cond_0

    .line 158
    const-wide/16 v0, 0x0

    .line 166
    :goto_0
    return-wide v0

    .line 161
    :cond_0
    iget v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->mediaTransferProgress:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->transferManager:Lcom/adobe/premiereclip/prexport/PrExportTransferManager;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->getMediaTransferProgress()F

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->mediaTransferProgress:F

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->transferManager:Lcom/adobe/premiereclip/prexport/PrExportTransferManager;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->getUploadTransferProgress()F

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->xmlTransferProgress:F

    .line 165
    iget v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->conversionProgress:F

    iget v1, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->totalSteps:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->mediaTransferProgress:F

    iget v2, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->totalSteps:I

    add-int/lit8 v2, v2, -0x2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->totalSteps:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->xmlTransferProgress:F

    iget v2, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->totalSteps:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 166
    goto :goto_0
.end method

.method private getProjectCCFolderName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->projectExportName:Ljava/lang/String;

    .line 131
    const-string/jumbo v1, "_"

    .line 134
    const/16 v2, 0x20

    invoke-static {v0, v2, v1}, Lcom/adobe/premiereclip/util/Utilities;->removeTrailingCharactersFromString(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    const/16 v2, 0x2e

    invoke-static {v0, v2, v1}, Lcom/adobe/premiereclip/util/Utilities;->removeTrailingCharactersFromString(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/prexport/PrExportManager;->replaceInvalidPrCharacters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    return-object v0
.end method

.method private getProjectXmlCCAssetName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->projectExportName:Ljava/lang/String;

    .line 144
    const-string/jumbo v1, "_"

    .line 146
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/prexport/PrExportManager;->replaceInvalidPrCharacters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    return-object v0
.end method

.method private getTrailingSpaceRemovedProjectName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 502
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUrlSafeProjectName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 498
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->escapeAssetName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private replaceInvalidPrCharacters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    const-string/jumbo v0, "&"

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {v0, p2}, Lcom/adobe/premiereclip/util/Utilities;->stringByReplacingNonPlaneZeroCharacters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    return-object v0
.end method

.method private userHasEnoughSpaceForMediaAndXml(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 547
    const-wide/16 v0, 0x0

    .line 548
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 549
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 550
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getLength()J

    move-result-wide v0

    .line 551
    add-long/2addr v0, v2

    move-wide v2, v0

    .line 552
    goto :goto_0

    :cond_0
    move-wide v2, v0

    .line 555
    :cond_1
    const-string/jumbo v0, "PrExportMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "net transfer size is : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 558
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 559
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    add-long/2addr v2, v0

    .line 564
    :cond_2
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeStorage:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getSessionForService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    .line 565
    new-instance v1, Lcom/adobe/premiereclip/prexport/PrExportManager$2;

    invoke-direct {v1, p0, v2, v3}, Lcom/adobe/premiereclip/prexport/PrExportManager$2;-><init>(Lcom/adobe/premiereclip/prexport/PrExportManager;J)V

    new-instance v2, Landroid/os/Handler;

    .line 584
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 565
    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->getQuotaInformationOnCompletion(Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionQuotaCallback;Landroid/os/Handler;)V

    .line 585
    return-void
.end method

.method private userHasEnoughSpaceForMediaAndXmlOnCompletion(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 525
    if-nez p1, :cond_0

    .line 526
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/adobe/premiereclip/prexport/PrExportManager;->doExportOnCompletion(ZZ)V

    .line 543
    :goto_0
    return-void

    .line 530
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->exportCancelled:Z

    if-eqz v0, :cond_1

    .line 531
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->xmlFilePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/prexport/PrExportManager;->deleteXmlFile(Ljava/lang/String;)V

    .line 532
    invoke-direct {p0, v1, v1}, Lcom/adobe/premiereclip/prexport/PrExportManager;->doExportOnCompletion(ZZ)V

    goto :goto_0

    .line 535
    :cond_1
    const-string/jumbo v0, "PrExportMgr"

    const-string/jumbo v1, "user has space, starting CC uploads!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->componentTransfers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 542
    :cond_2
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->transferManager:Lcom/adobe/premiereclip/prexport/PrExportTransferManager;

    iget-object v1, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->mediaTransfers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->copyAll(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private writeXmlToFile(Lcom/adobe/premiereclip/prexport/fcpxml/XmlDocument;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 388
    const-string/jumbo v0, " "

    const-string/jumbo v1, "\n"

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlDocument;->toString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 391
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 393
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 394
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 395
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 398
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 399
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 400
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 401
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 403
    const-string/jumbo v0, "PrExportManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "xml writing done at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->xmlFilePath:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 412
    :goto_0
    return-void

    .line 405
    :catch_0
    move-exception v0

    .line 406
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 408
    :catch_1
    move-exception v0

    .line 409
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public cancelExport()V
    .locals 2

    .prologue
    .line 170
    const-string/jumbo v0, "PrExportMgr"

    const-string/jumbo v1, "sending cancel msg"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->mExportHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 172
    return-void
.end method

.method public exportFilesToCC()V
    .locals 2

    .prologue
    .line 735
    const-string/jumbo v0, "PrExportMgr"

    const-string/jumbo v1, "sending start msg"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->mExportHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 737
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 813
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 826
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 815
    :pswitch_0
    const-string/jumbo v1, "PrExportMgr"

    const-string/jumbo v2, "starting export"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    invoke-direct {p0}, Lcom/adobe/premiereclip/prexport/PrExportManager;->doExport()V

    goto :goto_0

    .line 820
    :pswitch_1
    const-string/jumbo v1, "PrExportMgr"

    const-string/jumbo v2, "cancelling export"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    iput-boolean v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->exportCancelled:Z

    .line 822
    iget-object v1, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->transferManager:Lcom/adobe/premiereclip/prexport/PrExportTransferManager;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->cancelAllTransfers()V

    goto :goto_0

    .line 813
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isProjectReadyToExport()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 177
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->sourceProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->sourceProject:Lcom/adobe/premiereclip/project/Project;

    iget-object v2, v2, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/project/sequence/Sequence;->isBumperEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    invoke-direct {p0}, Lcom/adobe/premiereclip/prexport/PrExportManager;->getBumperComponent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getEtag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getEtag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 218
    :goto_0
    return v0

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->sourceProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->isOverlayEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 186
    invoke-direct {p0}, Lcom/adobe/premiereclip/prexport/PrExportManager;->getOverlayComponent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getEtag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getEtag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v1

    .line 188
    goto :goto_0

    .line 192
    :cond_3
    invoke-direct {p0}, Lcom/adobe/premiereclip/prexport/PrExportManager;->getLookComponent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getEtag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    :cond_4
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getEtag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    move v0, v1

    .line 194
    goto :goto_0

    .line 196
    :cond_6
    invoke-direct {p0}, Lcom/adobe/premiereclip/prexport/PrExportManager;->getBackgroundTrackComponent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v2

    .line 197
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getEtag()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    :cond_7
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getEtag()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    move v0, v1

    .line 198
    goto :goto_0

    .line 201
    :cond_9
    if-eqz v0, :cond_a

    .line 202
    const-string/jumbo v3, "PrExportManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checking - got look component id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_a
    if-eqz v2, :cond_b

    .line 204
    const-string/jumbo v0, "PrExportManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checking - got backgroundtrack component id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_b
    invoke-direct {p0}, Lcom/adobe/premiereclip/prexport/PrExportManager;->getComponentIdToComponentMapForNonSyntheticMedia()Ljava/util/HashMap;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_e

    .line 208
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 209
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 210
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getEtag()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getEtag()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_c
    move v0, v1

    .line 211
    goto/16 :goto_0

    .line 213
    :cond_d
    const-string/jumbo v3, "PrExportManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checking - got media component id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 216
    :cond_e
    const-string/jumbo v0, "PrExportMgr"

    const-string/jumbo v1, "project is ready for ppro export"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public onCopyAllComplete(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 778
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->mediaTransferProgress:F

    .line 779
    if-nez p1, :cond_0

    .line 780
    const-string/jumbo v0, "PrExportMgr"

    const-string/jumbo v1, "oncopyallcomplete - error in media transfer - aborting!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->xmlFilePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/prexport/PrExportManager;->deleteXmlFile(Ljava/lang/String;)V

    .line 782
    invoke-direct {p0, v5, v5}, Lcom/adobe/premiereclip/prexport/PrExportManager;->doExportOnCompletion(ZZ)V

    .line 798
    :goto_0
    return-void

    .line 786
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AdobePremiereClipExport/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/adobe/premiereclip/prexport/PrExportManager;->getProjectCCFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 787
    const-string/jumbo v1, "PrExportMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "starting xml upload at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->xmlFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    new-instance v1, Lcom/adobe/premiereclip/prexport/PrExportTransfer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/adobe/premiereclip/prexport/PrExportManager;->getProjectXmlCCAssetName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->xmlFilePath:Ljava/lang/String;

    const-string/jumbo v4, "application/xml"

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/adobe/premiereclip/prexport/PrExportTransfer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    iget-boolean v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->exportCancelled:Z

    if-eqz v0, :cond_1

    .line 792
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->xmlFilePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/prexport/PrExportManager;->deleteXmlFile(Ljava/lang/String;)V

    .line 793
    invoke-direct {p0, v5, v5}, Lcom/adobe/premiereclip/prexport/PrExportManager;->doExportOnCompletion(ZZ)V

    goto :goto_0

    .line 797
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->transferManager:Lcom/adobe/premiereclip/prexport/PrExportTransferManager;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->upload(Lcom/adobe/premiereclip/prexport/PrExportTransfer;)V

    goto :goto_0
.end method

.method public onItemExistsAtDestination(ZLcom/adobe/premiereclip/prexport/PrExportTransfer;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)V
    .locals 2

    .prologue
    .line 741
    if-nez p1, :cond_0

    .line 742
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->mediaTransfers:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->componentTransfers:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    const-string/jumbo v0, "PrExportMgr"

    const-string/jumbo v1, "added to mediatransfr and componenttransfr"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_0
    iget v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->requestsLeft:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->requestsLeft:I

    .line 749
    iget v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->requestsLeft:I

    if-nez v0, :cond_1

    .line 750
    invoke-direct {p0}, Lcom/adobe/premiereclip/prexport/PrExportManager;->componentsForTransferOnCompletion()V

    .line 752
    :cond_1
    return-void
.end method

.method public onUploadComplete(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 756
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->xmlFilePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/prexport/PrExportManager;->deleteXmlFile(Ljava/lang/String;)V

    .line 758
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->xmlTransferProgress:F

    .line 760
    if-nez p1, :cond_1

    .line 761
    iget-boolean v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->exportCancelled:Z

    if-eqz v0, :cond_0

    .line 762
    const-string/jumbo v0, "PrExportManager"

    const-string/jumbo v1, "user cancelled ppro export"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    invoke-direct {p0, v2, v2}, Lcom/adobe/premiereclip/prexport/PrExportManager;->doExportOnCompletion(ZZ)V

    .line 774
    :goto_0
    return-void

    .line 767
    :cond_0
    const-string/jumbo v0, "PrExportManager"

    const-string/jumbo v1, "CC xml upload failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    invoke-direct {p0, v2, v2}, Lcom/adobe/premiereclip/prexport/PrExportManager;->doExportOnCompletion(ZZ)V

    goto :goto_0

    .line 773
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/adobe/premiereclip/prexport/PrExportManager;->doExportOnCompletion(ZZ)V

    goto :goto_0
.end method

.method public onUploadProgress()V
    .locals 4

    .prologue
    .line 802
    invoke-direct {p0}, Lcom/adobe/premiereclip/prexport/PrExportManager;->getProgress()D

    move-result-wide v0

    .line 803
    iget-object v2, p0, Lcom/adobe/premiereclip/prexport/PrExportManager;->mUiHandler:Landroid/os/Handler;

    new-instance v3, Lcom/adobe/premiereclip/prexport/PrExportManager$4;

    invoke-direct {v3, p0, v0, v1}, Lcom/adobe/premiereclip/prexport/PrExportManager$4;-><init>(Lcom/adobe/premiereclip/prexport/PrExportManager;D)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 809
    return-void
.end method
