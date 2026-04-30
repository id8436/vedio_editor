.class public Lcom/facebook/drawee/f/b;
.super Ljava/lang/Object;
.source "GenericDraweeHierarchyBuilder.java"


# static fields
.field public static final a:Lcom/facebook/drawee/e/t;

.field public static final b:Lcom/facebook/drawee/e/t;


# instance fields
.field private c:Landroid/content/res/Resources;

.field private d:I

.field private e:F

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Lcom/facebook/drawee/e/t;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Lcom/facebook/drawee/e/t;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Lcom/facebook/drawee/e/t;

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Lcom/facebook/drawee/e/t;

.field private n:Lcom/facebook/drawee/e/t;

.field private o:Landroid/graphics/Matrix;

.field private p:Landroid/graphics/PointF;

.field private q:Landroid/graphics/ColorFilter;

.field private r:Landroid/graphics/drawable/Drawable;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private t:Landroid/graphics/drawable/Drawable;

.field private u:Lcom/facebook/drawee/f/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/facebook/drawee/e/t;->f:Lcom/facebook/drawee/e/t;

    sput-object v0, Lcom/facebook/drawee/f/b;->a:Lcom/facebook/drawee/e/t;

    .line 42
    sget-object v0, Lcom/facebook/drawee/e/t;->g:Lcom/facebook/drawee/e/t;

    sput-object v0, Lcom/facebook/drawee/f/b;->b:Lcom/facebook/drawee/e/t;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/facebook/drawee/f/b;->c:Landroid/content/res/Resources;

    .line 75
    invoke-direct {p0}, Lcom/facebook/drawee/f/b;->u()V

    .line 76
    return-void
.end method

.method private u()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    const/16 v0, 0x12c

    iput v0, p0, Lcom/facebook/drawee/f/b;->d:I

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/drawee/f/b;->e:F

    .line 90
    iput-object v1, p0, Lcom/facebook/drawee/f/b;->f:Landroid/graphics/drawable/Drawable;

    .line 91
    sget-object v0, Lcom/facebook/drawee/f/b;->a:Lcom/facebook/drawee/e/t;

    iput-object v0, p0, Lcom/facebook/drawee/f/b;->g:Lcom/facebook/drawee/e/t;

    .line 93
    iput-object v1, p0, Lcom/facebook/drawee/f/b;->h:Landroid/graphics/drawable/Drawable;

    .line 94
    sget-object v0, Lcom/facebook/drawee/f/b;->a:Lcom/facebook/drawee/e/t;

    iput-object v0, p0, Lcom/facebook/drawee/f/b;->i:Lcom/facebook/drawee/e/t;

    .line 96
    iput-object v1, p0, Lcom/facebook/drawee/f/b;->j:Landroid/graphics/drawable/Drawable;

    .line 97
    sget-object v0, Lcom/facebook/drawee/f/b;->a:Lcom/facebook/drawee/e/t;

    iput-object v0, p0, Lcom/facebook/drawee/f/b;->k:Lcom/facebook/drawee/e/t;

    .line 99
    iput-object v1, p0, Lcom/facebook/drawee/f/b;->l:Landroid/graphics/drawable/Drawable;

    .line 100
    sget-object v0, Lcom/facebook/drawee/f/b;->a:Lcom/facebook/drawee/e/t;

    iput-object v0, p0, Lcom/facebook/drawee/f/b;->m:Lcom/facebook/drawee/e/t;

    .line 102
    sget-object v0, Lcom/facebook/drawee/f/b;->b:Lcom/facebook/drawee/e/t;

    iput-object v0, p0, Lcom/facebook/drawee/f/b;->n:Lcom/facebook/drawee/e/t;

    .line 103
    iput-object v1, p0, Lcom/facebook/drawee/f/b;->o:Landroid/graphics/Matrix;

    .line 104
    iput-object v1, p0, Lcom/facebook/drawee/f/b;->p:Landroid/graphics/PointF;

    .line 105
    iput-object v1, p0, Lcom/facebook/drawee/f/b;->q:Landroid/graphics/ColorFilter;

    .line 107
    iput-object v1, p0, Lcom/facebook/drawee/f/b;->r:Landroid/graphics/drawable/Drawable;

    .line 108
    iput-object v1, p0, Lcom/facebook/drawee/f/b;->s:Ljava/util/List;

    .line 109
    iput-object v1, p0, Lcom/facebook/drawee/f/b;->t:Landroid/graphics/drawable/Drawable;

    .line 111
    iput-object v1, p0, Lcom/facebook/drawee/f/b;->u:Lcom/facebook/drawee/f/e;

    .line 112
    return-void
