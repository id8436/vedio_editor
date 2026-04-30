.class public Lcom/behance/sdk/ui/dialogs/BehanceSDKImagePickerDialogFragment;
.super Landroid/support/design/widget/BottomSheetDialogFragment;
.source "BehanceSDKImagePickerDialogFragment.java"

# interfaces
.implements Lcom/behance/sdk/ui/adapters/BehanceSDKGallerySheetRecyclerAdapter$GalleryCallbacks;


# instance fields
.field private bsdkImagePickerRecycler:Landroid/support/v7/widget/RecyclerView;

.field private callbacks:Lcom/behance/sdk/listeners/IBehanceSDKGalleryPickerCallbacks;

.field private mBehavior:Landroid/support/design/widget/BottomSheetBehavior;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCCSelected()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKImagePickerDialogFragment;->mBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setState(I)V

    .line 70
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKImagePickerDialogFragment;->callbacks:Lcom/behance/sdk/listeners/IBehanceSDKGalleryPickerCallbacks;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKImagePickerDialogFragment;->callbacks:Lcom/behance/sdk/listeners/IBehanceSDKGalleryPickerCallbacks;

    invoke-interface {v0}, Lcom/behance/sdk/listeners/IBehanceSDKGalleryPickerCallbacks;->onCCSelected()V

    .line 72
    :cond_0
    return-void
.end method

.method public onCameraSelected()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKImagePickerDialogFragment;->mBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setState(I)V

    .line 77
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKImagePickerDialogFragment;->callbacks:Lcom/behance/sdk/listeners/IBehanceSDKGalleryPickerCallbacks;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKImagePickerDialogFragment;->callbacks:Lcom/behance/sdk/listeners/IBehanceSDKGalleryPickerCallbacks;

    invoke-interface {v0}, Lcom/behance/sdk/listeners/IBehanceSDKGalleryPickerCallbacks;->onCameraSelected()V

    .line 79
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/support/design/widget/BottomSheetDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const/4 v0, 0x0

    sget v1, Lcom/behance/sdk/R$style;->BsdkProjectEditorBottomSheetTheme:I

    invoke-virtual {p0, v0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKImagePickerDialogFragment;->setStyle(II)V

    .line 39
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/support/design/widget/BottomSheetDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/BottomSheetDialog;

    .line 46
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKImagePickerDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$layout;->bsdk_dialog_image_picker:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 47
    sget v1, Lcom/behance/sdk/R$id;->bsdk_image_picker_recycler:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKImagePickerDialogFragment;->bsdkImagePickerRecycler:Landroid/support/v7/widget/RecyclerView;

    .line 49
    invoke-virtual {v0, v2}, Landroid/support/design/widget/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 50
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Landroid/support/design/widget/BottomSheetBehavior;->from(Landroid/view/View;)Landroid/support/design/widget/BottomSheetBehavior;

    move-result-object v1

    iput-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKImagePickerDialogFragment;->mBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    .line 51
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKImagePickerDialogFragment;->mBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKImagePickerDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKImagePickerDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v3, v3, 0x9

    div-int/lit8 v3, v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/BottomSheetBehavior;->setPeekHeight(I)V

    .line 53
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKImagePickerDialogFragment;->bsdkImagePickerRecycler:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKImagePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKImagePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/behance/sdk/util/BehanceSDKColumnCountUtil;->getImagePickerColumnCount(Landroid/content/Context;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 54
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKImagePickerDialogFragment;->bsdkImagePickerRecycler:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/behance/sdk/ui/decorators/BehanceSDKSpaceItemDecorationGrid;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKImagePickerDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/behance/sdk/R$dimen;->bsdk_gallery_grid_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/behance/sdk/ui/decorators/BehanceSDKSpaceItemDecorationGrid;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 55
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKImagePickerDialogFragment;->bsdkImagePickerRecycler:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/behance/sdk/ui/adapters/BehanceSDKGallerySheetRecyclerAdapter;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKImagePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/behance/sdk/util/BehanceSDKGalleryUtils;->getGalleryImageFilePaths(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, v4, p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKGallerySheetRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/behance/sdk/ui/adapters/BehanceSDKGallerySheetRecyclerAdapter$GalleryCallbacks;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 57
    return-object v0
.end method

.method public onItemSelected(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKImagePickerDialogFragment;->mBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setState(I)V

    .line 63
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKImagePickerDialogFragment;->callbacks:Lcom/behance/sdk/listeners/IBehanceSDKGalleryPickerCallbacks;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKImagePickerDialogFragment;->callbacks:Lcom/behance/sdk/listeners/IBehanceSDKGalleryPickerCallbacks;

    invoke-interface {v0, p1}, Lcom/behance/sdk/listeners/IBehanceSDKGalleryPickerCallbacks;->onFileSelected(Ljava/io/File;)V

    .line 65
    :cond_0
    return-void
.end method

.method public setCallbacks(Lcom/behance/sdk/listeners/IBehanceSDKGalleryPickerCallbacks;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKImagePickerDialogFragment;->callbacks:Lcom/behance/sdk/listeners/IBehanceSDKGalleryPickerCallbacks;

    .line 83
    return-void
.end method
