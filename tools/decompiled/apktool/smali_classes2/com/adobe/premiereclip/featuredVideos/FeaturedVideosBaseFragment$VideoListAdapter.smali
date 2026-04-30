.class public abstract Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "FeaturedVideosBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field protected mVideoListRetriever:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$VideoListRetriever;

.field final synthetic this$0:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

.field protected volatile videos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;)V
    .locals 1

    .prologue
    .line 340
    iput-object p1, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 341
    invoke-static {p1}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->access$100(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->initializeVideoList()V

    .line 343
    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->videos:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 413
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected inflateViewAndSetHeight(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 432
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

    .line 433
    invoke-static {v1}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->access$500(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 435
    const v1, 0x7f1205b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

    invoke-static {v2}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->access$600(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 436
    return-object v0
.end method

.method protected initializeVideoList()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 417
    .line 418
    const/4 v0, 0x0

    .line 420
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

    iget-object v2, v2, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->videoListFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    iget-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

    iget-object v1, v1, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->videoListFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/adobe/premiereclip/util/JsonReader;->readJsonArrayFromFile(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 422
    iget-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->access$402(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

    invoke-virtual {v1, v0, v3}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->makeVideosList(Lorg/json/JSONArray;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 428
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->updateList(Ljava/util/ArrayList;)V

    .line 429
    return-void

    .line 425
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 334
    check-cast p1, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->onBindViewHolder(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;I)V
    .locals 4

    .prologue
    .line 375
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;

    .line 376
    invoke-virtual {v0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->getUUID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;->key:Ljava/lang/String;

    .line 377
    invoke-virtual {v0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;->videoUrl:Ljava/lang/String;

    .line 378
    invoke-virtual {v0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->getVideoTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;->videoTitle:Ljava/lang/String;

    .line 379
    iget-object v1, p1, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->getVideoTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v1, p1, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

    invoke-static {v2}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->access$300(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 383
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 385
    iget-object v3, p1, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-static {v3}, Lcom/adobe/premiereclip/util/Utilities;->resetViewIfBitmapRecycled(Landroid/widget/ImageView;)V

    .line 394
    invoke-virtual {v0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->getThumbUrl()Ljava/lang/String;

    move-result-object v0

    .line 395
    if-eqz v0, :cond_0

    .line 396
    iget-object v3, p1, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;->key:Ljava/lang/String;

    invoke-static {v3}, Lcom/adobe/premiereclip/util/BitmapCache;->getBitmapFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 397
    if-eqz v3, :cond_1

    .line 398
    iget-object v0, p1, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 399
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x50

    invoke-static {v3, v1, v0, v2}, Lcom/adobe/premiereclip/util/FileOps;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;I)V

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    new-instance v1, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$BitmapRetriever;

    iget-object v2, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

    iget-object v3, p1, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;->key:Ljava/lang/String;

    invoke-direct {v1, v2, p1, v3}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$BitmapRetriever;-><init>(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$BitmapRetriever;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 334
    invoke-virtual {p0, p1, p2}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public abstract onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;
.end method

.method protected showPopupMenuOnScreen(Landroid/view/View;Landroid/view/View;)Landroid/widget/PopupWindow;
    .locals 9

    .prologue
    const/16 v8, 0x30

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 441
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c03ed

    .line 442
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

    .line 443
    invoke-virtual {v2}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c03eb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, p2, v0, v2, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 448
    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 449
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 451
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 452
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 453
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 454
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 455
    iget v0, v2, Landroid/graphics/Point;->y:I

    .line 457
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 458
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 460
    aget v3, v2, v5

    .line 461
    aget v2, v2, v4

    .line 463
    iget-object v4, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

    invoke-virtual {v4}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c03ee

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 465
    iget-object v5, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

    invoke-virtual {v5}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c03ef

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 470
    iget-object v6, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

    .line 471
    invoke-virtual {v6}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0097

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int/2addr v6, v2

    .line 473
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    if-le v6, v0, :cond_0

    .line 476
    add-int v0, v3, v4

    .line 480
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 476
    invoke-virtual {v1, p1, v8, v0, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 488
    :goto_0
    return-object v1

    .line 483
    :cond_0
    add-int v0, v3, v4

    add-int/2addr v2, v5

    invoke-virtual {v1, p1, v8, v0, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method public updateList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->videos:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    iput-object p1, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->videos:Ljava/util/ArrayList;

    .line 350
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->videos:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 351
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->noVideos:Z

    .line 355
    :goto_1
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

    invoke-static {v0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->access$200(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;)Z

    move-result v0

    .line 356
    if-nez v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_0

    .line 360
    new-instance v1, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$1;-><init>(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 353
    :cond_2
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter;->this$0:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->noVideos:Z

    goto :goto_1
.end method
