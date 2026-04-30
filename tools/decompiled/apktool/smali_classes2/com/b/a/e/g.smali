.class Lcom/b/a/e/g;
.super Landroid/content/BroadcastReceiver;
.source "DefaultConnectivityMonitor.java"


# instance fields
.field final synthetic a:Lcom/b/a/e/f;


# direct methods
.method constructor <init>(Lcom/b/a/e/f;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/b/a/e/g;->a:Lcom/b/a/e/f;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 20
    iget-object v0, p0, Lcom/b/a/e/g;->a:Lcom/b/a/e/f;

    invoke-static {v0}, Lcom/b/a/e/f;->a(Lcom/b/a/e/f;)Z

    move-result v0

    .line 21
    iget-object v1, p0, Lcom/b/a/e/g;->a:Lcom/b/a/e/f;

    iget-object v2, p0, Lcom/b/a/e/g;->a:Lcom/b/a/e/f;

    invoke-static {v2, p1}, Lcom/b/a/e/f;->a(Lcom/b/a/e/f;Landroid/content/Context;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/b/a/e/f;->a(Lcom/b/a/e/f;Z)Z

    .line 22
    iget-object v1, p0, Lcom/b/a/e/g;->a:Lcom/b/a/e/f;

    invoke-static {v1}, Lcom/b/a/e/f;->a(Lcom/b/a/e/f;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 23
    iget-object v0, p0, Lcom/b/a/e/g;->a:Lcom/b/a/e/f;

    invoke-static {v0}, Lcom/b/a/e/f;->b(Lcom/b/a/e/f;)Lcom/b/a/e/d;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/e/g;->a:Lcom/b/a/e/f;

    invoke-static {v1}, Lcom/b/a/e/f;->a(Lcom/b/a/e/f;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/b/a/e/d;->a(Z)V

    .line 25
    :cond_0
    return-void
.end method
