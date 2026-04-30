.class Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$3;
.super Ljava/lang/Object;
.source "BehanceSDKColorPickerDialogSimple.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$3;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$3;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;

    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$3;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;

    invoke-static {v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->access$100(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->access$202(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;I)I

    .line 117
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$3;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;

    invoke-static {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->access$000(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$3;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;

    invoke-static {v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->access$200(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->setSelectedColor(I)V

    .line 118
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$3;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;

    invoke-static {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->access$300(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$3;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;

    invoke-static {v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->access$200(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 119
    return-void
.end method
