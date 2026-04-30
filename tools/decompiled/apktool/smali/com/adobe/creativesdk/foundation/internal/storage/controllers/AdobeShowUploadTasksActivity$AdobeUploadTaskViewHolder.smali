.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AdobeShowUploadTasksActivity.java"


# instance fields
.field private isCancellable:Ljava/lang/Boolean;

.field private isCancelled:Ljava/lang/Boolean;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mThumbnailImageView:Landroid/widget/ImageView;

.field private mUploadAssetTextStatus:Landroid/widget/TextView;

.field private mUploadItemTitle:Landroid/widget/TextView;

.field private mUploadStatusImageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 332
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;

    .line 333
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 329
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;->isCancelled:Ljava/lang/Boolean;

    .line 330
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;->isCancellable:Ljava/lang/Boolean;

    .line 334
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->upload_asset_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;->mUploadItemTitle:Landroid/widget/TextView;

    .line 335
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->upload_cancel_image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;->mUploadStatusImageView:Landroid/widget/ImageView;

    .line 336
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->uploading_progress_bar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    .line 337
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->upload_asset_img:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;->mThumbnailImageView:Landroid/widget/ImageView;

    .line 338
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->upload_asset_text_status:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;->mUploadAssetTextStatus:Landroid/widget/TextView;

    .line 339
    return-void
.end method

.method static synthetic access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;->mUploadItemTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;->mThumbnailImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;->isCancellable:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$502(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;->isCancellable:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$600(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;->isCancelled:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$602(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;->isCancelled:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$700(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;->mUploadStatusImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$900(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;->mUploadAssetTextStatus:Landroid/widget/TextView;

    return-object v0
.end method
