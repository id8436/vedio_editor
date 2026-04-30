.class Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel$1;
.super Ljava/lang/Object;
.source "BehanceSDKColorPickerWheel.java"

# interfaces
.implements Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(I)V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;

    invoke-static {v0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;->access$100(Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;

    invoke-static {v1, p1}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;->access$000(Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 55
    return-void
.end method
