.class Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog$1;
.super Ljava/lang/Object;
.source "BehanceSDKBottomSheetShareDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog$1;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog$1;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog$1;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog$1;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;

    invoke-virtual {v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$dimen;->bottom_sheet_max_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 103
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog$1;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 105
    :cond_0
    return-void
.end method
