.class Lcom/adobe/utility/progressdialog/PSMixProgressDialog$2;
.super Ljava/lang/Object;
.source "PSMixProgressDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/utility/progressdialog/PSMixProgressDialog;


# direct methods
.method constructor <init>(Lcom/adobe/utility/progressdialog/PSMixProgressDialog;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog$2;->this$0:Lcom/adobe/utility/progressdialog/PSMixProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog$2;->this$0:Lcom/adobe/utility/progressdialog/PSMixProgressDialog;

    invoke-static {v0}, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->access$100(Lcom/adobe/utility/progressdialog/PSMixProgressDialog;)Lcom/adobe/utility/progressdialog/PSMixProgressDialog$IProgressDialogCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog$2;->this$0:Lcom/adobe/utility/progressdialog/PSMixProgressDialog;

    invoke-static {v0}, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->access$100(Lcom/adobe/utility/progressdialog/PSMixProgressDialog;)Lcom/adobe/utility/progressdialog/PSMixProgressDialog$IProgressDialogCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/utility/progressdialog/PSMixProgressDialog$IProgressDialogCallback;->selectedCancel()V

    .line 114
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
