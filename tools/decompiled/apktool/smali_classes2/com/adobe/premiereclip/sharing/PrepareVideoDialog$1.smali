.class Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$1;
.super Ljava/lang/Object;
.source "PrepareVideoDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$1;->this$0:Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 226
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$1;->this$0:Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->access$000(Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$1;->this$0:Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->access$000(Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 227
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$1;->this$0:Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->access$100(Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;)V

    .line 228
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$1;->this$0:Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;

    iget-object v0, v0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->prepareStatusView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$1;->this$0:Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;

    invoke-static {v1}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->access$200(Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$1;->this$0:Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->access$002(Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;I)I

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$1;->this$0:Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->access$300(Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;)Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$1;->this$0:Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->access$000(Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;)I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 232
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$1;->this$0:Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->access$300(Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;)Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;->onPublished()V

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$1;->this$0:Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->dismiss()V

    .line 235
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$1;->this$0:Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->access$300(Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;)Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$1;->this$0:Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->access$300(Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;)Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;->onDismissed()V

    goto :goto_0
.end method
