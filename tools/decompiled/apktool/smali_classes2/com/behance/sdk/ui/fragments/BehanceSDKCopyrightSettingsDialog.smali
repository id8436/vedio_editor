.class public Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "BehanceSDKCopyrightSettingsDialog.java"


# static fields
.field private static final BUNDLE_KEY_COPYRIGHT_ID:Ljava/lang/String; = "BUNDLE_KEY_COPYRIGHT_ID"


# instance fields
.field private callbacks:Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog$Callbacks;

.field private context:Landroid/content/Context;

.field private rootView:Landroid/view/View;

.field private sectionalAdapter:Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightSettingsAdapter;

.field private selectedCopyrightSetting:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;Landroid/widget/AdapterView;I)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;->handleCopyrightSettingSelection(Landroid/widget/AdapterView;I)V

    return-void
.end method

.method private handleCopyrightSettingSelection(Landroid/widget/AdapterView;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    .line 107
    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;->selectedCopyrightSetting:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    .line 108
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;->sectionalAdapter:Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightSettingsAdapter;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;->selectedCopyrightSetting:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightSettingsAdapter;->setSelectedCopyRight(Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;)V

    .line 109
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;->sectionalAdapter:Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightSettingsAdapter;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightSettingsAdapter;->notifyDataSetChanged()V

    .line 110
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;->notifyListenersAndCloseDialog()V

    .line 111
    return-void
.end method

.method private notifyListenersAndCloseDialog()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;->callbacks:Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog$Callbacks;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;->callbacks:Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog$Callbacks;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;->selectedCopyrightSetting:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    invoke-interface {v0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog$Callbacks;->onCopyrightSettingSelected(Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;)V

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 121
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 102
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;->context:Landroid/content/Context;

    .line 103
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const/4 v0, 0x2

    sget v1, Lcom/behance/sdk/R$style;->BsdkFilterDialogTheme:I

    invoke-virtual {p0, v0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;->setStyle(II)V

    .line 58
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 63
    if-eqz p3, :cond_0

    .line 64
    const-string/jumbo v0, "BUNDLE_KEY_COPYRIGHT_ID"

    const-string/jumbo v1, ""

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v0}, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->getCopyrightOptionFromValue(Ljava/lang/String;)Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;->selectedCopyrightSetting:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    .line 66
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;->selectedCopyrightSetting:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    if-nez v0, :cond_0

    .line 67
    invoke-static {}, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->getDefaultValue()Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;->selectedCopyrightSetting:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    .line 69
    :cond_0
    sget v0, Lcom/behance/sdk/R$layout;->bsdk_dialog_fragment_copyright_settings:I

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;->rootView:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdkPublishProjectCopyrightSettingsDialogHeaderLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 71
    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog$1;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog$1;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdkPublishProjectCopyrightSettingsDialogSectionalListView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/google/listview/SectionalListView;

    .line 80
    sget v1, Lcom/behance/sdk/R$layout;->bsdk_adapter_publish_project_copyright_settings_item_header:I

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/google/listview/SectionalListView;->setPinnedHeaderView(Landroid/view/View;)V

    .line 81
    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightSettingsAdapter;

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;->selectedCopyrightSetting:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    invoke-direct {v1, v2, v3}, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightSettingsAdapter;-><init>(Landroid/content/Context;Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;)V

    iput-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;->sectionalAdapter:Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightSettingsAdapter;

    .line 82
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;->sectionalAdapter:Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightSettingsAdapter;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/google/listview/SectionalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog$2;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog$2;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;)V

    invoke-virtual {v0, v1}, Lcom/behance/sdk/google/listview/SectionalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 133
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;->selectedCopyrightSetting:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    if-eqz v0, :cond_0

    .line 134
    const-string/jumbo v0, "BUNDLE_KEY_COPYRIGHT_ID"

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;->selectedCopyrightSetting:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    invoke-virtual {v1}, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 140
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 141
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$bool;->bsdk_big_screen:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$dimen;->global_filter_dialog_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 144
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$dimen;->global_filter_dialog_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 145
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 148
    :cond_0
    return-void
.end method

.method public setCallbacks(Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog$Callbacks;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;->callbacks:Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog$Callbacks;

    .line 115
    return-void
.end method

.method public setSelectedCopyright(Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;->selectedCopyrightSetting:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    .line 128
    return-void
.end method
