.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXCompositionOneUpViewerActivity;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXMobilePackageItemOneUpViewerActivity;
.source "AdobeUXCompositionOneUpViewerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXMobilePackageItemOneUpViewerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected updateTitleOfActivity()V
    .locals 3

    .prologue
    .line 20
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXCompositionOneUpViewerActivity;->mPhotoNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXCompositionOneUpViewerActivity;->mobilePackageItemsOneUpViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobilePackageItemsOneUpViewController;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobilePackageItemsOneUpViewController;->getPackage()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;->getName()Ljava/lang/String;

    move-result-object v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXCompositionOneUpViewerActivity;->mobilePackageItemsOneUpViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobilePackageItemsOneUpViewController;

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXCompositionOneUpViewerActivity;->mPos:I

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobilePackageItemsOneUpViewController;->getItemAtPos(I)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    move-result-object v1

    .line 25
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_lineordrawcollection_singular:I

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeLocalizedMgr;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    .line 26
    instance-of v2, v1, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetCompPage;

    if-eqz v2, :cond_1

    .line 27
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_composition_collection_singular:I

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeLocalizedMgr;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    .line 32
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXCompositionOneUpViewerActivity;->setActionBarTitle(Ljava/lang/String;)V

    .line 33
    return-void

    .line 28
    :cond_1
    instance-of v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSMixPage;

    if-eqz v1, :cond_0

    .line 29
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_psmix_collection_singular:I

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeLocalizedMgr;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
