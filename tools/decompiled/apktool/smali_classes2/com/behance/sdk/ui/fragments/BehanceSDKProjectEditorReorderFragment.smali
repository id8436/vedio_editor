.class public Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment;
.super Landroid/support/design/widget/BottomSheetDialogFragment;
.source "BehanceSDKProjectEditorReorderFragment.java"

# interfaces
.implements Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKDragListener;


# instance fields
.field private headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

.field private mBehavior:Landroid/support/design/widget/BottomSheetBehavior;

.field private projectEditorReorderRecycler:Landroid/support/v7/widget/RecyclerView;

.field private touchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment;)Landroid/support/design/widget/BottomSheetBehavior;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment;->mBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/support/design/widget/BottomSheetDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const/4 v0, 0x0

    sget v1, Lcom/behance/sdk/R$style;->BsdkProjectEditorBottomSheetTheme:I

    invoke-virtual {p0, v0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment;->setStyle(II)V

    .line 45
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 50
    invoke-super {p0, p1}, Landroid/support/design/widget/BottomSheetDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/BottomSheetDialog;

    .line 51
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "FRAGMENT_TAG_PROJECT_EDITOR_HEADLESS_FRAGMENT"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    iput-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    .line 53
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$layout;->bsdk_fragment_project_editor_reorder:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 54
    sget v1, Lcom/behance/sdk/R$id;->project_editor_reorder_recycler:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment;->projectEditorReorderRecycler:Landroid/support/v7/widget/RecyclerView;

    .line 56
    invoke-virtual {v0, v2}, Landroid/support/design/widget/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 57
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Landroid/support/design/widget/BottomSheetBehavior;->from(Landroid/view/View;)Landroid/support/design/widget/BottomSheetBehavior;

    move-result-object v1

    iput-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment;->mBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    .line 58
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment;->mBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-virtual {v1, v5}, Landroid/support/design/widget/BottomSheetBehavior;->setSkipCollapsed(Z)V

    .line 59
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/behance/sdk/util/BehanceSDKUIUtils;->getActionBarSize(Landroid/content/Context;)I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {v2, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 60
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment;->projectEditorReorderRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/behance/sdk/util/BehanceSDKUIUtils;->getActionBarSize(Landroid/content/Context;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setMinimumHeight(I)V

    .line 62
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment;->projectEditorReorderRecycler:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v5, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 63
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment;->projectEditorReorderRecycler:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorReorderRecyclerAdapter;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v4}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getProjectModules()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, v4, p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorReorderRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKDragListener;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 64
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment;->projectEditorReorderRecycler:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/behance/sdk/ui/decorators/BehanceSDKSpaceItemDecorationList;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/behance/sdk/R$dimen;->bsdk_reorder_list_spacing:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/behance/sdk/ui/decorators/BehanceSDKSpaceItemDecorationList;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 66
    new-instance v2, Landroid/support/v7/widget/helper/ItemTouchHelper;

    new-instance v3, Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKTouchHelperCallback;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment;->projectEditorReorderRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorReorderRecyclerAdapter;

    invoke-direct {v3, v1}, Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKTouchHelperCallback;-><init>(Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKAdapterTouchHelper;)V

    invoke-direct {v2, v3}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    iput-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment;->touchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 67
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment;->touchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment;->projectEditorReorderRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 69
    return-object v0
.end method

.method public onDragActionComplete(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->setProjectModules(Ljava/util/List;)V

    .line 93
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "FRAGMENT_TAG_CONTENT"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->refreshRecycler()V

    .line 94
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment;->dismiss()V

    .line 96
    :cond_0
    return-void
.end method

.method public onDragStarted(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment;->touchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->startDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 88
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 74
    invoke-super {p0}, Landroid/support/design/widget/BottomSheetDialogFragment;->onStart()V

    .line 76
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment;->mBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setState(I)V

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment$1;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment$1;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 83
    return-void
.end method
