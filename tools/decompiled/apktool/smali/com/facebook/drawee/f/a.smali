.class public Lcom/facebook/drawee/f/a;
.super Ljava/lang/Object;
.source "GenericDraweeHierarchy.java"

# interfaces
.implements Lcom/facebook/drawee/h/c;


# instance fields
.field private final a:Landroid/graphics/drawable/Drawable;

.field private final b:Landroid/content/res/Resources;

.field private c:Lcom/facebook/drawee/f/e;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final d:Lcom/facebook/drawee/f/d;

.field private final e:Lcom/facebook/drawee/e/g;

.field private final f:Lcom/facebook/drawee/e/h;


# direct methods
.method constructor <init>(Lcom/facebook/drawee/f/b;)V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/drawee/f/a;->a:Landroid/graphics/drawable/Drawable;

    .line 106
    invoke-virtual {p1}, Lcom/facebook/drawee/f/b;->a()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/drawee/f/a;->b:Landroid/content/res/Resources;

    .line 107
    invoke-virtual {p1}, Lcom/facebook/drawee/f/b;->s()Lcom/facebook/drawee/f/e;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/drawee/f/a;->c:Lcom/facebook/drawee/f/e;

    .line 109
    new-instance v0, Lcom/facebook/drawee/e/h;

    iget-object v1, p0, Lcom/facebook/drawee/f/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1}, Lcom/facebook/drawee/e/h;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/facebook/drawee/f/a;->f:Lcom/facebook/drawee/e/h;

    .line 111
    invoke-virtual {p1}, Lcom/facebook/drawee/f/b;->q()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/drawee/f/b;->q()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 112
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/drawee/f/b;->r()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    move v1, v6

    :goto_1
    add-int v8, v0, v1

    .line 115
    add-int/lit8 v0, v8, 0x6

    .line 118
    new-array v9, v0, [Landroid/graphics/drawable/Drawable;

    .line 119
    invoke-virtual {p1}, Lcom/facebook/drawee/f/b;->p()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0, v11}, Lcom/facebook/drawee/f/a;->a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/e/t;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, v9, v7

    .line 121
    invoke-virtual {p1}, Lcom/facebook/drawee/f/b;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 122
    invoke-virtual {p1}, Lcom/facebook/drawee/f/b;->e()Lcom/facebook/drawee/e/t;

    move-result-object v1

    .line 120
    invoke-direct {p0, v0, v1}, Lcom/facebook/drawee/f/a;->a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/e/t;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, v9, v6

    .line 123
    const/4 v10, 0x2

    iget-object v1, p0, Lcom/facebook/drawee/f/a;->f:Lcom/facebook/drawee/e/h;

    .line 125
    invoke-virtual {p1}, Lcom/facebook/drawee/f/b;->l()Lcom/facebook/drawee/e/t;

    move-result-object v2

    .line 126
    invoke-virtual {p1}, Lcom/facebook/drawee/f/b;->n()Landroid/graphics/PointF;

    move-result-object v3

    .line 127
    invoke-virtual {p1}, Lcom/facebook/drawee/f/b;->m()Landroid/graphics/Matrix;

    move-result-object v4

    .line 128
    invoke-virtual {p1}, Lcom/facebook/drawee/f/b;->o()Landroid/graphics/ColorFilter;

    move-result-object v5

    move-object v0, p0

    .line 123
    invoke-direct/range {v0 .. v5}, Lcom/facebook/drawee/f/a;->a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/e/t;Landroid/graphics/PointF;Landroid/graphics/Matrix;Landroid/graphics/ColorFilter;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, v9, v10

    .line 129
    const/4 v0, 0x3

    .line 130
    invoke-virtual {p1}, Lcom/facebook/drawee/f/b;->j()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 131
    invoke-virtual {p1}, Lcom/facebook/drawee/f/b;->k()Lcom/facebook/drawee/e/t;

    move-result-object v2

    .line 129
    invoke-direct {p0, v1, v2}, Lcom/facebook/drawee/f/a;->a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/e/t;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v9, v0

    .line 132
    const/4 v0, 0x4

    .line 133
    invoke-virtual {p1}, Lcom/facebook/drawee/f/b;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 134
    invoke-virtual {p1}, Lcom/facebook/drawee/f/b;->g()Lcom/facebook/drawee/e/t;

    move-result-object v2

    .line 132
    invoke-direct {p0, v1, v2}, Lcom/facebook/drawee/f/a;->a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/e/t;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v9, v0

    .line 135
    const/4 v0, 0x5

    .line 136
    invoke-virtual {p1}, Lcom/facebook/drawee/f/b;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 137
    invoke-virtual {p1}, Lcom/facebook/drawee/f/b;->i()Lcom/facebook/drawee/e/t;

    move-result-object v2

    .line 135
    invoke-direct {p0, v1, v2}, Lcom/facebook/drawee/f/a;->a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/e/t;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v9, v0

    .line 138
    if-lez v8, :cond_4

    .line 140
    invoke-virtual {p1}, Lcom/facebook/drawee/f/b;->q()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 141
    invoke-virtual {p1}, Lcom/facebook/drawee/f/b;->q()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 142
    add-int/lit8 v1, v7, 0x1

    add-int/lit8 v3, v7, 0x6

    invoke-direct {p0, v0, v11}, Lcom/facebook/drawee/f/a;->a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/e/t;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, v9, v3

    move v7, v1

    .line 143
    goto :goto_2

    :cond_0
    move v0, v6

    .line 111
    goto/16 :goto_0

    :cond_1
    move v1, v7

    .line 112
    goto/16 :goto_1

    :cond_2
    move v7, v6

    .line 147
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/drawee/f/b;->r()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 148
    add-int/lit8 v0, v7, 0x6

    invoke-virtual {p1}, Lcom/facebook/drawee/f/b;->r()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1, v11}, Lcom/facebook/drawee/f/a;->a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/e/t;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v9, v0

    .line 153
    :cond_4
    new-instance v0, Lcom/facebook/drawee/e/g;

    invoke-direct {v0, v9}, Lcom/facebook/drawee/e/g;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/facebook/drawee/f/a;->e:Lcom/facebook/drawee/e/g;

    .line 154
    iget-object v0, p0, Lcom/facebook/drawee/f/a;->e:Lcom/facebook/drawee/e/g;

    invoke-virtual {p1}, Lcom/facebook/drawee/f/b;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/e/g;->c(I)V

    .line 157
    iget-object v0, p0, Lcom/facebook/drawee/f/a;->e:Lcom/facebook/drawee/e/g;

    iget-object v1, p0, Lcom/facebook/drawee/f/a;->c:Lcom/facebook/drawee/f/e;

    .line 158
    invoke-static {v0, v1}, Lcom/facebook/drawee/f/g;->a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/f/e;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 161
    new-instance v1, Lcom/facebook/drawee/f/d;

    invoke-direct {v1, v0}, Lcom/facebook/drawee/f/d;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/facebook/drawee/f/a;->d:Lcom/facebook/drawee/f/d;

    .line 162
    iget-object v0, p0, Lcom/facebook/drawee/f/a;->d:Lcom/facebook/drawee/f/d;

    invoke-virtual {v0}, Lcom/facebook/drawee/f/d;->mutate()Landroid/graphics/drawable/Drawable;

    .line 164
    invoke-direct {p0}, Lcom/facebook/drawee/f/a;->d()V

    .line 165
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/e/t;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/drawee/e/t;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/facebook/drawee/f/a;->c:Lcom/facebook/drawee/f/e;

    iget-object v1, p0, Lcom/facebook/drawee/f/a;->b:Landroid/content/res/Resources;

    invoke-static {p1, v0, v1}, Lcom/facebook/drawee/f/g;->a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/f/e;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 184
    invoke-static {v0, p2}, Lcom/facebook/drawee/f/g;->a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/e/t;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 185
    return-object v0
