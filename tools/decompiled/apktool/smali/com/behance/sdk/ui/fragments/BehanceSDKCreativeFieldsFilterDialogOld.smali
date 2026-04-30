.class public Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;
.super Landroid/support/v4/app/DialogFragment;
.source "BehanceSDKCreativeFieldsFilterDialogOld.java"

# interfaces
.implements Lcom/behance/sdk/datamanager/listeners/interfaces/IFiltersDataManagerListener;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final BUNDLE_KEY_FIELD_ID:Ljava/lang/String; = "BUNDLE_KEY_FIELD_ID"

.field private static final BUNDLE_KEY_SELECTABLE_FIELD_COUNT:Ljava/lang/String; = "BUNDLE_KEY_SELECTABLE_FIELD_COUNT"

.field private static final UNLIMITED:I = -0x1


# instance fields
.field private callbacks:Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld$Callbacks;

.field private context:Landroid/content/Context;

.field private progressSpinner:Landroid/view/View;

.field private rootView:Landroid/view/View;

.field private sectionalAdapter:Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;

.field private selectable_field_count:I

.field private selectedFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->selectable_field_count:I

    .line 62
    invoke-static {}, Lcom/behance/sdk/datamanager/FiltersDataManager;->getInstance()Lcom/behance/sdk/datamanager/FiltersDataManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/behance/sdk/datamanager/FiltersDataManager;->addListener(Lcom/behance/sdk/datamanager/listeners/interfaces/IFiltersDataManagerListener;)V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->notifyListenersAndCloseDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;Landroid/widget/AdapterView;I)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->handleCreativeFieldSelection(Landroid/widget/AdapterView;I)V

    return-void
.end method

