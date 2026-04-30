.class public Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;
.super Landroid/support/v4/app/Fragment;
.source "BehanceSDKProjectEditorSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog$Callbacks;


# static fields
.field private static final BEHANCE_SDK_SETTINGS_ADVANCED_DIALOG_TAG:Ljava/lang/String; = "BEHANCE_SDK_SETTINGS_ADVANCED_DIALOG_TAG"

.field private static final FRAGMENT_TAG_COVER_DISPLAY:Ljava/lang/String; = "FRAGMENT_TAG_COVER_DISPLAY"


# instance fields
.field private bsdkProjectEditorSettingsAdultContent:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorCheckBoxField;

.field private bsdkProjectEditorSettingsAdvanced:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

.field private bsdkProjectEditorSettingsCover:Landroid/widget/ImageView;

.field private bsdkProjectEditorSettingsCreativeFields:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

.field private bsdkProjectEditorSettingsRoot:Landroid/widget/ScrollView;

.field private bsdkProjectEditorSettingsTags:Lcom/behance/sdk/ui/customviews/BehanceSDKEditText;

.field private bsdkProjectEditorSettingsTitle:Lcom/behance/sdk/ui/customviews/BehanceSDKEditText;

.field private bsdkProjectEditorSettingsTitleContainer:Landroid/widget/RelativeLayout;

.field private headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;)Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->bsdkProjectEditorSettingsCover:Landroid/widget/ImageView;

    return-object v0
.end method

