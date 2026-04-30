.class public Lcom/facebook/drawee/view/c;
.super Ljava/lang/Object;
.source "DraweeHolder.java"

# interfaces
.implements Lcom/facebook/drawee/e/ag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DH::",
        "Lcom/facebook/drawee/h/b;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/drawee/e/ag;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Lcom/facebook/drawee/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDH;"
        }
    .end annotation
.end field

.field private e:Lcom/facebook/drawee/h/a;

.field private final f:Lcom/facebook/drawee/b/d;


# direct methods
.method public constructor <init>(Lcom/facebook/drawee/h/b;)V
    .locals 1
    .param p1    # Lcom/facebook/drawee/h/b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDH;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v0, p0, Lcom/facebook/drawee/view/c;->a:Z

    .line 50
    iput-boolean v0, p0, Lcom/facebook/drawee/view/c;->b:Z

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/drawee/view/c;->c:Z

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/drawee/view/c;->e:Lcom/facebook/drawee/h/a;

    .line 56
    invoke-static {}, Lcom/facebook/drawee/b/d;->a()Lcom/facebook/drawee/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/drawee/view/c;->f:Lcom/facebook/drawee/b/d;

    .line 81
    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/view/c;->a(Lcom/facebook/drawee/h/b;)V

    .line 84
    :cond_0
    return-void
.end method

.method public static a(Lcom/facebook/drawee/h/b;Landroid/content/Context;)Lcom/facebook/drawee/view/c;
    .locals 1
    .param p0    # Lcom/facebook/drawee/h/b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<DH::",
            "Lcom/facebook/drawee/h/b;",
            ">(TDH;",
            "Landroid/content/Context;",
            ")",
            "Lcom/facebook/drawee/view/c",
            "<TDH;>;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Lcom/facebook/drawee/view/c;

    invoke-direct {v0, p0}, Lcom/facebook/drawee/view/c;-><init>(Lcom/facebook/drawee/h/b;)V

    .line 68
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/view/c;->a(Landroid/content/Context;)V

    .line 69
    return-object v0
.end method

.method private a(Lcom/facebook/drawee/e/ag;)V
    .locals 2
    .param p1    # Lcom/facebook/drawee/e/ag;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/facebook/drawee/view/c;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 176
    instance-of v1, v0, Lcom/facebook/drawee/e/af;

    if-eqz v1, :cond_0

    .line 177
    check-cast v0, Lcom/facebook/drawee/e/af;

    invoke-interface {v0, p1}, Lcom/facebook/drawee/e/af;->a(Lcom/facebook/drawee/e/ag;)V

    .line 179
    :cond_0
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/facebook/drawee/view/c;->a:Z

    if-eqz v0, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/view/c;->f:Lcom/facebook/drawee/b/d;

    sget-object v1, Lcom/facebook/drawee/b/e;->g:Lcom/facebook/drawee/b/e;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/b/d;->a(Lcom/facebook/drawee/b/e;)V

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/drawee/view/c;->a:Z

    .line 264
    iget-object v0, p0, Lcom/facebook/drawee/view/c;->e:Lcom/facebook/drawee/h/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/drawee/view/c;->e:Lcom/facebook/drawee/h/a;

    .line 265
    invoke-interface {v0}, Lcom/facebook/drawee/h/a;->i()Lcom/facebook/drawee/h/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/facebook/drawee/view/c;->e:Lcom/facebook/drawee/h/a;

    invoke-interface {v0}, Lcom/facebook/drawee/h/a;->k()V

    goto :goto_0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/facebook/drawee/view/c;->a:Z

    if-nez v0, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/view/c;->f:Lcom/facebook/drawee/b/d;

    sget-object v1, Lcom/facebook/drawee/b/e;->h:Lcom/facebook/drawee/b/e;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/b/d;->a(Lcom/facebook/drawee/b/e;)V

    .line 275
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/drawee/view/c;->a:Z

    .line 276
    invoke-direct {p0}, Lcom/facebook/drawee/view/c;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/facebook/drawee/view/c;->e:Lcom/facebook/drawee/h/a;

    invoke-interface {v0}, Lcom/facebook/drawee/h/a;->l()V

    goto :goto_0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/facebook/drawee/view/c;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/drawee/view/c;->c:Z

    if-eqz v0, :cond_0

    .line 283
    invoke-direct {p0}, Lcom/facebook/drawee/view/c;->g()V

    .line 287
    :goto_0
    return-void

    .line 285
    :cond_0
    invoke-direct {p0}, Lcom/facebook/drawee/view/c;->h()V

    goto :goto_0
.end method

