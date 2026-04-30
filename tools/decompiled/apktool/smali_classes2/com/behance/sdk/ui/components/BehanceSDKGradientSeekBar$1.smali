.class Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$1;
.super Ljava/lang/Object;
.source "BehanceSDKGradientSeekBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 117
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 133
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 121
    :pswitch_0
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    invoke-static {v0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->access$000(Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->access$100(Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;F)V

    .line 125
    :goto_1
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    invoke-static {v0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->access$300(Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;)V

    .line 126
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    invoke-static {v0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->access$400(Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;)Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    invoke-static {v0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->access$400(Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;)Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekListener;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    invoke-virtual {v1}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getProgress()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekListener;->onProgressChanged(I)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    invoke-static {v0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->access$500(Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;)V

    .line 130
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->invalidate()V

    .line 131
    const/4 v0, 0x1

    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->access$200(Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;F)V

    goto :goto_1

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
