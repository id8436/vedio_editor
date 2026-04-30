.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;
.source "CCMultiFilesProviderFragment.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeAssetViewEditFragmentControllerCallback;


# static fields
.field private static final T:Ljava/lang/String;


# instance fields
.field private _actionBarToolbar:Landroid/support/v7/widget/Toolbar;

.field private _assetCount:I

.field private _backButton:Landroid/graphics/drawable/Drawable;

.field private _content:Landroid/view/View;

.field private _crossButton:Landroid/graphics/drawable/Drawable;

.field private _isGridView:Z

.field private _reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

.field protected alertDialog:Landroid/app/AlertDialog;

.field protected alertNegativeButton:Landroid/view/View;

.field protected alertPositiveButton:Landroid/view/View;

.field protected alertText:Landroid/widget/TextView;

.field protected builder:Landroid/app/AlertDialog$Builder;

.field public dialogView:Landroid/view/View;

.field private isRootViewEnabled:Z

.field private mCallback:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IDocumentPickerCallback;

.field private mDoneTextView:Landroid/widget/TextView;

.field weakActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IDocumentPickerCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->T:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->_isGridView:Z

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->isRootViewEnabled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IDocumentPickerCallback;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->mCallback:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IDocumentPickerCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->getSelectedAssets()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->T:Ljava/lang/String;

    return-object v0
.end method

.method private clearAndDisableButtons()V
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->isGridView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->_gridAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderGridView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderGridView;->clearSelection()V

    .line 161
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->_assetCount:I

    .line 162
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->handleNoAssetSelection()V

    .line 163
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->_listAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderListView;->clearSelection()V

    goto :goto_0
.end method

.method private disableRootView()V
    .locals 1

    .prologue
    .line 320
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->isGridView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->_gridAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderGridView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderGridView;->disableController()V

    .line 325
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->isRootViewEnabled:Z

    .line 327
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->_listAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderListView;->disableController()V

    goto :goto_0
.end method

.method private enableRootView()V
    .locals 1

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->isGridView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->_gridAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderGridView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderGridView;->enableController()V

    .line 316
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->isRootViewEnabled:Z

    .line 317
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->_listAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderListView;->enableController()V

    goto :goto_0
.end method

.method private getResourceString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSelectedAssets()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 299
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->_listAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->_listAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderListView;->getSelectedAssets()Ljava/util/ArrayList;

    move-result-object v0

    .line 304
    :goto_0
    return-object v0

    .line 302
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->T:Ljava/lang/String;

    const-string/jumbo v1, "getSelectedAssets listController null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGridView()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->_isGridView:Z

    return v0
.end method

.method private setupActionBarCustomFont()V
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->_actionBarToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->_actionBarToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$color;->adobe_loki_app_bar:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    .line 194
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->_content:Landroid/view/View;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_asset_view_edit_fragment_title:I

    invoke-direct {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKActionBarController;->setTitleWithColor(Landroid/view/View;Ljava/lang/String;I)V

    .line 196
    :cond_0
    return-void
.end method


# virtual methods
.method protected addFabToRootView()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method protected createActionBarController()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;
    .locals 1

    .prologue
    .line 336
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment$CCFilesActionBarControllerWithEditControls;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment$CCFilesActionBarControllerWithEditControls;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;)V

    return-object v0
.end method

.method protected getContainerNameForRoot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_asset_view_edit_fragment_title:I

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getEditCommandsHandler()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesEditCommandsHandler;
    .locals 1

    .prologue
    .line 396
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment$CustomEditCommandsHandler;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment$CustomEditCommandsHandler;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;)V

    return-object v0
.end method

