.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/ListDocProviderFolderCellView;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;
.source "ListDocProviderFolderCellView.java"


# instance fields
.field private _checkbox:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;-><init>()V

    return-void
.end method


# virtual methods
.method protected handleOnFinishInflate()V
    .locals 2

    .prologue
    .line 14
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->handleOnFinishInflate()V

    .line 15
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->item_selection_folder_checkbox:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/ListDocProviderFolderCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/ListDocProviderFolderCellView;->_checkbox:Landroid/view/View;

    .line 16
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/ListDocProviderFolderCellView;->_checkbox:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/ListDocProviderFolderCellView;->_forward:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/ListDocProviderFolderCellView;->_forward:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20
    :cond_0
    return-void
.end method
