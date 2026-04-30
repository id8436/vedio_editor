.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AdobeShowUploadTasksActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;


# direct methods
.method protected constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 342
    invoke-direct/range {p0 .. p5}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;->updateViewHolder(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;Ljava/lang/String;I)V

    return-void
.end method

.method private updateViewHolder(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;Ljava/lang/String;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 398
    if-eqz p1, :cond_1

    .line 399
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->isUploadDone()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;->access$600(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 400
    :cond_0
    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;->access$700(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;->access$800(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 402
    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;->access$900(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 404
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->getStatus()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;->Completed:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    if-ne v0, v1, :cond_2

    .line 405
    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;->access$900(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->upload_success_status:I

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;->access$700(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->ic_check_blue_24dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 426
    :cond_1
    :goto_0
    return-void

    .line 409
    :cond_2
    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;->access$900(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->upload_failed_status:I

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;->access$700(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->ic_report_problem_red_24dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 411
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->isUploadDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 412
    invoke-virtual {p0, p3, p4, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;->cancelUploadOfIndividualAsset(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;)V

    goto :goto_0

    .line 417
    :cond_3
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->getProgress()D

    move-result-wide v0

    double-to-int v0, v0

    .line 418
    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;->access$800(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 419
    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->isUploadDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 420
    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;->access$700(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;->access$700(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->ic_loop_black_24dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public addObserverAndUpdateView(ILcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;)V
    .locals 9

    .prologue
    .line 429
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->access$1000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$CustomUploadInfo;

    .line 430
    iget-object v3, v8, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$CustomUploadInfo;->uploadAssetData:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

    .line 432
    invoke-virtual {p0, v3, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;->setTitleAndThumbNail(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;)V

    .line 433
    iget-object v1, v8, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$CustomUploadInfo;->endPointType:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;

    iget-object v2, v8, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$CustomUploadInfo;->endPoint:Ljava/lang/String;

    move-object v0, p0

    move-object v4, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;->setCancelUploadListener(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;I)V

    .line 434
    iget-object v5, v8, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$CustomUploadInfo;->endPointType:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;

    iget-object v6, v8, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$CustomUploadInfo;->endPoint:Ljava/lang/String;

    move-object v2, p0

    move-object v4, p2

    move v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;->updateViewOnUiThread(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;Ljava/lang/String;I)V

    .line 436
    iget-object v0, v8, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$CustomUploadInfo;->endPointType:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;->AdobeAssetFolder:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    const-class v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->getInstance(Ljava/lang/Class;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;

    move-result-object v0

    iget-object v1, v8, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$CustomUploadInfo;->endPoint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->getUploadSessionOfEndPointFromId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

    move-result-object v0

    .line 438
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter$3;

    invoke-direct {v1, p0, p2, v8, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter$3;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$CustomUploadInfo;I)V

    .line 445
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->access$1100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 446
    invoke-virtual {v0, v3, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;->addObserverForAssetUpload(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Ljava/util/Observer;)V

    .line 472
    :goto_0
    return-void

    .line 448
    :cond_0
    iget-object v0, v8, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$CustomUploadInfo;->endPointType:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;->AdobeDCXManifest:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 449
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->getInstance(Ljava/lang/Class;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;

    move-result-object v0

    iget-object v1, v8, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$CustomUploadInfo;->endPoint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->getUploadSessionOfEndPointFromId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

    move-result-object v0

    .line 450
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter$4;

    invoke-direct {v1, p0, p2, v8, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter$4;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$CustomUploadInfo;I)V

    .line 457
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->access$1100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 458
    invoke-virtual {v0, v3, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;->addObserverForAssetUpload(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Ljava/util/Observer;)V

    goto :goto_0

    .line 460
    :cond_1
    const-class v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->getInstance(Ljava/lang/Class;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;

    move-result-object v0

    iget-object v1, v8, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$CustomUploadInfo;->endPoint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->getUploadSessionOfEndPointFromId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

    move-result-object v0

    .line 461
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter$5;

    invoke-direct {v1, p0, p2, v8, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter$5;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$CustomUploadInfo;I)V

    .line 468
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->access$1100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 469
    invoke-virtual {v0, v3, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;->addObserverForAssetUpload(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Ljava/util/Observer;)V

    goto :goto_0
.end method

.method public cancelUploadOfIndividualAsset(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;)V
    .locals 1

    .prologue
    .line 356
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;->AdobeAssetFolder:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    const-class v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->getInstance(Ljava/lang/Class;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->getUploadSessionOfEndPointFromId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

    move-result-object v0

    .line 358
    invoke-virtual {v0, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;->cancelIndividualUploadTaskOfAsset(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;)V

    .line 367
    :goto_0
    return-void

    .line 360
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;->AdobeDCXManifest:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->getInstance(Ljava/lang/Class;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->getUploadSessionOfEndPointFromId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

    move-result-object v0

    .line 362
    invoke-virtual {v0, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;->cancelIndividualUploadTaskOfAsset(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;)V

    goto :goto_0

    .line 364
    :cond_1
    const-class v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->getInstance(Ljava/lang/Class;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->getUploadSessionOfEndPointFromId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

    move-result-object v0

    .line 365
    invoke-virtual {v0, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;->cancelIndividualUploadTaskOfAsset(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;)V

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->access$1000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 500
    const/4 v0, 0x0

    .line 501
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->access$1000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public isItemCancellable(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 487
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->getProgress()D

    move-result-wide v2

    double-to-int v1, v2

    const/16 v2, 0x64

    if-ne v1, v2, :cond_1

    .line 494
    :cond_0
    :goto_0
    return v0

    .line 490
    :cond_1
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->getStatus()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    move-result-object v1

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;->YetToStart:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    if-eq v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->getStatus()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    move-result-object v1

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;->Started:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    if-eq v1, v2, :cond_2

    .line 491
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->getStatus()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    move-result-object v1

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;->InProgress:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    if-ne v1, v2, :cond_0

    .line 492
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 342
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;->onBindViewHolder(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;I)V
    .locals 0

    .prologue
    .line 483
    invoke-virtual {p0, p2, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;->addObserverAndUpdateView(ILcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;)V

    .line 484
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 342
    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;
    .locals 3

    .prologue
    .line 477
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_uploadingtasks_recycler_row_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 478
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;

    invoke-direct {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;Landroid/view/View;)V

    return-object v1
.end method

.method public setCancelUploadListener(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;I)V
    .locals 8

    .prologue
    .line 383
    invoke-static {p4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;->access$700(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;)Landroid/widget/ImageView;

    move-result-object v7

    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter$2;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;Ljava/lang/String;I)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    return-void
.end method

.method public setTitleAndThumbNail(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;)V
    .locals 5

    .prologue
    .line 370
    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;->access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$dimen;->upload_preview_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 372
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 373
    if-nez v0, :cond_0

    .line 374
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->getLocalAssetURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    :cond_0
    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;->access$400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_1

    .line 377
    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;->access$400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->getLocalAssetURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->getThumbnail(Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 379
    :cond_1
    return-void
.end method

.method public updateViewOnUiThread(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;Ljava/lang/String;I)V
    .locals 8

    .prologue
    .line 345
    iget-object v7, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;

    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;Ljava/lang/String;I)V

    invoke-virtual {v7, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 351
    return-void
.end method
