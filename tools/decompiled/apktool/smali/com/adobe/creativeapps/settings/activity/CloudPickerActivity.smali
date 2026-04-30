.class public Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "CloudPickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private _actionBarToolbar:Landroid/support/v7/widget/Toolbar;

.field _availableClouds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mLoadingClouds:Landroid/widget/LinearLayout;

.field private mSpinner:Landroid/widget/ProgressBar;

.field private preCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

.field private previousSelectedPos:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 61
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->previousSelectedPos:Ljava/lang/Integer;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->_availableClouds:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->updateCloudsList()V

    return-void
.end method

.method private getViewByPosition(ILandroid/widget/ListView;)Landroid/view/View;
    .locals 2

    .prologue
    .line 170
    invoke-virtual {p2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 171
    invoke-virtual {p2}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 173
    if-lt p1, v0, :cond_0

    if-le p1, v1, :cond_1

    .line 174
    :cond_0
    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 177
    :goto_0
    return-object v0

    .line 176
    :cond_1
    sub-int v0, p1, v0

    .line 177
    invoke-virtual {p2, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private updateCloudsList()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->mAdapter:Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter;

    invoke-virtual {v0}, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter;->clear()V

    .line 163
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->mAdapter:Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter;

    iget-object v1, p0, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->_availableClouds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter;->addAll(Ljava/util/Collection;)V

    .line 164
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->mAdapter:Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 165
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->mLoadingClouds:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 167
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->preCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 96
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->setResult(I)V

    .line 99
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->finish()V

    .line 100
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->setResult(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    sget v0, Lcom/adobe/creativeapps/settings/R$layout;->activity_cloud_picker:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->setContentView(I)V

    .line 73
    invoke-static {p0}, Lcom/h/a/d;->a(Landroid/app/Activity;)V

    .line 74
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->cloud_list1:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->mListView:Landroid/widget/ListView;

    .line 75
    new-instance v0, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter;

    iget-object v1, p0, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->_availableClouds:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->mAdapter:Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter;

    .line 76
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 77
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->loading_cloud_Progress:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->mLoadingClouds:Landroid/widget/LinearLayout;

    .line 78
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->spinner_Progress:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->mSpinner:Landroid/widget/ProgressBar;

    .line 79
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->cloud_picker_actionbar_toolbar:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->_actionBarToolbar:Landroid/support/v7/widget/Toolbar;

    .line 80
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->_actionBarToolbar:Landroid/support/v7/widget/Toolbar;

    sget v1, Lcom/adobe/creativeapps/settings/R$drawable;->ic_arrow_back_white_24dp:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 81
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->_actionBarToolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity$1;

    invoke-direct {v1, p0}, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity$1;-><init>(Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->preCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 88
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->cloudpicker_actionbar_title:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 89
    sget v1, Lcom/adobe/creativeapps/settings/R$string;->title_activity_cloudpicker:I

    invoke-virtual {p0, v1}, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->mListView:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 91
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    const/4 v3, 0x0

    .line 104
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->previousSelectedPos:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p3, v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->_availableClouds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 105
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v1

    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->_availableClouds:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->setDefaultCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 106
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->previousSelectedPos:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->previousSelectedPos:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->mListView:Landroid/widget/ListView;

    invoke-direct {p0, v0, v1}, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->getViewByPosition(ILandroid/widget/ListView;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/adobe/creativeapps/settings/R$id;->Default_Cloud_selector:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    move-object v1, v0

    .line 107
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->mListView:Landroid/widget/ListView;

    invoke-direct {p0, p3, v0}, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->getViewByPosition(ILandroid/widget/ListView;)Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/adobe/creativeapps/settings/R$id;->Default_Cloud_selector:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 108
    if-eqz v1, :cond_0

    .line 109
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    invoke-virtual {v1}, Landroid/widget/ImageView;->requestLayout()V

    .line 112
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    .line 114
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->previousSelectedPos:Ljava/lang/Integer;

    .line 115
    sget v0, Lcom/adobe/creativeapps/settings/R$string;->sync_location_changed:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 117
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->onBackPressed()V

    .line 118
    return-void

    .line 106
    :cond_2
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 123
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 124
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 128
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 129
    invoke-virtual {p0}, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->updateCloudList()V

    .line 130
    return-void
.end method

.method public setCloudSelection(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->previousSelectedPos:Ljava/lang/Integer;

    .line 134
    return-void
.end method

.method public updateCloudList()V
    .locals 4

    .prologue
    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    iget-object v1, p0, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->mSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Lcom/adobe/creativeapps/settings/R$color;->settings_primary:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 139
    iget-object v1, p0, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->mListView:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 140
    iget-object v1, p0, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->mLoadingClouds:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 141
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v1

    new-instance v2, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity$2;-><init>(Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;Ljava/util/ArrayList;)V

    new-instance v0, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity$3;

    invoke-direct {v0, p0}, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity$3;-><init>(Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;)V

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->refreshClouds(Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)V

    .line 158
    return-void
.end method