.method private j()Z
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/facebook/drawee/view/c;->e:Lcom/facebook/drawee/h/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/drawee/view/c;->e:Lcom/facebook/drawee/h/a;

    invoke-interface {v0}, Lcom/facebook/drawee/h/a;->i()Lcom/facebook/drawee/h/b;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/drawee/view/c;->d:Lcom/facebook/drawee/h/b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 153
    iget-boolean v0, p0, Lcom/facebook/drawee/view/c;->a:Z

    if-eqz v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 159
    :cond_0
    const-class v0, Lcom/facebook/drawee/b/d;

    const-string/jumbo v1, "%x: Draw requested for a non-attached controller %x. %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 162
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/facebook/drawee/view/c;->e:Lcom/facebook/drawee/h/a;

    .line 163
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    .line 164
    invoke-virtual {p0}, Lcom/facebook/drawee/view/c;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 159
    invoke-static {v0, v1, v2}, Lcom/facebook/d/e/a;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    iput-boolean v5, p0, Lcom/facebook/drawee/view/c;->b:Z

    .line 167
    iput-boolean v5, p0, Lcom/facebook/drawee/view/c;->c:Z

    .line 168
    invoke-direct {p0}, Lcom/facebook/drawee/view/c;->i()V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public a(Lcom/facebook/drawee/h/a;)V
    .locals 3
    .param p1    # Lcom/facebook/drawee/h/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/facebook/drawee/view/c;->a:Z

    .line 186
    if-eqz v0, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/facebook/drawee/view/c;->h()V

    .line 191
    :cond_0
    invoke-direct {p0}, Lcom/facebook/drawee/view/c;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/facebook/drawee/view/c;->f:Lcom/facebook/drawee/b/d;

    sget-object v2, Lcom/facebook/drawee/b/e;->d:Lcom/facebook/drawee/b/e;

    invoke-virtual {v1, v2}, Lcom/facebook/drawee/b/d;->a(Lcom/facebook/drawee/b/e;)V

    .line 193
    iget-object v1, p0, Lcom/facebook/drawee/view/c;->e:Lcom/facebook/drawee/h/a;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/facebook/drawee/h/a;->a(Lcom/facebook/drawee/h/b;)V

    .line 195
    :cond_1
    iput-object p1, p0, Lcom/facebook/drawee/view/c;->e:Lcom/facebook/drawee/h/a;

    .line 196
    iget-object v1, p0, Lcom/facebook/drawee/view/c;->e:Lcom/facebook/drawee/h/a;

    if-eqz v1, :cond_3

    .line 197
    iget-object v1, p0, Lcom/facebook/drawee/view/c;->f:Lcom/facebook/drawee/b/d;

    sget-object v2, Lcom/facebook/drawee/b/e;->c:Lcom/facebook/drawee/b/e;

    invoke-virtual {v1, v2}, Lcom/facebook/drawee/b/d;->a(Lcom/facebook/drawee/b/e;)V

    .line 198
    iget-object v1, p0, Lcom/facebook/drawee/view/c;->e:Lcom/facebook/drawee/h/a;

    iget-object v2, p0, Lcom/facebook/drawee/view/c;->d:Lcom/facebook/drawee/h/b;

    invoke-interface {v1, v2}, Lcom/facebook/drawee/h/a;->a(Lcom/facebook/drawee/h/b;)V

    .line 203
    :goto_0
    if-eqz v0, :cond_2

    .line 204
    invoke-direct {p0}, Lcom/facebook/drawee/view/c;->g()V

    .line 206
    :cond_2
    return-void

    .line 200
    :cond_3
    iget-object v1, p0, Lcom/facebook/drawee/view/c;->f:Lcom/facebook/drawee/b/d;

    sget-object v2, Lcom/facebook/drawee/b/e;->e:Lcom/facebook/drawee/b/e;

    invoke-virtual {v1, v2}, Lcom/facebook/drawee/b/d;->a(Lcom/facebook/drawee/b/e;)V

    goto :goto_0
.end method

