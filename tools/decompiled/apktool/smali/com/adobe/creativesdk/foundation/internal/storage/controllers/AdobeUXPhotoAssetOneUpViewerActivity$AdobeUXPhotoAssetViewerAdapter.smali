.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity$AdobeUXPhotoAssetViewerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "AdobeUXPhotoAssetOneUpViewerActivity.java"


# instance fields
.field protected _fragmentInstance:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity$AdobeUXPhotoAssetViewerAssetFragment;

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .prologue
    .line 570
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity$AdobeUXPhotoAssetViewerAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;

    .line 571
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 572
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity$AdobeUXPhotoAssetViewerAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->count()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 581
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity$AdobeUXPhotoAssetViewerAssetFragment;->newInstance(I)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity$AdobeUXPhotoAssetViewerAssetFragment;

    move-result-object v0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity$AdobeUXPhotoAssetViewerAdapter;->_fragmentInstance:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity$AdobeUXPhotoAssetViewerAssetFragment;

    if-eq v0, p3, :cond_0

    move-object v0, p3

    .line 587
    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity$AdobeUXPhotoAssetViewerAssetFragment;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity$AdobeUXPhotoAssetViewerAdapter;->_fragmentInstance:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity$AdobeUXPhotoAssetViewerAssetFragment;

    .line 588
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentStatePagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 589
    return-void
.end method
