.class public abstract Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;
.super Landroid/support/design/widget/BottomSheetDialogFragment;
.source "BehanceSDKProjectEditorSettingSearchAbstractDialog.java"

# interfaces
.implements Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter$Callbacks;


# instance fields
.field protected SAVED_INSTANCE_STATE_KEY_DATA:Ljava/lang/String;

.field private SAVED_INSTANCE_STATE_KEY_TYPE:Ljava/lang/String;

.field protected bsdkEditorSettingDetailRecycler:Landroid/support/v7/widget/RecyclerView;

.field private bsdkEditorSettingDetailToolbarTitle:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

.field private mBehavior:Landroid/support/design/widget/BottomSheetBehavior;

.field protected type:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetDialogFragment;-><init>()V

    .line 32
    const-string/jumbo v0, "SAVED_INSTANCE_STATE_KEY_DATA"

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;->SAVED_INSTANCE_STATE_KEY_DATA:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "SAVED_INSTANCE_STATE_KEY_TYPE"

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;->SAVED_INSTANCE_STATE_KEY_TYPE:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;)Landroid/support/design/widget/BottomSheetBehavior;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;->mBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    return-object v0
.end method


# virtual methods
.method protected attachTouchHelperAndSetAdapter(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorSettingSelectorAbstractAdapter;)V
    .locals 2

    .prologue
    .line 92
    new-instance v0, Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKTouchHelperCallback;

    invoke-direct {v0, p1}, Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKTouchHelperCallback;-><init>(Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKAdapterTouchHelper;)V

    .line 93
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKTouchHelperCallback;->setLongPressDragEnabled(Z)V

    .line 94
    new-instance v1, Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    .line 95
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;->bsdkEditorSettingDetailRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 96
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;->bsdkEditorSettingDetailRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 97
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/support/design/widget/BottomSheetDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const/4 v0, 0x0

    sget v1, Lcom/behance/sdk/R$style;->BsdkProjectEditorBottomSheetTheme:I

    invoke-virtual {p0, v0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;->setStyle(II)V

    .line 45
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/support/design/widget/BottomSheetDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/BottomSheetDialog;

    .line 52
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$layout;->bsdk_dialog_project_editor_setting_details:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 54
    invoke-virtual {v0, v2}, Landroid/support/design/widget/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 55
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Landroid/support/design/widget/BottomSheetBehavior;->from(Landroid/view/View;)Landroid/support/design/widget/BottomSheetBehavior;

    move-result-object v1

    iput-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;->mBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    .line 56
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;->mBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/support/design/widget/BottomSheetBehavior;->setSkipCollapsed(Z)V

    .line 57
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/behance/sdk/util/BehanceSDKUIUtils;->getActionBarSize(Landroid/content/Context;)I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {v2, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 59
    if-eqz p1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;->SAVED_INSTANCE_STATE_KEY_TYPE:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;

    iput-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;->type:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;

    .line 62
    :cond_0
    sget v1, Lcom/behance/sdk/R$id;->bsdk_editor_setting_detail_toolbar_title:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    iput-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;->bsdkEditorSettingDetailToolbarTitle:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    .line 64
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;->type:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;

    if-eqz v1, :cond_1

    .line 65
    sget-object v1, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$2;->$SwitchMap$com$behance$sdk$ui$dialogs$BehanceSDKProjectEditorSettingSearchAbstractDialog$Type:[I

    iget-object v3, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;->type:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;

    invoke-virtual {v3}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 84
    :cond_1
    :goto_0
    sget v1, Lcom/behance/sdk/R$id;->bsdk_editor_setting_detail_recycler:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;->bsdkEditorSettingDetailRecycler:Landroid/support/v7/widget/RecyclerView;

    .line 85
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;->bsdkEditorSettingDetailRecycler:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 86
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;->bsdkEditorSettingDetailRecycler:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/behance/sdk/ui/decorators/BehanceSDKDividerItemDecoration;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Lcom/behance/sdk/R$drawable;->bsdk_shape_divider:I

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/behance/sdk/R$dimen;->bsdk_editor_setting_detail_padding_horizontal:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/behance/sdk/ui/decorators/BehanceSDKDividerItemDecoration;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 88
    return-object v0

    .line 67
    :pswitch_0
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;->bsdkEditorSettingDetailToolbarTitle:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    sget v3, Lcom/behance/sdk/R$string;->bsdk_project_editor_settings_field_tools:I

    invoke-virtual {v1, v3}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setText(I)V

    goto :goto_0

    .line 70
    :pswitch_1
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;->bsdkEditorSettingDetailToolbarTitle:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    sget v3, Lcom/behance/sdk/R$string;->bsdk_project_editor_settings_field_companies:I

    invoke-virtual {v1, v3}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setText(I)V

    goto :goto_0

    .line 73
    :pswitch_2
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;->bsdkEditorSettingDetailToolbarTitle:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    sget v3, Lcom/behance/sdk/R$string;->bsdk_project_editor_settings_field_co_owners:I

    invoke-virtual {v1, v3}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setText(I)V

    goto :goto_0

    .line 76
    :pswitch_3
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;->bsdkEditorSettingDetailToolbarTitle:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    sget v3, Lcom/behance/sdk/R$string;->bsdk_project_editor_settings_field_credits:I

    invoke-virtual {v1, v3}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setText(I)V

    goto :goto_0

    .line 79
    :pswitch_4
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;->bsdkEditorSettingDetailToolbarTitle:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    sget v3, Lcom/behance/sdk/R$string;->bsdk_project_editor_settings_field_teams:I

    invoke-virtual {v1, v3}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setText(I)V

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/support/design/widget/BottomSheetDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 138
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;->SAVED_INSTANCE_STATE_KEY_TYPE:Ljava/lang/String;

    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;->type:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 139
    return-void
.end method

.method public onSearchTextChanged(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 114
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 129
    :goto_0
    return-void

    .line 116
    :cond_0
    sget-object v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$2;->$SwitchMap$com$behance$sdk$ui$dialogs$BehanceSDKProjectEditorSettingSearchAbstractDialog$Type:[I

    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;->type:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;

    invoke-virtual {v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 118
    :pswitch_0
    const-string/jumbo v0, "1"

    invoke-virtual {p0, p1, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;->search(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :pswitch_1
    const-string/jumbo v0, "2|4"

    invoke-virtual {p0, p1, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;->search(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;->search(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 101
    invoke-super {p0}, Landroid/support/design/widget/BottomSheetDialogFragment;->onStart()V

    .line 103
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;->mBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setState(I)V

    .line 104
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$1;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$1;-><init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 110
    return-void
.end method

.method protected search(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 133
    return-void
.end method

.method public setType(Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog;->type:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;

    .line 143
    return-void
.end method
