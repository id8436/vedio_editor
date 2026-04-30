.class Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager$2;
.super Ljava/lang/Object;
.source "TimelineViewManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager$2;->this$0:Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager$2;->this$0:Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->access$200(Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager$2;->this$0:Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->access$100(Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager$2;->this$0:Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->access$300(Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;)Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager$2;->this$0:Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->access$300(Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;)Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager$Listener;->onTimelineClosed()V

    .line 167
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 158
    return-void
.end method
