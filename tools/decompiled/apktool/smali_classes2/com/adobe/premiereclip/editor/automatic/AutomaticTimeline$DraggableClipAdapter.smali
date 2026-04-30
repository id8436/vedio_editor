.class public Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;
.super Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;
.source "AutomaticTimeline.java"


# instance fields
.field protected groups:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;

.field final synthetic this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;)V
    .locals 1

    .prologue
    .line 167
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;

    .line 168
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;-><init>(Lcom/adobe/premiereclip/editor/Timeline;)V

    .line 169
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->updateData(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;I)V

    .line 170
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->setHasStableIds(Z)V

    .line 171
    return-void
.end method

.method static synthetic access$1100(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;)I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->activeClipIndex:I

    return v0
.end method

.method static synthetic access$1200(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;)I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->activeClipIndex:I

    return v0
.end method

.method static synthetic access$1300(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;)I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->activeClipIndex:I

    return v0
.end method

.method static synthetic access$1500(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;)I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->activeClipIndex:I

    return v0
.end method

.method static synthetic access$1600(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;I)V
    .locals 0

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->notifyItemWithoutRecyclingViewHolder(I)V

    return-void
.end method

.method private getFirstClip(I)Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->groups:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$GroupAssetWrapper;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$GroupAssetWrapper;->getClipAssets()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;

    return-object v0
.end method


