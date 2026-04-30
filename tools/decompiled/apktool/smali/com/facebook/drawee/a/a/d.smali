.class public Lcom/facebook/drawee/a/a/d;
.super Lcom/facebook/drawee/c/a;
.source "PipelineDraweeController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/drawee/c/a",
        "<",
        "Lcom/facebook/d/h/a",
        "<",
        "Lcom/facebook/imagepipeline/h/b;",
        ">;",
        "Lcom/facebook/imagepipeline/h/e;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/res/Resources;

.field private final c:Lcom/facebook/imagepipeline/a/a/a;

.field private final d:Lcom/facebook/d/d/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/d/d/d",
            "<",
            "Lcom/facebook/drawee/a/a/a;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private e:Lcom/facebook/imagepipeline/c/ad;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/c/ad",
            "<",
            "Lcom/facebook/c/a/f;",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private f:Lcom/facebook/c/a/f;

.field private g:Lcom/facebook/d/d/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/d/d/m",
            "<",
            "Lcom/facebook/e/f",
            "<",
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private h:Z

.field private final i:Lcom/facebook/drawee/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/facebook/drawee/a/a/d;

    sput-object v0, Lcom/facebook/drawee/a/a/d;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/facebook/drawee/b/a;Lcom/facebook/imagepipeline/a/a/a;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/c/ad;Lcom/facebook/d/d/m;Ljava/lang/String;Lcom/facebook/c/a/f;Ljava/lang/Object;Lcom/facebook/d/d/d;)V
    .locals 1
    .param p10    # Lcom/facebook/d/d/d;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/facebook/drawee/b/a;",
            "Lcom/facebook/imagepipeline/a/a/a;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/facebook/imagepipeline/c/ad",
            "<",
            "Lcom/facebook/c/a/f;",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;",
            "Lcom/facebook/d/d/m",
            "<",
            "Lcom/facebook/e/f",
            "<",
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;>;>;",
            "Ljava/lang/String;",
            "Lcom/facebook/c/a/f;",
            "Ljava/lang/Object;",
            "Lcom/facebook/d/d/d",
            "<",
            "Lcom/facebook/drawee/a/a/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    invoke-direct {p0, p2, p4, p7, p9}, Lcom/facebook/drawee/c/a;-><init>(Lcom/facebook/drawee/b/a;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    new-instance v0, Lcom/facebook/drawee/a/a/e;

    invoke-direct {v0, p0}, Lcom/facebook/drawee/a/a/e;-><init>(Lcom/facebook/drawee/a/a/d;)V

    iput-object v0, p0, Lcom/facebook/drawee/a/a/d;->i:Lcom/facebook/drawee/a/a/a;

    .line 132
    iput-object p1, p0, Lcom/facebook/drawee/a/a/d;->b:Landroid/content/res/Resources;

    .line 133
    iput-object p3, p0, Lcom/facebook/drawee/a/a/d;->c:Lcom/facebook/imagepipeline/a/a/a;

    .line 134
    iput-object p5, p0, Lcom/facebook/drawee/a/a/d;->e:Lcom/facebook/imagepipeline/c/ad;

    .line 135
    iput-object p8, p0, Lcom/facebook/drawee/a/a/d;->f:Lcom/facebook/c/a/f;

    .line 136
    iput-object p10, p0, Lcom/facebook/drawee/a/a/d;->d:Lcom/facebook/d/d/d;

    .line 137
    invoke-direct {p0, p6}, Lcom/facebook/drawee/a/a/d;->a(Lcom/facebook/d/d/m;)V

    .line 138
    return-void
.end method

.method static synthetic a(Lcom/facebook/drawee/a/a/d;)Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/facebook/drawee/a/a/d;->b:Landroid/content/res/Resources;

    return-object v0
.end method

