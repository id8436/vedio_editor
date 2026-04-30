.class Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$4;
.super Ljava/lang/Object;
.source "BehanceSDKColorPickerDialogSimple.java"

# interfaces
.implements Lcom/behance/sdk/listeners/IBehanceSDKColorCallback;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$4;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorSelected(I)V
    .locals 6

    .prologue
    .line 125
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$4;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;

    invoke-static {v0, p1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->access$202(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;I)I

    .line 126
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$4;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;

    invoke-static {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->access$400(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$4;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;

    invoke-virtual {v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$string;->bsdk_color_picker_hex_format:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/behance/sdk/util/BehanceSDKColorUtils;->getHexColorString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$4;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;

    invoke-static {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->access$400(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$4;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;

    invoke-static {v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->access$400(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 128
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$4;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;

    invoke-static {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->access$300(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$4;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;

    invoke-static {v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->access$200(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 129
    return-void
.end method
