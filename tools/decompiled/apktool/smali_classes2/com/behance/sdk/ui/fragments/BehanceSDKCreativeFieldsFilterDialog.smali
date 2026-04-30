.class public Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "BehanceSDKCreativeFieldsFilterDialog.java"

# interfaces
.implements Lcom/behance/sdk/datamanager/listeners/interfaces/IFiltersDataManagerListener;


# static fields
.field private static final BUNDLE_KEY_SELECTABLE_FIELDS_COUNT:Ljava/lang/String; = "BUNDLE_KEY_SELECTABLE_FIELDS_COUNT"

.field private static final BUNDLE_KEY_SELECTED_FIELDS:Ljava/lang/String; = "BUNDLE_KEY_SELECTED_FIELDS"

.field private static final UNLIMITED:I = -0x1


# instance fields
.field private bsdkCreativeFieldsProgressBar:Landroid/widget/ProgressBar;

.field private bsdkCreativeFieldsRoot:Landroid/widget/LinearLayout;

.field private bsdkCreativeFieldsSectionalListView:Lcom/behance/sdk/google/listview/SectionalListView;

.field private callbacks:Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog$Callbacks;

.field private selectableFieldCount:I

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
    .line 57
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->selectableFieldCount:I

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;Landroid/widget/AdapterView;I)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->handleCreativeFieldSelection(Landroid/widget/AdapterView;I)V

    return-void
.end method

.method private fixSelectedFields(Ljava/util/List;)V
    .locals 6
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
    const/4 v1, 0x0

    .line 152
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->selectedFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->selectedFields:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    :cond_0
    return-void

    :cond_1
    move v2, v1

    .line 154
    :goto_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->selectedFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->selectedFields:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;

    .line 156
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;

    .line 157
    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 158
    invoke-virtual {v1}, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;->getCategory()Lcom/behance/sdk/enums/BehanceSDKCreativeFieldCategory;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;->setCategory(Lcom/behance/sdk/enums/BehanceSDKCreativeFieldCategory;)V

    .line 159
    invoke-virtual {v1}, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;->setId(Ljava/lang/String;)V

    .line 163
    :cond_3
    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 164
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->selectedFields:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 165
    add-int/lit8 v2, v2, -0x1

    .line 154
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
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
    .line 171
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 172
    instance-of v1, v0, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;

    if-eqz v1, :cond_1

    .line 173
    check-cast v0, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;

    .line 174
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->selectedFields:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 175
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->selectedFields:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 184
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->bsdkCreativeFieldsSectionalListView:Lcom/behance/sdk/google/listview/SectionalListView;

    invoke-virtual {v0}, Lcom/behance/sdk/google/listview/SectionalListView;->getAdapter()Lcom/behance/sdk/google/listview/SectionalBaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/google/listview/SectionalBaseAdapter;->notifyDataSetChanged()V

    .line 186
    :cond_1
    return-void

    .line 177
    :cond_2
    iget v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->selectableFieldCount:I

    if-ltz v1, :cond_3

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->selectedFields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->selectableFieldCount:I

    if-ge v1, v2, :cond_0

    .line 178
    :cond_3
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->selectedFields:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->selectedFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->selectableFieldCount:I

    if-ne v0, v1, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->dismiss()V

    goto :goto_0
.end method

.method private hideProgressSpinner()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->bsdkCreativeFieldsProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 123
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 111
    sget v0, Lcom/behance/sdk/R$id;->bsdk_creative_fields_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->bsdkCreativeFieldsRoot:Landroid/widget/LinearLayout;

    .line 112
    sget v0, Lcom/behance/sdk/R$id;->bsdk_creative_fields_sectional_list_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/google/listview/SectionalListView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->bsdkCreativeFieldsSectionalListView:Lcom/behance/sdk/google/listview/SectionalListView;

    .line 113
    sget v0, Lcom/behance/sdk/R$id;->bsdk_creative_fields_progress_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->bsdkCreativeFieldsProgressBar:Landroid/widget/ProgressBar;

    .line 114
    return-void
.end method

