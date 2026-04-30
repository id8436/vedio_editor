.class final Lcom/facebook/a/e;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/facebook/a/h;

.field final synthetic c:Lcom/facebook/a/i;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/facebook/a/h;Lcom/facebook/a/i;)V
    .locals 0

    .prologue
    .line 746
    iput-object p1, p0, Lcom/facebook/a/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/a/e;->b:Lcom/facebook/a/h;

    iput-object p3, p0, Lcom/facebook/a/e;->c:Lcom/facebook/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 749
    iget-object v0, p0, Lcom/facebook/a/e;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/a/e;->b:Lcom/facebook/a/h;

    invoke-static {v0, v1}, Lcom/facebook/a/a;->a(Landroid/content/Context;Lcom/facebook/a/h;)Lcom/facebook/a/q;

    move-result-object v0

    .line 750
    iget-object v1, p0, Lcom/facebook/a/e;->c:Lcom/facebook/a/i;

    invoke-virtual {v0, v1}, Lcom/facebook/a/q;->a(Lcom/facebook/a/i;)V

    .line 751
    invoke-static {}, Lcom/facebook/a/a;->d()V

    .line 752
    return-void
.end method
