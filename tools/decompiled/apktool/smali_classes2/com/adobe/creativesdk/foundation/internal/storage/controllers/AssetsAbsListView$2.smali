.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$2;
.super Ljava/lang/Object;
.source "AssetsAbsListView.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$IThumbnailLoadCompletionHandler;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;

.field final synthetic val$assetViewCell:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

.field final synthetic val$cellposition:I

.field final synthetic val$shouldFilterOutAsset:Z


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;IZ)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$2;->val$assetViewCell:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

    iput p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$2;->val$cellposition:I

    iput-boolean p4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$2;->val$shouldFilterOutAsset:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;Landroid/graphics/Bitmap;Z)V
    .locals 10

    .prologue
    .line 150
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$2;->val$assetViewCell:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->getPosition()I

    move-result v0

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$2;->val$cellposition:I

    if-ne v0, v1, :cond_0

    .line 151
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$2;->val$shouldFilterOutAsset:Z

    if-eqz v0, :cond_1

    const v0, 0x3e99999a    # 0.3f

    .line 152
    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$2;->val$assetViewCell:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->displayThumnail(Landroid/graphics/Bitmap;FZ)V

    .line 154
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$2;->val$assetViewCell:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_videoDuration:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$2;->val$assetViewCell:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_videoIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    .line 157
    instance-of v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;

    if-eqz v1, :cond_0

    .line 158
    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;

    .line 159
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;->canStreamVideo()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 160
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;->getVideoDuration()I

    move-result v0

    .line 161
    const-string/jumbo v1, "%02d:%02d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v6, v0

    .line 162
    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v6, v0

    .line 163
    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v3

    .line 161
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$2;->val$assetViewCell:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_videoLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 166
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$2;->val$assetViewCell:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_bottomInfoLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 167
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$2;->val$assetViewCell:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_videoDuration:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$2;->val$assetViewCell:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_videoIndicator:Landroid/widget/ImageView;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->video_indicator:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 178
    :cond_0
    :goto_1
    return-void

    .line 151
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto/16 :goto_0

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$2;->val$assetViewCell:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_videoLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$2;->val$assetViewCell:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_bottomInfoLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method
