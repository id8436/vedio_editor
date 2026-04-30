.class Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView$3;
.super Ljava/lang/Object;
.source "MediaSelectorView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView$3;->this$0:Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView$3;->this$0:Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;->access$100(Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 125
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 120
    return-void
.end method
