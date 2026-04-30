.class Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager$3;
.super Ljava/lang/Object;
.source "TimelineViewManager.java"

# interfaces
.implements Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager$3;->this$0:Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager$3;->this$0:Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->onConfirmDelete()V

    .line 190
    return-void
.end method