.method public handleAssetClickAction(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 332
    return-void
.end method

.method protected handleBackPress()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 212
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->T:Ljava/lang/String;

    const-string/jumbo v2, "handleBackPress"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->_assetCount:I

    if-lez v1, :cond_0

    .line 214
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->_assetCount:I

    .line 215
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->enableRootView()V

    .line 216
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->handleNoAssetSelection()V

    .line 217
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->isGridView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->_gridAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;->clearSelection()V

    .line 221
    :goto_0
    const/4 v0, 0x1

    .line 223
    :cond_0
    return v0

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->_listAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->clearSelection()V

    goto :goto_0
.end method

.method public handleMultipleAssetSelection(I)V
    .locals 3

    .prologue
    .line 267
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->_assetCount:I

    .line 268
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->_content:Landroid/view/View;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->select_title:I

    invoke-virtual {p0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKActionBarController;->setTitleWithColor(Landroid/view/View;Ljava/lang/String;I)V

    .line 269
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->mDoneTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 270
    return-void
.end method

.method protected handleNetworkStatusChange(Z)V
    .locals 1

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->isRootViewEnabled:Z

    .line 134
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->disableRootView()V

    .line 135
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->clearAndDisableButtons()V

    .line 144
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->isRootViewEnabled:Z

    if-eqz v0, :cond_1

    .line 140
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->enableRootView()V

    goto :goto_0

    .line 142
    :cond_1
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->disableRootView()V

    goto :goto_0
.end method

.method public handleNoAssetSelection()V
    .locals 3

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->enableRootView()V

    .line 278
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->_assetCount:I

    .line 279
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->_content:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->_content:Landroid/view/View;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_asset_view_edit_fragment_title:I

    invoke-direct {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKActionBarController;->setTitleWithColor(Landroid/view/View;Ljava/lang/String;I)V

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->mDoneTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 283
    return-void
.end method

.method public handlePopupMenuClick(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public handlePostOnCreateView(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 251
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->handlePostOnCreateView(Landroid/os/Bundle;)V

    .line 252
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->setupActionBarCustomFont()V

    .line 253
    return-void
.end method

.method public handleSingleAssetSelection()V
    .locals 3

    .prologue
    .line 291
    const/4 v0, 0x1

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->_assetCount:I

    .line 292
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->_content:Landroid/view/View;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->_assetCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->select_title:I

    invoke-virtual {p0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKActionBarController;->setTitleWithColor(Landroid/view/View;Ljava/lang/String;I)V

    .line 293
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->mDoneTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    return-void
.end method

.method public navigateToCollection(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavBaseCommandData;)V
    .locals 2

    .prologue
    .line 119
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToAssetFolderData;

    .line 120
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToCollectionCommand;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToCollectionCommand;-><init>()V

    .line 121
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToAssetFolderData;->getCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToCollectionCommand;->setCollection(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    .line 122
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToAssetFolderData;->getDataSourceType()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToCollectionCommand;->setDataSourceType(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;)V

    .line 123
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToAssetFolderData;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->_assetViewConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToCollectionCommand;->setReadOnly(Z)V

    .line 124
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->NAVIGATE_TO_COLLECTION_DOC_PROVIDER:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    invoke-virtual {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->postActionCommand(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;Ljava/lang/Object;)V

    .line 125
    return-void

    .line 123
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 96
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IDocumentPickerCallback;

    if-eqz v0, :cond_2

    .line 97
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->onAttach(Landroid/content/Context;)V

    .line 98
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IDocumentPickerCallback;

    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->mCallback:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IDocumentPickerCallback;

    .line 99
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->_actionBarToolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->mCallback:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IDocumentPickerCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IDocumentPickerCallback;->getActionBarToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->_actionBarToolbar:Landroid/support/v7/widget/Toolbar;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->_content:Landroid/view/View;

    if-nez v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->mCallback:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IDocumentPickerCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IDocumentPickerCallback;->getContentView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->_content:Landroid/view/View;

    .line 108
    :cond_1
    :goto_0
    return-void

    .line 106
    :cond_2
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->T:Ljava/lang/String;

    const-string/jumbo v1, "context should be instance of IDocumentPickerCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 65
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->T:Ljava/lang/String;

    const-string/jumbo v2, "onCreate"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->setRetainInstance(Z)V

    .line 68
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache$ImageCacheParams;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache$ImageCacheParams;-><init>()V

    .line 69
    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache$ImageCacheParams;->setMemCacheSizePercent(F)V

    .line 71
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    .line 72
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache$ImageCacheParams;)V

    .line 74
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_doc_actionbar_done:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->mDoneTextView:Landroid/widget/TextView;

    .line 76
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->asset_edit_home_as_up_cross:I

    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->_crossButton:Landroid/graphics/drawable/Drawable;

    .line 77
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->asset_edit_home_as_up_back:I

    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->_backButton:Landroid/graphics/drawable/Drawable;

    .line 79
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserVisualLayout;->ADOBE_STORAGE_VISUAL_LAYOUT_LISTVIEW:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserVisualLayout;

    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonLearnedSettings;->lastVisualLayout()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserVisualLayout;

    move-result-object v2

    if-eq v0, v2, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->_isGridView:Z

    .line 80
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 85
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->T:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->clearCache()V

    .line 88
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    .line 90
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->onDestroy()V

    .line 91
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 112
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->T:Ljava/lang/String;

    const-string/jumbo v1, "onDetach"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->onDetach()V

    .line 115
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->onHiddenChanged(Z)V

    .line 150
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 228
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->T:Ljava/lang/String;

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->onStart()V

    .line 231
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditManager;->isEditInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->reloadAssetItemsFromDataSourceDueToSwipeRefresh()V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->mDoneTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->mDoneTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment$1;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 258
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->T:Ljava/lang/String;

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->onStop()V

    .line 260
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->mDoneTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->mDoneTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    :cond_0
    return-void
.end method

.method protected setupGridViewController()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;
    .locals 2

    .prologue
    .line 167
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderGridView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderGridView;-><init>(Landroid/content/Context;)V

    .line 168
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderGridView;->setReusableImageWorker(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;)V

    .line 169
    invoke-virtual {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderGridView;->setControllerCallback(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeAssetViewEditFragmentControllerCallback;)V

    .line 170
    return-object v0
.end method

.method protected setupSectionalListViewController()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;
    .locals 2

    .prologue
    .line 180
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderListView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderListView;-><init>(Landroid/content/Context;)V

    .line 181
    invoke-virtual {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderListView;->setControllerCallback(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeAssetViewEditFragmentControllerCallback;)V

    .line 182
    return-object v0
.end method

.method protected showAssetsAsGridAnimate(Z)V
    .locals 0

    .prologue
    .line 201
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->showAssetsAsListAnimate(Z)V

    .line 202
    return-void
.end method
