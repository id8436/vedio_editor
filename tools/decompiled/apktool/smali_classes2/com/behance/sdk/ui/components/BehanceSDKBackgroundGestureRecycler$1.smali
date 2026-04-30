.class Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "BehanceSDKBackgroundGestureRecycler.java"


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;

    invoke-static {v0}, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;->access$000(Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;)Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler$OnBackgroundGestureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;

    invoke-static {v0}, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;->access$000(Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;)Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler$OnBackgroundGestureListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler$OnBackgroundGestureListener;->onBackgroundDoubleClick()V

    .line 52
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;

    invoke-static {v0}, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;->access$000(Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;)Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler$OnBackgroundGestureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;

    invoke-static {v0}, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;->access$000(Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;)Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler$OnBackgroundGestureListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler$OnBackgroundGestureListener;->onBackgroundLongClick()V

    .line 44
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 45
    return-void
.end method