.method private populateListView(Ljava/util/List;)V
    .locals 5
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
    .line 132
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->fixSelectedFields(Ljava/util/List;)V

    .line 133
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->hideProgressSpinner()V

    .line 134
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->bsdkCreativeFieldsSectionalListView:Lcom/behance/sdk/google/listview/SectionalListView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$layout;->bsdk_adapter_publish_project_creative_field_item_header:I

    iget-object v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->bsdkCreativeFieldsSectionalListView:Lcom/behance/sdk/google/listview/SectionalListView;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/google/listview/SectionalListView;->setPinnedHeaderView(Landroid/view/View;)V

    .line 135
    new-instance v0, Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->selectedFields:Ljava/util/List;

    invoke-direct {v0, v1, p1, v2}, Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    .line 136
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->bsdkCreativeFieldsSectionalListView:Lcom/behance/sdk/google/listview/SectionalListView;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/google/listview/SectionalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->bsdkCreativeFieldsSectionalListView:Lcom/behance/sdk/google/listview/SectionalListView;

    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog$2;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog$2;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;)V

    invoke-virtual {v0, v1}, Lcom/behance/sdk/google/listview/SectionalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 145
    return-void
.end method

.method private showProgressSpinner()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->bsdkCreativeFieldsProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 119
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const/4 v0, 0x2

    sget v1, Lcom/behance/sdk/R$style;->BsdkFilterDialogTheme:I

    invoke-virtual {p0, v0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->setStyle(II)V

    .line 68
    invoke-static {}, Lcom/behance/sdk/datamanager/FiltersDataManager;->getInstance()Lcom/behance/sdk/datamanager/FiltersDataManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/behance/sdk/datamanager/FiltersDataManager;->addListener(Lcom/behance/sdk/datamanager/listeners/interfaces/IFiltersDataManagerListener;)V

    .line 69
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 75
    if-eqz p3, :cond_0

    .line 76
    const-string/jumbo v0, "BUNDLE_KEY_SELECTED_FIELDS"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->selectedFields:Ljava/util/List;

    .line 77
    const-string/jumbo v0, "BUNDLE_KEY_SELECTABLE_FIELDS_COUNT"

    const/4 v1, -0x1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->selectableFieldCount:I

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->selectedFields:Ljava/util/List;

    if-nez v0, :cond_1

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->selectedFields:Ljava/util/List;

    .line 83
    :cond_1
    sget v0, Lcom/behance/sdk/R$layout;->bsdk_dialog_fragment_creative_field_filter:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 84
    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->initView(Landroid/view/View;)V

    .line 86
    invoke-static {}, Lcom/behance/sdk/datamanager/FiltersDataManager;->getInstance()Lcom/behance/sdk/datamanager/FiltersDataManager;

    move-result-object v1

    .line 87
    invoke-virtual {v1}, Lcom/behance/sdk/datamanager/FiltersDataManager;->isLoadCreativeFieldsTaskInProgress()Z

    move-result v2

    if-nez v2, :cond_2

    .line 88
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->showProgressSpinner()V

    .line 89
    new-instance v2, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog$1;

    invoke-direct {v2, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog$1;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;)V

    invoke-virtual {v1, v2}, Lcom/behance/sdk/datamanager/FiltersDataManager;->loadCreativeFields(Lcom/behance/sdk/IBehanceSDKUserCredentials;)V

    .line 107
    :cond_2
    return-object v0
.end method

.method public onCreativeFieldsLoadingFailure(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->dismiss()V

    .line 191
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
    .line 127
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->populateListView(Ljava/util/List;)V

    .line 129
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->callbacks:Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog$Callbacks;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->callbacks:Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog$Callbacks;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->selectedFields:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog$Callbacks;->onCreativeFieldsSelected(Ljava/util/List;)V

    .line 233
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 234
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 206
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 207
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->selectedFields:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 208
    const-string/jumbo v1, "BUNDLE_KEY_SELECTED_FIELDS"

    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->selectedFields:Ljava/util/List;

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 210
    :cond_0
    const-string/jumbo v0, "BUNDLE_KEY_SELECTABLE_FIELDS_COUNT"

    iget v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->selectableFieldCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 211
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 215
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 216
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$bool;->bsdk_big_screen:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$dimen;->global_filter_dialog_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 219
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setLayout(II)V

    .line 222
    :cond_0
    return-void
.end method

.method public setCallbacks(Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog$Callbacks;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->callbacks:Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog$Callbacks;

    .line 195
    return-void
.end method

.method public setSelectableFieldCount(I)V
    .locals 0

    .prologue
    .line 225
    iput p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->selectableFieldCount:I

    .line 226
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
    .line 198
    if-eqz p1, :cond_0

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->selectedFields:Ljava/util/List;

    .line 200
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->selectedFields:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 202
    :cond_0
    return-void
.end method
