.class Lcom/e/a/a/a/b/b;
.super Ljava/lang/Object;
.source "BaseDraggableItemDecorator.java"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;


# instance fields
.field final synthetic a:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field final synthetic b:Lcom/e/a/a/a/b/a;


# direct methods
.method constructor <init>(Lcom/e/a/a/a/b/a;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/e/a/a/a/b/b;->b:Lcom/e/a/a/a/b/a;

    iput-object p2, p0, Lcom/e/a/a/a/b/b;->a:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 85
    iget-object v0, p0, Lcom/e/a/a/a/b/b;->a:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 86
    invoke-static {p1, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 87
    invoke-static {p1, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 93
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 81
    return-void
.end method
