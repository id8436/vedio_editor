.class Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$1;
.super Ljava/lang/Object;
.source "AutomaticActivity.java"

# interfaces
.implements Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager$Listener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$1;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimelineClosed()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$1;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$100(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Landroid/support/design/widget/TabLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$1;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$000(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    .line 260
    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$1;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$200(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)V

    .line 264
    invoke-static {}, Lcom/adobe/premiereclip/util/ProjectPosterTask;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$1;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$300(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->updateProjectPoster()V

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$1;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$400(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)V

    .line 268
    return-void
.end method