.method private formatFields(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 202
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    :cond_0
    const-string/jumbo v0, ""

    .line 208
    :goto_0
    return-object v0

    .line 204
    :cond_1
    const-string/jumbo v0, ""

    .line 205
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 207
    goto :goto_1

    .line 208
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 142
    sget v0, Lcom/behance/sdk/R$id;->bsdk_project_editor_settings_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->bsdkProjectEditorSettingsRoot:Landroid/widget/ScrollView;

    .line 143
    sget v0, Lcom/behance/sdk/R$id;->bsdk_project_editor_settings_title_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->bsdkProjectEditorSettingsTitleContainer:Landroid/widget/RelativeLayout;

    .line 144
    sget v0, Lcom/behance/sdk/R$id;->bsdk_project_editor_settings_cover:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->bsdkProjectEditorSettingsCover:Landroid/widget/ImageView;

    .line 145
    sget v0, Lcom/behance/sdk/R$id;->bsdk_project_editor_settings_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/customviews/BehanceSDKEditText;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->bsdkProjectEditorSettingsTitle:Lcom/behance/sdk/ui/customviews/BehanceSDKEditText;

    .line 146
    sget v0, Lcom/behance/sdk/R$id;->bsdk_project_editor_settings_tags:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/customviews/BehanceSDKEditText;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->bsdkProjectEditorSettingsTags:Lcom/behance/sdk/ui/customviews/BehanceSDKEditText;

    .line 147
    sget v0, Lcom/behance/sdk/R$id;->bsdk_project_editor_settings_creative_fields:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->bsdkProjectEditorSettingsCreativeFields:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

    .line 148
    sget v0, Lcom/behance/sdk/R$id;->bsdk_project_editor_settings_adult_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorCheckBoxField;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->bsdkProjectEditorSettingsAdultContent:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorCheckBoxField;

    .line 149
    sget v0, Lcom/behance/sdk/R$id;->bsdk_project_editor_settings_advanced:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->bsdkProjectEditorSettingsAdvanced:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    .line 150
    return-void
.end method

.method private launchCreativeFieldsDialog()V
    .locals 3

    .prologue
    .line 180
    new-instance v0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;

    invoke-direct {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;-><init>()V

    .line 181
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->setSelectableFieldCount(I)V

    .line 182
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getSelectedFields()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->setSelectedCreativeField(Ljava/util/List;)V

    .line 183
    invoke-virtual {v0, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->setCallbacks(Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog$Callbacks;)V

    .line 184
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "FRAGMENT_TAG_CREATIVE_FIELDS_FILTER_DIALOG"

    invoke-virtual {v0, v1, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 185
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->bsdkProjectEditorSettingsAdvanced:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-virtual {v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 155
    new-instance v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;

    invoke-direct {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;-><init>()V

    .line 156
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "BEHANCE_SDK_SETTINGS_ADVANCED_DIALOG_TAG"

    invoke-virtual {v0, v1, v2}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingsAdvancedDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->bsdkProjectEditorSettingsCover:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 158
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->isCoverChosen()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getCoverPath()Ljava/lang/String;

    move-result-object v0

    .line 159
    :goto_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object v0, v1, v2

    invoke-static {v1, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayDialogFragment;->getInstance([Ljava/lang/String;I)Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayDialogFragment;

    move-result-object v0

    .line 160
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 161
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 162
    const-string/jumbo v3, "FRAGMENT_TAG_COVER_DISPLAY"

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 163
    if-eqz v1, :cond_2

    .line 164
    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 166
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 167
    const-string/jumbo v1, "FRAGMENT_TAG_COVER_DISPLAY"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    goto :goto_0

    .line 158
    :cond_3
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getDraftCover()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 168
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->bsdkProjectEditorSettingsCreativeFields:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

    invoke-virtual {v1}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 169
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->launchCreativeFieldsDialog()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
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
    .line 58
    sget v0, Lcom/behance/sdk/R$layout;->bsdk_fragment_project_editor_settings:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 59
    invoke-direct {p0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->initView(Landroid/view/View;)V

    .line 61
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v2, "FRAGMENT_TAG_PROJECT_EDITOR_HEADLESS_FRAGMENT"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    .line 63
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->bsdkProjectEditorSettingsTitle:Lcom/behance/sdk/ui/customviews/BehanceSDKEditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "* "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/behance/sdk/R$string;->bsdk_project_editor_settings_hint_title:I

    invoke-virtual {p0, v3}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/behance/sdk/ui/customviews/BehanceSDKEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->bsdkProjectEditorSettingsCreativeFields:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "* "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/behance/sdk/R$string;->bsdk_project_editor_settings_field_creative_fields:I

    invoke-virtual {p0, v3}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;->setLabelText(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->bsdkProjectEditorSettingsTitle:Lcom/behance/sdk/ui/customviews/BehanceSDKEditText;

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v2}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/behance/sdk/ui/customviews/BehanceSDKEditText;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->bsdkProjectEditorSettingsTags:Lcom/behance/sdk/ui/customviews/BehanceSDKEditText;

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v2}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getTags()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/behance/sdk/ui/customviews/BehanceSDKEditText;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->bsdkProjectEditorSettingsAdultContent:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorCheckBoxField;

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v2}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->isAdultContent()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorCheckBoxField;->setChecked(Z)V

    .line 73
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->bsdkProjectEditorSettingsAdvanced:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->bsdkProjectEditorSettingsCreativeFields:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->bsdkProjectEditorSettingsCover:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->bsdkProjectEditorSettingsCreativeFields:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v2}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getSelectedFields()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->formatFields(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;->setDescriptionText(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->bsdkProjectEditorSettingsAdultContent:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorCheckBoxField;

    new-instance v2, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment$1;

    invoke-direct {v2, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment$1;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;)V

    invoke-virtual {v0, v2}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorCheckBoxField;->setOnCheckChangedListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 87
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->bsdkProjectEditorSettingsTitle:Lcom/behance/sdk/ui/customviews/BehanceSDKEditText;

    new-instance v2, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment$2;

    invoke-direct {v2, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment$2;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;)V

    invoke-virtual {v0, v2}, Lcom/behance/sdk/ui/customviews/BehanceSDKEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 103
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->bsdkProjectEditorSettingsTags:Lcom/behance/sdk/ui/customviews/BehanceSDKEditText;

    new-instance v2, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment$3;

    invoke-direct {v2, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment$3;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;)V

    invoke-virtual {v0, v2}, Lcom/behance/sdk/ui/customviews/BehanceSDKEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 120
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->isCoverChosen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->bsdkProjectEditorSettingsCover:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v2}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getCoverPath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 124
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    new-instance v2, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment$4;

    invoke-direct {v2, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment$4;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;)V

    invoke-virtual {v0, v2}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->setCropAndSaveCallbacks(Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$CropAndSaveCallbacks;)V

    .line 138
    return-object v1

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getDraftCover()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/h;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/b/a/l;

    move-result-object v0

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v2}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getDraftCover()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/b/a/l;->a(Landroid/net/Uri;)Lcom/b/a/d;

    move-result-object v0

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->bsdkProjectEditorSettingsCover:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/b/a/d;->a(Landroid/widget/ImageView;)Lcom/b/a/h/b/k;

    goto :goto_0
.end method

.method public onCreativeFieldsSelected(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->bsdkProjectEditorSettingsCreativeFields:Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;

    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->formatFields(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;->setDescriptionText(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->setSelectedFields(Ljava/util/List;)V

    .line 215
    return-void
.end method
