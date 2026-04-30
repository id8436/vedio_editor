.class Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare$1;
.super Ljava/lang/Object;
.source "BehanceSDKColorPickerSquare.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;

    invoke-static {v0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->access$000(Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;)Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 57
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;

    invoke-static {v0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->access$000(Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;)Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->setGradient([I)V

    .line 58
    return-void

    .line 57
    nop

    :array_0
    .array-data 4
        -0x10000
        -0x100
        -0xff0100
        -0xff0001
        -0xffff01
        -0xff01
        -0x10000
    .end array-data
.end method
