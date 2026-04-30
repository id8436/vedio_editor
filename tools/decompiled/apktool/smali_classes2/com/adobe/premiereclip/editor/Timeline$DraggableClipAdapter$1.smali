.class Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$1;
.super Ljava/lang/Object;
.source "Timeline.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;)V
    .locals 0

    .prologue
    .line 765
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$1;->this$1:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 768
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$1;->this$1:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->this$0:Lcom/adobe/premiereclip/editor/Timeline;

    iget-object v0, v0, Lcom/adobe/premiereclip/editor/Timeline;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$1;->this$1:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;

    iget v0, v0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->activeClipIndex:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$1;->this$1:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;

    iget v0, v0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->activeClipIndex:I

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$1;->this$1:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->access$000(Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 769
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$1;->this$1:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->this$0:Lcom/adobe/premiereclip/editor/Timeline;

    iget-object v0, v0, Lcom/adobe/premiereclip/editor/Timeline;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$1;->this$1:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;

    iget v1, v1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->activeClipIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 770
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$1;->this$1:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$1;->this$1:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;

    iget v1, v1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->activeClipIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->notifyItemWithoutRecyclingViewHolder(I)V

    .line 772
    :cond_0
    return-void
.end method
