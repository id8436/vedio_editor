.class Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView$4;
.super Ljava/lang/Object;
.source "MediaCaptureOptionsView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView$4;->this$0:Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView$4;->this$0:Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->access$100(Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 133
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 128
    return-void
.end method