.end method

.method private v()V
    .locals 2

    .prologue
    .line 677
    iget-object v0, p0, Lcom/facebook/drawee/f/b;->s:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/facebook/drawee/f/b;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 679
    invoke-static {v0}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 682
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/facebook/drawee/f/b;->c:Landroid/content/res/Resources;

    return-object v0
.end method

.method public a(F)Lcom/facebook/drawee/f/b;
    .locals 0

    .prologue
    .line 163
    iput p1, p0, Lcom/facebook/drawee/f/b;->e:F

    .line 164
    return-object p0
.end method

.method public a(I)Lcom/facebook/drawee/f/b;
    .locals 0

    .prologue
    .line 142
    iput p1, p0, Lcom/facebook/drawee/f/b;->d:I

    .line 143
    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/f/b;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 181
    iput-object p1, p0, Lcom/facebook/drawee/f/b;->f:Landroid/graphics/drawable/Drawable;

    .line 182
    return-object p0
.end method

.method public a(Lcom/facebook/drawee/e/t;)Lcom/facebook/drawee/f/b;
    .locals 0
    .param p1    # Lcom/facebook/drawee/e/t;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 213
    iput-object p1, p0, Lcom/facebook/drawee/f/b;->g:Lcom/facebook/drawee/e/t;

    .line 214
    return-object p0
.end method

.method public a(Lcom/facebook/drawee/f/e;)Lcom/facebook/drawee/f/b;
    .locals 0
    .param p1    # Lcom/facebook/drawee/f/e;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 664
    iput-object p1, p0, Lcom/facebook/drawee/f/b;->u:Lcom/facebook/drawee/f/e;

    .line 665
    return-object p0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/facebook/drawee/f/b;->d:I

    return v0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/f/b;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 261
    iput-object p1, p0, Lcom/facebook/drawee/f/b;->h:Landroid/graphics/drawable/Drawable;

    .line 262
    return-object p0
.end method

.method public b(Lcom/facebook/drawee/e/t;)Lcom/facebook/drawee/f/b;
    .locals 0
    .param p1    # Lcom/facebook/drawee/e/t;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 293
    iput-object p1, p0, Lcom/facebook/drawee/f/b;->i:Lcom/facebook/drawee/e/t;

    .line 294
    return-object p0
.end method

.method public c()F
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/facebook/drawee/f/b;->e:F

    return v0
.end method

