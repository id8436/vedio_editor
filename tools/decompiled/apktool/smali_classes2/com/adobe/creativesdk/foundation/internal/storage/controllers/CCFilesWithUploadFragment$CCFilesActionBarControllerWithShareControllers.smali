.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithShareControllers;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;
.source "CCFilesWithUploadFragment.java"


# instance fields
.field protected _advanceMenuItem:Landroid/view/MenuItem;

.field protected _createNewFolderItem:Landroid/view/MenuItem;

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;


# direct methods
.method private constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)V
    .locals 0

    .prologue
    .line 1333
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithShareControllers;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$1;)V
    .locals 0

    .prologue
    .line 1333
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithShareControllers;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)V

    return-void
.end method


# virtual methods
.method protected handleOptionItemSelect(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1367
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_menu_advance:I

    if-ne p1, v1, :cond_0

    .line 1368
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithShareControllers;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->access$1700(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)V

    .line 1376
    :goto_0
    return v0

    .line 1371
    :cond_0
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_menu_create_new_folder:I

    if-ne p1, v1, :cond_1

    .line 1373
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithShareControllers;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->access$700(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)V

    goto :goto_0

    .line 1376
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .prologue
    .line 1339
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$menu;->adobe_menu_share:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1340
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_menu_advance:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithShareControllers;->_advanceMenuItem:Landroid/view/MenuItem;

    .line 1341
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithShareControllers;->_advanceMenuItem:Landroid/view/MenuItem;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithShareControllers$1;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithShareControllers$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithShareControllers;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1348
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_menu_create_new_folder:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithShareControllers;->_createNewFolderItem:Landroid/view/MenuItem;

    .line 1349
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithShareControllers;->_createNewFolderItem:Landroid/view/MenuItem;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithShareControllers$2;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithShareControllers$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithShareControllers;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1356
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1358
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithShareControllers;->_advanceMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1359
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithShareControllers;->_advanceMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1360
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithShareControllers;->_createNewFolderItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 1361
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithShareControllers;->_createNewFolderItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1362
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithShareControllers;->refreshOptionItems()V

    .line 1363
    return-void
.end method

.method public refreshOptionItems()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1382
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;->refreshOptionItems()V

    .line 1383
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithShareControllers;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->isNetworkOnline()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1384
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithShareControllers;->_advanceMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1385
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithShareControllers;->_advanceMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1386
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithShareControllers;->_createNewFolderItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 1387
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithShareControllers;->_createNewFolderItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1389
    :cond_1
    return-void
.end method
