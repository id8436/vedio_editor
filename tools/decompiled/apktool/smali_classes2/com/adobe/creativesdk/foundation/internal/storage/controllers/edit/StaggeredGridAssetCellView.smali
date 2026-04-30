.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;
.source "StaggeredGridAssetCellView.java"


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
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;->T:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;->isSelected:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;->T:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;->handleAssetSelectionToggle()V

    return-void
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;->_stagerredLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;->_newSelectionFrame:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;->_stagerredLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;)Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;->isSelected:Z

    return v0
.end method

.method private handleAssetSelectionToggle()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;->_editDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesEditDelegate;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesEditDelegate;->getControllerState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;->isSelected:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;->isSelected:Z

    .line 65
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;->setImageMarkedUnMarked()V

    .line 66
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;->_editDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesEditDelegate;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;->getPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesEditDelegate;->handleAssetSelectionToggle(I)V

    .line 68
    :cond_0
    return-void

    .line 64
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setImageMarkedUnMarked()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;->_newSelectionFrame:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;->adjustSelectionFrame()V

    .line 76
    :cond_0
    return-void
.end method


# virtual methods
.method public adjustSelectionFrame()V
    .locals 4

    .prologue
    .line 104
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeUxUtilMainUIThreadHandler;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView$2;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 112
    return-void
.end method

.method public handleAfterImageLoadingComplete()V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->handleAfterImageLoadingComplete()V

    .line 88
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;->adjustSelectionFrame()V

    .line 89
    return-void
.end method

.method protected handleOnFinishInflate()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->handleOnFinishInflate()V

    .line 95
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetview_assetgrid_assetcell_bottom_title_section_vertical:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;->_cellBottomSection:Landroid/widget/LinearLayout;

    .line 96
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_files_menu_icon:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;->_menuIcon:Landroid/widget/RelativeLayout;

    .line 97
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_asset_browser_cell_menu_icon:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;->_menuIconView:Landroid/widget/ImageView;

    .line 98
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->staggeredCellLinearLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;->_stagerredLayout:Landroid/widget/RelativeLayout;

    .line 99
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;->_menuIcon:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 100
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->selection_frame_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;->_newSelectionFrame:Landroid/view/View;

    .line 101
    return-void
.end method

.method public handleSelection(Z)V
    .locals 0

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;->isSelected:Z

    .line 82
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;->setImageMarkedUnMarked()V

    .line 83
    return-void
.end method

.method protected performOnFinishInflate()V
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;->getRootView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView$1;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->performOnFinishInflate()V

    .line 52
    return-void
.end method

.method public prepareForReuse()V
    .locals 2

    .prologue
    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;->isSelected:Z

    .line 31
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;->_newSelectionFrame:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->prepareForReuse()V

    .line 33
    return-void
.end method

.method protected providesSelection()Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public setClickListener(Landroid/view/View$OnClickListener;)V
    .locals 3

    .prologue
    .line 57
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->WARN:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;->T:Ljava/lang/String;

    const-string/jumbo v2, "click listener ignored"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public setEditDelegate(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesEditDelegate;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;->_editDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesEditDelegate;

    .line 39
    return-void
.end method
