.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListFolderEditCellView;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;
.source "SectionalListFolderEditCellView.java"


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
    .line 14
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListFolderEditCellView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListFolderEditCellView;->T:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListFolderEditCellView;->isSelected:Z

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListFolderEditCellView;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListFolderEditCellView;->handleAssetSelectionToggle()V

    return-void
.end method

.method private handleAssetSelectionToggle()V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListFolderEditCellView;->_editDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesEditDelegate;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesEditDelegate;->getControllerState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListFolderEditCellView;->isSelected:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListFolderEditCellView;->isSelected:Z

    .line 33
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListFolderEditCellView;->_checkbox:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListFolderEditCellView;->_checkbox:Landroid/view/View;

    check-cast v0, Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListFolderEditCellView;->isSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListFolderEditCellView;->_editDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesEditDelegate;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListFolderEditCellView;->getPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesEditDelegate;->handleAssetSelectionToggle(I)V

    .line 37
    :cond_1
    return-void

    .line 32
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected handleOnFinishInflate()V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->handleOnFinishInflate()V

    .line 68
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListFolderEditCellView;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetlist_forwardicon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 69
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->item_selection_folder_checkbox:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListFolderEditCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListFolderEditCellView;->_checkbox:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListFolderEditCellView;->_checkbox:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListFolderEditCellView;->_checkbox:Landroid/view/View;

    check-cast v0, Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListFolderEditCellView;->isSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 74
    return-void
.end method

.method public handleSelection(Z)V
    .locals 2

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListFolderEditCellView;->isSelected:Z

    .line 62
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListFolderEditCellView;->_checkbox:Landroid/view/View;

    check-cast v0, Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListFolderEditCellView;->isSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 63
    return-void
.end method

.method protected performOnFinishInflate()V
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListFolderEditCellView;->getRootView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListFolderEditCellView$1;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListFolderEditCellView$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListFolderEditCellView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->performOnFinishInflate()V

    .line 50
    return-void
.end method

.method public prepareForReuse()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListFolderEditCellView;->isSelected:Z

    .line 22
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->prepareForReuse()V

    .line 23
    return-void
.end method

.method public setClickListener(Landroid/view/View$OnClickListener;)V
    .locals 3

    .prologue
    .line 56
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->WARN:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListFolderEditCellView;->T:Ljava/lang/String;

    const-string/jumbo v2, "click listener ignored"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public setEditDelegate(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesEditDelegate;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListFolderEditCellView;->_editDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesEditDelegate;

    .line 28
    return-void
.end method