# virtual methods
.method public addClip(Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;I)V
    .locals 2

    .prologue
    .line 331
    new-instance v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$GroupAssetWrapper;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;

    invoke-direct {v0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$GroupAssetWrapper;-><init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;)V

    .line 332
    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$GroupAssetWrapper;->addClipAsset(Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;)V

    .line 334
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->groups:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;

    invoke-virtual {v1, p2, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;->add(ILjava/lang/Object;)V

    .line 335
    iput p2, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->activeClipIndex:I

    .line 336
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->notifyItemInserted(I)V

    .line 337
    invoke-virtual {p0, p2}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->notifyItemWithoutRecyclingViewHolder(I)V

    .line 338
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->scrollToActiveClip()V

    .line 339
    return-void
.end method

.method public getClipPosition(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 194
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->groups:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->groups:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$GroupAssetWrapper;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$GroupAssetWrapper;->getClipAssets()Ljava/util/ArrayList;

    move-result-object v4

    move v3, v2

    .line 196
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 197
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    .line 198
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    add-int/lit8 v0, v1, 0x1

    .line 203
    :goto_2
    return v0

    .line 196
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 194
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 203
    :cond_2
    const/4 v0, -0x1

    goto :goto_2
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->groups:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->groups:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 208
    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->groups:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$GroupAssetWrapper;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$GroupAssetWrapper;->getClipAssets()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->getId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public onCheckCanStartDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;III)Z
    .locals 2

    .prologue
    .line 284
    if-nez p2, :cond_0

    .line 285
    const/4 v0, 0x0

    .line 294
    :goto_0
    return v0

    .line 287
    :cond_0
    add-int/lit8 v0, p2, -0x1

    .line 289
    iget v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->activeClipIndex:I

    if-eq v1, v0, :cond_1

    .line 290
    iput v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->activeClipIndex:I

    .line 291
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->access$400(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;)Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;->onClipSelected(I)V

    .line 294
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onClickClip(I)V
    .locals 4

    .prologue
    .line 272
    iget v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->activeClipIndex:I

    .line 273
    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->activeClipIndex:I

    .line 274
    iget v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->activeClipIndex:I

    if-eq v0, v1, :cond_0

    .line 275
    const-string/jumbo v1, "Timeline"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "clicked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->activeClipIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->access$300(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;)Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;

    move-result-object v1

    iget v2, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->activeClipIndex:I

    invoke-interface {v1, v2}, Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;->onClipSelected(I)V

    .line 277
    iget v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->activeClipIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->notifyItemWithoutRecyclingViewHolder(I)V

    .line 278
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->notifyItemWithoutRecyclingViewHolder(I)V

    .line 280
    :cond_0
    return-void
.end method

.method public onGetItemDraggableRange(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)Lcom/e/a/a/a/b/j;
    .locals 3

    .prologue
    .line 299
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->groups:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/e/a/a/a/b/j;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->groups:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/e/a/a/a/b/j;-><init>(II)V

    goto :goto_0
.end method

.method public onMoveItem(II)V
    .locals 5

    .prologue
    .line 304
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

    .line 306
    if-ne p1, p2, :cond_0

    .line 325
    :goto_0
    return-void

    .line 309
    :cond_0
    add-int/lit8 v0, p1, -0x1

    .line 310
    add-int/lit8 v1, p2, -0x1

    .line 312
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->groups:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;

    iget-object v3, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->groups:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;

    invoke-virtual {v3, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;->remove(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;->add(ILjava/lang/Object;)V

    .line 315
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;

    invoke-static {v2}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->access$500(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;)Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;->onClipMoved(II)V

    .line 317
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;

    invoke-static {v2}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->access$600(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;)Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;->onClipChanged(I)Ljava/lang/String;

    move-result-object v2

    .line 318
    iget-object v3, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;

    invoke-static {v3}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->access$700(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;)Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;->onClipChanged(I)Ljava/lang/String;

    move-result-object v3

    .line 319
    iget-object v4, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;

    invoke-static {v4, v2}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->access$800(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;Ljava/lang/String;)V

    .line 320
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;

    invoke-static {v2, v3}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->access$900(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;Ljava/lang/String;)V

    .line 322
    iput v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->activeClipIndex:I

    .line 324
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->notifyItemMoved(II)V

    goto :goto_0
.end method

.method public removeClipFromView(I)V
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->groups:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 366
    :goto_0
    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->groups:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;->remove(I)Ljava/lang/Object;

    .line 361
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->groups:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 362
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->notifyItemRangeRemoved(II)V

    goto :goto_0

    .line 364
    :cond_1
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->notifyItemRemoved(I)V

    goto :goto_0
.end method

.method public replaceClip(Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;I)Z
    .locals 2

    .prologue
    .line 343
    invoke-direct {p0, p2}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->getFirstClip(I)Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    const/4 v0, 0x0

    .line 352
    :goto_0
    return v0

    .line 346
    :cond_0
    new-instance v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$GroupAssetWrapper;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;

    invoke-direct {v0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$GroupAssetWrapper;-><init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;)V

    .line 347
    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$GroupAssetWrapper;->addClipAsset(Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;)V

    .line 349
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->groups:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;

    invoke-virtual {v1, p2}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;->remove(I)Ljava/lang/Object;

    .line 350
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->groups:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;

    invoke-virtual {v1, p2, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;->add(ILjava/lang/Object;)V

    .line 351
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->notifyItemWithoutRecyclingViewHolder(I)V

    .line 352
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public scrollToActiveClip()V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->access$1700(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter$1;-><init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 391
    return-void
.end method

.method public setActiveClipIndex(IZ)V
    .locals 3

    .prologue
    .line 370
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

    .line 371
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->groups:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-nez p2, :cond_0

    iget v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->activeClipIndex:I

    if-eq p1, v0, :cond_1

    .line 372
    :cond_0
    iget v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->activeClipIndex:I

    .line 373
    iput p1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->activeClipIndex:I

    .line 374
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->notifyItemWithoutRecyclingViewHolder(I)V

    .line 376
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->scrollToActiveClip()V

    .line 378
    :cond_1
    return-void
.end method

.method protected updateClipView(Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;I)V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x0

    const/16 v10, 0x8

    .line 213
    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->groups:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;->size()I

    move-result v0

    if-le p2, v0, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    add-int/lit8 v0, p2, -0x1

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->getFirstClip(I)Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->getClipAsset()Lcom/adobe/premiereclip/media/ClipAsset;

    move-result-object v1

    iget-object v3, v1, Lcom/adobe/premiereclip/media/ClipAsset;->filePath:Ljava/lang/String;

    .line 218
    iget-object v1, v0, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->clipId:Ljava/lang/String;

    iput-object v1, p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->key:Ljava/lang/String;

    .line 220
    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 221
    iget-object v1, p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->mClipThumb:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/adobe/premiereclip/util/Utilities;->resetViewIfBitmapRecycled(Landroid/widget/ImageView;)V

    .line 223
    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->getType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v1

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x258

    invoke-virtual {p1}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    iget-object v7, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;

    .line 224
    invoke-static {v7}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->access$000(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;)I

    move-result v7

    iget-object v8, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;

    invoke-static {v8}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->access$100(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;)I

    move-result v8

    move-object v9, p0

    .line 223
    invoke-static/range {v1 .. v9}, Lcom/adobe/premiereclip/util/ThumbnailHelper;->load(Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;Ljava/lang/String;Ljava/lang/String;JLandroid/widget/ImageView;IILcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;)V

    .line 225
    iget-object v1, p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->errorIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 226
    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->isStoryCard()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 227
    iget-object v0, p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->mClipTime:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    iget-object v0, p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->mStorycardCam:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    :goto_1
    add-int/lit8 v0, p2, -0x1

    iget v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->activeClipIndex:I

    if-ne v0, v1, :cond_5

    .line 249
    iget-object v0, p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->mClipFrame:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 250
    iget-object v0, p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->deleteBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 256
    :goto_2
    invoke-virtual {p1}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->getDragStateFlags()I

    move-result v0

    .line 257
    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 258
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->deleteBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 232
    :cond_2
    iget-object v1, p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->mClipTime:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 233
    iget-object v1, p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->mStorycardCam:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->getType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v0

    sget-object v1, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->VIDEO:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    if-ne v0, v1, :cond_3

    .line 235
    iget-object v0, p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->videoClipIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 237
    :cond_3
    iget-object v0, p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->videoClipIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 241
    :cond_4
    iget-object v0, p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->mClipTime:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    iget-object v0, p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->videoClipIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 243
    iget-object v0, p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->mClipThumb:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->access$200(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 244
    iget-object v0, p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->errorIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    iget-object v0, p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->mStorycardCam:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 252
    :cond_5
    iget-object v0, p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->mClipFrame:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 253
    iget-object v0, p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->deleteBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public updateData(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;I)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->groups:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;

    .line 180
    iput p2, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->activeClipIndex:I

    .line 181
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->scrollToActiveClip()V

    .line 182
    return-void
.end method

.method public updateDuration(J)V
    .locals 1

    .prologue
    .line 186
    iput-wide p1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->totalDuration:J

    .line 187
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->groups:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->groups:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 188
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->notifyItemChanged(I)V

    .line 190
    :cond_0
    return-void
.end method
