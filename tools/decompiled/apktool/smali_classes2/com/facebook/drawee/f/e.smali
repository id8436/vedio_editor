.class public Lcom/facebook/drawee/f/e;
.super Ljava/lang/Object;
.source "RoundingParams.java"


# instance fields
.field private a:Lcom/facebook/drawee/f/f;

.field private b:Z

.field private c:[F

.field private d:I

.field private e:F

.field private f:I

.field private g:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lcom/facebook/drawee/f/f;->b:Lcom/facebook/drawee/f/f;

    iput-object v0, p0, Lcom/facebook/drawee/f/e;->a:Lcom/facebook/drawee/f/f;

    .line 43
    iput-boolean v1, p0, Lcom/facebook/drawee/f/e;->b:Z

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/drawee/f/e;->c:[F

    .line 45
    iput v1, p0, Lcom/facebook/drawee/f/e;->d:I

    .line 46
    iput v2, p0, Lcom/facebook/drawee/f/e;->e:F

    .line 47
    iput v1, p0, Lcom/facebook/drawee/f/e;->f:I

    .line 48
    iput v2, p0, Lcom/facebook/drawee/f/e;->g:F

    return-void
.end method

.method private h()[F
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/facebook/drawee/f/e;->c:[F

    if-nez v0, :cond_0

    .line 157
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/facebook/drawee/f/e;->c:[F

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/f/e;->c:[F

    return-object v0
.end method


# virtual methods
.method public a(F)Lcom/facebook/drawee/f/e;
    .locals 2

    .prologue
    .line 192
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "the border width cannot be < 0"

    invoke-static {v0, v1}, Lcom/facebook/d/d/k;->a(ZLjava/lang/Object;)V

    .line 193
    iput p1, p0, Lcom/facebook/drawee/f/e;->e:F

    .line 194
    return-object p0

    .line 192
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(FFFF)Lcom/facebook/drawee/f/e;
    .locals 3

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/facebook/drawee/f/e;->h()[F

    move-result-object v0

    .line 92
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput p1, v0, v2

    aput p1, v0, v1

    .line 93
    const/4 v1, 0x2

    const/4 v2, 0x3

    aput p2, v0, v2

    aput p2, v0, v1

    .line 94
    const/4 v1, 0x4

    const/4 v2, 0x5

    aput p3, v0, v2

    aput p3, v0, v1

    .line 95
    const/4 v1, 0x6

    const/4 v2, 0x7

    aput p4, v0, v2

    aput p4, v0, v1

    .line 96
    return-object p0
.end method

.method public a(I)Lcom/facebook/drawee/f/e;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 145
    iput p1, p0, Lcom/facebook/drawee/f/e;->d:I

    .line 146
    sget-object v0, Lcom/facebook/drawee/f/f;->a:Lcom/facebook/drawee/f/f;

    iput-object v0, p0, Lcom/facebook/drawee/f/e;->a:Lcom/facebook/drawee/f/f;

    .line 147
    return-object p0
.end method

.method public a(Z)Lcom/facebook/drawee/f/e;
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/facebook/drawee/f/e;->b:Z

    .line 58
    return-object p0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/facebook/drawee/f/e;->b:Z

    return v0
.end method

.method public b(F)Lcom/facebook/drawee/f/e;
    .locals 2

    .prologue
    .line 233
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "the padding cannot be < 0"

    invoke-static {v0, v1}, Lcom/facebook/d/d/k;->a(ZLjava/lang/Object;)V

    .line 234
    iput p1, p0, Lcom/facebook/drawee/f/e;->g:F

    .line 235
    return-object p0

    .line 233
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)Lcom/facebook/drawee/f/e;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 207
    iput p1, p0, Lcom/facebook/drawee/f/e;->f:I

    .line 208
    return-object p0
.end method

.method public b()[F
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/facebook/drawee/f/e;->c:[F

    return-object v0
.end method

.method public c()Lcom/facebook/drawee/f/f;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/facebook/drawee/f/e;->a:Lcom/facebook/drawee/f/f;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/facebook/drawee/f/e;->d:I

    return v0
.end method

.method public e()F
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/facebook/drawee/f/e;->e:F

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 245
    if-ne p0, p1, :cond_1

    .line 246
    const/4 v0, 0x1

    .line 278
    :cond_0
    :goto_0
    return v0

    .line 248
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 252
    check-cast p1, Lcom/facebook/drawee/f/e;

    .line 254
    iget-boolean v1, p0, Lcom/facebook/drawee/f/e;->b:Z

    iget-boolean v2, p1, Lcom/facebook/drawee/f/e;->b:Z

    if-ne v1, v2, :cond_0

    .line 258
    iget v1, p0, Lcom/facebook/drawee/f/e;->d:I

    iget v2, p1, Lcom/facebook/drawee/f/e;->d:I

    if-ne v1, v2, :cond_0

    .line 262
    iget v1, p1, Lcom/facebook/drawee/f/e;->e:F

    iget v2, p0, Lcom/facebook/drawee/f/e;->e:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    .line 266
    iget v1, p0, Lcom/facebook/drawee/f/e;->f:I

    iget v2, p1, Lcom/facebook/drawee/f/e;->f:I

    if-ne v1, v2, :cond_0

    .line 270
    iget v1, p1, Lcom/facebook/drawee/f/e;->g:F

    iget v2, p0, Lcom/facebook/drawee/f/e;->g:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/facebook/drawee/f/e;->a:Lcom/facebook/drawee/f/f;

    iget-object v2, p1, Lcom/facebook/drawee/f/e;->a:Lcom/facebook/drawee/f/f;

    if-ne v1, v2, :cond_0

    .line 278
    iget-object v0, p0, Lcom/facebook/drawee/f/e;->c:[F

    iget-object v1, p1, Lcom/facebook/drawee/f/e;->c:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    goto :goto_0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/facebook/drawee/f/e;->f:I

    return v0
.end method

.method public g()F
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/facebook/drawee/f/e;->g:F

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 284
    iget-object v0, p0, Lcom/facebook/drawee/f/e;->a:Lcom/facebook/drawee/f/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/drawee/f/e;->a:Lcom/facebook/drawee/f/f;

    invoke-virtual {v0}, Lcom/facebook/drawee/f/f;->hashCode()I

    move-result v0

    .line 285
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/drawee/f/e;->b:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    add-int/2addr v0, v2

    .line 286
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/drawee/f/e;->c:[F

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/drawee/f/e;->c:[F

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 287
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/facebook/drawee/f/e;->d:I

    add-int/2addr v0, v2

    .line 288
    mul-int/lit8 v2, v0, 0x1f

    iget v0, p0, Lcom/facebook/drawee/f/e;->e:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/facebook/drawee/f/e;->e:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 289
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/facebook/drawee/f/e;->f:I

    add-int/2addr v0, v2

    .line 290
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/facebook/drawee/f/e;->g:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    iget v1, p0, Lcom/facebook/drawee/f/e;->g:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 292
    return v0

    :cond_1
    move v0, v1

    .line 284
    goto :goto_0

    :cond_2
    move v0, v1

    .line 285
    goto :goto_1

    :cond_3
    move v0, v1

    .line 286
    goto :goto_2

    :cond_4
    move v0, v1

    .line 288
    goto :goto_3
.end method
