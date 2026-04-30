.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;
.super Landroid/support/v4/app/DialogFragment;
.source "AdobeLibraryDeleteAlert.java"


# instance fields
.field private composite:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

.field private isPublic:Z

.field private messageView:Landroid/widget/TextView;

.field private negativeButton:Landroid/view/View;

.field private positiveButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;->composite:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 153
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 40
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_alert_dialog_view:I

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 41
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_alert_dialog_box_title_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;->messageView:Landroid/widget/TextView;

    .line 42
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_alert_dialog_box_positive_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;->positiveButton:Landroid/view/View;

    .line 43
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_alert_dialog_box_negative_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;->negativeButton:Landroid/view/View;

    .line 44
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;->negativeButton:Landroid/view/View;

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert$1;

    invoke-direct {v2, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;->isPublic:Z

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;->messageView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_asset_view_edit_unsuscribe_dialog_message:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;->negativeButton:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_unsuscribe_confirm_dialog_negative_button:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;->positiveButton:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_unsuscribe_confirm_dialog_positive_button:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;->positiveButton:Landroid/view/View;

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert$2;

    invoke-direct {v2, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    :goto_0
    return-object v1

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;->negativeButton:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_asset_view_edit_delete_dialog_negative_button:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;->composite:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getCollaboration()Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    move-result-object v0

    .line 93
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;->composite:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->isReadOnly()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;->ADOBE_COLLABORATION_TYPE_SHAREDWITHUSER:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;->positiveButton:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_leave_library_confirm_dialog_positive_button:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;->messageView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_leave_library_confirm_dialog_message:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :goto_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;->positiveButton:Landroid/view/View;

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert$3;

    invoke-direct {v2, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert$3;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;->positiveButton:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_asset_view_edit_delete_dialog_positive_button:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;->messageView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_asset_view_library_composite_edit_delete_dialog_message:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setLibraryComposite(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V
    .locals 1

    .prologue
    .line 32
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;->composite:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 33
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;->composite:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->isPublic()Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;->isPublic:Z

    .line 34
    return-void
.end method
