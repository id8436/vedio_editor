.class public Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "LooksListActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private activeLookItemIndex:I

.field private context:Landroid/content/Context;

.field private inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/adobe/premiereclip/library/LooksListActivity;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/library/LooksListActivity;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 469
    iput-object p1, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->this$0:Lcom/adobe/premiereclip/library/LooksListActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 470
    iput-object p2, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->context:Landroid/content/Context;

    .line 471
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 472
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->activeLookItemIndex:I

    .line 473
    return-void
.end method

.method static synthetic access$2100(Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;)I
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->activeLookItemIndex:I

    return v0
.end method

.method static synthetic access$2102(Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;I)I
    .locals 0

    .prologue
    .line 462
    iput p1, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->activeLookItemIndex:I

    return p1
.end method

.method static synthetic access$800(Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;ILcom/adobe/premiereclip/looks/BaseLook;)V
    .locals 0

    .prologue
    .line 462
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->setLookItem(Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;ILcom/adobe/premiereclip/looks/BaseLook;)V

    return-void
.end method

.method private declared-synchronized setLookItem(Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;ILcom/adobe/premiereclip/looks/BaseLook;)V
    .locals 2

    .prologue
    .line 564
    monitor-enter p0

    if-eqz p3, :cond_1

    .line 565
    :try_start_0
    invoke-static {p1}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;->access$1300(Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 566
    invoke-static {p1}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;->access$1400(Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 567
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;->access$1500(Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/adobe/premiereclip/looks/BaseLook;->drawThumbnail(Landroid/content/Context;Landroid/widget/ImageView;)V

    .line 568
    invoke-static {p1}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;->access$600(Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p3}, Lcom/adobe/premiereclip/looks/BaseLook;->getLookName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->this$0:Lcom/adobe/premiereclip/library/LooksListActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/library/LooksListActivity;->access$1600(Lcom/adobe/premiereclip/library/LooksListActivity;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getLook()Lcom/adobe/premiereclip/looks/BaseLook;

    move-result-object v0

    .line 571
    invoke-virtual {v0}, Lcom/adobe/premiereclip/looks/BaseLook;->getLookId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/adobe/premiereclip/looks/BaseLook;->getLookId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    iput p2, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->activeLookItemIndex:I

    .line 573
    invoke-static {p1}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;->access$1700(Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    :goto_0
    monitor-exit p0

    return-void

    .line 575
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;->access$1700(Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 564
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 579
    :cond_1
    :try_start_2
    invoke-static {p1}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;->access$1300(Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 580
    invoke-static {p1}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;->access$1500(Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 581
    invoke-static {p1}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;->access$1400(Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 582
    invoke-static {p1}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;->access$600(Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    invoke-static {p1}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;->access$1700(Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .prologue
    .line 550
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->this$0:Lcom/adobe/premiereclip/library/LooksListActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/library/LooksListActivity;->access$700(Lcom/adobe/premiereclip/library/LooksListActivity;)Lcom/adobe/premiereclip/library/ClipLibraryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->isSelectedDefaultLooks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    invoke-static {}, Lcom/adobe/premiereclip/looks/LocalLooks;->size()I

    move-result v0

    .line 559
    :goto_0
    return v0

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->this$0:Lcom/adobe/premiereclip/library/LooksListActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/library/LooksListActivity;->access$700(Lcom/adobe/premiereclip/library/LooksListActivity;)Lcom/adobe/premiereclip/library/ClipLibraryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->getCurrentLibrary()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 554
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->this$0:Lcom/adobe/premiereclip/library/LooksListActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/library/LooksListActivity;->access$700(Lcom/adobe/premiereclip/library/LooksListActivity;)Lcom/adobe/premiereclip/library/ClipLibraryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->countLooksInCurrentLibrary()I

    move-result v0

    .line 555
    iget-object v1, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->this$0:Lcom/adobe/premiereclip/library/LooksListActivity;

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/library/LooksListActivity;->access$1200(Lcom/adobe/premiereclip/library/LooksListActivity;I)V

    goto :goto_0

    .line 559
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 462
    check-cast p1, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->onBindViewHolder(Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;I)V
    .locals 3

    .prologue
    .line 491
    invoke-virtual {p1, p2}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;->setPositionView(I)V

    .line 492
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->setLookItem(Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;ILcom/adobe/premiereclip/looks/BaseLook;)V

    .line 493
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->this$0:Lcom/adobe/premiereclip/library/LooksListActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/library/LooksListActivity;->access$700(Lcom/adobe/premiereclip/library/LooksListActivity;)Lcom/adobe/premiereclip/library/ClipLibraryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->isSelectedDefaultLooks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    invoke-static {}, Lcom/adobe/premiereclip/looks/LocalLooks;->getClipLooks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/looks/BaseLook;

    .line 495
    sget-object v1, Lcom/adobe/premiereclip/library/LooksListActivity;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$1;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$1;-><init>(Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;ILcom/adobe/premiereclip/looks/BaseLook;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 546
    :goto_0
    return-void

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->this$0:Lcom/adobe/premiereclip/library/LooksListActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/library/LooksListActivity;->access$700(Lcom/adobe/premiereclip/library/LooksListActivity;)Lcom/adobe/premiereclip/library/ClipLibraryManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->getLook(I)Lcom/adobe/premiereclip/looks/CandyLook;

    move-result-object v0

    .line 505
    if-eqz v0, :cond_1

    .line 506
    sget-object v1, Lcom/adobe/premiereclip/library/LooksListActivity;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$2;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$2;-><init>(Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;ILcom/adobe/premiereclip/looks/BaseLook;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 515
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->this$0:Lcom/adobe/premiereclip/library/LooksListActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/library/LooksListActivity;->access$700(Lcom/adobe/premiereclip/library/LooksListActivity;)Lcom/adobe/premiereclip/library/ClipLibraryManager;

    move-result-object v0

    new-instance v1, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3;-><init>(Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;ILcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;)V

    new-instance v2, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$4;

    invoke-direct {v2, p0, p2, p1}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$4;-><init>(Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;ILcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;)V

    invoke-virtual {v0, p2, v1, v2}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->getLookAtPosition(ILcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 462
    invoke-virtual {p0, p1, p2}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;
    .locals 3

    .prologue
    .line 477
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04017a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 478
    new-instance v1, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;-><init>(Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;Landroid/view/View;)V

    .line 479
    invoke-static {v1}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;->access$600(Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 480
    return-object v1
.end method

.method public bridge synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 462
    check-cast p1, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->onViewRecycled(Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;)V
    .locals 2

    .prologue
    .line 485
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 486
    invoke-virtual {p1}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;->getLayoutPosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->setLookItem(Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;ILcom/adobe/premiereclip/looks/BaseLook;)V

    .line 487
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 1

    .prologue
    .line 588
    iput p1, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->activeLookItemIndex:I

    .line 589
    if-ltz p1, :cond_0

    .line 590
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->this$0:Lcom/adobe/premiereclip/library/LooksListActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/library/LooksListActivity;->access$1800(Lcom/adobe/premiereclip/library/LooksListActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 592
    :cond_0
    return-void
.end method