.method private a(Lcom/facebook/d/d/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/d/d/m",
            "<",
            "Lcom/facebook/e/f",
            "<",
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 164
    iput-object p1, p0, Lcom/facebook/drawee/a/a/d;->g:Lcom/facebook/d/d/m;

    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/drawee/a/a/d;->a(Lcom/facebook/imagepipeline/h/b;)V

    .line 167
    return-void
.end method

.method private a(Lcom/facebook/imagepipeline/h/b;)V
    .locals 3
    .param p1    # Lcom/facebook/imagepipeline/h/b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 213
    iget-boolean v0, p0, Lcom/facebook/drawee/a/a/d;->h:Z

    if-nez v0, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/drawee/a/a/d;->j()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 218
    if-nez v0, :cond_2

    .line 219
    new-instance v0, Lcom/facebook/drawee/d/a;

    invoke-direct {v0}, Lcom/facebook/drawee/d/a;-><init>()V

    .line 220
    invoke-virtual {p0, v0}, Lcom/facebook/drawee/a/a/d;->b(Landroid/graphics/drawable/Drawable;)V

    .line 223
    :cond_2
    instance-of v2, v0, Lcom/facebook/drawee/d/a;

    if-eqz v2, :cond_0

    .line 224
    check-cast v0, Lcom/facebook/drawee/d/a;

    .line 226
    invoke-virtual {p0}, Lcom/facebook/drawee/a/a/d;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/drawee/d/a;->a(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lcom/facebook/drawee/a/a/d;->i()Lcom/facebook/drawee/h/b;

    move-result-object v2

    .line 230
    if-eqz v2, :cond_3

    .line 232
    invoke-interface {v2}, Lcom/facebook/drawee/h/b;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/drawee/e/r;->a(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/e/q;

    move-result-object v2

    .line 233
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/facebook/drawee/e/q;->b()Lcom/facebook/drawee/e/t;

    move-result-object v1

    .line 235
    :cond_3
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/d/a;->a(Lcom/facebook/drawee/e/t;)V

    .line 237
    if-eqz p1, :cond_4

    .line 238
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/h/b;->f()I

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/h/b;->g()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/drawee/d/a;->a(II)V

    .line 239
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/h/b;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/d/a;->a(I)V

    goto :goto_0

    .line 241
    :cond_4
    invoke-virtual {v0}, Lcom/facebook/drawee/d/a;->a()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/drawee/a/a/d;)Lcom/facebook/imagepipeline/a/a/a;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/facebook/drawee/a/a/d;->c:Lcom/facebook/imagepipeline/a/a/a;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/facebook/d/h/a;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .prologue
    .line 183
    invoke-static {p1}, Lcom/facebook/d/h/a;->a(Lcom/facebook/d/h/a;)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/d/d/k;->b(Z)V

    .line 184
    invoke-virtual {p1}, Lcom/facebook/d/h/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/h/b;

    .line 186
    invoke-direct {p0, v0}, Lcom/facebook/drawee/a/a/d;->a(Lcom/facebook/imagepipeline/h/b;)V

    .line 188
    iget-object v1, p0, Lcom/facebook/drawee/a/a/d;->d:Lcom/facebook/d/d/d;

    if-eqz v1, :cond_1

    .line 189
    iget-object v1, p0, Lcom/facebook/drawee/a/a/d;->d:Lcom/facebook/d/d/d;

    invoke-virtual {v1}, Lcom/facebook/d/d/d;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/a/a/a;

    .line 190
    invoke-interface {v1, v0}, Lcom/facebook/drawee/a/a/a;->a(Lcom/facebook/imagepipeline/h/b;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 191
    invoke-interface {v1, v0}, Lcom/facebook/drawee/a/a/a;->b(Lcom/facebook/imagepipeline/h/b;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 192
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 201
    :goto_0
    return-object v0

    .line 199
    :cond_1
    iget-object v1, p0, Lcom/facebook/drawee/a/a/d;->i:Lcom/facebook/drawee/a/a/a;

    invoke-interface {v1, v0}, Lcom/facebook/drawee/a/a/a;->b(Lcom/facebook/imagepipeline/h/b;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 200
    if-eqz v1, :cond_2

    move-object v0, v1

    .line 201
    goto :goto_0

    .line 203
    :cond_2
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unrecognized image class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected a()Lcom/facebook/e/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/e/f",
            "<",
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 175
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/d/e/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    sget-object v0, Lcom/facebook/drawee/a/a/d;->a:Ljava/lang/Class;

    const-string/jumbo v1, "controller %x: getDataSource"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/d/e/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/a/a/d;->g:Lcom/facebook/d/d/m;

    invoke-interface {v0}, Lcom/facebook/d/d/m;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/e/f;

    return-object v0
.end method

.method protected a(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 264
    instance-of v0, p1, Lcom/facebook/f/a/a;

    if-eqz v0, :cond_0

    .line 265
    check-cast p1, Lcom/facebook/f/a/a;

    invoke-interface {p1}, Lcom/facebook/f/a/a;->a()V

    .line 267
    :cond_0
    return-void
.end method

.method public a(Lcom/facebook/d/d/m;Ljava/lang/String;Lcom/facebook/c/a/f;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/d/d/m",
            "<",
            "Lcom/facebook/e/f",
            "<",
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;>;>;",
            "Ljava/lang/String;",
            "Lcom/facebook/c/a/f;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 154
    invoke-super {p0, p2, p4}, Lcom/facebook/drawee/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    invoke-direct {p0, p1}, Lcom/facebook/drawee/a/a/d;->a(Lcom/facebook/d/d/m;)V

    .line 156
    iput-object p3, p0, Lcom/facebook/drawee/a/a/d;->f:Lcom/facebook/c/a/f;

    .line 157
    return-void
.end method

.method public a(Lcom/facebook/drawee/h/b;)V
    .locals 1
    .param p1    # Lcom/facebook/drawee/h/b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 208
    invoke-super {p0, p1}, Lcom/facebook/drawee/c/a;->a(Lcom/facebook/drawee/h/b;)V

    .line 209
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/drawee/a/a/d;->a(Lcom/facebook/imagepipeline/h/b;)V

    .line 210
    return-void
.end method

.method protected synthetic a(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 50
    check-cast p1, Lcom/facebook/d/h/a;

    invoke-virtual {p0, p1}, Lcom/facebook/drawee/a/a/d;->d(Lcom/facebook/d/h/a;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/facebook/drawee/a/a/d;->h:Z

    .line 161
    return-void
.end method

.method protected synthetic b(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 50
    check-cast p1, Lcom/facebook/d/h/a;

    invoke-virtual {p0, p1}, Lcom/facebook/drawee/a/a/d;->c(Lcom/facebook/d/h/a;)I

    move-result v0

    return v0
.end method

.method protected b()Lcom/facebook/d/h/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 271
    iget-object v0, p0, Lcom/facebook/drawee/a/a/d;->e:Lcom/facebook/imagepipeline/c/ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/drawee/a/a/d;->f:Lcom/facebook/c/a/f;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 280
    :goto_0
    return-object v0

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/a/a/d;->e:Lcom/facebook/imagepipeline/c/ad;

    iget-object v2, p0, Lcom/facebook/drawee/a/a/d;->f:Lcom/facebook/c/a/f;

    invoke-interface {v0, v2}, Lcom/facebook/imagepipeline/c/ad;->a(Ljava/lang/Object;)Lcom/facebook/d/h/a;

    move-result-object v2

    .line 276
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/facebook/d/h/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/h/b;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/h/b;->c()Lcom/facebook/imagepipeline/h/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/h/g;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 277
    invoke-virtual {v2}, Lcom/facebook/d/h/a;->close()V

    move-object v0, v1

    .line 278
    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 280
    goto :goto_0
.end method

.method protected b(Lcom/facebook/d/h/a;)Lcom/facebook/imagepipeline/h/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;)",
            "Lcom/facebook/imagepipeline/h/e;"
        }
    .end annotation

    .prologue
    .line 248
    invoke-static {p1}, Lcom/facebook/d/h/a;->a(Lcom/facebook/d/h/a;)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/d/d/k;->b(Z)V

    .line 249
    invoke-virtual {p1}, Lcom/facebook/d/h/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/h/e;

    return-object v0
.end method

.method protected c(Lcom/facebook/d/h/a;)I
    .locals 1
    .param p1    # Lcom/facebook/d/h/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 254
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/d/h/a;->f()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/facebook/drawee/a/a/d;->b()Lcom/facebook/d/h/a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    check-cast p1, Lcom/facebook/d/h/a;

    invoke-virtual {p0, p1}, Lcom/facebook/drawee/a/a/d;->b(Lcom/facebook/d/h/a;)Lcom/facebook/imagepipeline/h/e;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic d(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 50
    check-cast p1, Lcom/facebook/d/h/a;

    invoke-virtual {p0, p1}, Lcom/facebook/drawee/a/a/d;->a(Lcom/facebook/d/h/a;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected d(Lcom/facebook/d/h/a;)V
    .locals 0
    .param p1    # Lcom/facebook/d/h/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 259
    invoke-static {p1}, Lcom/facebook/d/h/a;->c(Lcom/facebook/d/h/a;)V

    .line 260
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 285
    invoke-static {p0}, Lcom/facebook/d/d/g;->a(Ljava/lang/Object;)Lcom/facebook/d/d/i;

    move-result-object v0

    const-string/jumbo v1, "super"

    .line 286
    invoke-super {p0}, Lcom/facebook/drawee/c/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/d/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/d/d/i;

    move-result-object v0

    const-string/jumbo v1, "dataSourceSupplier"

    iget-object v2, p0, Lcom/facebook/drawee/a/a/d;->g:Lcom/facebook/d/d/m;

    .line 287
    invoke-virtual {v0, v1, v2}, Lcom/facebook/d/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/d/d/i;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Lcom/facebook/d/d/i;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    return-object v0
.end method
