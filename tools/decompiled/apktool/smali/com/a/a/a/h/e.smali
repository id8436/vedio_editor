.class Lcom/a/a/a/h/e;
.super Landroid/content/BroadcastReceiver;
.source "NetworkUtilImpl.java"


# instance fields
.field final synthetic a:Lcom/a/a/a/h/d;


# direct methods
.method constructor <init>(Lcom/a/a/a/h/d;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/a/a/a/h/e;->a:Lcom/a/a/a/h/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/a/a/a/h/e;->a:Lcom/a/a/a/h/d;

    invoke-virtual {v0, p1}, Lcom/a/a/a/h/d;->b(Landroid/content/Context;)V

    .line 34
    return-void
.end method
