.class Lcom/facebook/c/b/u;
.super Ljava/lang/Object;
.source "DiskStorageCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/facebook/c/b/s;


# direct methods
.method constructor <init>(Lcom/facebook/c/b/s;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/facebook/c/b/u;->b:Lcom/facebook/c/b/s;

    iput-object p2, p0, Lcom/facebook/c/b/u;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/facebook/c/b/u;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/c/b/u;->b:Lcom/facebook/c/b/s;

    invoke-static {v1}, Lcom/facebook/c/b/s;->d(Lcom/facebook/c/b/s;)Lcom/facebook/c/b/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/c/b/p;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/c/b/s;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 214
    return-void
.end method