.method private handleCreativeFieldSelection(Landroid/widget/AdapterView;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 161
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 162
    instance-of v1, v0, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;

    if-eqz v1, :cond_1

    .line 163
    check-cast v0, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;

    .line 164
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->selectedFields:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 165
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->selectedFields:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 174
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->sectionalAdapter:Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;->notifyDataSetChanged()V

    .line 176
    :cond_1
    return-void

    .line 167
    :cond_2
    iget v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->selectable_field_count:I

    if-ltz v1, :cond_3

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->selectedFields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->selectable_field_count:I

    if-ge v1, v2, :cond_0

    .line 168
    :cond_3
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->selectedFields:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->selectedFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->selectable_field_count:I

    if-ne v0, v1, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->notifyListenersAndCloseDialog()V

    goto :goto_0
.end method

.method private hideProgressSpinner()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->progressSpinner:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    return-void
.end method

.method private notifyListenersAndCloseDialog()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->callbacks:Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld$Callbacks;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->callbacks:Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld$Callbacks;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->selectedFields:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld$Callbacks;->onCreativeFieldsSelected(Ljava/util/List;)V

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 195
    return-void
.end method

.method private populateListView(Ljava/util/List;Landroid/view/LayoutInflater;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;",
            ">;",
            "Landroid/view/LayoutInflater;",
            ")V"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->rootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->hideProgressSpinner()V

    .line 144
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdkPublishProjectcreativeFieldFilterDialogSectionalListViewOld:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/google/listview/SectionalListView;

    .line 145
    sget v1, Lcom/behance/sdk/R$layout;->bsdk_adapter_publish_project_creative_field_item_header:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/google/listview/SectionalListView;->setPinnedHeaderView(Landroid/view/View;)V

    .line 146
    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->selectedFields:Ljava/util/List;

    invoke-direct {v1, v2, p1, v3}, Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->sectionalAdapter:Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;

    .line 147
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->sectionalAdapter:Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/google/listview/SectionalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 148
    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld$3;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld$3;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;)V

    invoke-virtual {v0, v1}, Lcom/behance/sdk/google/listview/SectionalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 157
    :cond_0
    return-void
.end method

.method private showProgressSpinner()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->progressSpinner:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 117
    return-void
.end method


# virtual methods
.method public getCallbacks()Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld$Callbacks;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->callbacks:Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld$Callbacks;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 129
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->context:Landroid/content/Context;

    .line 130
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const/4 v0, 0x2

    sget v1, Lcom/behance/sdk/R$style;->BsdkFilterDialogTheme:I

    invoke-virtual {p0, v0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->setStyle(II)V

    .line 73
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 79
    if-eqz p3, :cond_0

    .line 80
    const-string/jumbo v0, "BUNDLE_KEY_FIELD_ID"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->selectedFields:Ljava/util/List;

    .line 81
    const-string/jumbo v0, "BUNDLE_KEY_SELECTABLE_FIELD_COUNT"

    const/4 v1, -0x1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->selectable_field_count:I

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->selectedFields:Ljava/util/List;

    if-nez v0, :cond_1

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->selectedFields:Ljava/util/List;

    .line 86
    :cond_1
    sget v0, Lcom/behance/sdk/R$layout;->bsdk_dialog_fragment_creative_field_filter_old:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->rootView:Landroid/view/View;

    .line 87
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdkPublishProjectcreativeFieldFilterDialogHeaderLayoutOld:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 88
    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld$1;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld$1;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdkPublishProjectcreativeFieldFilterDialogProgressSpinnerOld:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->progressSpinner:Landroid/view/View;

    .line 97
    invoke-static {}, Lcom/behance/sdk/datamanager/FiltersDataManager;->getInstance()Lcom/behance/sdk/datamanager/FiltersDataManager;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/behance/sdk/datamanager/FiltersDataManager;->isLoadCreativeFieldsTaskInProgress()Z

    move-result v1

    if-nez v1, :cond_2

    .line 99
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->showProgressSpinner()V

    .line 100
    invoke-static {}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->getInstance()Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->getUserCredentials()Lcom/behance/sdk/IBehanceSDKUserCredentials;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/datamanager/FiltersDataManager;->loadCreativeFields(Lcom/behance/sdk/IBehanceSDKUserCredentials;)V

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdkPublishProjectcreativeFieldFilterDialogCloseDialogBtnBottomOld:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 103
    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld$2;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld$2;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public onCreativeFieldsLoadingFailure(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public onCreativeFieldsLoadingSuccess(Ljava/util/List;)V
    .locals 1
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
    .line 136
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->populateListView(Ljava/util/List;Landroid/view/LayoutInflater;)V

    .line 137
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 209
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 210
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->selectedFields:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 211
    const-string/jumbo v1, "BUNDLE_KEY_FIELD_ID"

    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->selectedFields:Ljava/util/List;

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 213
    :cond_0
    const-string/jumbo v0, "BUNDLE_KEY_SELECTABLE_FIELD_COUNT"

    iget v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->selectable_field_count:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 214
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 218
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 219
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$bool;->bsdk_big_screen:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$dimen;->global_filter_dialog_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 223
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$dimen;->global_filter_dialog_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 224
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$dimen;->bsdk_creative_field_dialog_vertical_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 227
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$dimen;->bsdk_creative_field_dialog_horizontal_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 228
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 229
    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 230
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 231
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    sub-int v1, v2, v1

    sub-int v0, v3, v0

    invoke-virtual {v4, v1, v0}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0
.end method

.method public setCallbacks(Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld$Callbacks;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->callbacks:Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld$Callbacks;

    .line 189
    return-void
.end method

.method public setSelectableFieldCount(I)V
    .locals 0

    .prologue
    .line 240
    iput p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->selectable_field_count:I

    .line 241
    return-void
.end method

.method public setSelectedCreativeField(Ljava/util/List;)V
    .locals 1
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
    .line 201
    if-eqz p1, :cond_0

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->selectedFields:Ljava/util/List;

    .line 203
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->selectedFields:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 205
    :cond_0
    return-void
.end method
