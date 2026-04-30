.class Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder$1;
.super Ljava/lang/Object;
.source "Timeline.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$2:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;

.field final synthetic val$this$1:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder$1;->this$2:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;

    iput-object p2, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder$1;->val$this$1:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder$1;->this$2:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;

    iget-object v0, v0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->this$0:Lcom/adobe/premiereclip/editor/Timeline;

    iget-object v0, v0, Lcom/adobe/premiereclip/editor/Timeline;->clipDeleteListener:Lcom/adobe/premiereclip/editor/Timeline$ClipDeleteListener;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder$1;->this$2:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;

    iget-object v0, v0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->this$0:Lcom/adobe/premiereclip/editor/Timeline;

    iget-object v0, v0, Lcom/adobe/premiereclip/editor/Timeline;->clipDeleteListener:Lcom/adobe/premiereclip/editor/Timeline$ClipDeleteListener;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder$1;->this$2:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/adobe/premiereclip/editor/Timeline$ClipDeleteListener;->onClipDelete(I)V

    .line 451
    :cond_0
    return-void
.end method