.end method

.method private a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/e/t;Landroid/graphics/PointF;Landroid/graphics/Matrix;Landroid/graphics/ColorFilter;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p2    # Lcom/facebook/drawee/e/t;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/PointF;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Matrix;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/ColorFilter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 174
    invoke-virtual {p1, p5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 175
    invoke-static {p1, p2, p3}, Lcom/facebook/drawee/f/g;->a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/e/t;Landroid/graphics/PointF;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 176
    invoke-static {v0, p4}, Lcom/facebook/drawee/f/g;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 177
    return-object v0
.end method

.method private a(F)V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 227
    iget-object v0, p0, Lcom/facebook/drawee/f/a;->e:Lcom/facebook/drawee/e/g;

    invoke-virtual {v0, v2}, Lcom/facebook/drawee/e/g;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 228
    if-nez v1, :cond_0

    .line 246
    :goto_0
    return-void

    .line 233
    :cond_0
    const v0, 0x3f7fbe77    # 0.999f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_2

    .line 234
    instance-of v0, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 235
    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 237
    :cond_1
    invoke-direct {p0, v2}, Lcom/facebook/drawee/f/a;->b(I)V

    .line 245
    :goto_1
    const v0, 0x461c4000    # 10000.0f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    .line 239
    :cond_2
    instance-of v0, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 240
    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 242
    :cond_3
    invoke-direct {p0, v2}, Lcom/facebook/drawee/f/a;->a(I)V

    goto :goto_1
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 215
    if-ltz p1, :cond_0

    .line 216
    iget-object v0, p0, Lcom/facebook/drawee/f/a;->e:Lcom/facebook/drawee/e/g;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/e/g;->d(I)V

    .line 218
    :cond_0
    return-void
.end method

.method private a(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 344
    if-nez p2, :cond_0

    .line 345
    iget-object v0, p0, Lcom/facebook/drawee/f/a;->e:Lcom/facebook/drawee/e/g;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/facebook/drawee/e/g;->a(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 350
    :goto_0
    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/f/a;->c:Lcom/facebook/drawee/f/e;

    iget-object v1, p0, Lcom/facebook/drawee/f/a;->b:Landroid/content/res/Resources;

    invoke-static {p2, v0, v1}, Lcom/facebook/drawee/f/g;->a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/f/e;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 349
    invoke-direct {p0, p1}, Lcom/facebook/drawee/f/a;->c(I)Lcom/facebook/drawee/e/d;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/facebook/drawee/e/d;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private b(I)V
    .locals 1

    .prologue
    .line 221
    if-ltz p1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/facebook/drawee/f/a;->e:Lcom/facebook/drawee/e/g;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/e/g;->e(I)V

    .line 224
    :cond_0
    return-void
.end method

.method private c(I)Lcom/facebook/drawee/e/d;
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/facebook/drawee/f/a;->e:Lcom/facebook/drawee/e/g;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/e/g;->b(I)Lcom/facebook/drawee/e/d;

    move-result-object v0

    .line 330
    invoke-interface {v0}, Lcom/facebook/drawee/e/d;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Lcom/facebook/drawee/e/i;

    if-eqz v1, :cond_0

    .line 331
    invoke-interface {v0}, Lcom/facebook/drawee/e/d;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/e/i;

    .line 333
    :cond_0
    invoke-interface {v0}, Lcom/facebook/drawee/e/d;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Lcom/facebook/drawee/e/q;

    if-eqz v1, :cond_1

    .line 334
    invoke-interface {v0}, Lcom/facebook/drawee/e/d;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/e/q;

    .line 336
    :cond_1
    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/facebook/drawee/f/a;->f:Lcom/facebook/drawee/e/h;

    iget-object v1, p0, Lcom/facebook/drawee/f/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/e/h;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 190
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/facebook/drawee/f/a;->e:Lcom/facebook/drawee/e/g;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/facebook/drawee/f/a;->e:Lcom/facebook/drawee/e/g;

    invoke-virtual {v0}, Lcom/facebook/drawee/e/g;->b()V

    .line 196
    iget-object v0, p0, Lcom/facebook/drawee/f/a;->e:Lcom/facebook/drawee/e/g;

    invoke-virtual {v0}, Lcom/facebook/drawee/e/g;->d()V

    .line 198
    invoke-direct {p0}, Lcom/facebook/drawee/f/a;->e()V

    .line 200
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/drawee/f/a;->a(I)V

    .line 201
    iget-object v0, p0, Lcom/facebook/drawee/f/a;->e:Lcom/facebook/drawee/e/g;

    invoke-virtual {v0}, Lcom/facebook/drawee/e/g;->e()V

    .line 202
    iget-object v0, p0, Lcom/facebook/drawee/f/a;->e:Lcom/facebook/drawee/e/g;

    invoke-virtual {v0}, Lcom/facebook/drawee/e/g;->c()V

    .line 204
    :cond_0
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/drawee/f/a;->b(I)V

    .line 208
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/facebook/drawee/f/a;->b(I)V

    .line 209
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/facebook/drawee/f/a;->b(I)V

    .line 210
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/facebook/drawee/f/a;->b(I)V

    .line 211
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/facebook/drawee/f/a;->b(I)V

    .line 212
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/facebook/drawee/f/a;->d:Lcom/facebook/drawee/f/d;

    return-object v0
.end method

.method public a(FZ)V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/facebook/drawee/f/a;->e:Lcom/facebook/drawee/e/g;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/e/g;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 287
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/f/a;->e:Lcom/facebook/drawee/e/g;

    invoke-virtual {v0}, Lcom/facebook/drawee/e/g;->b()V

    .line 282
    invoke-direct {p0, p1}, Lcom/facebook/drawee/f/a;->a(F)V

    .line 283
    if-eqz p2, :cond_1

    .line 284
    iget-object v0, p0, Lcom/facebook/drawee/f/a;->e:Lcom/facebook/drawee/e/g;

    invoke-virtual {v0}, Lcom/facebook/drawee/e/g;->e()V

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/f/a;->e:Lcom/facebook/drawee/e/g;

    invoke-virtual {v0}, Lcom/facebook/drawee/e/g;->c()V

    goto :goto_0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 315
    iget-object v0, p0, Lcom/facebook/drawee/f/a;->d:Lcom/facebook/drawee/f/d;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/f/d;->d(Landroid/graphics/drawable/Drawable;)V

    .line 316
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;FZ)V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/facebook/drawee/f/a;->c:Lcom/facebook/drawee/f/e;

    iget-object v1, p0, Lcom/facebook/drawee/f/a;->b:Landroid/content/res/Resources;

    invoke-static {p1, v0, v1}, Lcom/facebook/drawee/f/g;->a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/f/e;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 265
    iget-object v1, p0, Lcom/facebook/drawee/f/a;->f:Lcom/facebook/drawee/e/h;

    invoke-virtual {v1, v0}, Lcom/facebook/drawee/e/h;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 266
    iget-object v0, p0, Lcom/facebook/drawee/f/a;->e:Lcom/facebook/drawee/e/g;

    invoke-virtual {v0}, Lcom/facebook/drawee/e/g;->b()V

    .line 267
    invoke-direct {p0}, Lcom/facebook/drawee/f/a;->e()V

    .line 268
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/facebook/drawee/f/a;->a(I)V

    .line 269
    invoke-direct {p0, p2}, Lcom/facebook/drawee/f/a;->a(F)V

    .line 270
    if-eqz p3, :cond_0

    .line 271
    iget-object v0, p0, Lcom/facebook/drawee/f/a;->e:Lcom/facebook/drawee/e/g;

    invoke-virtual {v0}, Lcom/facebook/drawee/e/g;->e()V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/f/a;->e:Lcom/facebook/drawee/e/g;

    invoke-virtual {v0}, Lcom/facebook/drawee/e/g;->c()V

    .line 274
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 291
    iget-object v0, p0, Lcom/facebook/drawee/f/a;->e:Lcom/facebook/drawee/e/g;

    invoke-virtual {v0}, Lcom/facebook/drawee/e/g;->b()V

    .line 292
    invoke-direct {p0}, Lcom/facebook/drawee/f/a;->e()V

    .line 293
    iget-object v0, p0, Lcom/facebook/drawee/f/a;->e:Lcom/facebook/drawee/e/g;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/e/g;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 294
    invoke-direct {p0, v1}, Lcom/facebook/drawee/f/a;->a(I)V

    .line 298
    :goto_0
    iget-object v0, p0, Lcom/facebook/drawee/f/a;->e:Lcom/facebook/drawee/e/g;

    invoke-virtual {v0}, Lcom/facebook/drawee/e/g;->c()V

    .line 299
    return-void

    .line 296
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/drawee/f/a;->a(I)V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/facebook/drawee/f/a;->c()V

    .line 258
    invoke-direct {p0}, Lcom/facebook/drawee/f/a;->d()V

    .line 259
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 418
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/facebook/drawee/f/a;->a(ILandroid/graphics/drawable/Drawable;)V

    .line 419
    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 303
    iget-object v0, p0, Lcom/facebook/drawee/f/a;->e:Lcom/facebook/drawee/e/g;

    invoke-virtual {v0}, Lcom/facebook/drawee/e/g;->b()V

    .line 304
    invoke-direct {p0}, Lcom/facebook/drawee/f/a;->e()V

    .line 305
    iget-object v0, p0, Lcom/facebook/drawee/f/a;->e:Lcom/facebook/drawee/e/g;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/e/g;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 306
    invoke-direct {p0, v1}, Lcom/facebook/drawee/f/a;->a(I)V

    .line 310
    :goto_0
    iget-object v0, p0, Lcom/facebook/drawee/f/a;->e:Lcom/facebook/drawee/e/g;

    invoke-virtual {v0}, Lcom/facebook/drawee/e/g;->c()V

    .line 311
    return-void

    .line 308
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/drawee/f/a;->a(I)V

    goto :goto_0
.end method
