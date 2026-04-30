.class Lcom/adobe/premiereclip/dialogs/MessageDialog$1;
.super Ljava/lang/Object;
.source "MessageDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/dialogs/MessageDialog;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/dialogs/MessageDialog;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/adobe/premiereclip/dialogs/MessageDialog$1;->this$0:Lcom/adobe/premiereclip/dialogs/MessageDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/adobe/premiereclip/dialogs/MessageDialog$1;->this$0:Lcom/adobe/premiereclip/dialogs/MessageDialog;

    iget-object v0, v0, Lcom/adobe/premiereclip/dialogs/MessageDialog;->acceptButtonListener:Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/adobe/premiereclip/dialogs/MessageDialog$1;->this$0:Lcom/adobe/premiereclip/dialogs/MessageDialog;

    iget-object v0, v0, Lcom/adobe/premiereclip/dialogs/MessageDialog;->acceptButtonListener:Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;->onClick()V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/dialogs/MessageDialog$1;->this$0:Lcom/adobe/premiereclip/dialogs/MessageDialog;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->dismiss()V

    .line 48
    return-void
.end method
