.class Lcom/facebook/i/bb;
.super Ljava/lang/Object;
.source "WebDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/facebook/i/ba;


# direct methods
.method constructor <init>(Lcom/facebook/i/ba;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/facebook/i/bb;->a:Lcom/facebook/i/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/facebook/i/bb;->a:Lcom/facebook/i/ba;

    invoke-virtual {v0}, Lcom/facebook/i/ba;->cancel()V

    .line 234
    return-void
.end method
