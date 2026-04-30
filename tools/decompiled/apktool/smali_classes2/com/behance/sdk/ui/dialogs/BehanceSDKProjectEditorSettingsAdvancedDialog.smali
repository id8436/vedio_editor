.class public Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "BehanceSDKProjectEditorSettingsAdvancedDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter$CopyrightCallback;
.implements Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog$CopyrightCallback;


# static fields
.field private static final BEHANCE_SDK_COPYRIGHT_HELPER_DIALOG_TAG:Ljava/lang/String; = "BEHANCE_SDK_COPYRIGHT_HELPER_DIALOG_TAG"

.field private static final BEHANCE_SDK_SETTING_DETAIL_DIALOG_TAG:Ljava/lang/String; = "BEHANCE_SDK_SETTING_DETAIL_DIALOG_TAG"


# instance fields
.field private bsdkProjectEditorSettingsCoOwners:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

.field private bsdkProjectEditorSettingsCompanies:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

.field private bsdkProjectEditorSettingsCopyright:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

.field private bsdkProjectEditorSettingsCredits:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

.field private bsdkProjectEditorSettingsDescription:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

.field private bsdkProjectEditorSettingsDisableComments:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorCheckBoxField;

.field private bsdkProjectEditorSettingsTeams:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

.field private bsdkProjectEditorSettingsTools:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

.field private copyrightDialog:Landroid/support/design/widget/BottomSheetDialog;

.field private headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

.field private projectEditorSettingsAdvancedToolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;)Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;)Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->bsdkProjectEditorSettingsDescription:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

    return-object v0
.end method

.method static synthetic access$200(Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;Ljava/util/List;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->formatDataList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;)Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->bsdkProjectEditorSettingsTools:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

    return-object v0
.end method

.method static synthetic access$400(Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;)Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->bsdkProjectEditorSettingsCompanies:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

    return-object v0
.end method

.method static synthetic access$500(Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;)Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->bsdkProjectEditorSettingsCoOwners:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

    return-object v0
.end method

.method static synthetic access$600(Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;)Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->bsdkProjectEditorSettingsTeams:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

    return-object v0
.end method

.method static synthetic access$700(Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;)Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->bsdkProjectEditorSettingsCredits:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

    return-object v0
.end method

