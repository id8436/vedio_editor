.class public Lcom/e/a/a/a/a/a/d;
.super Ljava/lang/Object;
.source "BaseItemAnimationManager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;


# instance fields
.field private a:Lcom/e/a/a/a/a/a/b;

.field private b:Lcom/e/a/a/a/a/a/g;

.field private c:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field private d:Landroid/support/v4/view/ViewPropertyAnimatorCompat;


# direct methods
.method public constructor <init>(Lcom/e/a/a/a/a/a/b;Lcom/e/a/a/a/a/a/g;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p1, p0, Lcom/e/a/a/a/a/a/d;->a:Lcom/e/a/a/a/a/a/b;

    .line 202
    iput-object p2, p0, Lcom/e/a/a/a/a/a/d;->b:Lcom/e/a/a/a/a/a/g;

    .line 203
    iput-object p3, p0, Lcom/e/a/a/a/a/a/d;->c:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 204
    iput-object p4, p0, Lcom/e/a/a/a/a/a/d;->d:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 205
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/e/a/a/a/a/a/d;->a:Lcom/e/a/a/a/a/a/b;

    iget-object v1, p0, Lcom/e/a/a/a/a/a/d;->b:Lcom/e/a/a/a/a/a/g;

    iget-object v2, p0, Lcom/e/a/a/a/a/a/d;->c:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1, v2}, Lcom/e/a/a/a/a/a/b;->a(Lcom/e/a/a/a/a/a/g;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 237
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 216
    iget-object v0, p0, Lcom/e/a/a/a/a/a/d;->a:Lcom/e/a/a/a/a/a/b;

    .line 217
    iget-object v1, p0, Lcom/e/a/a/a/a/a/d;->b:Lcom/e/a/a/a/a/a/g;

    .line 218
    iget-object v2, p0, Lcom/e/a/a/a/a/a/d;->c:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 220
    iget-object v3, p0, Lcom/e/a/a/a/a/a/d;->d:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 221
    iput-object v4, p0, Lcom/e/a/a/a/a/a/d;->a:Lcom/e/a/a/a/a/a/b;

    .line 222
    iput-object v4, p0, Lcom/e/a/a/a/a/a/d;->b:Lcom/e/a/a/a/a/a/g;

    .line 223
    iput-object v4, p0, Lcom/e/a/a/a/a/a/d;->c:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 224
    iput-object v4, p0, Lcom/e/a/a/a/a/a/d;->d:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 226
    invoke-virtual {v0, v1, v2}, Lcom/e/a/a/a/a/a/b;->c(Lcom/e/a/a/a/a/a/g;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 227
    invoke-virtual {v0, v1, v2}, Lcom/e/a/a/a/a/a/b;->e(Lcom/e/a/a/a/a/a/g;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 228
    invoke-virtual {v1, v2}, Lcom/e/a/a/a/a/a/g;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 229
    iget-object v1, v0, Lcom/e/a/a/a/a/a/b;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 230
    invoke-virtual {v0}, Lcom/e/a/a/a/a/a/b;->g()V

    .line 231
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 210
    iget-object v0, p0, Lcom/e/a/a/a/a/a/d;->a:Lcom/e/a/a/a/a/a/b;

    iget-object v1, p0, Lcom/e/a/a/a/a/a/d;->b:Lcom/e/a/a/a/a/a/g;

    iget-object v2, p0, Lcom/e/a/a/a/a/a/d;->c:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1, v2}, Lcom/e/a/a/a/a/a/b;->d(Lcom/e/a/a/a/a/a/g;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 211
    return-void
.end method
