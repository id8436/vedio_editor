.class public Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "GalleryAdapter.java"

# interfaces
.implements Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;
.implements Lcom/adobe/premiereclip/util/Utilities$ThumbnailLoadListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;",
        "Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;",
        "Lcom/adobe/premiereclip/util/Utilities$ThumbnailLoadListener;"
    }
.end annotation


# static fields
.field private static final HEADER_THUMBNAIL_SCALE:F = 0.625f

.field public static final NO_PHOTOS:I = 0xb

.field private static final TAG:Ljava/lang/String; = "GALLERY_ADAPTER"

.field private static final VIEW_TYPE_CONTENT:I = 0x1

.field private static final VIEW_TYPE_HEADER:I = 0x0

.field private static final VIEW_TYPE_NO_CONTENT:I = 0x2


# instance fields
.field private mActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

.field private mCanProcess:Z

.field private mDataset:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;",
            ">;"
        }
    .end annotation
.end field

.field private mEnableMultiSelect:Z

.field private mHandler:Landroid/os/Handler;

.field private final mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mSource:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;

.field private mTfCollection:Lcom/h/a/a;

.field private mTimelineThumbSize:I


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Ljava/util/ArrayList;Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;ILcom/h/a/a;Landroid/support/v7/widget/RecyclerView;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;",
            ">;",
            "Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;",
            "I",
            "Lcom/h/a/a;",
            "Landroid/support/v7/widget/RecyclerView;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 84
    iput-object p2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mDataset:Ljava/util/ArrayList;

    .line 85
    iput p4, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mTimelineThumbSize:I

    .line 86
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mCanProcess:Z

    .line 88
    iput-object p5, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mTfCollection:Lcom/h/a/a;

    .line 89
    iput-object p6, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 90
    iput-boolean p7, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mEnableMultiSelect:Z

    .line 91
    invoke-virtual {p6}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    .line 92
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$1;-><init>(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mHandler:Landroid/os/Handler;

    .line 104
    iput-object p3, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mSource:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mDataset:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;)Landroid/support/v7/widget/GridLayoutManager;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;Lcom/adobe/premiereclip/mediabrowser/Bucket;Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->showBucketStateUI(Lcom/adobe/premiereclip/mediabrowser/Bucket;Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;)V

    return-void
.end method

.method static synthetic access$400(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;)Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mSource:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;

    return-object v0
.end method

