.class public Lcom/alertdialogpro/material/a/a;
.super Landroid/graphics/drawable/Drawable;
.source "CircularAnimatedDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field private static final a:Landroid/view/animation/Interpolator;

.field private static final b:Landroid/view/animation/Interpolator;


# instance fields
.field private final c:Landroid/graphics/RectF;

.field private d:Lcom/g/a/i;

.field private e:Lcom/g/a/i;

.field private f:Z

.field private g:Landroid/graphics/Paint;

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:Z

.field private m:Lcom/g/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/g/b/c",
            "<",
            "Lcom/alertdialogpro/material/a/a;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/g/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/g/b/c",
            "<",
            "Lcom/alertdialogpro/material/a/a;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/alertdialogpro/material/a/a;->a:Landroid/view/animation/Interpolator;

    .line 22
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/alertdialogpro/material/a/a;->b:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 3

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 26
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alertdialogpro/material/a/a;->c:Landroid/graphics/RectF;

    .line 94
    new-instance v0, Lcom/alertdialogpro/material/a/b;

    const-class v1, Ljava/lang/Float;

    const-string/jumbo v2, "angle"

    invoke-direct {v0, p0, v1, v2}, Lcom/alertdialogpro/material/a/b;-><init>(Lcom/alertdialogpro/material/a/a;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alertdialogpro/material/a/a;->m:Lcom/g/b/c;

    .line 107
    new-instance v0, Lcom/alertdialogpro/material/a/c;

    const-class v1, Ljava/lang/Float;

    const-string/jumbo v2, "arc"

    invoke-direct {v0, p0, v1, v2}, Lcom/alertdialogpro/material/a/c;-><init>(Lcom/alertdialogpro/material/a/a;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alertdialogpro/material/a/a;->n:Lcom/g/b/c;

    .line 39
    iput p2, p0, Lcom/alertdialogpro/material/a/a;->k:F

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alertdialogpro/material/a/a;->g:Landroid/graphics/Paint;

    .line 42
    iget-object v0, p0, Lcom/alertdialogpro/material/a/a;->g:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43
    iget-object v0, p0, Lcom/alertdialogpro/material/a/a;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    iget-object v0, p0, Lcom/alertdialogpro/material/a/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 45
    iget-object v0, p0, Lcom/alertdialogpro/material/a/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    invoke-direct {p0}, Lcom/alertdialogpro/material/a/a;->d()V

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/alertdialogpro/material/a/a;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alertdialogpro/material/a/a;->c()V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/alertdialogpro/material/a/a;->f:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/alertdialogpro/material/a/a;->f:Z

    .line 80
    iget-boolean v0, p0, Lcom/alertdialogpro/material/a/a;->f:Z

    if-eqz v0, :cond_0

    .line 81
    iget v0, p0, Lcom/alertdialogpro/material/a/a;->h:F

    const/high16 v1, 0x42700000    # 60.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/alertdialogpro/material/a/a;->h:F

    .line 83
    :cond_0
    return-void

    .line 79
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 121
    iget-object v0, p0, Lcom/alertdialogpro/material/a/a;->m:Lcom/g/b/c;

    new-array v1, v4, [F

    const/high16 v2, 0x43b40000    # 360.0f

    aput v2, v1, v6

    invoke-static {p0, v0, v1}, Lcom/g/a/i;->a(Ljava/lang/Object;Lcom/g/b/c;[F)Lcom/g/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/alertdialogpro/material/a/a;->e:Lcom/g/a/i;

    .line 122
    iget-object v0, p0, Lcom/alertdialogpro/material/a/a;->e:Lcom/g/a/i;

    sget-object v1, Lcom/alertdialogpro/material/a/a;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/g/a/i;->a(Landroid/view/animation/Interpolator;)V

    .line 123
    iget-object v0, p0, Lcom/alertdialogpro/material/a/a;->e:Lcom/g/a/i;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Lcom/g/a/i;->a(J)Lcom/g/a/i;

    .line 124
    iget-object v0, p0, Lcom/alertdialogpro/material/a/a;->e:Lcom/g/a/i;

    invoke-virtual {v0, v4}, Lcom/g/a/i;->b(I)V

    .line 125
    iget-object v0, p0, Lcom/alertdialogpro/material/a/a;->e:Lcom/g/a/i;

    invoke-virtual {v0, v5}, Lcom/g/a/i;->a(I)V

    .line 127
    iget-object v0, p0, Lcom/alertdialogpro/material/a/a;->n:Lcom/g/b/c;

    new-array v1, v4, [F

    const/high16 v2, 0x43960000    # 300.0f

    aput v2, v1, v6

    invoke-static {p0, v0, v1}, Lcom/g/a/i;->a(Ljava/lang/Object;Lcom/g/b/c;[F)Lcom/g/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/alertdialogpro/material/a/a;->d:Lcom/g/a/i;

    .line 128
    iget-object v0, p0, Lcom/alertdialogpro/material/a/a;->d:Lcom/g/a/i;

    sget-object v1, Lcom/alertdialogpro/material/a/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/g/a/i;->a(Landroid/view/animation/Interpolator;)V

    .line 129
    iget-object v0, p0, Lcom/alertdialogpro/material/a/a;->d:Lcom/g/a/i;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Lcom/g/a/i;->a(J)Lcom/g/a/i;

    .line 130
    iget-object v0, p0, Lcom/alertdialogpro/material/a/a;->d:Lcom/g/a/i;

    invoke-virtual {v0, v4}, Lcom/g/a/i;->b(I)V

    .line 131
    iget-object v0, p0, Lcom/alertdialogpro/material/a/a;->d:Lcom/g/a/i;

    invoke-virtual {v0, v5}, Lcom/g/a/i;->a(I)V

    .line 132
    iget-object v0, p0, Lcom/alertdialogpro/material/a/a;->d:Lcom/g/a/i;

    new-instance v1, Lcom/alertdialogpro/material/a/d;

    invoke-direct {v1, p0}, Lcom/alertdialogpro/material/a/d;-><init>(Lcom/alertdialogpro/material/a/a;)V

    invoke-virtual {v0, v1}, Lcom/g/a/i;->a(Lcom/g/a/b;)V

    .line 153
    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/alertdialogpro/material/a/a;->i:F

    return v0
.end method

.method public a(F)V
    .locals 0

    .prologue
    .line 183
    iput p1, p0, Lcom/alertdialogpro/material/a/a;->i:F

    .line 184
    invoke-virtual {p0}, Lcom/alertdialogpro/material/a/a;->invalidateSelf()V

    .line 185
    return-void
.end method

.method public b()F
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/alertdialogpro/material/a/a;->j:F

    return v0
.end method

.method public b(F)V
    .locals 0

    .prologue
    .line 192
    iput p1, p0, Lcom/alertdialogpro/material/a/a;->j:F

    .line 193
    invoke-virtual {p0}, Lcom/alertdialogpro/material/a/a;->invalidateSelf()V

    .line 194
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/high16 v3, 0x41f00000    # 30.0f

    .line 52
    iget v0, p0, Lcom/alertdialogpro/material/a/a;->i:F

    iget v1, p0, Lcom/alertdialogpro/material/a/a;->h:F

    sub-float v2, v0, v1

    .line 53
    iget v0, p0, Lcom/alertdialogpro/material/a/a;->j:F

    .line 54
    iget-boolean v1, p0, Lcom/alertdialogpro/material/a/a;->f:Z

    if-nez v1, :cond_0

    .line 55
    add-float/2addr v2, v0

    .line 56
    const/high16 v1, 0x43b40000    # 360.0f

    sub-float v0, v1, v0

    sub-float v3, v0, v3

    .line 60
    :goto_0
    iget-object v1, p0, Lcom/alertdialogpro/material/a/a;->c:Landroid/graphics/RectF;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alertdialogpro/material/a/a;->g:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 61
    return-void

    .line 58
    :cond_0
    add-float/2addr v3, v0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, -0x2

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/alertdialogpro/material/a/a;->l:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, 0x3f000000    # 0.5f

    .line 87
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 88
    iget-object v0, p0, Lcom/alertdialogpro/material/a/a;->c:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alertdialogpro/material/a/a;->k:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 89
    iget-object v0, p0, Lcom/alertdialogpro/material/a/a;->c:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alertdialogpro/material/a/a;->k:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 90
    iget-object v0, p0, Lcom/alertdialogpro/material/a/a;->c:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alertdialogpro/material/a/a;->k:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 91
    iget-object v0, p0, Lcom/alertdialogpro/material/a/a;->c:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alertdialogpro/material/a/a;->k:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 92
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alertdialogpro/material/a/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 66
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alertdialogpro/material/a/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 71
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/alertdialogpro/material/a/a;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 160
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alertdialogpro/material/a/a;->l:Z

    .line 161
    iget-object v0, p0, Lcom/alertdialogpro/material/a/a;->e:Lcom/g/a/i;

    invoke-virtual {v0}, Lcom/g/a/i;->a()V

    .line 162
    iget-object v0, p0, Lcom/alertdialogpro/material/a/a;->d:Lcom/g/a/i;

    invoke-virtual {v0}, Lcom/g/a/i;->a()V

    .line 163
    invoke-virtual {p0}, Lcom/alertdialogpro/material/a/a;->invalidateSelf()V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/alertdialogpro/material/a/a;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 171
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alertdialogpro/material/a/a;->l:Z

    .line 172
    iget-object v0, p0, Lcom/alertdialogpro/material/a/a;->e:Lcom/g/a/i;

    invoke-virtual {v0}, Lcom/g/a/i;->b()V

    .line 173
    iget-object v0, p0, Lcom/alertdialogpro/material/a/a;->d:Lcom/g/a/i;

    invoke-virtual {v0}, Lcom/g/a/i;->b()V

    .line 174
    invoke-virtual {p0}, Lcom/alertdialogpro/material/a/a;->invalidateSelf()V

    goto :goto_0
.end method
