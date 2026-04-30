.class Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$2;
.super Ljava/lang/Object;
.source "BehanceSDKColorPickerDialogSimple.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$2;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$2;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;

    invoke-static {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->access$000(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 109
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$2;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;

    invoke-static {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->access$000(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$2;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;

    invoke-static {v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->access$100(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->setSelectedColor(I)V

    .line 110
    return-void
.end method
