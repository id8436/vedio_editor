.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;
.super Landroid/support/v4/app/Fragment;
.source "AdobeAssetViewMainBrowserFragment.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetMainBrowserMgr;


# static fields
.field public static final COLLABORATION_INTENT_REQUEST_CODE:I = 0xa

.field public static final NOTIFICATION_INTENT_REQUEST_CODE:I = 0xb

.field private static final ROOT_VIEW_ID_CONST:I = 0x1234

.field public static final T:Ljava/lang/String; = "MainBrowserFragment"


# instance fields
.field private assetViewFragmentHostActivity:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetViewBrowserFragmentHostActivity;

.field private browserConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserConfiguration;

.field private commandsHandler:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment$BrowserCommandsHandler;

.field private extraConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserExtraConfiguration;

.field private popToRootOnResume:Z

.field private rootViewId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 60
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->rootViewId:I

    .line 66
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->popToRootOnResume:Z

    return-void
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToDesignLibraryCollectionCommand;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->navigateToLibraryDesignCollection(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToDesignLibraryCollectionCommand;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->handleNewFolderCreated(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->handleCreateNewLibrary()V

    return-void
.end method

.method static synthetic access$1200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->handleNewLibraryCreated(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->handleCreateNewPhotoCollection()V

    return-void
.end method

.method static synthetic access$1400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->handleNeCollectionCreated(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->showCCSectionMyAssets()V

    return-void
.end method

.method static synthetic access$1600(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->showCCSectionMyLibraries()V

    return-void
.end method

.method static synthetic access$1700(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->moveToRootCollection()V

    return-void
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToMobileCreationPackageCollectionData;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->navigateToMobileCreationCollection(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToMobileCreationPackageCollectionData;)V

    return-void
.end method

.method static synthetic access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->showMyAccountView()V

    return-void
.end method

.method static synthetic access$400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->returnCurrentSelectedFilesToClient()V

    return-void
.end method

.method static synthetic access$500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->returnCurrentSelectedPhotosToClient()V

    return-void
.end method

.method static synthetic access$600(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->signOutCurrentUser()V

    return-void
.end method

.method static synthetic access$700(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->handleShowUploadErrorDetails(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->handleShowEditErrorDetails(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->handleCreateNewFolder(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)V

    return-void
.end method

.method private fixDataSourceArgumentsForAssets()V
    .locals 3

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 517
    if-nez v1, :cond_1

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    const-string/jumbo v0, "DATA_SOURCE_FILTER_ARRAY"

    .line 521
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/EnumSet;

    .line 522
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 523
    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 524
    const-string/jumbo v2, "DATA_SOURCE_FILTER_ARRAY"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0
.end method

.method private handleCreateNewFolder(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)V
    .locals 3

    .prologue
    .line 591
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory;->getCreateNewFolderDialogFragment(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    .line 592
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "upload_create_new_folder"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 593
    return-void
.end method

.method private handleCreateNewLibrary()V
    .locals 3

    .prologue
    .line 565
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory;->getCreateNewLibraryDialogFragment()Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    .line 566
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "upload_create_new_library"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 567
    return-void
.end method

.method private handleCreateNewPhotoCollection()V
    .locals 3

    .prologue
    .line 570
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->getBrowserConfiguration()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserConfiguration;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory;->getCreateNewCollectionDialogFragment(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    .line 571
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "upload_create_new_collection"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 572
    return-void
.end method

.method private handleNeCollectionCreated(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;)V
    .locals 2

    .prologue
    .line 581
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToPhotoCollectionCommand;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToPhotoCollectionCommand;-><init>()V

    .line 582
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getGUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToPhotoCollectionCommand;->setCollectionGUID(Ljava/lang/String;)V

    .line 583
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToPhotoCollectionCommand;->setCollectionName(Ljava/lang/String;)V

    .line 584
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getCatalog()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;->getGUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToPhotoCollectionCommand;->setCatalogGUID(Ljava/lang/String;)V

    .line 585
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getCatalog()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToPhotoCollectionCommand;->setCatalogName(Ljava/lang/String;)V

    .line 586
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourcePhotos:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    invoke-virtual {p0, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->navigateToPhotoCollection(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToPhotoCollectionCommand;)V

    .line 587
    return-void
.end method

.method private handleNewFolderCreated(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)V
    .locals 3

    .prologue
    .line 560
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getHref()Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->collectionFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v0

    .line 561
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceFiles:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->isReadOnly()Z

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->navigateToCollection(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Z)V

    .line 562
    return-void
.end method

.method private handleNewLibraryCreated(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 575
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToDesignLibraryCollectionCommand;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToDesignLibraryCollectionCommand;-><init>()V

    .line 576
    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToDesignLibraryCollectionCommand;->setCollectionGUID(Ljava/lang/String;)V

    .line 577
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->navigateToLibraryDesignCollection(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToDesignLibraryCollectionCommand;)V

    .line 578
    return-void
.end method

.method private handleShowEditErrorDetails(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 601
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory;->getHostFragmentForEditErrorSummary(Ljava/lang/Object;)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    .line 602
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "edit_error_details"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 603
    return-void
.end method

.method private handleShowUploadErrorDetails(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 596
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory;->getHostFragmentForUploadErrorSummary(Ljava/lang/Object;)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    .line 597
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "upload_error_details"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 598
    return-void
.end method

.method private isAOneUpActivityRequest(I)Z
    .locals 1

    .prologue
    .line 379
    const/16 v0, 0x856

    if-eq p1, v0, :cond_0

    const/16 v0, 0x857

    if-eq p1, v0, :cond_0

    const/16 v0, 0x859

    if-eq p1, v0, :cond_0

    const/16 v0, 0x858

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveToRootCollection()V
    .locals 0

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->handleOnBackPressed()Z

    .line 498
    return-void
.end method

.method private navigateToLibraryDesignCollection(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToDesignLibraryCollectionCommand;)V
    .locals 5

    .prologue
    .line 530
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;-><init>()V

    .line 532
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 533
    const-string/jumbo v2, "designLibraryID"

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToDesignLibraryCollectionCommand;->getCollectionGUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    const-string/jumbo v2, "ADOBE_CLOUD"

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->getBrowserConfiguration()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserConfiguration;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 535
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 536
    if-eqz v2, :cond_0

    const-string/jumbo v3, "DESIGNLIBRARYITEMS_FILTER_ARRAY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 537
    const-string/jumbo v3, "design_library_items_key"

    const-string/jumbo v4, "DESIGNLIBRARYITEMS_FILTER_ARRAY"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 538
    const-string/jumbo v3, "design_library_items_filtertype"

    const-string/jumbo v4, "DESIGNLIBRARYITEMS_FILTER_TYPE"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 540
    :cond_0
    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 541
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->pushHostFragment(Landroid/support/v4/app/Fragment;)V

    .line 542
    return-void
.end method

.method private navigateToMobileCreationCollection(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToMobileCreationPackageCollectionData;)V
    .locals 4

    .prologue
    .line 546
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;-><init>()V

    .line 548
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 549
    const-string/jumbo v2, "mobilePackageCollectionHref"

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToMobileCreationPackageCollectionData;->getCollectionHref()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    const-string/jumbo v2, "mobilePackageCollectionParentHref"

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToMobileCreationPackageCollectionData;->getParentHref()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const-string/jumbo v2, "mobilePackageCollectionModifiedDate"

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToMobileCreationPackageCollectionData;->getModified()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 553
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->pushHostFragment(Landroid/support/v4/app/Fragment;)V

    .line 556
    return-void
.end method

.method private performPopToRoot()V
    .locals 3

    .prologue
    .line 337
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 338
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 339
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 343
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeCCFilesForceRefreshAssetsList:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;-><init>(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Map;)V

    .line 344
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->postNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;)V

    .line 345
    return-void

    .line 341
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    goto :goto_0
.end method

.method private returnCurrentSelectedFilesToClient()V
    .locals 2

    .prologue
    .line 612
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserSelectFilesHelper;->getCurrentSelectedFilesAsIntentResultData()Landroid/content/Intent;

    move-result-object v1

    .line 613
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetViewBrowserFragmentHostActivity;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetViewBrowserFragmentHostActivity;->handleOpenSelectedFilesAction(Landroid/content/Intent;)V

    .line 614
    return-void
.end method

.method private returnCurrentSelectedPhotosToClient()V
    .locals 2

    .prologue
    .line 617
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserSelectFilesHelper;->getCurrentSelectedPhotosAsIntentResultData()Landroid/content/Intent;

    move-result-object v1

    .line 618
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetViewBrowserFragmentHostActivity;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetViewBrowserFragmentHostActivity;->handleOpenSelectedFilesAction(Landroid/content/Intent;)V

    .line 619
    return-void
.end method

.method private showCCSectionMyAssets()V
    .locals 3

    .prologue
    .line 509
    .line 510
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->browserConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserConfiguration;

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory;->getBaseHostFragmentFromClientBundle(Landroid/content/Context;Landroid/os/Bundle;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserConfiguration;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewBaseFragment;

    move-result-object v0

    .line 511
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->showFragmentAsRoot(Landroid/support/v4/app/Fragment;)V

    .line 512
    return-void
.end method

.method private showCCSectionMyAssetsCollection(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V
    .locals 3

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->fixDataSourceArgumentsForAssets()V

    .line 222
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->browserConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserConfiguration;

    invoke-static {v0, v1, v2, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory;->getBaseHostFragmentFromClientBundle(Landroid/content/Context;Landroid/os/Bundle;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserConfiguration;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewBaseFragment;

    move-result-object v0

    .line 223
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->showFragmentAsRoot(Landroid/support/v4/app/Fragment;)V

    .line 224
    return-void
.end method

.method private showCCSectionMyLibraries()V
    .locals 2

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory;->getHostFragmentForDataSource(Landroid/content/Context;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewBaseFragment;

    move-result-object v0

    .line 505
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->showFragmentAsRoot(Landroid/support/v4/app/Fragment;)V

    .line 506
    return-void
.end method

.method private showCCSectionMyLibrary(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 228
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;-><init>()V

    .line 229
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 230
    const-string/jumbo v2, "designLibraryID"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 232
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->showFragmentAsRoot(Landroid/support/v4/app/Fragment;)V

    .line 233
    return-void
.end method

.method private showMyAccountView()V
    .locals 4

    .prologue
    .line 623
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment;-><init>()V

    .line 624
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 625
    const-string/jumbo v2, "ADOBE_CLOUD"

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->getBrowserConfiguration()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserConfiguration;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 626
    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 627
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->pushHostFragment(Landroid/support/v4/app/Fragment;)V

    .line 628
    return-void
.end method

.method private signOutCurrentUser()V
    .locals 1

    .prologue
    .line 608
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetViewBrowserFragmentHostActivity;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetViewBrowserFragmentHostActivity;->handleUserSignOutAction()V

    .line 609
    return-void
.end method

.method private startWithClientArguments()V
    .locals 4

    .prologue
    .line 186
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->extraConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserExtraConfiguration;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserExtraConfiguration;->startWithCollection()Ljava/lang/String;

    move-result-object v2

    .line 188
    const/4 v0, 0x0

    .line 190
    if-eqz v2, :cond_0

    .line 191
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->collectionFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 195
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->extraConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserExtraConfiguration;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserExtraConfiguration;->shouldShowOnlyAssets()Z

    move-result v1

    .line 196
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->extraConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserExtraConfiguration;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserExtraConfiguration;->showLibraryItem()Z

    move-result v3

    .line 197
    if-nez v0, :cond_3

    .line 198
    if-eqz v1, :cond_1

    .line 199
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->showCCSectionMyAssets()V

    .line 217
    :goto_1
    return-void

    .line 192
    :catch_0
    move-exception v1

    .line 193
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0

    .line 203
    :cond_1
    if-eqz v3, :cond_2

    .line 204
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->showCCSectionMyLibraries()V

    goto :goto_1

    .line 206
    :cond_2
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->showCCSectionMyAssets()V

    goto :goto_1

    .line 210
    :cond_3
    if-nez v3, :cond_4

    .line 211
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->showCCSectionMyAssetsCollection(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    goto :goto_1

    .line 214
    :cond_4
    invoke-direct {p0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->showCCSectionMyLibrary(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public closeIfFabOpen()Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 161
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 162
    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->rootViewId:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 163
    instance-of v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewBaseFragment;

    if-nez v1, :cond_0

    .line 164
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 181
    :goto_0
    return-object v0

    .line 165
    :cond_0
    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->rootViewId:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewBaseFragment;

    .line 166
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 167
    instance-of v2, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 168
    check-cast v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->isFloatingMenuExpanded()Ljava/lang/Boolean;

    move-result-object v1

    .line 169
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 170
    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->collapseFloatingActionMenu()V

    move-object v0, v1

    goto :goto_0

    .line 172
    :cond_1
    instance-of v2, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;

    if-eqz v2, :cond_3

    .line 173
    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;

    .line 174
    if-nez v0, :cond_2

    .line 175
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 177
    :cond_2
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->isFloatingMenuExpanded()Ljava/lang/Boolean;

    move-result-object v1

    .line 178
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 179
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->collapseFloatingActionMenu()V

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public getBrowserConfiguration()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserConfiguration;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->browserConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserConfiguration;

    return-object v0
.end method

.method public handleOnActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 355
    if-ne p2, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->isAOneUpActivityRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    const/16 v0, 0x857

    if-ne p1, v0, :cond_2

    .line 358
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->returnCurrentSelectedPhotosToClient()V

    .line 365
    :cond_0
    :goto_0
    if-ne p2, v1, :cond_1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->isNotSelfDelete(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 368
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->setShouldInvalidateCollection(Z)V

    .line 369
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    .line 372
    :cond_1
    return-void

    .line 361
    :cond_2
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->returnCurrentSelectedFilesToClient()V

    goto :goto_0
.end method

.method public handleOnBackPressed()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 325
    const-string/jumbo v0, "MainBrowserFragment"

    const-string/jumbo v1, "handleOnBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->closeIfFabOpen()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    :goto_0
    return v2

    .line 329
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 330
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    goto :goto_0
.end method

.method public isAtRootFragment()Z
    .locals 1

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 349
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .line 350
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotSelfDelete(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 375
    if-eqz p1, :cond_0

    const-string/jumbo v1, "SELF_DELTE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public navigateToCollection(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Z)V
    .locals 3

    .prologue
    .line 94
    const-string/jumbo v0, "MainBrowserFragment"

    const-string/jumbo v1, "navigateToCollection"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->assetViewFragmentHostActivity:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetViewBrowserFragmentHostActivity;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->assetViewFragmentHostActivity:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetViewBrowserFragmentHostActivity;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetViewBrowserFragmentHostActivity;->hideCollaborationFrameOnBackPressed()V

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, p1, v1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory;->getAssetViewFragmentDetails(Landroid/content/Context;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;Landroid/os/Bundle;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory$AdobeAssetViewFragmentDetails;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory$AdobeAssetViewFragmentDetails;->getArgumentsBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "ASSET_CONTAINER_IS_READ_ONLY"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 102
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory$AdobeAssetViewFragmentDetails;->getClassTag()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory$AdobeAssetViewFragmentDetails;->getArgumentsBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 102
    invoke-static {v1, v2, v0}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewBaseFragment;

    .line 104
    instance-of v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;

    if-nez v1, :cond_1

    .line 105
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->pushHostFragment(Landroid/support/v4/app/Fragment;)V

    .line 107
    :cond_1
    return-void
.end method

.method public navigateToCollectionInDocProvider(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Z)V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->assetViewFragmentHostActivity:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetViewBrowserFragmentHostActivity;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->assetViewFragmentHostActivity:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetViewBrowserFragmentHostActivity;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetViewBrowserFragmentHostActivity;->hideCollaborationFrameOnBackPressed()V

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, p1, v1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory;->getAssetViewFragmentDetails(Landroid/content/Context;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;Landroid/os/Bundle;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory$AdobeAssetViewFragmentDetails;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory$AdobeAssetViewFragmentDetails;->getArgumentsBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "ASSET_CONTAINER_IS_READ_ONLY"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 118
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory$AdobeAssetViewFragmentDetails;->getClassTag()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory$AdobeAssetViewFragmentDetails;->getArgumentsBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 118
    invoke-static {v1, v2, v0}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewBaseFragment;

    .line 120
    instance-of v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;

    if-eqz v1, :cond_1

    .line 121
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->pushHostFragment(Landroid/support/v4/app/Fragment;)V

    .line 123
    :cond_1
    return-void
.end method

.method public navigateToPhotoCollection(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToPhotoCollectionCommand;)V
    .locals 4

    .prologue
    .line 127
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;-><init>()V

    .line 128
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory;->getAssetViewConfigurationBundle(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;Landroid/os/Bundle;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)Landroid/os/Bundle;

    move-result-object v1

    .line 130
    const-string/jumbo v2, "ASSET_CONTAINER_TARGET_COLLECTION_GUID"

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToPhotoCollectionCommand;->getCollectionGUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string/jumbo v2, "ASSET_CONTAINER_TARGET_COLLECTION_NAME"

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToPhotoCollectionCommand;->getCollectionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string/jumbo v2, "ASSET_CONTAINER_TARGET_COLLECTION_CATALOG_GUID"

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToPhotoCollectionCommand;->getCatalogGUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string/jumbo v2, "ASSET_CONTAINER_TARGET_COLLECTION_CATALOG_NAME"

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToPhotoCollectionCommand;->getCatalogName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewBaseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->pushHostFragment(Landroid/support/v4/app/Fragment;)V

    .line 137
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 265
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 267
    if-nez p1, :cond_1

    .line 268
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->startWithClientData()V

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->startWithClientData()V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 288
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 289
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetViewBrowserFragmentHostActivity;

    if-eqz v0, :cond_0

    .line 290
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetViewBrowserFragmentHostActivity;

    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->assetViewFragmentHostActivity:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetViewBrowserFragmentHostActivity;

    .line 292
    :cond_0
    return-void
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 150
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 73
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment$BrowserCommandsHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment$BrowserCommandsHandler;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment$1;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->commandsHandler:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment$BrowserCommandsHandler;

    .line 76
    invoke-virtual {p0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->setRetainInstance(Z)V

    .line 77
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 78
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory;->getConfigurationFromBundle(Landroid/os/Bundle;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->browserConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserConfiguration;

    .line 79
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory;->getExtraConfigurationFromBundle(Landroid/os/Bundle;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserExtraConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->extraConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserExtraConfiguration;

    .line 82
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->browserConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserConfiguration;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserConfiguration;->getDataSourcesFilter()Ljava/util/EnumSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->browserConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserConfiguration;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserConfiguration;->getDataSourcesFilter()Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->getInstance()Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->browserConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserConfiguration;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserConfiguration;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 84
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->getInstance()Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->loadDataSources(Z)V

    .line 86
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, -0x1

    .line 251
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 252
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    const/16 v1, 0x1234

    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->rootViewId:I

    .line 256
    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->rootViewId:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 258
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachabilityUtil;->getSharedInstance()Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    .line 260
    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 320
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachabilityUtil;->destorySharedInstance()V

    .line 321
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 322
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .prologue
    .line 635
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 636
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    .line 637
    if-eqz v0, :cond_1

    .line 638
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 639
    if-eqz v0, :cond_0

    .line 640
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0

    .line 644
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 303
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 304
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->popToRootOnResume:Z

    if-eqz v0, :cond_0

    .line 305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->popToRootOnResume:Z

    .line 306
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->performPopToRoot()V

    .line 308
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->commandsHandler:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment$BrowserCommandsHandler;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment$BrowserCommandsHandler;->onStart()V

    .line 298
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 299
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->commandsHandler:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment$BrowserCommandsHandler;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment$BrowserCommandsHandler;->onStop()V

    .line 314
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 315
    return-void
.end method

.method pushHostFragment(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 142
    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->rootViewId:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 143
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 144
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 145
    return-void
.end method

.method showFragmentAsRoot(Landroid/support/v4/app/Fragment;)V
    .locals 3

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 156
    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->rootViewId:I

    const-string/jumbo v2, "CURRENT_FRAGMENT"

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 157
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 158
    return-void
.end method

.method public startWithClientData()V
    .locals 2

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_0

    .line 241
    const-string/jumbo v1, "NON_MAIN_BROWSER_FRAGMENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 242
    if-eqz v0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 245
    :cond_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->startWithClientArguments()V

    goto :goto_0
.end method
