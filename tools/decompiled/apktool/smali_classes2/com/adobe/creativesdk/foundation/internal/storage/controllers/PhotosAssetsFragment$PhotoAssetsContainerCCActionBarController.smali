.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment$PhotoAssetsContainerCCActionBarController;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;
.source "PhotosAssetsFragment.java"


# instance fields
.field private _takePhotoButton:Landroid/view/MenuItem;

.field private _uploadButton:Landroid/view/MenuItem;

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;


# direct methods
.method protected constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;)V
    .locals 0

    .prologue
    .line 680
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment$PhotoAssetsContainerCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;

    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;)V

    return-void
.end method

.method private refreshOptionsInternal()V
    .locals 0

    .prologue
    .line 707
    return-void
.end method


# virtual methods
.method protected handleOptionItemSelect(I)Z
    .locals 1

    .prologue
    .line 702
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;->handleOptionItemSelect(I)Z

    move-result v0

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .prologue
    .line 686
    invoke-super {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 687
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 697
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment$PhotoAssetsContainerCCActionBarController;->refreshOptionsInternal()V

    .line 698
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 699
    return-void
.end method

.method public refreshOptionItems()V
    .locals 0

    .prologue
    .line 691
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment$PhotoAssetsContainerCCActionBarController;->refreshOptionsInternal()V

    .line 692
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;->refreshOptionItems()V

    .line 693
    return-void
.end method
