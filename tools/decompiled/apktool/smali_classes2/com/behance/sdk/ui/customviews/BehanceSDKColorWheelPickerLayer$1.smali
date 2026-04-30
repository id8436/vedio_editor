.class Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1;
.super Ljava/lang/Object;
.source "BehanceSDKColorWheelPickerLayer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1;->this$0:Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 59
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 112
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 61
    :pswitch_0
    iget-object v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1;->this$0:Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;

    iget-object v2, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1;->this$0:Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;

    invoke-static {v2}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->access$000(Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 62
    iget-object v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1;->this$0:Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;

    new-instance v2, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1$1;

    invoke-direct {v2, p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1$1;-><init>(Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1;)V

    invoke-static {v1, v2}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->access$002(Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 77
    iget-object v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1;->this$0:Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;

    iget-object v2, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1;->this$0:Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;

    invoke-static {v2}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->access$000(Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->post(Ljava/lang/Runnable;)Z

    .line 79
    iget-object v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1;->this$0:Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v1, v2}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->access$202(Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;F)F

    .line 80
    iget-object v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1;->this$0:Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v1, v2}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->access$302(Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;F)F

    .line 81
    iget-object v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1;->this$0:Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;

    invoke-virtual {v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->invalidate()V

    goto :goto_0

    .line 84
    :pswitch_1
    iget-object v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1;->this$0:Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v1, v2}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->access$202(Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;F)F

    .line 85
    iget-object v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1;->this$0:Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v1, v2}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->access$302(Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;F)F

    .line 86
    iget-object v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1;->this$0:Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;

    invoke-virtual {v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->invalidate()V

    goto :goto_0

    .line 89
    :pswitch_2
    iget-object v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1;->this$0:Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;

    iget-object v2, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1;->this$0:Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;

    invoke-static {v2}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->access$000(Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 90
    iget-object v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1;->this$0:Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;

    new-instance v2, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1$2;

    invoke-direct {v2, p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1$2;-><init>(Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1;)V

    invoke-static {v1, v2}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->access$002(Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 105
    iget-object v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1;->this$0:Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;

    iget-object v2, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1;->this$0:Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;

    invoke-static {v2}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->access$000(Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x10

    invoke-virtual {v1, v2, v4, v5}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 107
    iget-object v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1;->this$0:Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v1, v2}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->access$202(Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;F)F

    .line 108
    iget-object v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1;->this$0:Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v1, v2}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->access$302(Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;F)F

    .line 109
    iget-object v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1;->this$0:Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;

    invoke-virtual {v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->invalidate()V

    goto/16 :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
