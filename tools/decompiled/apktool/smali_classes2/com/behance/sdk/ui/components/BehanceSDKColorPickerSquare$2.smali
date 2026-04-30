.class Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare$2;
.super Ljava/lang/Object;
.source "BehanceSDKColorPickerSquare.java"

# interfaces
.implements Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare$2;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(I)V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare$2;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;

    invoke-static {v0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->access$100(Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;)Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare$2;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;

    invoke-static {v1}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->access$000(Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;)Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;->setColor(I)V

    .line 64
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare$2;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;

    invoke-static {v0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->access$200(Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;)Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->onGradientChange()V

    .line 65
    return-void
.end method
