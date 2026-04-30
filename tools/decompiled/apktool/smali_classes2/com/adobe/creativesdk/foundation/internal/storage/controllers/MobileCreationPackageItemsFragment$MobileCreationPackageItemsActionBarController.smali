.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsActionBarController;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;
.source "MobileCreationPackageItemsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;


# direct methods
.method protected constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;

    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;)V

    return-void
.end method


# virtual methods
.method protected handleOptionItemSelect(I)Z
    .locals 1

    .prologue
    .line 382
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;->handleOptionItemSelect(I)Z

    move-result v0

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .prologue
    .line 369
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 379
    return-void
.end method

.method public refreshOptionItems()V
    .locals 0

    .prologue
    .line 374
    return-void
.end method
