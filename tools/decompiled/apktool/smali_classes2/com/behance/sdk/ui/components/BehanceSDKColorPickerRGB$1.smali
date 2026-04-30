.class Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB$1;
.super Ljava/lang/Object;
.source "BehanceSDKColorPickerRGB.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 48
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;

    invoke-static {v0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->access$000(Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;)Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    move-result-object v0

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->setGradient(I)V

    .line 49
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;

    invoke-static {v0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->access$100(Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;)Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    move-result-object v0

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->setGradient(I)V

    .line 50
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;

    invoke-static {v0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->access$200(Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;)Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    move-result-object v0

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->setGradient(I)V

    .line 51
    return-void
.end method
