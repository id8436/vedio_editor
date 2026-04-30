.class Lcom/getbase/floatingactionbutton/e;
.super Lcom/getbase/floatingactionbutton/a;
.source "FloatingActionsMenu.java"


# instance fields
.field final synthetic g:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;


# direct methods
.method constructor <init>(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/getbase/floatingactionbutton/e;->g:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-direct {p0, p2}, Lcom/getbase/floatingactionbutton/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/e;->g:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-static {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)I

    move-result v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/e;->a:I

    .line 150
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/e;->g:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-static {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->b(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)I

    move-result v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/e;->b:I

    .line 151
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/e;->g:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-static {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->c(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)I

    move-result v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/e;->c:I

    .line 152
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/e;->g:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-static {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->d(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/getbase/floatingactionbutton/e;->f:Z

    .line 153
    invoke-super {p0}, Lcom/getbase/floatingactionbutton/a;->a()V

    .line 154
    return-void
.end method

.method getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 158
    new-instance v0, Lcom/getbase/floatingactionbutton/i;

    invoke-super {p0}, Lcom/getbase/floatingactionbutton/a;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/getbase/floatingactionbutton/i;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 159
    iget-object v1, p0, Lcom/getbase/floatingactionbutton/e;->g:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-static {v1, v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;Lcom/getbase/floatingactionbutton/i;)Lcom/getbase/floatingactionbutton/i;

    .line 161
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    .line 163
    const-string/jumbo v2, "rotation"

    new-array v3, v4, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 164
    const-string/jumbo v3, "rotation"

    new-array v4, v4, [F

    fill-array-data v4, :array_1

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 166
    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 167
    invoke-virtual {v3, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 169
    iget-object v1, p0, Lcom/getbase/floatingactionbutton/e;->g:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-static {v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->e(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 170
    iget-object v1, p0, Lcom/getbase/floatingactionbutton/e;->g:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-static {v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->f(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 172
    return-object v0

    .line 163
    nop

    :array_0
    .array-data 4
        0x43070000    # 135.0f
        0x0
    .end array-data

    .line 164
    :array_1
    .array-data 4
        0x0
        0x43070000    # 135.0f
    .end array-data
.end method
