.class Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3$1;
.super Ljava/lang/Object;
.source "BehanceSDKColorPickerDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$1:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3$1;->this$1:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3$1;->this$1:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3;

    iget-object v0, v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;

    invoke-static {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->access$000(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;)Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 127
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3$1;->this$1:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3;

    iget-object v0, v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;

    invoke-static {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->access$000(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;)Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3$1;->this$1:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3;

    iget-object v1, v1, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;

    invoke-static {v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->access$100(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;->setSelectedColor(I)V

    .line 128
    return-void
.end method