.method public a(Lcom/facebook/drawee/h/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDH;)V"
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/facebook/drawee/view/c;->f:Lcom/facebook/drawee/b/d;

    sget-object v1, Lcom/facebook/drawee/b/e;->a:Lcom/facebook/drawee/b/e;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/b/d;->a(Lcom/facebook/drawee/b/e;)V

    .line 220
    invoke-direct {p0}, Lcom/facebook/drawee/view/c;->j()Z

    move-result v1

    .line 222
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/drawee/view/c;->a(Lcom/facebook/drawee/e/ag;)V

    .line 223
    invoke-static {p1}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/h/b;

    iput-object v0, p0, Lcom/facebook/drawee/view/c;->d:Lcom/facebook/drawee/h/b;

    .line 224
    iget-object v0, p0, Lcom/facebook/drawee/view/c;->d:Lcom/facebook/drawee/h/b;

    invoke-interface {v0}, Lcom/facebook/drawee/h/b;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/drawee/view/c;->a(Z)V

    .line 226
    invoke-direct {p0, p0}, Lcom/facebook/drawee/view/c;->a(Lcom/facebook/drawee/e/ag;)V

    .line 228
    if-eqz v1, :cond_1

    .line 229
    iget-object v0, p0, Lcom/facebook/drawee/view/c;->e:Lcom/facebook/drawee/h/a;

    invoke-interface {v0, p1}, Lcom/facebook/drawee/h/a;->a(Lcom/facebook/drawee/h/b;)V

    .line 231
    :cond_1
    return-void

    .line 225
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/facebook/drawee/view/c;->c:Z

    if-ne v0, p1, :cond_0

    .line 145
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/facebook/drawee/view/c;->f:Lcom/facebook/drawee/b/d;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/facebook/drawee/b/e;->q:Lcom/facebook/drawee/b/e;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/facebook/drawee/b/d;->a(Lcom/facebook/drawee/b/e;)V

    .line 143
    iput-boolean p1, p0, Lcom/facebook/drawee/view/c;->c:Z

    .line 144
    invoke-direct {p0}, Lcom/facebook/drawee/view/c;->i()V

    goto :goto_0

    .line 142
    :cond_1
    sget-object v0, Lcom/facebook/drawee/b/e;->r:Lcom/facebook/drawee/b/e;

    goto :goto_1
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/facebook/drawee/view/c;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    const/4 v0, 0x0

    .line 131
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/view/c;->e:Lcom/facebook/drawee/h/a;

    invoke-interface {v0, p1}, Lcom/facebook/drawee/h/a;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/facebook/drawee/view/c;->f:Lcom/facebook/drawee/b/d;

    sget-object v1, Lcom/facebook/drawee/b/e;->o:Lcom/facebook/drawee/b/e;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/b/d;->a(Lcom/facebook/drawee/b/e;)V

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/drawee/view/c;->b:Z

    .line 95
    invoke-direct {p0}, Lcom/facebook/drawee/view/c;->i()V

    .line 96
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/facebook/drawee/view/c;->f:Lcom/facebook/drawee/b/d;

    sget-object v1, Lcom/facebook/drawee/b/e;->p:Lcom/facebook/drawee/b/e;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/b/d;->a(Lcom/facebook/drawee/b/e;)V

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/drawee/view/c;->b:Z

    .line 119
    invoke-direct {p0}, Lcom/facebook/drawee/view/c;->i()V

    .line 120
    return-void
.end method

.method public d()Lcom/facebook/drawee/h/a;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lcom/facebook/drawee/view/c;->e:Lcom/facebook/drawee/h/a;

    return-object v0
.end method

.method public e()Lcom/facebook/drawee/h/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDH;"
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lcom/facebook/drawee/view/c;->d:Lcom/facebook/drawee/h/b;

    invoke-static {v0}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/h/b;

    return-object v0
.end method

.method public f()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/facebook/drawee/view/c;->d:Lcom/facebook/drawee/h/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/view/c;->d:Lcom/facebook/drawee/h/b;

    invoke-interface {v0}, Lcom/facebook/drawee/h/b;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 291
    invoke-static {p0}, Lcom/facebook/d/d/g;->a(Ljava/lang/Object;)Lcom/facebook/d/d/i;

    move-result-object v0

    const-string/jumbo v1, "controllerAttached"

    iget-boolean v2, p0, Lcom/facebook/drawee/view/c;->a:Z

    .line 292
    invoke-virtual {v0, v1, v2}, Lcom/facebook/d/d/i;->a(Ljava/lang/String;Z)Lcom/facebook/d/d/i;

    move-result-object v0

    const-string/jumbo v1, "holderAttached"

    iget-boolean v2, p0, Lcom/facebook/drawee/view/c;->b:Z

    .line 293
    invoke-virtual {v0, v1, v2}, Lcom/facebook/d/d/i;->a(Ljava/lang/String;Z)Lcom/facebook/d/d/i;

    move-result-object v0

    const-string/jumbo v1, "drawableVisible"

    iget-boolean v2, p0, Lcom/facebook/drawee/view/c;->c:Z

    .line 294
    invoke-virtual {v0, v1, v2}, Lcom/facebook/d/d/i;->a(Ljava/lang/String;Z)Lcom/facebook/d/d/i;

    move-result-object v0

    const-string/jumbo v1, "events"

    iget-object v2, p0, Lcom/facebook/drawee/view/c;->f:Lcom/facebook/drawee/b/d;

    .line 295
    invoke-virtual {v2}, Lcom/facebook/drawee/b/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/d/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/d/d/i;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Lcom/facebook/d/d/i;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    return-object v0
.end method
