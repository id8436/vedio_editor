.class Lcom/adobe/utility/progressdialog/PSMixProgressDialog$1;
.super Ljava/lang/Object;
.source "PSMixProgressDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/utility/progressdialog/PSMixProgressDialog;

.field final synthetic val$progressButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/adobe/utility/progressdialog/PSMixProgressDialog;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog$1;->this$0:Lcom/adobe/utility/progressdialog/PSMixProgressDialog;

    iput-object p2, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog$1;->val$progressButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog$1;->val$progressButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog$1;->this$0:Lcom/adobe/utility/progressdialog/PSMixProgressDialog;

    invoke-static {v1}, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->access$000(Lcom/adobe/utility/progressdialog/PSMixProgressDialog;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/adobe/utility/R$string;->progress_dialog_button_text:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog$1;->this$0:Lcom/adobe/utility/progressdialog/PSMixProgressDialog;

    invoke-static {v0}, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->access$100(Lcom/adobe/utility/progressdialog/PSMixProgressDialog;)Lcom/adobe/utility/progressdialog/PSMixProgressDialog$IProgressDialogCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/utility/progressdialog/PSMixProgressDialog$IProgressDialogCallback;->selectedCancel()V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog$1;->this$0:Lcom/adobe/utility/progressdialog/PSMixProgressDialog;

    invoke-static {v0}, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->access$100(Lcom/adobe/utility/progressdialog/PSMixProgressDialog;)Lcom/adobe/utility/progressdialog/PSMixProgressDialog$IProgressDialogCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/utility/progressdialog/PSMixProgressDialog$IProgressDialogCallback;->selectedClose()V

    goto :goto_0
.end method
