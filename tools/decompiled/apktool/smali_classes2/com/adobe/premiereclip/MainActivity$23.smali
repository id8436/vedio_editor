.class Lcom/adobe/premiereclip/MainActivity$23;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/MainActivity;

.field final synthetic val$errorDialog:Lcom/adobe/premiereclip/dialogs/MessageDialog;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/MainActivity;Lcom/adobe/premiereclip/dialogs/MessageDialog;)V
    .locals 0

    .prologue
    .line 2099
    iput-object p1, p0, Lcom/adobe/premiereclip/MainActivity$23;->this$0:Lcom/adobe/premiereclip/MainActivity;

    iput-object p2, p0, Lcom/adobe/premiereclip/MainActivity$23;->val$errorDialog:Lcom/adobe/premiereclip/dialogs/MessageDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .prologue
    .line 2102
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$23;->val$errorDialog:Lcom/adobe/premiereclip/dialogs/MessageDialog;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->dismiss()V

    .line 2103
    return-void
.end method
