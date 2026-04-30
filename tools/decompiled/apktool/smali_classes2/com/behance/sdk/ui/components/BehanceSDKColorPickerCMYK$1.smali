.class Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK$1;
.super Ljava/lang/Object;
.source "BehanceSDKColorPickerCMYK.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 48
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 49
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;

    invoke-static {v0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->access$000(Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;)Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    move-result-object v0

    const v1, -0xff0001

    invoke-virtual {v0, v2, v1}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->setGradient(II)V

    .line 50
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;

    invoke-static {v0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->access$100(Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;)Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    move-result-object v0

    const v1, -0xff01

    invoke-virtual {v0, v2, v1}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->setGradient(II)V

    .line 51
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;

    invoke-static {v0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->access$200(Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;)Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    move-result-object v0

    const/16 v1, -0x100

    invoke-virtual {v0, v2, v1}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->setGradient(II)V

    .line 52
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;

    invoke-static {v0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->access$300(Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;)Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v2, v1}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->setGradient(II)V

    .line 53
    return-void
.end method
