.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;
.source "StaggeredGridFolderCellView.java"


# static fields
.field private static final T:Ljava/lang/String;


# instance fields
.field private _editDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesEditDelegate;

.field private _newSelectionFrame:Landroid/view/View;

.field private isSelected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;->T:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;->isSelected:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;->T:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;->handleAssetSelectionToggle()V

    return-void
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;->_stagerredLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;->_newSelectionFrame:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;->_stagerredLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;)Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;->isSelected:Z

    return v0
.end method

.method private handleAssetSelectionToggle()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;->_editDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesEditDelegate;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesEditDelegate;->getControllerState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;->isSelected:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;->isSelected:Z

    .line 63
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;->setImageMarkedUnMarked()V

    .line 64
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;->_editDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesEditDelegate;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;->getPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesEditDelegate;->handleAssetSelectionToggle(I)V

    .line 66
    :cond_0
    return-void

    .line 62
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setImageMarkedUnMarked()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;->_newSelectionFrame:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;->adjustSelectionFrame()V

    .line 78
    :cond_0
    return-void
.end method


# virtual methods
.method public adjustSelectionFrame()V
    .locals 4

    .prologue
    .line 122
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeUxUtilMainUIThreadHandler;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView$2;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 130
    return-void
.end method

.method protected handleDisableChange()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method protected handleOnFinishInflate()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->handleOnFinishInflate()V

    .line 91
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->forwardIcon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 92
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->staggeredCellLinearLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;->_stagerredLayout:Landroid/widget/RelativeLayout;

    .line 94
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->selection_frame_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;->_newSelectionFrame:Landroid/view/View;

    .line 95
    return-void
.end method

.method public handleSelection(Z)V
    .locals 0

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;->isSelected:Z

    .line 84
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;->setImageMarkedUnMarked()V

    .line 85
    return-void
.end method

.method protected performOnFinishInflate()V
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;->getRootView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView$1;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->performOnFinishInflate()V

    .line 51
    return-void
.end method

.method public prepareForReuse()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;->isSelected:Z

    .line 31
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->prepareForReuse()V

    .line 32
    return-void
.end method

.method protected providesSelection()Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public resetFolderView(ZZZZ)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 100
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 101
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 102
    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_assetcell_disable:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 103
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    if-eqz p3, :cond_0

    .line 107
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 108
    invoke-virtual {v0, v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 118
    :goto_0
    invoke-super {p0, p1, p2, p3, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->resetFolderView(ZZZZ)V

    .line 119
    return-void

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 111
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_assetcell_disable_view:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 112
    if-eqz v1, :cond_1

    .line 113
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->removeViewAt(I)V

    .line 115
    :cond_1
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;->setImageMarkedUnMarked()V

    goto :goto_0
.end method

.method public setClickListener(Landroid/view/View$OnClickListener;)V
    .locals 3

    .prologue
    .line 56
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->WARN:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;->T:Ljava/lang/String;

    const-string/jumbo v2, "click listener ignored"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public setEditDelegate(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesEditDelegate;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;->_editDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesEditDelegate;

    .line 38
    return-void
.end method
