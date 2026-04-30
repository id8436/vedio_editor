.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListAssetCellView;
.source "SectionalListAssetEditCellView.java"


# static fields
.field private static final T:Ljava/lang/String;


# instance fields
.field private _checkbox:Landroid/view/View;

.field private _editDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesEditDelegate;

.field private isSelected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;->T:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListAssetCellView;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;->isSelected:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;->T:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;->handleAssetSelectionToggle()V

    return-void
.end method

.method private handleAssetSelectionToggle()V
    .locals 2

    .prologue
    .line 55
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;->T:Ljava/lang/String;

    const-string/jumbo v1, "handleAssetSelectionToggle"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;->_editDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesEditDelegate;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesEditDelegate;->getControllerState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;->isSelected:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;->isSelected:Z

    .line 59
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;->_checkbox:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;->_checkbox:Landroid/view/View;

    check-cast v0, Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;->isSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;->_editDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesEditDelegate;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;->getPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesEditDelegate;->handleAssetSelectionToggle(I)V

    .line 63
    :cond_1
    return-void

    .line 58
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected handleOnFinishInflate()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListAssetCellView;->handleOnFinishInflate()V

    .line 78
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 80
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_asset_assetview_assetlist_assetcell_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 81
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->item_selection_file_checkbox:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;->_checkbox:Landroid/view/View;

    .line 84
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;->_checkbox:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;->_checkbox:Landroid/view/View;

    check-cast v0, Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;->isSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 86
    return-void
.end method

.method public handleSelection(Z)V
    .locals 2

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;->isSelected:Z

    .line 70
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;->_checkbox:Landroid/view/View;

    check-cast v0, Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;->isSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 71
    return-void
.end method

.method protected performOnFinishInflate()V
    .locals 2

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;->getRootView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView$1;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListAssetCellView;->performOnFinishInflate()V

    .line 46
    return-void
.end method

.method public prepareForReuse()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;->isSelected:Z

    .line 25
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListAssetCellView;->prepareForReuse()V

    .line 26
    return-void
.end method

.method public setClickListener(Landroid/view/View$OnClickListener;)V
    .locals 3

    .prologue
    .line 51
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->WARN:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;->T:Ljava/lang/String;

    const-string/jumbo v2, "click listener ignored"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public setEditDelegate(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesEditDelegate;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;->_editDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesEditDelegate;

    .line 32
    return-void
.end method