.method private formatDataList(Ljava/util/List;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 265
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    :cond_0
    const-string/jumbo v0, ""

    .line 271
    :goto_0
    return-object v0

    .line 267
    :cond_1
    const-string/jumbo v0, ""

    .line 268
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 269
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v2}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->getDataText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 271
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getDataText(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    instance-of v0, p1, Lcom/behance/sdk/dto/BehanceSDKTagDTO;

    if-eqz v0, :cond_0

    .line 276
    check-cast p1, Lcom/behance/sdk/dto/BehanceSDKTagDTO;

    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKTagDTO;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 282
    :goto_0
    return-object v0

    .line 277
    :cond_0
    instance-of v0, p1, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    if-eqz v0, :cond_1

    .line 278
    check-cast p1, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    invoke-virtual {p1}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 279
    :cond_1
    instance-of v0, p1, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;

    if-eqz v0, :cond_2

    .line 280
    check-cast p1, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;

    invoke-virtual {p1}, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 282
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 106
    sget v0, Lcom/behance/sdk/R$id;->project_editor_settings_advanced_toolbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->projectEditorSettingsAdvancedToolbar:Landroid/support/v7/widget/Toolbar;

    .line 107
    sget v0, Lcom/behance/sdk/R$id;->bsdk_project_editor_settings_disable_comments:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorCheckBoxField;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->bsdkProjectEditorSettingsDisableComments:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorCheckBoxField;

    .line 108
    sget v0, Lcom/behance/sdk/R$id;->bsdk_project_editor_settings_description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->bsdkProjectEditorSettingsDescription:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

    .line 109
    sget v0, Lcom/behance/sdk/R$id;->bsdk_project_editor_settings_copyright:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->bsdkProjectEditorSettingsCopyright:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

    .line 110
    sget v0, Lcom/behance/sdk/R$id;->bsdk_project_editor_settings_tools:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->bsdkProjectEditorSettingsTools:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

    .line 111
    sget v0, Lcom/behance/sdk/R$id;->bsdk_project_editor_settings_companies:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->bsdkProjectEditorSettingsCompanies:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

    .line 112
    sget v0, Lcom/behance/sdk/R$id;->bsdk_project_editor_settings_co_owners:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->bsdkProjectEditorSettingsCoOwners:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

    .line 113
    sget v0, Lcom/behance/sdk/R$id;->bsdk_project_editor_settings_teams:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->bsdkProjectEditorSettingsTeams:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

    .line 114
    sget v0, Lcom/behance/sdk/R$id;->bsdk_project_editor_settings_credits:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->bsdkProjectEditorSettingsCredits:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

    .line 115
    return-void
.end method

.method private launchCoOwnersSelectionDialog()V
    .locals 3

    .prologue
    .line 185
    new-instance v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorUsersSelectorDialog;

    invoke-direct {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorUsersSelectorDialog;-><init>()V

    .line 186
    new-instance v1, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog$6;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog$6;-><init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;)V

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorUsersSelectorDialog;->setCallbacks(Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorUsersSelectorDialog$Callbacks;)V

    .line 194
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getCoOwners()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorUsersSelectorDialog;->setUsers(Ljava/util/List;)V

    .line 195
    sget-object v1, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;->CO_OWNERS:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorUsersSelectorDialog;->setType(Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;)V

    .line 196
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "BEHANCE_SDK_SETTING_DETAIL_DIALOG_TAG"

    invoke-virtual {v0, v1, v2}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorUsersSelectorDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method private launchCompaniesSchoolsSelectionDialog()V
    .locals 3

    .prologue
    .line 171
    new-instance v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTagSelectorDialog;

    invoke-direct {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTagSelectorDialog;-><init>()V

    .line 172
    new-instance v1, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog$5;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog$5;-><init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;)V

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTagSelectorDialog;->setCallbacks(Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTagSelectorDialog$Callbacks;)V

    .line 179
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getCompaniesSchools()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTagSelectorDialog;->setTags(Ljava/util/List;)V

    .line 180
    sget-object v1, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;->COMPANIES:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTagSelectorDialog;->setType(Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;)V

    .line 181
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "BEHANCE_SDK_SETTING_DETAIL_DIALOG_TAG"

    invoke-virtual {v0, v1, v2}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTagSelectorDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method private launchCopyrightDialog()V
    .locals 4

    .prologue
    .line 231
    new-instance v0, Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$style;->BsdkProjectEditorBottomSheetTheme:I

    invoke-direct {v0, v1, v2}, Landroid/support/design/widget/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->copyrightDialog:Landroid/support/design/widget/BottomSheetDialog;

    .line 232
    new-instance v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 233
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 234
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->copyrightDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 235
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->copyrightDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {v1}, Landroid/support/design/widget/BottomSheetDialog;->show()V

    .line 236
    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v3}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getCopyrightOption()Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    move-result-object v3

    invoke-direct {v1, v2, v3, p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter;-><init>(Landroid/content/Context;Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter$CopyrightCallback;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 237
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->from(Landroid/view/View;)Landroid/support/design/widget/BottomSheetBehavior;

    move-result-object v0

    .line 238
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setSkipCollapsed(Z)V

    .line 239
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setPeekHeight(I)V

    .line 240
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setState(I)V

    .line 241
    return-void
.end method

.method private launchCreditsSelectionDialog()V
    .locals 3

    .prologue
    .line 215
    new-instance v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorUsersSelectorDialog;

    invoke-direct {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorUsersSelectorDialog;-><init>()V

    .line 216
    new-instance v1, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog$8;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog$8;-><init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;)V

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorUsersSelectorDialog;->setCallbacks(Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorUsersSelectorDialog$Callbacks;)V

    .line 224
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getCredits()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorUsersSelectorDialog;->setUsers(Ljava/util/List;)V

    .line 225
    sget-object v1, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;->CREDITS:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorUsersSelectorDialog;->setType(Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;)V

    .line 226
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "BEHANCE_SDK_SETTING_DETAIL_DIALOG_TAG"

    invoke-virtual {v0, v1, v2}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorUsersSelectorDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method private launchDescriptionInputDialog()V
    .locals 5

    .prologue
    .line 137
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 138
    sget v0, Lcom/behance/sdk/R$string;->bsdk_project_editor_settings_field_project_description:I

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 139
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/behance/sdk/R$layout;->bsdk_project_editor_dialog_text_input:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 140
    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 141
    sget v2, Lcom/behance/sdk/R$id;->project_editor_dialog_text_input_field:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 142
    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v2}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 143
    sget v2, Lcom/behance/sdk/R$string;->bsdk_project_editor_dialog_close_save:I

    new-instance v3, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog$3;

    invoke-direct {v3, p0, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog$3;-><init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 150
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x20008

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 152
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 153
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 154
    return-void
.end method

.method private launchTeamsSelectionDialog()V
    .locals 3

    .prologue
    .line 200
    new-instance v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTeamsSelectorDialog;

    invoke-direct {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTeamsSelectorDialog;-><init>()V

    .line 201
    new-instance v1, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog$7;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog$7;-><init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;)V

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTeamsSelectorDialog;->setCallbacks(Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTeamsSelectorDialog$Callbacks;)V

    .line 209
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getTeams()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTeamsSelectorDialog;->setTeams(Ljava/util/List;)V

    .line 210
    sget-object v1, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;->TEAMS:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTeamsSelectorDialog;->setType(Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;)V

    .line 211
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "BEHANCE_SDK_SETTING_DETAIL_DIALOG_TAG"

    invoke-virtual {v0, v1, v2}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTeamsSelectorDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method private launchToolsSelectionDialog()V
    .locals 3

    .prologue
    .line 157
    new-instance v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTagSelectorDialog;

    invoke-direct {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTagSelectorDialog;-><init>()V

    .line 158
    new-instance v1, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog$4;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog$4;-><init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;)V

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTagSelectorDialog;->setCallbacks(Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTagSelectorDialog$Callbacks;)V

    .line 165
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getTools()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTagSelectorDialog;->setTags(Ljava/util/List;)V

    .line 166
    sget-object v1, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;->TOOLS:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTagSelectorDialog;->setType(Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;)V

    .line 167
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "BEHANCE_SDK_SETTING_DETAIL_DIALOG_TAG"

    invoke-virtual {v0, v1, v2}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorTagSelectorDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 168
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/behance/sdk/R$id;->bsdk_project_editor_settings_copyright:I

    if-ne v0, v1, :cond_1

    .line 120
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->launchCopyrightDialog()V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/behance/sdk/R$id;->bsdk_project_editor_settings_tools:I

    if-ne v0, v1, :cond_2

    .line 122
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->launchToolsSelectionDialog()V

    goto :goto_0

    .line 123
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/behance/sdk/R$id;->bsdk_project_editor_settings_companies:I

    if-ne v0, v1, :cond_3

    .line 124
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->launchCompaniesSchoolsSelectionDialog()V

    goto :goto_0

    .line 125
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/behance/sdk/R$id;->bsdk_project_editor_settings_teams:I

    if-ne v0, v1, :cond_4

    .line 126
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->launchTeamsSelectionDialog()V

    goto :goto_0

    .line 127
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/behance/sdk/R$id;->bsdk_project_editor_settings_co_owners:I

    if-ne v0, v1, :cond_5

    .line 128
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->launchCoOwnersSelectionDialog()V

    goto :goto_0

    .line 129
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/behance/sdk/R$id;->bsdk_project_editor_settings_credits:I

    if-ne v0, v1, :cond_6

    .line 130
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->launchCreditsSelectionDialog()V

    goto :goto_0

    .line 131
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/behance/sdk/R$id;->bsdk_project_editor_settings_description:I

    if-ne v0, v1, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->launchDescriptionInputDialog()V

    goto :goto_0
.end method

.method public onCopyrightSelected(Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;)V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->setCopyrightOption(Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;)V

    .line 261
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->bsdkProjectEditorSettingsCopyright:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

    invoke-virtual {p1}, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->getDescription()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;->setDescriptionText(I)V

    .line 262
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const/4 v0, 0x2

    sget v1, Lcom/behance/sdk/R$style;->BsdkDialogEditorAdvanced:I

    invoke-virtual {p0, v0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->setStyle(II)V

    .line 61
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 66
    sget v0, Lcom/behance/sdk/R$layout;->bsdk_fragment_project_editor_settings_advanced:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 67
    invoke-direct {p0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->initView(Landroid/view/View;)V

    .line 69
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v2, "FRAGMENT_TAG_PROJECT_EDITOR_HEADLESS_FRAGMENT"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    .line 71
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->projectEditorSettingsAdvancedToolbar:Landroid/support/v7/widget/Toolbar;

    sget v2, Lcom/behance/sdk/R$drawable;->bsdk_icon_back:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 72
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->projectEditorSettingsAdvancedToolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v2, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog$1;

    invoke-direct {v2, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog$1;-><init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->bsdkProjectEditorSettingsDisableComments:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorCheckBoxField;

    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v2}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->isCommentsDisabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorCheckBoxField;->setChecked(Z)V

    .line 80
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->bsdkProjectEditorSettingsDescription:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v2}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;->setDescriptionText(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->bsdkProjectEditorSettingsCopyright:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v2}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getCopyrightOption()Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->getDescription()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;->setDescriptionText(I)V

    .line 82
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->bsdkProjectEditorSettingsTools:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v2}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getTools()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->formatDataList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;->setDescriptionText(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->bsdkProjectEditorSettingsCompanies:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v2}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getCompaniesSchools()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->formatDataList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;->setDescriptionText(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->bsdkProjectEditorSettingsCoOwners:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v2}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getCoOwners()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->formatDataList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;->setDescriptionText(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->bsdkProjectEditorSettingsCredits:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v2}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getCredits()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->formatDataList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;->setDescriptionText(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->bsdkProjectEditorSettingsDescription:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->bsdkProjectEditorSettingsCopyright:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->bsdkProjectEditorSettingsTools:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->bsdkProjectEditorSettingsCoOwners:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->bsdkProjectEditorSettingsCompanies:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->bsdkProjectEditorSettingsTeams:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->bsdkProjectEditorSettingsCredits:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->bsdkProjectEditorSettingsDisableComments:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorCheckBoxField;

    new-instance v2, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog$2;

    invoke-direct {v2, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog$2;-><init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;)V

    invoke-virtual {v0, v2}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorCheckBoxField;->setOnCheckChangedListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 102
    return-object v1
.end method

.method public onHelpSelected()V
    .locals 3

    .prologue
    .line 252
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->copyrightDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {v0}, Landroid/support/design/widget/BottomSheetDialog;->dismiss()V

    .line 253
    new-instance v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;

    invoke-direct {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;-><init>()V

    .line 254
    invoke-virtual {v0, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->setCallback(Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog$CopyrightCallback;)V

    .line 255
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "BEHANCE_SDK_COPYRIGHT_HELPER_DIALOG_TAG"

    invoke-virtual {v0, v1, v2}, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public onItemSelected(Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;)V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->setCopyrightOption(Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;)V

    .line 246
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->bsdkProjectEditorSettingsCopyright:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

    invoke-virtual {p1}, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->getDescription()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;->setDescriptionText(I)V

    .line 247
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->copyrightDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {v0}, Landroid/support/design/widget/BottomSheetDialog;->dismiss()V

    .line 248
    return-void
.end method