.method static synthetic access$500(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;Lcom/adobe/premiereclip/mediabrowser/Bucket;Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->setBucketItems(Lcom/adobe/premiereclip/mediabrowser/Bucket;Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;)V

    return-void
.end method

.method static synthetic access$600(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;Lcom/adobe/premiereclip/mediabrowser/Bucket;ZLcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->bucketSelectTask(Lcom/adobe/premiereclip/mediabrowser/Bucket;ZLcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;)V

    return-void
.end method

.method static synthetic access$900(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;Lcom/adobe/premiereclip/mediabrowser/MediaModel;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->updateParentBucketView(Lcom/adobe/premiereclip/mediabrowser/MediaModel;)V

    return-void
.end method

.method private bucketSelectTask(Lcom/adobe/premiereclip/mediabrowser/Bucket;ZLcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;)V
    .locals 11

    .prologue
    const/16 v10, 0x64

    const/4 v2, 0x0

    .line 487
    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->getItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 488
    if-nez p2, :cond_0

    .line 489
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    .line 490
    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->setMediaSelected(Z)V

    .line 491
    iget-object v3, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-virtual {v3, v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->onMediaItemSelection(Lcom/adobe/premiereclip/mediabrowser/MediaModel;)V

    .line 492
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->updateMediaView(Lcom/adobe/premiereclip/mediabrowser/MediaModel;)V

    goto :goto_0

    .line 497
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    move v3, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    .line 498
    int-to-long v6, v3

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getSize()J

    move-result-wide v8

    add-long/2addr v6, v8

    long-to-int v3, v6

    .line 499
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 500
    goto :goto_1

    .line 501
    :cond_1
    int-to-long v6, v3

    const-wide v8, 0x140000000L

    cmp-long v0, v6, v8

    if-ltz v0, :cond_3

    .line 503
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0410

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 504
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 505
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 523
    :cond_2
    :goto_2
    return-void

    .line 506
    :cond_3
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getSelectedMediaCount()I

    move-result v0

    add-int/2addr v0, v1

    if-le v0, v10, :cond_4

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a0412

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    .line 508
    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a0411

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 510
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 511
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 513
    :cond_4
    iget-object v0, p3, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;->mCheckBox:Landroid/widget/ImageView;

    const v1, 0x7f020175

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 514
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    .line 515
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->isMediaSelected()Z

    move-result v2

    if-nez v2, :cond_5

    .line 516
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->setMediaSelected(Z)V

    .line 517
    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-virtual {v2, v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->onMediaItemSelection(Lcom/adobe/premiereclip/mediabrowser/MediaModel;)V

    .line 518
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->updateMediaView(Lcom/adobe/premiereclip/mediabrowser/MediaModel;)V

    goto :goto_3
.end method

.method private checkIfMediaAlreadySelected(Lcom/adobe/premiereclip/mediabrowser/MediaModel;)Z
    .locals 3

    .prologue
    .line 460
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getSelectedMediaList()Ljava/util/ArrayList;

    move-result-object v0

    .line 461
    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v1

    .line 462
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    .line 463
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    const/4 v0, 0x1

    .line 466
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onBindHeaderViewHolder(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;ILcom/adobe/premiereclip/mediabrowser/Bucket;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/high16 v8, 0x3f200000    # 0.625f

    .line 220
    invoke-virtual {p3}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;->id:Ljava/lang/String;

    .line 221
    invoke-static {p1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;->access$200(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p3}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    invoke-direct {p0, p3, p1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->showBucketStateUI(Lcom/adobe/premiereclip/mediabrowser/Bucket;Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;)V

    .line 224
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->setCancelThumbnailDownload(Z)V

    .line 226
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mSource:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;

    instance-of v0, v0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource;

    if-eqz v0, :cond_2

    .line 227
    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    invoke-static {p1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;->access$200(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 229
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 248
    :cond_0
    :goto_0
    iget-object v6, p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;

    move-object v1, p0

    move-object v2, p3

    move v3, p2

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;-><init>(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;Lcom/adobe/premiereclip/mediabrowser/Bucket;ILcom/adobe/premiereclip/mediabrowser/GalleryAdapter;Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mEnableMultiSelect:Z

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;->mCheckBox:Landroid/widget/ImageView;

    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$3;

    invoke-direct {v1, p0, p3, p1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$3;-><init>(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;Lcom/adobe/premiereclip/mediabrowser/Bucket;Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    :cond_1
    return-void

    .line 231
    :cond_2
    invoke-virtual {p3}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p3}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    move-object v3, v0

    .line 232
    :goto_1
    if-eqz v3, :cond_0

    .line 233
    invoke-virtual {v3}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getMediaType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 234
    sget-object v1, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->IMAGE_NON_TITLE:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    invoke-virtual {p3}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getPath()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    .line 235
    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    iget v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mTimelineThumbSize:I

    int-to-float v0, v0

    mul-float/2addr v0, v8

    float-to-int v7, v0

    iget v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mTimelineThumbSize:I

    int-to-float v0, v0

    mul-float/2addr v0, v8

    float-to-int v8, v0

    move-object v9, p0

    .line 234
    invoke-static/range {v1 .. v9}, Lcom/adobe/premiereclip/util/ThumbnailHelper;->load(Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;Ljava/lang/String;Ljava/lang/String;JLandroid/widget/ImageView;IILcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;)V

    goto :goto_0

    .line 231
    :cond_3
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_1

    .line 237
    :cond_4
    const/16 v0, 0x258

    .line 238
    invoke-virtual {v3}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getDuration()J

    move-result-wide v4

    const-wide/16 v6, 0x320

    cmp-long v1, v4, v6

    if-gez v1, :cond_5

    .line 239
    invoke-virtual {v3}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getDuration()J

    move-result-wide v0

    const-wide/16 v4, 0x2

    div-long/2addr v0, v4

    long-to-int v0, v0

    .line 241
    :cond_5
    sget-object v1, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->VIDEO:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    invoke-virtual {p3}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getPath()Ljava/lang/String;

    move-result-object v3

    int-to-long v4, v0

    .line 242
    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    iget v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mTimelineThumbSize:I

    int-to-float v0, v0

    mul-float/2addr v0, v8

    float-to-int v7, v0

    iget v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mTimelineThumbSize:I

    int-to-float v0, v0

    mul-float/2addr v0, v8

    float-to-int v8, v0

    move-object v9, p0

    .line 241
    invoke-static/range {v1 .. v9}, Lcom/adobe/premiereclip/util/ThumbnailHelper;->load(Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;Ljava/lang/String;Ljava/lang/String;JLandroid/widget/ImageView;IILcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;)V

    goto/16 :goto_0
.end method

.method private onBindNoMediaViewHolder(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$NoMediaViewHolder;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 215
    const-string/jumbo v0, "GALLERY_ADAPTER"

    const-string/jumbo v1, "NoMediaBindViewHolder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iput-object p3, p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$NoMediaViewHolder;->id:Ljava/lang/String;

    .line 217
    iget-object v0, p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$NoMediaViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a043f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    return-void
.end method

.method private onBindThumbnailViewHolder(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;ILcom/adobe/premiereclip/mediabrowser/MediaModel;)V
    .locals 11

    .prologue
    .line 370
    invoke-virtual {p3}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;->id:Ljava/lang/String;

    .line 371
    iget-object v0, p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 372
    invoke-virtual {p3}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getMediaType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 373
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mSource:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;

    sget-object v2, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->IMAGE_NON_TITLE:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    const-wide/16 v4, -0x1

    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    iget v7, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mTimelineThumbSize:I

    iget v8, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mTimelineThumbSize:I

    iget-object v10, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mHandler:Landroid/os/Handler;

    move-object v3, p3

    move-object v9, p0

    invoke-virtual/range {v1 .. v10}, Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;->fetchThumbnail(Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;Lcom/adobe/premiereclip/mediabrowser/MediaModel;JLandroid/widget/ImageView;IILcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;Landroid/os/Handler;)V

    .line 375
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mSource:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;

    instance-of v0, v0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;

    if-eqz v0, :cond_0

    .line 376
    invoke-direct {p0, p3}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->checkIfMediaAlreadySelected(Lcom/adobe/premiereclip/mediabrowser/MediaModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->setMediaSelected(Z)V

    .line 378
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;->setSelected(Z)V

    .line 379
    invoke-direct {p0, p3}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->updateParentBucketView(Lcom/adobe/premiereclip/mediabrowser/MediaModel;)V

    .line 402
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 403
    invoke-virtual {p3}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->isMediaSelected()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 404
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;->setSelected(Z)V

    .line 409
    :goto_1
    invoke-virtual {p3}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getMediaType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 410
    iget-object v0, p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$4;

    invoke-direct {v1, p0, p3}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$4;-><init>(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;Lcom/adobe/premiereclip/mediabrowser/MediaModel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 427
    :cond_1
    iget-object v0, p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$5;

    invoke-direct {v1, p0, p3, p1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$5;-><init>(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;Lcom/adobe/premiereclip/mediabrowser/MediaModel;Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    return-void

    .line 382
    :cond_2
    invoke-virtual {p3}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getMediaType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 383
    const/16 v0, 0x258

    .line 384
    invoke-virtual {p3}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x320

    cmp-long v1, v2, v4

    if-gez v1, :cond_3

    .line 385
    invoke-virtual {p3}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 387
    :cond_3
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mSource:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;

    sget-object v2, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->VIDEO:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    int-to-long v4, v0

    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    iget v7, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mTimelineThumbSize:I

    iget v8, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mTimelineThumbSize:I

    iget-object v10, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mHandler:Landroid/os/Handler;

    move-object v3, p3

    move-object v9, p0

    invoke-virtual/range {v1 .. v10}, Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;->fetchThumbnail(Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;Lcom/adobe/premiereclip/mediabrowser/MediaModel;JLandroid/widget/ImageView;IILcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;Landroid/os/Handler;)V

    .line 389
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mSource:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;

    instance-of v0, v0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;

    if-eqz v0, :cond_4

    .line 390
    iget-object v0, p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;->mClipTime:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 391
    invoke-direct {p0, p3}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->checkIfMediaAlreadySelected(Lcom/adobe/premiereclip/mediabrowser/MediaModel;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 392
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->setMediaSelected(Z)V

    .line 393
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;->setSelected(Z)V

    .line 394
    invoke-direct {p0, p3}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->updateParentBucketView(Lcom/adobe/premiereclip/mediabrowser/MediaModel;)V

    .line 397
    :cond_4
    iget-object v0, p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;->mClipTime:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    const/4 v1, 0x0

    invoke-static {v2, v3, v1}, Lcom/adobe/premiereclip/util/Utilities;->getTimeString(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 399
    :cond_5
    const-string/jumbo v0, "GALLERY_ADAPTER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown media type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 406
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;->setSelected(Z)V

    goto/16 :goto_1
.end method

.method private declared-synchronized setBucketItems(Lcom/adobe/premiereclip/mediabrowser/Bucket;Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;)V
    .locals 4

    .prologue
    .line 326
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->getState()Lcom/adobe/premiereclip/mediabrowser/Bucket$State;

    move-result-object v0

    sget-object v1, Lcom/adobe/premiereclip/mediabrowser/Bucket$State;->LOADING:Lcom/adobe/premiereclip/mediabrowser/Bucket$State;

    if-ne v0, v1, :cond_0

    .line 327
    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->getClipPosition(Ljava/lang/String;)I

    move-result v0

    .line 328
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mDataset:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->getThumbnailItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 329
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->notifyDataSetChanged()V

    .line 330
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 332
    sget-object v0, Lcom/adobe/premiereclip/mediabrowser/Bucket$State;->EXPANDED:Lcom/adobe/premiereclip/mediabrowser/Bucket$State;

    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->setState(Lcom/adobe/premiereclip/mediabrowser/Bucket$State;)V

    .line 333
    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->showBucketStateUI(Lcom/adobe/premiereclip/mediabrowser/Bucket;Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    :cond_0
    monitor-exit p0

    return-void

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private showBucketStateUI(Lcom/adobe/premiereclip/mediabrowser/Bucket;Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 338
    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->getState()Lcom/adobe/premiereclip/mediabrowser/Bucket$State;

    move-result-object v0

    .line 339
    iget-boolean v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mEnableMultiSelect:Z

    if-eqz v1, :cond_2

    .line 340
    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    iget-object v1, p2, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;->mCheckBox:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 342
    iget-object v1, p2, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;->mCheckBox:Landroid/widget/ImageView;

    const v2, 0x7f020175

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 353
    :goto_0
    sget-object v1, Lcom/adobe/premiereclip/mediabrowser/Bucket$State;->COLLAPSED:Lcom/adobe/premiereclip/mediabrowser/Bucket$State;

    if-ne v0, v1, :cond_3

    .line 354
    iget-object v0, p2, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;->mSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 355
    iget-object v0, p2, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 356
    iget-object v0, p2, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;->mArrowImageView:Landroid/widget/ImageView;

    const v1, 0x7f02016e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 367
    :goto_1
    return-void

    .line 343
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->getState()Lcom/adobe/premiereclip/mediabrowser/Bucket$State;

    move-result-object v1

    sget-object v2, Lcom/adobe/premiereclip/mediabrowser/Bucket$State;->EXPANDED:Lcom/adobe/premiereclip/mediabrowser/Bucket$State;

    if-ne v1, v2, :cond_1

    .line 344
    iget-object v1, p2, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;->mCheckBox:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 345
    iget-object v1, p2, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;->mCheckBox:Landroid/widget/ImageView;

    const v2, 0x7f020176

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 347
    :cond_1
    iget-object v1, p2, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;->mCheckBox:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 351
    :cond_2
    iget-object v1, p2, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;->mCheckBox:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 358
    :cond_3
    sget-object v1, Lcom/adobe/premiereclip/mediabrowser/Bucket$State;->EXPANDED:Lcom/adobe/premiereclip/mediabrowser/Bucket$State;

    if-ne v0, v1, :cond_4

    .line 359
    iget-object v0, p2, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;->mSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 360
    iget-object v0, p2, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 361
    iget-object v0, p2, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;->mArrowImageView:Landroid/widget/ImageView;

    const v1, 0x7f020170

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 364
    :cond_4
    iget-object v0, p2, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 365
    iget-object v0, p2, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;->mSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateMediaView(Lcom/adobe/premiereclip/mediabrowser/MediaModel;)V
    .locals 2

    .prologue
    .line 479
    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->getClipPosition(Ljava/lang/String;)I

    move-result v1

    .line 480
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 481
    if-eqz v0, :cond_0

    .line 482
    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;

    invoke-direct {p0, v0, v1, p1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->onBindThumbnailViewHolder(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;ILcom/adobe/premiereclip/mediabrowser/MediaModel;)V

    .line 484
    :cond_0
    return-void
.end method

.method private updateParentBucketView(Lcom/adobe/premiereclip/mediabrowser/MediaModel;)V
    .locals 3

    .prologue
    .line 470
    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getParentBucket()Lcom/adobe/premiereclip/mediabrowser/Bucket;

    move-result-object v1

    .line 471
    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->getClipPosition(Ljava/lang/String;)I

    move-result v2

    .line 472
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 473
    if-eqz v0, :cond_0

    .line 474
    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;

    invoke-direct {p0, v0, v2, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->onBindHeaderViewHolder(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;ILcom/adobe/premiereclip/mediabrowser/Bucket;)V

    .line 476
    :cond_0
    return-void
.end method


# virtual methods
.method clearDataset()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 192
    return-void
.end method

.method public getClipPosition(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 555
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 556
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;

    .line 557
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;->getViewType()I

    move-result v2

    .line 558
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 559
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;->getMediaModel()Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    move-result-object v0

    .line 560
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 574
    :cond_0
    :goto_1
    return v1

    .line 563
    :cond_1
    if-nez v2, :cond_3

    .line 564
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;->getBucket()Lcom/adobe/premiereclip/mediabrowser/Bucket;

    move-result-object v0

    .line 565
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 569
    :cond_3
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 574
    :cond_4
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 131
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;->getViewType()I

    move-result v0

    .line 132
    if-nez v0, :cond_0

    .line 133
    const/4 v0, 0x0

    .line 137
    :goto_0
    return v0

    .line 134
    :cond_0
    if-ne v0, v1, :cond_1

    move v0, v1

    .line 135
    goto :goto_0

    .line 137
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method isDatasetEmpty()Z
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isProcessing()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mCanProcess:Z

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .prologue
    .line 532
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;

    .line 533
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;->getViewType()I

    move-result v1

    .line 534
    if-nez v1, :cond_0

    .line 535
    check-cast p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;->getBucket()Lcom/adobe/premiereclip/mediabrowser/Bucket;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->onBindHeaderViewHolder(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;ILcom/adobe/premiereclip/mediabrowser/Bucket;)V

    .line 542
    :goto_0
    return-void

    .line 536
    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 537
    check-cast p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;->getMediaModel()Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->onBindThumbnailViewHolder(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;ILcom/adobe/premiereclip/mediabrowser/MediaModel;)V

    goto :goto_0

    .line 539
    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 540
    check-cast p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$NoMediaViewHolder;

    invoke-direct {p0, p1, p2, v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->onBindNoMediaViewHolder(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$NoMediaViewHolder;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 150
    if-nez p2, :cond_0

    .line 151
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04016d

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 152
    new-instance v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;

    const/high16 v2, 0x3f200000    # 0.625f

    iget v3, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mTimelineThumbSize:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mTfCollection:Lcom/h/a/a;

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;-><init>(Landroid/view/View;ILcom/h/a/a;)V

    .line 159
    :goto_0
    return-object v0

    .line 153
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 154
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04016f

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 155
    new-instance v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;

    iget v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mTimelineThumbSize:I

    iget-object v3, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mTfCollection:Lcom/h/a/a;

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;-><init>(Landroid/view/View;ILcom/h/a/a;)V

    goto :goto_0

    .line 157
    :cond_1
    const-string/jumbo v0, "GALLERY_ADAPTER"

    const-string/jumbo v1, "OnCreateViewHolder for no Media"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040171

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 159
    new-instance v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$NoMediaViewHolder;

    iget v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mTimelineThumbSize:I

    iget-object v3, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mTfCollection:Lcom/h/a/a;

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$NoMediaViewHolder;-><init>(Landroid/view/View;ILcom/h/a/a;)V

    goto :goto_0
.end method

.method public onFailureImageLoad(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 594
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mSource:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;

    instance-of v0, v0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource;

    if-eqz v0, :cond_0

    .line 596
    const-string/jumbo v0, "33"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 597
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 598
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a043c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->textViewLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 600
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->signInButton:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->showErrorToast()V

    goto :goto_0
.end method

.method public onSuccessImageLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    const/high16 v2, -0x1000000

    .line 579
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->getClipPosition(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 580
    instance-of v1, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;

    if-eqz v1, :cond_1

    .line 581
    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 582
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 583
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 584
    :cond_1
    instance-of v1, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;

    if-eqz v1, :cond_0

    .line 585
    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 586
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 587
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .prologue
    const v3, 0x7f11011b

    const/4 v2, 0x0

    .line 169
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 170
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 172
    instance-of v0, p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;

    if-eqz v0, :cond_0

    .line 173
    check-cast p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;

    .line 174
    invoke-static {p1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;->access$200(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 176
    iget-object v0, p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    iget-object v0, p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 188
    :goto_0
    return-void

    .line 178
    :cond_0
    instance-of v0, p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;

    if-eqz v0, :cond_1

    .line 179
    check-cast p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;

    .line 180
    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 181
    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 182
    iget-object v0, p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;->mClipTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;->setSelected(Z)V

    goto :goto_0

    .line 185
    :cond_1
    check-cast p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$NoMediaViewHolder;

    .line 186
    iget-object v0, p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$NoMediaViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method setAllBucketDownloadCancel()V
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;

    .line 200
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;->getBucket()Lcom/adobe/premiereclip/mediabrowser/Bucket;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 201
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;->getBucket()Lcom/adobe/premiereclip/mediabrowser/Bucket;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->setCancel(Z)V

    goto :goto_0

    .line 204
    :cond_1
    return-void
.end method

.method setAllBucketDownloadRestart()V
    .locals 3

    .prologue
    .line 207
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;

    .line 208
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;->getBucket()Lcom/adobe/premiereclip/mediabrowser/Bucket;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 209
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;->getBucket()Lcom/adobe/premiereclip/mediabrowser/Bucket;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->setCancel(Z)V

    goto :goto_0

    .line 212
    :cond_1
    return-void
.end method

.method public startProcessing()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mCanProcess:Z

    .line 127
    return-void
.end method

.method public stopProcessing()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->mCanProcess:Z

    .line 120
    return-void
.end method
