.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AdobeCCActionBarController;
.source "DesignLibraryItemsFragment.java"


# instance fields
.field private _collaboratorMenuItem:Landroid/view/MenuItem;

.field private _deleteItem:Landroid/view/MenuItem;

.field private _renameItem:Landroid/view/MenuItem;

.field private _shareItem:Landroid/view/MenuItem;

.field private _unsuscribeItem:Landroid/view/MenuItem;

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;


# direct methods
.method protected constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;)V
    .locals 0

    .prologue
    .line 811
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AdobeCCActionBarController;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;)V

    return-void
.end method


# virtual methods
.method protected handleOptionItemSelect(I)Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 877
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_asset_browser_collaborator_menu:I

    if-ne p1, v0, :cond_2

    .line 879
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->access$600(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getCompositeHref()Ljava/net/URI;

    move-result-object v0

    .line 880
    if-nez v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_library_not_synced_yet:I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 958
    :goto_0
    return v0

    .line 885
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->access$600(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getCompositeHref()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 886
    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 887
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 888
    :cond_1
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_MENU_COLLABORATION:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    invoke-virtual {v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->postActionCommand(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;Ljava/lang/Object;)V

    move v0, v1

    .line 889
    goto :goto_0

    .line 891
    :cond_2
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_library_collection_rename:I

    if-ne p1, v0, :cond_3

    .line 894
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController$1;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;)V

    .line 901
    const-string/jumbo v2, "mobile.ccmobile.operations.libraryRename"

    invoke-static {v2, v0, v3}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSDKReporter;->trackAction(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 903
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 904
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->access$500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditOperation;->ADOBE_LIBRARY_COMP_EDIT_OPERATION_RENAME:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditOperation;

    new-instance v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController$2;

    invoke-direct {v4, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;)V

    invoke-static {v2, v0, v3, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditManager;->createSession(Ljava/lang/String;Landroid/support/v4/app/FragmentManager;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditOperation;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/IAdobeEditLibraryCallback;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;

    move-result-object v0

    .line 918
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController$3;

    invoke-direct {v2, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController$3;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;)V

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;->startEditSession(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesRenameDialogDismissController;)V

    move v0, v1

    .line 925
    goto :goto_0

    .line 927
    :cond_3
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_library_collection_share:I

    if-ne p1, v0, :cond_4

    .line 929
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->access$1500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;)V

    move v0, v1

    .line 930
    goto :goto_0

    .line 932
    :cond_4
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_library_collection_delete:I

    if-ne p1, v0, :cond_5

    .line 934
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController$4;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController$4;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;)V

    .line 941
    const-string/jumbo v2, "mobile.ccmobile.operations.libraryDelete"

    invoke-static {v2, v0, v3}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSDKReporter;->trackAction(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 943
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 944
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;

    invoke-direct {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;-><init>()V

    .line 945
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->access$500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;->setLibraryComposite(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V

    .line 946
    const-string/jumbo v3, "Delete Library"

    invoke-virtual {v2, v0, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    move v0, v1

    .line 947
    goto/16 :goto_0

    .line 949
    :cond_5
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_library_collection_unsuscribe:I

    if-ne p1, v0, :cond_6

    .line 950
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 951
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;

    invoke-direct {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;-><init>()V

    .line 952
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->access$500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;->setLibraryComposite(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V

    .line 953
    const-string/jumbo v3, "Unsuscribe Library"

    invoke-virtual {v2, v0, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    move v0, v1

    .line 954
    goto/16 :goto_0

    .line 958
    :cond_6
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AdobeCCActionBarController;->handleOptionItemSelect(I)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public handlePostOnCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 871
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AdobeCCActionBarController;->handlePostOnCreate(Landroid/os/Bundle;)V

    .line 872
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 822
    invoke-super {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AdobeCCActionBarController;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 823
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$menu;->adobe_assetview_library_items_container_menu:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 825
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_library_collection_unsuscribe:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;->_unsuscribeItem:Landroid/view/MenuItem;

    .line 826
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_asset_browser_collaborator_menu:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;->_collaboratorMenuItem:Landroid/view/MenuItem;

    .line 827
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_library_collection_rename:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;->_renameItem:Landroid/view/MenuItem;

    .line 828
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_library_collection_share:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;->_shareItem:Landroid/view/MenuItem;

    .line 829
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_library_collection_delete:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;->_deleteItem:Landroid/view/MenuItem;

    .line 830
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->access$1300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->access$1300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->isPrivateCloud()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;->_collaboratorMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 832
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;->_shareItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->access$500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getCollaboration()Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    move-result-object v0

    .line 837
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->access$500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->isPublic()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 838
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;->_renameItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 839
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;->_shareItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 840
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;->_collaboratorMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 841
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;->_deleteItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 842
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;->_unsuscribeItem:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 867
    :goto_0
    return-void

    .line 845
    :cond_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;->_unsuscribeItem:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 846
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$9;->$SwitchMap$com$adobe$creativesdk$foundation$storage$AdobeCollaborationType:[I

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 849
    :pswitch_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->access$500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 850
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;->_renameItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 851
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;->_shareItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 853
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;->_deleteItem:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_library_remove_myself:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 856
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;->_deleteItem:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_leave_library:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 846
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 970
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AdobeCCActionBarController;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 971
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->access$500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 972
    const/4 v0, 0x0

    .line 973
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->isPrivateCloud()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 974
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_asset_browser_collaborator_menu:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 978
    :cond_0
    return-void
.end method

.method public refreshOptionItems()V
    .locals 0

    .prologue
    .line 965
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AdobeCCActionBarController;->refreshOptionItems()V

    .line 966
    return-void
.end method
