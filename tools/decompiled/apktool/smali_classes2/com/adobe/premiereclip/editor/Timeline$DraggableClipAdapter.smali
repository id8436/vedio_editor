.class public Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "Timeline.java"

# interfaces
.implements Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;
.implements Lcom/adobe/premiereclip/util/Utilities$ThumbnailLoadListener;
.implements Lcom/e/a/a/a/b/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;",
        "Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;",
        "Lcom/adobe/premiereclip/util/Utilities$ThumbnailLoadListener;",
        "Lcom/e/a/a/a/b/e",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "DraggableClipAdapter"


# instance fields
.field protected activeClipIndex:I

.field private clips:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mCanProcess:Z

.field final synthetic this$0:Lcom/adobe/premiereclip/editor/Timeline;

.field protected totalDuration:J


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/editor/Timeline;)V
    .locals 1

    .prologue
    .line 481
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->this$0:Lcom/adobe/premiereclip/editor/Timeline;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 482
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->mCanProcess:Z

    .line 483
    return-void
.end method

.method public constructor <init>(Lcom/adobe/premiereclip/editor/Timeline;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 472
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;-><init>(Lcom/adobe/premiereclip/editor/Timeline;)V

    .line 473
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->totalDuration:J

    .line 474
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->updateData(Ljava/util/ArrayList;I)V

    .line 478
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->setHasStableIds(Z)V

    .line 479
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->clips:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public addClip(Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;I)V
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->clips:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 722
    iput p2, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->activeClipIndex:I

    .line 723
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->notifyItemInserted(I)V

    .line 724
    invoke-virtual {p0, p2}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->notifyItemWithoutRecyclingViewHolder(I)V

    .line 725
    return-void
.end method

.method public getClipPosition(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 487
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->clips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 488
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->clips:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    .line 489
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    add-int/lit8 v0, v1, 0x1

    .line 493
    :goto_1
    return v0

    .line 487
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 493
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->clips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->clips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 498
    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->clips:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->getId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 559
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isProcessing()Z
    .locals 1

    .prologue
    .line 544
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->mCanProcess:Z

    return v0
.end method

.method protected notifyItemWithoutRecyclingViewHolder(I)V
    .locals 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->this$0:Lcom/adobe/premiereclip/editor/Timeline;

    iget-object v0, v0, Lcom/adobe/premiereclip/editor/Timeline;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 582
    instance-of v1, v0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;

    if-eqz v1, :cond_0

    .line 583
    check-cast v0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;

    invoke-virtual {p0, v0, p1}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->updateClipView(Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;I)V

    .line 587
    :goto_0
    return-void

    .line 585
    :cond_0
    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->notifyItemChanged(I)V

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 564
    const-string/jumbo v0, "DraggableClipAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "on bind view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    if-nez p2, :cond_1

    .line 567
    iget-wide v2, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->totalDuration:J

    .line 568
    const-string/jumbo v0, ""

    .line 569
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->this$0:Lcom/adobe/premiereclip/editor/Timeline;

    iget-object v1, v1, Lcom/adobe/premiereclip/editor/Timeline;->projectID:Ljava/lang/String;

    invoke-static {v1}, Lcom/adobe/premiereclip/dcx/DCXReader;->isBumperEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 570
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->this$0:Lcom/adobe/premiereclip/editor/Timeline;

    iget-wide v0, v0, Lcom/adobe/premiereclip/editor/Timeline;->bumperDuration:J

    add-long/2addr v2, v0

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->this$0:Lcom/adobe/premiereclip/editor/Timeline;

    iget-object v1, v1, Lcom/adobe/premiereclip/editor/Timeline;->activity:Landroid/app/Activity;

    const v4, 0x7f0a0528

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 573
    :cond_0
    check-cast p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$DurationVH;

    iget-object v1, p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$DurationVH;->timeView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->this$0:Lcom/adobe/premiereclip/editor/Timeline;

    iget-object v4, v4, Lcom/adobe/premiereclip/editor/Timeline;->activity:Landroid/app/Activity;

    const v5, 0x7f0a04fb

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 574
    invoke-static {v2, v3, v8}, Lcom/adobe/premiereclip/util/Utilities;->getTimeString(JZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    aput-object v0, v6, v8

    .line 573
    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    :goto_0
    return-void

    .line 576
    :cond_1
    check-cast p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->updateClipView(Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;I)V

    goto :goto_0
.end method

.method public onCheckCanStartDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;III)Z
    .locals 4

    .prologue
    .line 687
    if-nez p2, :cond_0

    .line 688
    const/4 v0, 0x0

    .line 696
    :goto_0
    return v0

    .line 690
    :cond_0
    add-int/lit8 v0, p2, -0x1

    .line 691
    const-string/jumbo v1, "DraggableClipAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start dragging, aci="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->activeClipIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iput v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->activeClipIndex:I

    .line 694
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->this$0:Lcom/adobe/premiereclip/editor/Timeline;

    iget-object v1, v1, Lcom/adobe/premiereclip/editor/Timeline;->timelineListener:Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;

    invoke-interface {v1, v0}, Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;->onClipSelected(I)V

    .line 696
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onClickClip(I)V
    .locals 4

    .prologue
    .line 672
    iget v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->activeClipIndex:I

    .line 673
    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->activeClipIndex:I

    .line 674
    iget v1, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->activeClipIndex:I

    if-eq v0, v1, :cond_0

    .line 675
    const-string/jumbo v1, "Timeline"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "clicked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->activeClipIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->this$0:Lcom/adobe/premiereclip/editor/Timeline;

    iget-object v1, v1, Lcom/adobe/premiereclip/editor/Timeline;->timelineListener:Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;

    iget v2, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->activeClipIndex:I

    invoke-interface {v1, v2}, Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;->onClipSelected(I)V

    .line 677
    iget v1, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->activeClipIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->notifyItemWithoutRecyclingViewHolder(I)V

    .line 678
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->notifyItemWithoutRecyclingViewHolder(I)V

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->this$0:Lcom/adobe/premiereclip/editor/Timeline;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/Timeline;->access$200(Lcom/adobe/premiereclip/editor/Timeline;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    const-string/jumbo v1, "FREEFORM_ADJUST"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/ClipPreferences;->getPreference(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->this$0:Lcom/adobe/premiereclip/editor/Timeline;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/Timeline;->access$300(Lcom/adobe/premiereclip/editor/Timeline;)V

    .line 683
    :cond_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 503
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 504
    if-nez p2, :cond_0

    .line 505
    const v1, 0x7f04018b

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 506
    new-instance v0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$DurationVH;

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$DurationVH;-><init>(Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;Landroid/view/View;)V

    .line 511
    :goto_0
    return-object v0

    .line 508
    :cond_0
    const v1, 0x7f040163

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 509
    new-instance v0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;-><init>(Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;Landroid/view/View;)V

    .line 510
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onFailureImageLoad(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 540
    return-void
.end method

.method public onGetItemDraggableRange(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)Lcom/e/a/a/a/b/j;
    .locals 3

    .prologue
    .line 701
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->clips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/e/a/a/a/b/j;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->clips:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/e/a/a/a/b/j;-><init>(II)V

    goto :goto_0
.end method

.method public onMoveItem(II)V
    .locals 5

    .prologue
    .line 649
    const-string/jumbo v0, "DraggableClipAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "drag onMoveItem(fromPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", toPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    if-ne p1, p2, :cond_0

    .line 669
    :goto_0
    return-void

    .line 654
    :cond_0
    add-int/lit8 v0, p1, -0x1

    .line 655
    add-int/lit8 v1, p2, -0x1

    .line 657
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->clips:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->clips:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 660
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->this$0:Lcom/adobe/premiereclip/editor/Timeline;

    iget-object v2, v2, Lcom/adobe/premiereclip/editor/Timeline;->timelineListener:Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;

    invoke-interface {v2, v0, v1}, Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;->onClipMoved(II)V

    .line 661
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->this$0:Lcom/adobe/premiereclip/editor/Timeline;

    iget-object v2, v2, Lcom/adobe/premiereclip/editor/Timeline;->timelineListener:Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;

    invoke-interface {v2, v0}, Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;->onClipChanged(I)Ljava/lang/String;

    move-result-object v2

    .line 662
    iget-object v3, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->this$0:Lcom/adobe/premiereclip/editor/Timeline;

    iget-object v3, v3, Lcom/adobe/premiereclip/editor/Timeline;->timelineListener:Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;

    invoke-interface {v3, v1}, Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;->onClipChanged(I)Ljava/lang/String;

    move-result-object v3

    .line 663
    iget-object v4, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->this$0:Lcom/adobe/premiereclip/editor/Timeline;

    invoke-virtual {v4, v2}, Lcom/adobe/premiereclip/editor/Timeline;->updateProjectPoster(Ljava/lang/String;)V

    .line 664
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->this$0:Lcom/adobe/premiereclip/editor/Timeline;

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/editor/Timeline;->updateProjectPoster(Ljava/lang/String;)V

    .line 666
    iput v1, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->activeClipIndex:I

    .line 668
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->notifyItemMoved(II)V

    goto :goto_0
.end method

.method public onSuccessImageLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->this$0:Lcom/adobe/premiereclip/editor/Timeline;

    iget-object v0, v0, Lcom/adobe/premiereclip/editor/Timeline;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->this$0:Lcom/adobe/premiereclip/editor/Timeline;

    iget-object v0, v0, Lcom/adobe/premiereclip/editor/Timeline;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->getClipPosition(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 529
    instance-of v1, v0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;

    if-eqz v1, :cond_0

    .line 530
    check-cast v0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;

    iget-object v0, v0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->mClipThumb:Landroid/widget/ImageView;

    .line 531
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 532
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 535
    :cond_0
    return-void
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .prologue
    .line 516
    const-string/jumbo v0, "Thumbnail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recycling holder position ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 518
    instance-of v0, p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;

    if-eqz v0, :cond_0

    .line 519
    check-cast p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;

    iget-object v0, p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->mClipThumb:Landroid/widget/ImageView;

    .line 520
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 521
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->this$0:Lcom/adobe/premiereclip/editor/Timeline;

    iget-object v1, v1, Lcom/adobe/premiereclip/editor/Timeline;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11011b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 523
    :cond_0
    return-void
.end method

.method public removeClipFromView(I)V
    .locals 2

    .prologue
    .line 738
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->clips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 747
    :goto_0
    return-void

    .line 741
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->clips:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 742
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->clips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 743
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->notifyItemRangeRemoved(II)V

    goto :goto_0

    .line 745
    :cond_1
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->notifyItemRemoved(I)V

    goto :goto_0
.end method

.method public replaceClip(Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;I)Z
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->clips:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 729
    const/4 v0, 0x0

    .line 734
    :goto_0
    return v0

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->clips:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 732
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->clips:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 733
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->notifyItemWithoutRecyclingViewHolder(I)V

    .line 734
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public scrollToActiveClip()V
    .locals 2

    .prologue
    .line 765
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->this$0:Lcom/adobe/premiereclip/editor/Timeline;

    iget-object v0, v0, Lcom/adobe/premiereclip/editor/Timeline;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$1;-><init>(Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 774
    return-void
.end method

.method public setActiveClipIndex(IZ)V
    .locals 3

    .prologue
    .line 750
    const-string/jumbo v0, "DraggableClipAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setting active clip index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->clips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-nez p2, :cond_0

    iget v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->activeClipIndex:I

    if-eq p1, v0, :cond_1

    .line 752
    :cond_0
    iget v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->activeClipIndex:I

    .line 753
    iput p1, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->activeClipIndex:I

    .line 754
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->notifyItemWithoutRecyclingViewHolder(I)V

    .line 756
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->scrollToActiveClip()V

    .line 758
    :cond_1
    return-void
.end method

.method public setClipTime(Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;Ljava/lang/Long;)V
    .locals 4

    .prologue
    .line 761
    iget-object v0, p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->mClipTime:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-static {v2, v3, v1}, Lcom/adobe/premiereclip/util/Utilities;->getTimeString(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 762
    return-void
.end method

.method public startProcessing()V
    .locals 1

    .prologue
    .line 549
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->mCanProcess:Z

    .line 550
    return-void
.end method

.method public stopProcessing()V
    .locals 1

    .prologue
    .line 554
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->mCanProcess:Z

    .line 555
    return-void
.end method

.method protected updateClipView(Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;I)V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x0

    const/16 v10, 0x8

    .line 590
    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->clips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p2, v0, :cond_1

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->clips:Ljava/util/ArrayList;

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;

    .line 594
    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->getClipAsset()Lcom/adobe/premiereclip/media/ClipAsset;

    move-result-object v1

    iget-object v3, v1, Lcom/adobe/premiereclip/media/ClipAsset;->filePath:Ljava/lang/String;

    .line 595
    iget-object v1, v0, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->clipId:Ljava/lang/String;

    iput-object v1, p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->key:Ljava/lang/String;

    .line 597
    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 598
    iget-object v1, p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->mClipThumb:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/adobe/premiereclip/util/Utilities;->resetViewIfBitmapRecycled(Landroid/widget/ImageView;)V

    .line 600
    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->getType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v1

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->getStartTimeMs()J

    move-result-wide v4

    .line 601
    invoke-virtual {p1}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    iget-object v7, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->this$0:Lcom/adobe/premiereclip/editor/Timeline;

    iget v7, v7, Lcom/adobe/premiereclip/editor/Timeline;->timelineThumbSize:I

    iget-object v8, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->this$0:Lcom/adobe/premiereclip/editor/Timeline;

    iget v8, v8, Lcom/adobe/premiereclip/editor/Timeline;->timelineThumbSize:I

    move-object v9, p0

    .line 600
    invoke-static/range {v1 .. v9}, Lcom/adobe/premiereclip/util/ThumbnailHelper;->load(Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;Ljava/lang/String;Ljava/lang/String;JLandroid/widget/ImageView;IILcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;)V

    .line 602
    iget-object v1, p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->errorIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 603
    invoke-static {v0}, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->access$100(Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 604
    iget-object v0, p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->mClipTime:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 605
    iget-object v0, p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->mStorycardCam:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 625
    :goto_1
    add-int/lit8 v0, p2, -0x1

    iget v1, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->activeClipIndex:I

    if-ne v0, v1, :cond_5

    .line 626
    iget-object v0, p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->mClipFrame:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 627
    iget-object v0, p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->deleteBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 633
    :goto_2
    invoke-virtual {p1}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->getDragStateFlags()I

    move-result v0

    .line 634
    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 635
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->deleteBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 608
    :cond_2
    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->getClipDurationUs()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->setClipTime(Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;Ljava/lang/Long;)V

    .line 609
    iget-object v1, p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->mClipTime:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 610
    iget-object v1, p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->mStorycardCam:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 611
    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->getType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v0

    sget-object v1, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->VIDEO:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    if-ne v0, v1, :cond_3

    .line 612
    iget-object v0, p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->videoClipIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 614
    :cond_3
    iget-object v0, p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->videoClipIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 618
    :cond_4
    iget-object v0, p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->mClipTime:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 619
    iget-object v0, p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->videoClipIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 620
    iget-object v0, p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->mClipThumb:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->this$0:Lcom/adobe/premiereclip/editor/Timeline;

    iget-object v1, v1, Lcom/adobe/premiereclip/editor/Timeline;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 621
    iget-object v0, p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->errorIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 622
    iget-object v0, p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->mStorycardCam:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 629
    :cond_5
    iget-object v0, p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->mClipFrame:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 630
    iget-object v0, p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->deleteBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public updateData(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;I)V
    .locals 0

    .prologue
    .line 718
    return-void
.end method

.method public updateData(Ljava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 705
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->clips:Ljava/util/ArrayList;

    .line 706
    iput p2, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->activeClipIndex:I

    .line 707
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->notifyDataSetChanged()V

    .line 708
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->scrollToActiveClip()V

    .line 709
    return-void
.end method

.method public updateDuration(J)V
    .locals 1

    .prologue
    .line 712
    iput-wide p1, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->totalDuration:J

    .line 713
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->clips:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->clips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 714
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->notifyItemChanged(I)V

    .line 716
    :cond_0
    return-void
.end method
