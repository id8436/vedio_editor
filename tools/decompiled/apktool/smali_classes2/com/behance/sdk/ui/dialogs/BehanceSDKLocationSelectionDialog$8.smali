.class Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$8;
.super Ljava/lang/Object;
.source "BehanceSDKLocationSelectionDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;)V
    .locals 0

    .prologue
    .line 475
    iput-object p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$8;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    .line 487
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$8;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;

    invoke-static {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->access$500(Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 488
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$8;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 489
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$8;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;

    invoke-static {v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->access$500(Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 490
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 483
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 479
    return-void
.end method
