.class public Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTagsSelectorRecyclerAdapter;
.super Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter;
.source "BehanceSDKProjectEditorTagsSelectorRecyclerAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter$Callbacks;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKTagDTO;",
            ">;",
            "Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter$Callbacks;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter$Callbacks;I)V

    .line 26
    return-void
.end method


# virtual methods
.method protected bindAddItem(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .prologue
    .line 50
    move-object v0, p1

    check-cast v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingDetailAddViewHolder;

    .line 51
    iget-object v1, v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingDetailAddViewHolder;->bsdkCardEditorSettingDetailAddEditText:Landroid/widget/EditText;

    iget v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTagsSelectorRecyclerAdapter;->ADD_RES_ID:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 52
    iget-object v1, v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingDetailAddViewHolder;->bsdkCardEditorSettingDetailAddEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTagsSelectorRecyclerAdapter;->inputString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingDetailAddViewHolder;->bsdkCardEditorSettingDetailAddEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 54
    invoke-super {p0, p1, p2}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter;->bindAddItem(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 55
    return-void
.end method

.method protected bindSelectableItem(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTagsSelectorRecyclerAdapter;->selectableItems:Ljava/util/List;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTagsSelectorRecyclerAdapter;->selectedItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, p2, v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/BehanceSDKTagDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKTagDTO;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(?i)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTagsSelectorRecyclerAdapter;->inputString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<b>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTagsSelectorRecyclerAdapter;->inputString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</b>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_1

    move-object v0, p1

    .line 63
    check-cast v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingDetailTextViewHolder;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingDetailTextViewHolder;->bsdkCardEditorSettingDetailText:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter;->bindSelectableItem(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 69
    return-void

    :cond_1
    move-object v0, p1

    .line 65
    check-cast v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingDetailTextViewHolder;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingDetailTextViewHolder;->bsdkCardEditorSettingDetailText:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected bindSelectedItem(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .prologue
    .line 44
    move-object v0, p1

    check-cast v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingDetailTextViewHolder;

    iget-object v1, v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingDetailTextViewHolder;->bsdkCardEditorSettingDetailText:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTagsSelectorRecyclerAdapter;->selectedItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/BehanceSDKTagDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKTagDTO;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    invoke-super {p0, p1, p2}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter;->bindSelectedItem(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 46
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 30
    packed-switch p2, :pswitch_data_0

    .line 38
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 32
    :pswitch_0
    new-instance v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingDetailTextViewHolder;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTagsSelectorRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$layout;->bsdk_card_project_editor_setting_detail_text:I

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingDetailTextViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 34
    :pswitch_1
    new-instance v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingDetailAddViewHolder;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTagsSelectorRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$layout;->bsdk_card_project_editor_setting_detail_add:I

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingDetailAddViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 36
    :pswitch_2
    new-instance v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingDetailTextViewHolder;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTagsSelectorRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$layout;->bsdk_card_project_editor_setting_detail_text:I

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingDetailTextViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
