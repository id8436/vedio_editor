.class public Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "GalleryAdapterForFileSystem.java"

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

.field private static final TAG:Ljava/lang/String; = "GALLERY_ADAPTER_DRIVE"

.field private static final VIEW_TYPE_CONTENT:I = 0x1

.field private static final VIEW_TYPE_HEADER:I


# instance fields
.field private enabledMediaTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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

.field private mHandler:Landroid/os/Handler;

.field private final mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mSource:Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;

.field private mTfCollection:Lcom/h/a/a;

.field private mTimelineThumbSize:I

.field private singleSelection:Z

.field private stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;",
            ">;>;"
        }
    .end annotation
.end field

.field private stackOfTitle:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;ILcom/h/a/a;Landroid/support/v7/widget/RecyclerView;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;",
            ">;",
            "Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;",
            "I",
            "Lcom/h/a/a;",
            "Landroid/support/v7/widget/RecyclerView;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 83
    iput-object p3, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mDataset:Ljava/util/ArrayList;

    .line 84
    iput p5, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mTimelineThumbSize:I

    .line 85
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    .line 86
    iput-object p2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->enabledMediaTypes:Ljava/util/ArrayList;

    .line 87
    iput-boolean p8, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->singleSelection:Z

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mCanProcess:Z

    .line 89
    iput-object p6, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mTfCollection:Lcom/h/a/a;

    .line 90
    iput-object p7, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 91
    invoke-virtual {p7}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    .line 92
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->stack:Ljava/util/Stack;

    .line 93
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->stackOfTitle:Ljava/util/Stack;

    .line 94
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$1;-><init>(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mHandler:Landroid/os/Handler;

    .line 101
    iput-object p4, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mSource:Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;

    .line 103
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mSource:Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;

    instance-of v0, v0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->stackOfTitle:Ljava/util/Stack;

    const-string/jumbo v1, "Google Drive"

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mSource:Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;

    instance-of v0, v0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->stackOfTitle:Ljava/util/Stack;

    const-string/jumbo v1, "Dropbox"

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)Ljava/util/Stack;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->stackOfTitle:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mDataset:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)Ljava/util/Stack;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->stack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$600(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mSource:Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;

    return-object v0
.end method

.method static synthetic access$700(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->singleSelection:Z

    return v0
.end method

.method static synthetic access$800(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->getMediaPosition(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method private checkIfMediaAlreadySelected(Lcom/adobe/premiereclip/mediabrowser/MediaModel;)Z
    .locals 3

    .prologue
    .line 277
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getSelectedMediaList()Ljava/util/ArrayList;

    move-result-object v0

    .line 278
    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v1

    .line 279
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    .line 280
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    const/4 v0, 0x1

    .line 283
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMediaPosition(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 333
    if-nez p1, :cond_1

    move v1, v2

    .line 342
    :cond_0
    :goto_0
    return v1

    .line 336
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 337
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;->getMediaModel()Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    move-result-object v0

    .line 338
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v2

    .line 342
    goto :goto_0
.end method

.method private onBindHeaderViewHolder(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$HeaderViewHolder;ILcom/adobe/premiereclip/mediabrowser/Bucket;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 182
    invoke-virtual {p3}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->getId()Ljava/lang/String;

    move-result-object v0

    .line 183
    iput-object v0, p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$HeaderViewHolder;->id:Ljava/lang/String;

    .line 184
    const-string/jumbo v1, "blank"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$HeaderViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 186
    iget-object v0, p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$HeaderViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 274
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$HeaderViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 189
    iget-object v0, p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$HeaderViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 190
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202f5

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 192
    iget-object v1, p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$HeaderViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 193
    iget-object v0, p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$HeaderViewHolder;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 194
    invoke-static {p1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$HeaderViewHolder;->access$000(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$HeaderViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p3}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$HeaderViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;

    invoke-direct {v1, p0, p3, p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;-><init>(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;Lcom/adobe/premiereclip/mediabrowser/Bucket;Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private onBindThumbnailViewHolder(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;ILcom/adobe/premiereclip/mediabrowser/MediaModel;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 346
    invoke-virtual {p3}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;->id:Ljava/lang/String;

    .line 347
    iget-object v0, p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 348
    iget-object v1, p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;->mMediaTitle:Landroid/widget/TextView;

    move-object v0, p3

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v0, p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;->mClipTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mSource:Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;

    iget-object v1, p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p3, v1, p0, v2}, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;->getThumbnail(Lcom/adobe/premiereclip/mediabrowser/MediaModel;Landroid/widget/ImageView;Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;Landroid/os/Handler;)V

    .line 358
    invoke-direct {p0, p3}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->checkIfMediaAlreadySelected(Lcom/adobe/premiereclip/mediabrowser/MediaModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    invoke-virtual {p3, v7}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->setMediaSelected(Z)V

    .line 360
    invoke-virtual {p1, v7}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;->setSelected(Z)V

    .line 366
    :goto_0
    invoke-virtual {p3}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getMediaType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 367
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mSource:Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;

    instance-of v0, v0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;

    if-eqz v0, :cond_2

    .line 368
    iget-object v0, p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;->mClipTime:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 369
    iget-object v0, p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;->mClipTime:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v2, v3, v6}, Lcom/adobe/premiereclip/util/Utilities;->getTimeString(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v0, p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 386
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->enabledMediaTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->enabledMediaTypes:Ljava/util/ArrayList;

    invoke-virtual {p3}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getMediaType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 387
    iget-object v0, p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 388
    iget-object v0, p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;->itemView:Landroid/view/View;

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 434
    :goto_2
    return-void

    .line 362
    :cond_1
    invoke-virtual {p3, v6}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->setMediaSelected(Z)V

    .line 363
    invoke-virtual {p1, v6}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;->setSelected(Z)V

    goto :goto_0

    .line 372
    :cond_2
    iget-object v0, p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$3;

    invoke-direct {v1, p0, p3}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$3;-><init>(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;Lcom/adobe/premiereclip/mediabrowser/MediaModel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1

    .line 391
    :cond_3
    iget-object v0, p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 392
    iget-object v0, p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;->itemView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 395
    iget-object v0, p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$4;

    invoke-direct {v1, p0, p3, p1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$4;-><init>(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;Lcom/adobe/premiereclip/mediabrowser/MediaModel;Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method private updateMediaView(Lcom/adobe/premiereclip/mediabrowser/MediaModel;)V
    .locals 2

    .prologue
    .line 437
    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->getClipPosition(Ljava/lang/String;)I

    move-result v1

    .line 438
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 439
    if-eqz v0, :cond_0

    .line 440
    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;

    invoke-direct {p0, v0, v1, p1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->onBindThumbnailViewHolder(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;ILcom/adobe/premiereclip/mediabrowser/MediaModel;)V

    .line 442
    :cond_0
    return-void
.end method


# virtual methods
.method public backPressed()V
    .locals 3

    .prologue
    .line 287
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->textViewLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->showView()V

    .line 289
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->dismissSpinner()V

    .line 290
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 291
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 292
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 293
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->stackOfTitle:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 294
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mDataset:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 296
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->notifyDataSetChanged()V

    .line 297
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->stackOfTitle:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->stackOfTitle:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->setTitle(Ljava/lang/String;)V

    .line 300
    :cond_0
    const-string/jumbo v0, "GALLERY_ADAPTER_DRIVE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stack size after pop = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mSource:Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;

    instance-of v0, v0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;

    if-eqz v0, :cond_2

    .line 303
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    const-string/jumbo v1, "Google Drive"

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->setTitle(Ljava/lang/String;)V

    .line 310
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->notifyDataSetChanged()V

    .line 311
    return-void

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mSource:Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;

    instance-of v0, v0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    const-string/jumbo v1, "Dropbox"

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 308
    :cond_3
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->onBackPressed()V

    goto :goto_0
.end method

.method clearDataset()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 315
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->notifyDataSetChanged()V

    .line 316
    return-void
.end method

.method clearStack()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->stack:Ljava/util/Stack;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 322
    :cond_0
    return-void
.end method

.method public getClipPosition(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 471
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 472
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;

    .line 473
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;->getViewType()I

    move-result v2

    .line 474
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 475
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;->getMediaModel()Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    move-result-object v0

    .line 476
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 490
    :cond_0
    :goto_1
    return v1

    .line 479
    :cond_1
    if-nez v2, :cond_3

    .line 480
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;->getBucket()Lcom/adobe/premiereclip/mediabrowser/Bucket;

    move-result-object v0

    .line 481
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 485
    :cond_3
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 490
    :cond_4
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;->getViewType()I

    move-result v0

    .line 134
    if-nez v0, :cond_0

    .line 135
    const/4 v0, 0x0

    .line 137
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isDatasetEmpty()Z
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isProcessing()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mCanProcess:Z

    return v0
.end method

.method public isStackEmpty()Z
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;

    .line 452
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;->getViewType()I

    move-result v1

    .line 453
    if-nez v1, :cond_0

    .line 454
    check-cast p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$HeaderViewHolder;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;->getBucket()Lcom/adobe/premiereclip/mediabrowser/Bucket;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->onBindHeaderViewHolder(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$HeaderViewHolder;ILcom/adobe/premiereclip/mediabrowser/Bucket;)V

    .line 458
    :goto_0
    return-void

    .line 456
    :cond_0
    check-cast p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;->getMediaModel()Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->onBindThumbnailViewHolder(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;ILcom/adobe/premiereclip/mediabrowser/MediaModel;)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 150
    if-nez p2, :cond_0

    .line 151
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04016e

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 152
    new-instance v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$HeaderViewHolder;

    const/high16 v2, 0x3f200000    # 0.625f

    iget v3, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mTimelineThumbSize:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mTfCollection:Lcom/h/a/a;

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$HeaderViewHolder;-><init>(Landroid/view/View;ILcom/h/a/a;)V

    .line 155
    :goto_0
    return-object v0

    .line 154
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040170

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 155
    new-instance v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;

    iget v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mTimelineThumbSize:I

    iget-object v3, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mTfCollection:Lcom/h/a/a;

    iget-object v4, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-virtual {v4}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0367

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-virtual {v5}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0366

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;-><init>(Landroid/view/View;ILcom/h/a/a;II)V

    goto :goto_0
.end method

.method public onFailureImageLoad(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 510
    const-string/jumbo v0, "33"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a043c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->setTextView(Ljava/lang/String;)V

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    const-string/jumbo v0, "44"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->showErrorToast()V

    goto :goto_0
.end method

.method public onSuccessImageLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->getClipPosition(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 496
    instance-of v1, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$HeaderViewHolder;

    if-eqz v1, :cond_1

    .line 497
    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$HeaderViewHolder;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$HeaderViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 498
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 499
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    instance-of v1, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;

    if-eqz v1, :cond_0

    .line 501
    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 502
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 165
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 166
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 168
    instance-of v0, p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$HeaderViewHolder;

    if-eqz v0, :cond_0

    .line 169
    check-cast p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$HeaderViewHolder;

    .line 170
    invoke-static {p1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$HeaderViewHolder;->access$000(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$HeaderViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$HeaderViewHolder;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11011b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 172
    iget-object v0, p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$HeaderViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    :goto_0
    return-void

    .line 174
    :cond_0
    check-cast p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;

    .line 175
    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    iget-object v0, p1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;->mClipTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;->setSelected(Z)V

    goto :goto_0
.end method

.method public startProcessing()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mCanProcess:Z

    .line 129
    return-void
.end method

.method public stopProcessing()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->mCanProcess:Z

    .line 122
    return-void
.end method
