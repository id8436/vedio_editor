.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderFragment;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;
.source "CCFilesProviderFragment.java"


# static fields
.field public static T:Ljava/lang/String;


# instance fields
.field private mCallback:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IDocumentPickerCallback;

.field private mDoneTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderFragment;->T:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected addFabToRootView()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method protected createActionBarController()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderFragment$CCFilesProviderActionBarController;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderFragment$CCFilesProviderActionBarController;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderFragment;)V

    return-object v0
.end method

.method public handleAssetClickAction(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderFragment;->mCallback:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IDocumentPickerCallback;

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderFragment;->T:Ljava/lang/String;

    const-string/jumbo v1, "handleAssetClickAction"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 62
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderFragment;->mCallback:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IDocumentPickerCallback;

    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IDocumentPickerCallback;->startProvidingDocuments(Ljava/util/ArrayList;)V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderFragment;->T:Ljava/lang/String;

    const-string/jumbo v1, "cannot handle AssetClickAction"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handlePopupMenuClick(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->onAttach(Landroid/content/Context;)V

    .line 39
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IDocumentPickerCallback;

    if-eqz v0, :cond_0

    .line 40
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IDocumentPickerCallback;

    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderFragment;->mCallback:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IDocumentPickerCallback;

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderFragment;->T:Ljava/lang/String;

    const-string/jumbo v1, "context should be instance of IDocumentPickerCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_doc_actionbar_done:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderFragment;->mDoneTextView:Landroid/widget/TextView;

    .line 30
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderFragment;->mDoneTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderFragment;->mDoneTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 33
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->onDetach()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderFragment;->mCallback:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IDocumentPickerCallback;

    .line 53
    return-void
.end method

.method protected showAssetsAsGridAnimate(Z)V
    .locals 0

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderFragment;->showAssetsAsListAnimate(Z)V

    .line 72
    return-void
.end method
