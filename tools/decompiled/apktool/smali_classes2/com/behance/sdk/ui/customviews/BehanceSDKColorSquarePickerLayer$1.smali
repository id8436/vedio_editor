.class Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer$1;
.super Ljava/lang/Object;
.source "BehanceSDKColorSquarePickerLayer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer$1;->this$0:Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 69
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 122
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 89
    :pswitch_0
    iget-object v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer$1;->this$0:Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v1, v2}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->access$002(Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;F)F

    .line 90
    iget-object v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer$1;->this$0:Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v1, v2}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->access$102(Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;F)F

    .line 91
    iget-object v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer$1;->this$0:Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;

    invoke-virtual {v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->invalidate()V

    goto :goto_0

    .line 94
    :pswitch_1
    iget-object v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer$1;->this$0:Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v1, v2}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->access$002(Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;F)F

    .line 95
    iget-object v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer$1;->this$0:Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v1, v2}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->access$102(Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;F)F

    .line 96
    iget-object v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer$1;->this$0:Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;

    invoke-virtual {v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->invalidate()V

    goto :goto_0

    .line 117
    :pswitch_2
    iget-object v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer$1;->this$0:Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v1, v2}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->access$002(Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;F)F

    .line 118
    iget-object v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer$1;->this$0:Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v1, v2}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->access$102(Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;F)F

    .line 119
    iget-object v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer$1;->this$0:Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;

    invoke-virtual {v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->invalidate()V

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
