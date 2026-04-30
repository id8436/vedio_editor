.class Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter$1;
.super Ljava/lang/Object;
.source "AutomaticTimeline.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter$1;->this$1:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter$1;->this$1:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->access$1000(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter$1;->this$1:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->access$1100(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter$1;->this$1:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->access$1200(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;)I

    move-result v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter$1;->this$1:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;

    iget-object v1, v1, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->groups:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 386
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter$1;->this$1:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->access$1400(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter$1;->this$1:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->access$1300(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 387
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter$1;->this$1:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter$1;->this$1:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->access$1500(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;->access$1600(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;I)V

    .line 389
    :cond_0
    return-void
.end method
