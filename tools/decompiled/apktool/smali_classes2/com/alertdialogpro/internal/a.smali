.class Lcom/alertdialogpro/internal/a;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alertdialogpro/internal/AlertController;


# direct methods
.method constructor <init>(Lcom/alertdialogpro/internal/AlertController;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/alertdialogpro/internal/a;->a:Lcom/alertdialogpro/internal/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 97
    iget-object v1, p0, Lcom/alertdialogpro/internal/a;->a:Lcom/alertdialogpro/internal/AlertController;

    invoke-static {v1}, Lcom/alertdialogpro/internal/AlertController;->a(Lcom/alertdialogpro/internal/AlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/alertdialogpro/internal/a;->a:Lcom/alertdialogpro/internal/AlertController;

    invoke-static {v1}, Lcom/alertdialogpro/internal/AlertController;->b(Lcom/alertdialogpro/internal/AlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 98
    iget-object v0, p0, Lcom/alertdialogpro/internal/a;->a:Lcom/alertdialogpro/internal/AlertController;

    invoke-static {v0}, Lcom/alertdialogpro/internal/AlertController;->b(Lcom/alertdialogpro/internal/AlertController;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 104
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/alertdialogpro/internal/a;->a:Lcom/alertdialogpro/internal/AlertController;

    invoke-static {v0}, Lcom/alertdialogpro/internal/AlertController;->h(Lcom/alertdialogpro/internal/AlertController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alertdialogpro/internal/a;->a:Lcom/alertdialogpro/internal/AlertController;

    invoke-static {v2}, Lcom/alertdialogpro/internal/AlertController;->g(Lcom/alertdialogpro/internal/AlertController;)Landroid/content/DialogInterface;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 111
    return-void

    .line 99
    :cond_2
    iget-object v1, p0, Lcom/alertdialogpro/internal/a;->a:Lcom/alertdialogpro/internal/AlertController;

    invoke-static {v1}, Lcom/alertdialogpro/internal/AlertController;->c(Lcom/alertdialogpro/internal/AlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/alertdialogpro/internal/a;->a:Lcom/alertdialogpro/internal/AlertController;

    invoke-static {v1}, Lcom/alertdialogpro/internal/AlertController;->d(Lcom/alertdialogpro/internal/AlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 100
    iget-object v0, p0, Lcom/alertdialogpro/internal/a;->a:Lcom/alertdialogpro/internal/AlertController;

    invoke-static {v0}, Lcom/alertdialogpro/internal/AlertController;->d(Lcom/alertdialogpro/internal/AlertController;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    .line 101
    :cond_3
    iget-object v1, p0, Lcom/alertdialogpro/internal/a;->a:Lcom/alertdialogpro/internal/AlertController;

    invoke-static {v1}, Lcom/alertdialogpro/internal/AlertController;->e(Lcom/alertdialogpro/internal/AlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/alertdialogpro/internal/a;->a:Lcom/alertdialogpro/internal/AlertController;

    invoke-static {v1}, Lcom/alertdialogpro/internal/AlertController;->f(Lcom/alertdialogpro/internal/AlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/alertdialogpro/internal/a;->a:Lcom/alertdialogpro/internal/AlertController;

    invoke-static {v0}, Lcom/alertdialogpro/internal/AlertController;->f(Lcom/alertdialogpro/internal/AlertController;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method
