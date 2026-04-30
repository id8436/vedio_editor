.class Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager$1;
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
    .line 133
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager$1;->this$0:Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager$1;->this$0:Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->access$000(Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager$1;->this$0:Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->access$100(Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 137
    return-void
.end method
