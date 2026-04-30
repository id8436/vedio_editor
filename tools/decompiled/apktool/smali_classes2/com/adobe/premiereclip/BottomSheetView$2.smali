.class Lcom/adobe/premiereclip/BottomSheetView$2;
.super Ljava/lang/Object;
.source "BottomSheetView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/BottomSheetView;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/BottomSheetView;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/adobe/premiereclip/BottomSheetView$2;->this$0:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/adobe/premiereclip/BottomSheetView$2;->this$0:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-static {v0}, Lcom/adobe/premiereclip/BottomSheetView;->access$000(Lcom/adobe/premiereclip/BottomSheetView;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 83
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 78
    return-void
.end method
