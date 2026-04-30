.class Lcom/e/a/a/a/b/n;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "RecyclerViewDragDropManager.java"


# instance fields
.field final synthetic a:Lcom/e/a/a/a/b/l;


# direct methods
.method constructor <init>(Lcom/e/a/a/a/b/l;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/e/a/a/a/b/n;->a:Lcom/e/a/a/a/b/l;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/e/a/a/a/b/n;->a:Lcom/e/a/a/a/b/l;

    invoke-virtual {v0, p1, p2}, Lcom/e/a/a/a/b/l;->a(Landroid/support/v7/widget/RecyclerView;I)V

    .line 187
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/e/a/a/a/b/n;->a:Lcom/e/a/a/a/b/l;

    invoke-virtual {v0, p1, p2, p3}, Lcom/e/a/a/a/b/l;->a(Landroid/support/v7/widget/RecyclerView;II)V

    .line 192
    return-void
.end method
