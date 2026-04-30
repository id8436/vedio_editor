.class Lcom/adobe/premiereclip/dialogs/SyncDialog$1;
.super Ljava/lang/Object;
.source "SyncDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/dialogs/SyncDialog;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/dialogs/SyncDialog;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/adobe/premiereclip/dialogs/SyncDialog$1;->this$0:Lcom/adobe/premiereclip/dialogs/SyncDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/adobe/premiereclip/dialogs/SyncDialog$1;->this$0:Lcom/adobe/premiereclip/dialogs/SyncDialog;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/SyncDialog;->dismiss()V

    .line 44
    return-void
.end method
