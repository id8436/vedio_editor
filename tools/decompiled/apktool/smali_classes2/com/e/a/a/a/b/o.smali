.class Lcom/e/a/a/a/b/o;
.super Ljava/lang/Object;
.source "RecyclerViewDragDropManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/e/a/a/a/b/l;


# direct methods
.method constructor <init>(Lcom/e/a/a/a/b/l;)V
    .locals 0

    .prologue
    .line 659
    iput-object p1, p0, Lcom/e/a/a/a/b/o;->a:Lcom/e/a/a/a/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 662
    iget-object v0, p0, Lcom/e/a/a/a/b/o;->a:Lcom/e/a/a/a/b/l;

    invoke-static {v0}, Lcom/e/a/a/a/b/l;->a(Lcom/e/a/a/a/b/l;)Ljava/lang/Runnable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/e/a/a/a/b/o;->a:Lcom/e/a/a/a/b/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/e/a/a/a/b/l;->a(Lcom/e/a/a/a/b/l;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 664
    iget-object v0, p0, Lcom/e/a/a/a/b/o;->a:Lcom/e/a/a/a/b/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/e/a/a/a/b/l;->a(Lcom/e/a/a/a/b/l;Z)V

    .line 666
    :cond_0
    return-void
.end method
