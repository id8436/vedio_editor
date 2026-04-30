.class Lcom/e/a/a/a/b/p;
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
    .line 1091
    iput-object p1, p0, Lcom/e/a/a/a/b/p;->a:Lcom/e/a/a/a/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/e/a/a/a/b/p;->a:Lcom/e/a/a/a/b/l;

    invoke-static {v0}, Lcom/e/a/a/a/b/l;->b(Lcom/e/a/a/a/b/l;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1095
    iget-object v0, p0, Lcom/e/a/a/a/b/p;->a:Lcom/e/a/a/a/b/l;

    iget-object v1, p0, Lcom/e/a/a/a/b/p;->a:Lcom/e/a/a/a/b/l;

    invoke-static {v1}, Lcom/e/a/a/a/b/l;->c(Lcom/e/a/a/a/b/l;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/e/a/a/a/b/l;->a(Lcom/e/a/a/a/b/l;Landroid/support/v7/widget/RecyclerView;)V

    .line 1097
    :cond_0
    return-void
.end method
