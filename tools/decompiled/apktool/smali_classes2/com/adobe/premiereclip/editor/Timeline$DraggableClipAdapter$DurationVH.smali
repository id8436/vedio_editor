.class public Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$DurationVH;
.super Lcom/e/a/a/a/d/a;
.source "Timeline.java"


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;

.field public timeView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 410
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$DurationVH;->this$1:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;

    .line 411
    invoke-direct {p0, p2}, Lcom/e/a/a/a/d/a;-><init>(Landroid/view/View;)V

    .line 412
    const v0, 0x7f12060e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$DurationVH;->timeView:Landroid/widget/TextView;

    .line 413
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$DurationVH;->timeView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 414
    return-void
.end method
