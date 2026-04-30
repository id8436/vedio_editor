.class public Lcom/b/a/d/d/d/b;
.super Lcom/b/a/d/d/b/b;
.source "GifDrawable.java"

# interfaces
.implements Lcom/b/a/d/d/d/j;


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Rect;

.field private final c:Lcom/b/a/d/d/d/c;

.field private final d:Lcom/b/a/b/a;

.field private final e:Lcom/b/a/d/d/d/g;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/b/a/b/b;Lcom/b/a/d/b/a/e;Lcom/b/a/d/g;IILcom/b/a/b/d;[BLandroid/graphics/Bitmap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/b/a/b/b;",
            "Lcom/b/a/d/b/a/e;",
            "Lcom/b/a/d/g",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Lcom/b/a/b/d;",
            "[B",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lcom/b/a/d/d/d/c;

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    move-object v3, p1

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/b/a/d/d/d/c;-><init>(Lcom/b/a/b/d;[BLandroid/content/Context;Lcom/b/a/d/g;IILcom/b/a/b/b;Lcom/b/a/d/b/a/e;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Lcom/b/a/d/d/d/b;-><init>(Lcom/b/a/d/d/d/c;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/b/a/d/d/d/b;Landroid/graphics/Bitmap;Lcom/b/a/d/g;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/d/d/b;",
            "Landroid/graphics/Bitmap;",
            "Lcom/b/a/d/g",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Lcom/b/a/d/d/d/c;

    iget-object v1, p1, Lcom/b/a/d/d/d/b;->c:Lcom/b/a/d/d/d/c;

    iget-object v1, v1, Lcom/b/a/d/d/d/c;->a:Lcom/b/a/b/d;

    iget-object v2, p1, Lcom/b/a/d/d/d/b;->c:Lcom/b/a/d/d/d/c;

    iget-object v2, v2, Lcom/b/a/d/d/d/c;->b:[B

    iget-object v3, p1, Lcom/b/a/d/d/d/b;->c:Lcom/b/a/d/d/d/c;

    iget-object v3, v3, Lcom/b/a/d/d/d/c;->c:Landroid/content/Context;

    iget-object v4, p1, Lcom/b/a/d/d/d/b;->c:Lcom/b/a/d/d/d/c;

    iget v5, v4, Lcom/b/a/d/d/d/c;->e:I

    iget-object v4, p1, Lcom/b/a/d/d/d/b;->c:Lcom/b/a/d/d/d/c;

    iget v6, v4, Lcom/b/a/d/d/d/c;->f:I

    iget-object v4, p1, Lcom/b/a/d/d/d/b;->c:Lcom/b/a/d/d/d/c;

    iget-object v7, v4, Lcom/b/a/d/d/d/c;->g:Lcom/b/a/b/b;

    iget-object v4, p1, Lcom/b/a/d/d/d/b;->c:Lcom/b/a/d/d/d/c;

    iget-object v8, v4, Lcom/b/a/d/d/d/c;->h:Lcom/b/a/d/b/a/e;

    move-object v4, p3

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/b/a/d/d/d/c;-><init>(Lcom/b/a/b/d;[BLandroid/content/Context;Lcom/b/a/d/g;IILcom/b/a/b/b;Lcom/b/a/d/b/a/e;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Lcom/b/a/d/d/d/b;-><init>(Lcom/b/a/d/d/d/c;)V

    .line 84
    return-void
.end method

.method constructor <init>(Lcom/b/a/d/d/d/c;)V
    .locals 6

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/b/a/d/d/b/b;-><init>()V

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/b/a/d/d/d/b;->b:Landroid/graphics/Rect;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/d/d/d/b;->i:Z

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/b/a/d/d/d/b;->k:I

    .line 87
    if-nez p1, :cond_0

    .line 88
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "GifState must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    iput-object p1, p0, Lcom/b/a/d/d/d/b;->c:Lcom/b/a/d/d/d/c;

    .line 92
    new-instance v0, Lcom/b/a/b/a;

    iget-object v1, p1, Lcom/b/a/d/d/d/c;->g:Lcom/b/a/b/b;

    invoke-direct {v0, v1}, Lcom/b/a/b/a;-><init>(Lcom/b/a/b/b;)V

    iput-object v0, p0, Lcom/b/a/d/d/d/b;->d:Lcom/b/a/b/a;

    .line 93
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/b/a/d/d/d/b;->a:Landroid/graphics/Paint;

    .line 94
    iget-object v0, p0, Lcom/b/a/d/d/d/b;->d:Lcom/b/a/b/a;

    iget-object v1, p1, Lcom/b/a/d/d/d/c;->a:Lcom/b/a/b/d;

    iget-object v2, p1, Lcom/b/a/d/d/d/c;->b:[B

    invoke-virtual {v0, v1, v2}, Lcom/b/a/b/a;->a(Lcom/b/a/b/d;[B)V

    .line 95
    new-instance v0, Lcom/b/a/d/d/d/g;

    iget-object v1, p1, Lcom/b/a/d/d/d/c;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/b/a/d/d/d/b;->d:Lcom/b/a/b/a;

    iget v4, p1, Lcom/b/a/d/d/d/c;->e:I

    iget v5, p1, Lcom/b/a/d/d/d/c;->f:I

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/b/a/d/d/d/g;-><init>(Landroid/content/Context;Lcom/b/a/d/d/d/j;Lcom/b/a/b/a;II)V

    iput-object v0, p0, Lcom/b/a/d/d/d/b;->e:Lcom/b/a/d/d/d/g;

    .line 96
    iget-object v0, p0, Lcom/b/a/d/d/d/b;->e:Lcom/b/a/d/d/d/g;

    iget-object v1, p1, Lcom/b/a/d/d/d/c;->d:Lcom/b/a/d/g;

    invoke-virtual {v0, v1}, Lcom/b/a/d/d/d/g;->a(Lcom/b/a/d/g;)V

    .line 97
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/d/d/d/b;->j:I

    .line 143
    return-void
.end method

.method private h()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/b/a/d/d/d/b;->e:Lcom/b/a/d/d/d/g;

    invoke-virtual {v0}, Lcom/b/a/d/d/d/g;->c()V

    .line 173
    invoke-virtual {p0}, Lcom/b/a/d/d/d/b;->invalidateSelf()V

    .line 174
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 178
    iget-object v0, p0, Lcom/b/a/d/d/d/b;->d:Lcom/b/a/b/a;

    invoke-virtual {v0}, Lcom/b/a/b/a;->c()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 179
    invoke-virtual {p0}, Lcom/b/a/d/d/d/b;->invalidateSelf()V

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-boolean v0, p0, Lcom/b/a/d/d/d/b;->f:Z

    if-nez v0, :cond_0

    .line 181
    iput-boolean v1, p0, Lcom/b/a/d/d/d/b;->f:Z

    .line 182
    iget-object v0, p0, Lcom/b/a/d/d/d/b;->e:Lcom/b/a/d/d/d/g;

    invoke-virtual {v0}, Lcom/b/a/d/d/d/g;->a()V

    .line 183
    invoke-virtual {p0}, Lcom/b/a/d/d/d/b;->invalidateSelf()V

    goto :goto_0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/d/d/d/b;->f:Z

    .line 189
    iget-object v0, p0, Lcom/b/a/d/d/d/b;->e:Lcom/b/a/d/d/d/g;

    invoke-virtual {v0}, Lcom/b/a/d/d/d/g;->b()V

    .line 190
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 308
    if-gtz p1, :cond_0

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 309
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Loop count must be greater than 0, or equal to GlideDrawable.LOOP_FOREVER, or equal to GlideDrawable.LOOP_INTRINSIC"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_0
    if-nez p1, :cond_2

    .line 314
    iget-object v1, p0, Lcom/b/a/d/d/d/b;->d:Lcom/b/a/b/a;

    invoke-virtual {v1}, Lcom/b/a/b/a;->e()I

    move-result v1

    .line 315
    if-nez v1, :cond_1

    :goto_0
    iput v0, p0, Lcom/b/a/d/d/d/b;->k:I

    .line 319
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 315
    goto :goto_0

    .line 317
    :cond_2
    iput p1, p0, Lcom/b/a/d/d/d/b;->k:I

    goto :goto_1
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x1

    return v0
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/b/a/d/d/d/b;->c:Lcom/b/a/d/d/d/c;

    iget-object v0, v0, Lcom/b/a/d/d/d/c;->i:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public b(I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 264
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/b/a/d/d/d/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_1

    .line 265
    invoke-virtual {p0}, Lcom/b/a/d/d/d/b;->stop()V

    .line 266
    invoke-direct {p0}, Lcom/b/a/d/d/d/b;->h()V

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    invoke-virtual {p0}, Lcom/b/a/d/d/d/b;->invalidateSelf()V

    .line 272
    iget-object v0, p0, Lcom/b/a/d/d/d/b;->d:Lcom/b/a/b/a;

    invoke-virtual {v0}, Lcom/b/a/b/a;->c()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_2

    .line 273
    iget v0, p0, Lcom/b/a/d/d/d/b;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/d/d/d/b;->j:I

    .line 276
    :cond_2
    iget v0, p0, Lcom/b/a/d/d/d/b;->k:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/b/a/d/d/d/b;->j:I

    iget v1, p0, Lcom/b/a/d/d/d/b;->k:I

    if-lt v0, v1, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/b/a/d/d/d/b;->stop()V

    goto :goto_0
.end method

.method public c()Lcom/b/a/d/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/d/g",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/b/a/d/d/d/b;->c:Lcom/b/a/d/d/d/c;

    iget-object v0, v0, Lcom/b/a/d/d/d/c;->d:Lcom/b/a/d/g;

    return-object v0
.end method

.method public d()[B
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/b/a/d/d/d/b;->c:Lcom/b/a/d/d/d/c;

    iget-object v0, v0, Lcom/b/a/d/d/d/c;->b:[B

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/b/a/d/d/d/b;->h:Z

    if-eqz v0, :cond_0

    .line 243
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-boolean v0, p0, Lcom/b/a/d/d/d/b;->l:Z

    if-eqz v0, :cond_1

    .line 236
    const/16 v0, 0x77

    invoke-virtual {p0}, Lcom/b/a/d/d/d/b;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/b/a/d/d/d/b;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/b/a/d/d/d/b;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/b/a/d/d/d/b;->b:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/d/d/d/b;->l:Z

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/b/a/d/d/d/b;->e:Lcom/b/a/d/d/d/g;

    invoke-virtual {v0}, Lcom/b/a/d/d/d/g;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 241
    if-eqz v0, :cond_2

    .line 242
    :goto_1
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/b/a/d/d/d/b;->b:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/b/a/d/d/d/b;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 241
    :cond_2
    iget-object v0, p0, Lcom/b/a/d/d/d/b;->c:Lcom/b/a/d/d/d/c;

    iget-object v0, v0, Lcom/b/a/d/d/d/c;->i:Landroid/graphics/Bitmap;

    goto :goto_1
.end method

.method public e()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/b/a/d/d/d/b;->d:Lcom/b/a/b/a;

    invoke-virtual {v0}, Lcom/b/a/b/a;->c()I

    move-result v0

    return v0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/d/d/d/b;->h:Z

    .line 291
    iget-object v0, p0, Lcom/b/a/d/d/d/b;->c:Lcom/b/a/d/d/d/c;

    iget-object v0, v0, Lcom/b/a/d/d/d/c;->h:Lcom/b/a/d/b/a/e;

    iget-object v1, p0, Lcom/b/a/d/d/d/b;->c:Lcom/b/a/d/d/d/c;

    iget-object v1, v1, Lcom/b/a/d/d/d/c;->i:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/b/a/d/b/a/e;->a(Landroid/graphics/Bitmap;)Z

    .line 292
    iget-object v0, p0, Lcom/b/a/d/d/d/b;->e:Lcom/b/a/d/d/d/g;

    invoke-virtual {v0}, Lcom/b/a/d/d/d/g;->c()V

    .line 293
    iget-object v0, p0, Lcom/b/a/d/d/d/b;->e:Lcom/b/a/d/d/d/g;

    invoke-virtual {v0}, Lcom/b/a/d/d/d/g;->b()V

    .line 294
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/b/a/d/d/d/b;->c:Lcom/b/a/d/d/d/c;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/b/a/d/d/d/b;->c:Lcom/b/a/d/d/d/c;

    iget-object v0, v0, Lcom/b/a/d/d/d/c;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/b/a/d/d/d/b;->c:Lcom/b/a/d/d/d/c;

    iget-object v0, v0, Lcom/b/a/d/d/d/c;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 258
    const/4 v0, -0x2

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/b/a/d/d/d/b;->f:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 225
    invoke-super {p0, p1}, Lcom/b/a/d/d/b/b;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/d/d/d/b;->l:Z

    .line 227
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/b/a/d/d/d/b;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 248
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/b/a/d/d/d/b;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 253
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .prologue
    .line 194
    iput-boolean p1, p0, Lcom/b/a/d/d/d/b;->i:Z

    .line 195
    if-nez p1, :cond_1

    .line 196
    invoke-direct {p0}, Lcom/b/a/d/d/d/b;->j()V

    .line 200
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/b/a/d/d/b/b;->setVisible(ZZ)Z

    move-result v0

    return v0

    .line 197
    :cond_1
    iget-boolean v0, p0, Lcom/b/a/d/d/d/b;->g:Z

    if-eqz v0, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/b/a/d/d/d/b;->i()V

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/d/d/d/b;->g:Z

    .line 148
    invoke-direct {p0}, Lcom/b/a/d/d/d/b;->g()V

    .line 149
    iget-boolean v0, p0, Lcom/b/a/d/d/d/b;->i:Z

    if-eqz v0, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/b/a/d/d/d/b;->i()V

    .line 152
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/d/d/d/b;->g:Z

    .line 157
    invoke-direct {p0}, Lcom/b/a/d/d/d/b;->j()V

    .line 163
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/b/a/d/d/d/b;->h()V

    .line 166
    :cond_0
    return-void
.end method