.method public c(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/f/b;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 341
    iput-object p1, p0, Lcom/facebook/drawee/f/b;->j:Landroid/graphics/drawable/Drawable;

    .line 342
    return-object p0
.end method

.method public c(Lcom/facebook/drawee/e/t;)Lcom/facebook/drawee/f/b;
    .locals 0
    .param p1    # Lcom/facebook/drawee/e/t;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 373
    iput-object p1, p0, Lcom/facebook/drawee/f/b;->k:Lcom/facebook/drawee/e/t;

    .line 374
    return-object p0
.end method

.method public d()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/facebook/drawee/f/b;->f:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public d(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/f/b;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 421
    iput-object p1, p0, Lcom/facebook/drawee/f/b;->l:Landroid/graphics/drawable/Drawable;

    .line 422
    return-object p0
.end method

.method public d(Lcom/facebook/drawee/e/t;)Lcom/facebook/drawee/f/b;
    .locals 0
    .param p1    # Lcom/facebook/drawee/e/t;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 453
    iput-object p1, p0, Lcom/facebook/drawee/f/b;->m:Lcom/facebook/drawee/e/t;

    .line 454
    return-object p0
.end method

.method public e()Lcom/facebook/drawee/e/t;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/facebook/drawee/f/b;->g:Lcom/facebook/drawee/e/t;

    return-object v0
.end method

.method public e(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/f/b;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 586
    iput-object p1, p0, Lcom/facebook/drawee/f/b;->r:Landroid/graphics/drawable/Drawable;

    .line 587
    return-object p0
.end method

.method public e(Lcom/facebook/drawee/e/t;)Lcom/facebook/drawee/f/b;
    .locals 1
    .param p1    # Lcom/facebook/drawee/e/t;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 504
    iput-object p1, p0, Lcom/facebook/drawee/f/b;->n:Lcom/facebook/drawee/e/t;

    .line 505
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/drawee/f/b;->o:Landroid/graphics/Matrix;

    .line 506
    return-object p0
.end method

.method public f()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lcom/facebook/drawee/f/b;->h:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public f(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/f/b;
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 618
    if-nez p1, :cond_0

    .line 619
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/drawee/f/b;->s:Ljava/util/List;

    .line 623
    :goto_0
    return-object p0

    .line 621
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/drawee/f/b;->s:Ljava/util/List;

    goto :goto_0
.end method

.method public g()Lcom/facebook/drawee/e/t;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lcom/facebook/drawee/f/b;->i:Lcom/facebook/drawee/e/t;

    return-object v0
.end method

.method public g(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/f/b;
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 640
    if-nez p1, :cond_0

    .line 641
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/drawee/f/b;->t:Landroid/graphics/drawable/Drawable;

    .line 647
    :goto_0
    return-object p0

    .line 643
    :cond_0
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 644
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x10100a7

    aput v3, v1, v2

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 645
    iput-object v0, p0, Lcom/facebook/drawee/f/b;->t:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public h()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 360
    iget-object v0, p0, Lcom/facebook/drawee/f/b;->j:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public i()Lcom/facebook/drawee/e/t;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 381
    iget-object v0, p0, Lcom/facebook/drawee/f/b;->k:Lcom/facebook/drawee/e/t;

    return-object v0
.end method

.method public j()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 440
    iget-object v0, p0, Lcom/facebook/drawee/f/b;->l:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public k()Lcom/facebook/drawee/e/t;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 461
    iget-object v0, p0, Lcom/facebook/drawee/f/b;->m:Lcom/facebook/drawee/e/t;

    return-object v0
.end method

.method public l()Lcom/facebook/drawee/e/t;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 513
    iget-object v0, p0, Lcom/facebook/drawee/f/b;->n:Lcom/facebook/drawee/e/t;

    return-object v0
.end method

.method public m()Landroid/graphics/Matrix;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 535
    iget-object v0, p0, Lcom/facebook/drawee/f/b;->o:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public n()Landroid/graphics/PointF;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 558
    iget-object v0, p0, Lcom/facebook/drawee/f/b;->p:Landroid/graphics/PointF;

    return-object v0
.end method

.method public o()Landroid/graphics/ColorFilter;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 576
    iget-object v0, p0, Lcom/facebook/drawee/f/b;->q:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public p()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 594
    iget-object v0, p0, Lcom/facebook/drawee/f/b;->r:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public q()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 630
    iget-object v0, p0, Lcom/facebook/drawee/f/b;->s:Ljava/util/List;

    return-object v0
.end method

.method public r()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 654
    iget-object v0, p0, Lcom/facebook/drawee/f/b;->t:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public s()Lcom/facebook/drawee/f/e;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 673
    iget-object v0, p0, Lcom/facebook/drawee/f/b;->u:Lcom/facebook/drawee/f/e;

    return-object v0
.end method

.method public t()Lcom/facebook/drawee/f/a;
    .locals 1

    .prologue
    .line 688
    invoke-direct {p0}, Lcom/facebook/drawee/f/b;->v()V

    .line 689
    new-instance v0, Lcom/facebook/drawee/f/a;

    invoke-direct {v0, p0}, Lcom/facebook/drawee/f/a;-><init>(Lcom/facebook/drawee/f/b;)V

    return-object v0
.end method
