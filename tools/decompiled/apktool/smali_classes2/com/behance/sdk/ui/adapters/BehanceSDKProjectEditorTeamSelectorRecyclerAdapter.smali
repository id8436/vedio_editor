.class public Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTeamSelectorRecyclerAdapter;
.super Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter;
.source "BehanceSDKProjectEditorTeamSelectorRecyclerAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter$Callbacks;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;",
            ">;",
            "Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter$Callbacks;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    sget v0, Lcom/behance/sdk/R$string;->bsdk_project_editor_add_team:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter$Callbacks;I)V

    .line 26
    return-void
.end method


# virtual methods
.method protected bindAddItem(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .prologue
    .line 54
    move-object v0, p1

    check-cast v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingDetailAddViewHolder;

    .line 55
    iget-object v1, v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingDetailAddViewHolder;->bsdkCardEditorSettingDetailAddEditText:Landroid/widget/EditText;

    iget v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTeamSelectorRecyclerAdapter;->ADD_RES_ID:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 56
    iget-object v1, v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingDetailAddViewHolder;->bsdkCardEditorSettingDetailAddEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTeamSelectorRecyclerAdapter;->inputString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingDetailAddViewHolder;->bsdkCardEditorSettingDetailAddEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 58
    invoke-super {p0, p1, p2}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter;->bindAddItem(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 59
    return-void
.end method

.method protected bindSelectableItem(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 63
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTeamSelectorRecyclerAdapter;->selectableItems:Ljava/util/List;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTeamSelectorRecyclerAdapter;->selectedItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, p2, v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;

    move-object v1, p1

    .line 64
    check-cast v1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingDetailProfileViewHolder;

    .line 65
    invoke-virtual {v0}, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 66
    invoke-virtual {v0}, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;->getSlug()Ljava/lang/String;

    move-result-object v2

    .line 67
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(?i)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTeamSelectorRecyclerAdapter;->inputString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "<b>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTeamSelectorRecyclerAdapter;->inputString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "</b>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 69
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(?i)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTeamSelectorRecyclerAdapter;->inputString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "<b>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTeamSelectorRecyclerAdapter;->inputString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "</b>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_2

    .line 72
    iget-object v4, v1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingDetailProfileViewHolder;->bsdkCardEditorSettingDetailTextPrimary:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-static {v3, v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v3, v1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingDetailProfileViewHolder;->bsdkCardEditorSettingDetailTextSecondary:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-static {v2, v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :goto_0
    iget-object v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTeamSelectorRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/b/a/h;->b(Landroid/content/Context;)Lcom/b/a/l;

    move-result-object v2

    const/16 v3, 0xe6

    invoke-virtual {v0, v3}, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;->findProfileImageInIncreasingSizeOrder(I)Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/b/a/l;->a(Ljava/lang/String;)Lcom/b/a/d;

    move-result-object v0

    iget-object v1, v1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingDetailProfileViewHolder;->bsdkCardEditorSettingDetailAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/b/a/d;->a(Landroid/widget/ImageView;)Lcom/b/a/h/b/k;

    .line 79
    invoke-super {p0, p1, p2}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter;->bindSelectableItem(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 80
    return-void

    .line 75
    :cond_2
    iget-object v4, v1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingDetailProfileViewHolder;->bsdkCardEditorSettingDetailTextPrimary:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v3, v1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingDetailProfileViewHolder;->bsdkCardEditorSettingDetailTextSecondary:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected bindSelectedItem(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .prologue
    .line 44
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTeamSelectorRecyclerAdapter;->selectedItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;

    move-object v1, p1

    .line 45
    check-cast v1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingDetailProfileViewHolder;

    .line 46
    iget-object v2, v1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingDetailProfileViewHolder;->bsdkCardEditorSettingDetailTextPrimary:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v2, v1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingDetailProfileViewHolder;->bsdkCardEditorSettingDetailTextSecondary:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;->getSlug()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTeamSelectorRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/b/a/h;->b(Landroid/content/Context;)Lcom/b/a/l;

    move-result-object v2

    const/16 v3, 0xe6

    invoke-virtual {v0, v3}, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;->findProfileImageInIncreasingSizeOrder(I)Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/b/a/l;->a(Ljava/lang/String;)Lcom/b/a/d;

    move-result-object v0

    iget-object v1, v1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingDetailProfileViewHolder;->bsdkCardEditorSettingDetailAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/b/a/d;->a(Landroid/widget/ImageView;)Lcom/b/a/h/b/k;

    .line 49
    invoke-super {p0, p1, p2}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter;->bindSelectedItem(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 50
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
    new-instance v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingDetailProfileViewHolder;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTeamSelectorRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$layout;->bsdk_card_project_editor_setting_detail_profile:I

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingDetailProfileViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 34
    :pswitch_1
    new-instance v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingDetailAddViewHolder;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTeamSelectorRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$layout;->bsdk_card_project_editor_setting_detail_add:I

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingDetailAddViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 36
    :pswitch_2
    new-instance v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingDetailProfileViewHolder;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTeamSelectorRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$layout;->bsdk_card_project_editor_setting_detail_profile:I

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingDetailProfileViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
