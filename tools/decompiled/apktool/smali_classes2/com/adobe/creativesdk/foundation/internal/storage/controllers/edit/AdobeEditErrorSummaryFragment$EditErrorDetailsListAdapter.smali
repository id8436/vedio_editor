.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment$EditErrorDetailsListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AdobeEditErrorSummaryFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment;Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment$EditErrorDetailsListAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment;

    .line 80
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 81
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment$EditErrorDetailsListAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 89
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment$EditErrorDetailsListAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment$EditErrorDetailsListAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment$EditErrorDetailsListAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 95
    :cond_0
    const/4 v0, 0x0

    .line 96
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment$EditErrorDetailsListAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment$EditErrorDetailsListAdapter;->getItem(I)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/high16 v4, 0x41f00000    # 30.0f

    .line 103
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment$EditErrorDetailsListAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment;

    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 110
    if-eqz p2, :cond_1

    .line 111
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment$EditErrorDetailsListAdapter$ViewHolder;

    .line 112
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment$EditErrorDetailsListAdapter$ViewHolder;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    .line 113
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment$EditErrorDetailsListAdapter$ViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    move-object v0, v2

    .line 130
    :goto_0
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment$EditErrorDetailsListAdapter;->getItem(I)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData;

    move-result-object v2

    .line 131
    if-eqz v2, :cond_0

    .line 132
    iget-object v3, v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData;->title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-boolean v0, v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData;->isFile:Z

    if-nez v0, :cond_2

    .line 134
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->collection_folder:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    :cond_0
    :goto_1
    return-object p2

    .line 116
    :cond_1
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_assetview_upload_failed_assets_list_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 117
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetview_upload_failed_asset_item_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 118
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetview_upload_failed_asset_item_image:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 120
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment$EditErrorDetailsListAdapter$ViewHolder;

    invoke-direct {v2, p0, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment$EditErrorDetailsListAdapter$ViewHolder;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment$EditErrorDetailsListAdapter;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment$1;)V

    .line 121
    invoke-virtual {v2, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment$EditErrorDetailsListAdapter$ViewHolder;->setImageView(Landroid/widget/ImageView;)V

    .line 122
    invoke-virtual {v2, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment$EditErrorDetailsListAdapter$ViewHolder;->setPosition(I)V

    .line 123
    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment$EditErrorDetailsListAdapter$ViewHolder;->setTextView(Landroid/widget/TextView;)V

    .line 125
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 136
    :cond_2
    iget-object v0, v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData;->file:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;->ADOBE_ASSET_FILE_RENDITION_TYPE_PNG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;

    new-instance v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    invoke-direct {v3, v4, v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;-><init>(FF)V

    new-instance v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment$EditErrorDetailsListAdapter$1;

    invoke-direct {v4, p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment$EditErrorDetailsListAdapter$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment$EditErrorDetailsListAdapter;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getRenditionWithType(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    goto :goto_1
.end method
