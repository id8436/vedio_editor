.class Lcom/a/a/a/h/g;
.super Landroid/content/BroadcastReceiver;
.source "NetworkUtilImpl.java"


# instance fields
.field final synthetic a:Lcom/a/a/a/h/d;


# direct methods
.method constructor <init>(Lcom/a/a/a/h/d;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/a/a/a/h/g;->a:Lcom/a/a/a/h/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/a/a/a/h/g;->a:Lcom/a/a/a/h/d;

    invoke-virtual {v0, p1}, Lcom/a/a/a/h/d;->b(Landroid/content/Context;)V

    .line 61
    return-void
.end method
