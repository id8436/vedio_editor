.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment$UploadErrorDetailsListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AdobeUploadErrorSummaryFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment;Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment$UploadErrorDetailsListAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment;

    .line 90
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 91
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment$UploadErrorDetailsListAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 99
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment$UploadErrorDetailsListAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment$UploadErrorDetailsListAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment$UploadErrorDetailsListAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 105
    :cond_0
    const/4 v0, 0x0

    .line 106
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment$UploadErrorDetailsListAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment$UploadErrorDetailsListAdapter;->getItem(I)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 112
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment$UploadErrorDetailsListAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment;

    invoke-virtual {v0, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 120
    if-eqz p2, :cond_0

    .line 121
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment$UploadErrorDetailsListAdapter$ViewHolder;

    .line 122
    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment$UploadErrorDetailsListAdapter$ViewHolder;->_textView:Landroid/widget/TextView;

    .line 123
    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment$UploadErrorDetailsListAdapter$ViewHolder;->_imageView:Landroid/widget/ImageView;

    move-object v0, v2

    .line 140
    :goto_0
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment$UploadErrorDetailsListAdapter;->getItem(I)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

    move-result-object v2

    .line 141
    iget-object v3, v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 144
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadThumbnailMgr;->getInstance()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadThumbnailMgr;

    move-result-object v0

    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment$UploadErrorDetailsListAdapter$1;

    invoke-direct {v3, p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment$UploadErrorDetailsListAdapter$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment$UploadErrorDetailsListAdapter;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadThumbnailMgr;->getThumbnailasBitmap(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V

    .line 154
    return-object p2

    .line 127
    :cond_0
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_assetview_upload_failed_assets_list_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 128
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetview_upload_failed_asset_item_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 129
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetview_upload_failed_asset_item_image:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 131
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment$UploadErrorDetailsListAdapter$ViewHolder;

    invoke-direct {v2, p0, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment$UploadErrorDetailsListAdapter$ViewHolder;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment$UploadErrorDetailsListAdapter;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment$1;)V

    .line 132
    iput-object v1, v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment$UploadErrorDetailsListAdapter$ViewHolder;->_imageView:Landroid/widget/ImageView;

    .line 133
    iput p1, v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment$UploadErrorDetailsListAdapter$ViewHolder;->_position:I

    .line 134
    iput-object v0, v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment$UploadErrorDetailsListAdapter$ViewHolder;->_textView:Landroid/widget/TextView;

    .line 136
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method
