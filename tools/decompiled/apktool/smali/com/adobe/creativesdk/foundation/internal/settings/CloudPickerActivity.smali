.class public Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;
.super Lcom/adobe/creativesdk/foundation/internal/base/AdobeTOUHandlerActivity;
.source "CloudPickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field availableClouds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;",
            ">;"
        }
    .end annotation
.end field

.field public indicateDefaultCloud:Z

.field private loadingClouds:Landroid/app/ProgressDialog;

.field private mAdapter:Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private previousSelectedPos:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeTOUHandlerActivity;-><init>()V

    .line 60
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->previousSelectedPos:Ljava/lang/Integer;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->availableClouds:Ljava/util/List;

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->indicateDefaultCloud:Z

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->updateCloudsList()V

    return-void
.end method

.method private getViewByPosition(ILandroid/widget/ListView;)Landroid/view/View;
    .locals 2

    .prologue
    .line 177
    invoke-virtual {p2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 178
    invoke-virtual {p2}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 180
    if-lt p1, v0, :cond_0

    if-le p1, v1, :cond_1

    .line 181
    :cond_0
    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    .line 183
    :cond_1
    sub-int v0, p1, v0

    .line 184
    invoke-virtual {p2, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private handleCloudChange()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->setResult(I)V

    .line 117
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->finish()V

    .line 118
    return-void
.end method

.method private updateCloudsList()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->mAdapter:Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter;->clear()V

    .line 169
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->mAdapter:Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->availableClouds:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter;->addAll(Ljava/util/Collection;)V

    .line 170
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->mAdapter:Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 171
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->loadingClouds:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->loadingClouds:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 174
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 68
    invoke-static {p1}, Lg/a/a/a/c;->a(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeTOUHandlerActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->setResult(I)V

    .line 95
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->finish()V

    .line 96
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeTOUHandlerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->activity_cloud_picker:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->setContentView(I)V

    .line 75
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_cloud_list1:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->mListView:Landroid/widget/ListView;

    .line 76
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->availableClouds:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->mAdapter:Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter;

    .line 77
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 78
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_cloud_picker_actionbar_toolbar:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 79
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->ic_arrow_back_white_24dp:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 80
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity$1;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "INDICATE_DEFAULT_CLOUD"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->indicateDefaultCloud:Z

    .line 87
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_cloudpicker_actionbar_title:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 88
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_asset_ux_settings_change_location:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 89
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->updateCloudList()V

    .line 90
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->previousSelectedPos:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p3, v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->availableClouds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->availableClouds:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->setDefaultCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 102
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->previousSelectedPos:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->previousSelectedPos:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->mListView:Landroid/widget/ListView;

    invoke-direct {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->getViewByPosition(ILandroid/widget/ListView;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_Default_Cloud_selector:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    move-object v1, v0

    .line 103
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->mListView:Landroid/widget/ListView;

    invoke-direct {p0, p3, v0}, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->getViewByPosition(ILandroid/widget/ListView;)Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_Default_Cloud_selector:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 104
    if-eqz v1, :cond_0

    .line 105
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    invoke-virtual {v1}, Landroid/widget/ImageView;->requestLayout()V

    .line 108
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    .line 110
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->previousSelectedPos:Ljava/lang/Integer;

    .line 111
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->handleCloudChange()V

    .line 113
    :cond_1
    return-void

    .line 102
    :cond_2
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 123
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeTOUHandlerActivity;->onPause()V

    .line 124
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 128
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeTOUHandlerActivity;->onResume()V

    .line 129
    return-void
.end method

.method public setCloudSelection(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->previousSelectedPos:Ljava/lang/Integer;

    .line 133
    return-void
.end method

.method public updateCloudList()V
    .locals 4

    .prologue
    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->indicateDefaultCloud:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/settings/AdobeCCAppStatus;->getCachedClouds()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/settings/AdobeCCAppStatus;->getCachedClouds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/settings/AdobeCCAppStatus;->getCachedClouds()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->availableClouds:Ljava/util/List;

    .line 140
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->updateCloudsList()V

    .line 164
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->mListView:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 144
    const/4 v1, 0x0

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_asset_ux_wait_message:I

    invoke-virtual {p0, v2}, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->loadingClouds:Landroid/app/ProgressDialog;

    .line 145
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->loadingClouds:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 146
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v1

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;Ljava/util/ArrayList;)V

    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity$3;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity$3;-><init>(Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;)V

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->refreshClouds(Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)V

    goto :goto_0
.end method
