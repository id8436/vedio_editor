.class Lcom/adobe/premiereclip/dialogs/ConfirmDialog$1;
.super Ljava/lang/Object;
.source "ConfirmDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/dialogs/ConfirmDialog;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/dialogs/ConfirmDialog;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/adobe/premiereclip/dialogs/ConfirmDialog$1;->this$0:Lcom/adobe/premiereclip/dialogs/ConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/adobe/premiereclip/dialogs/ConfirmDialog$1;->this$0:Lcom/adobe/premiereclip/dialogs/ConfirmDialog;

    iget-object v0, v0, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->acceptButtonListener:Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/adobe/premiereclip/dialogs/ConfirmDialog$1;->this$0:Lcom/adobe/premiereclip/dialogs/ConfirmDialog;

    iget-object v0, v0, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->acceptButtonListener:Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;->onClick()V

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/dialogs/ConfirmDialog$1;->this$0:Lcom/adobe/premiereclip/dialogs/ConfirmDialog;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->dismiss()V

    .line 49
    return-void
.end method
