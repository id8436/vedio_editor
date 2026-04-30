.class Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$4;
.super Ljava/lang/Object;
.source "BehanceSDKLocationSelectionDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$4;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 175
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$4;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 176
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$4;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;

    invoke-static {v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->access$200(Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 177
    return v2
.end method
