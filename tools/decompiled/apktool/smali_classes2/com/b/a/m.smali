.class Lcom/b/a/m;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/b/a/e/i;

.field final synthetic b:Lcom/b/a/l;


# direct methods
.method constructor <init>(Lcom/b/a/l;Lcom/b/a/e/i;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/b/a/m;->b:Lcom/b/a/l;

    iput-object p2, p0, Lcom/b/a/m;->a:Lcom/b/a/e/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/b/a/m;->a:Lcom/b/a/e/i;

    iget-object v1, p0, Lcom/b/a/m;->b:Lcom/b/a/l;

    invoke-interface {v0, v1}, Lcom/b/a/e/i;->a(Lcom/b/a/e/j;)V

    .line 76
    return-void
.end method
