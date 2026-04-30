.class public Lcom/b/a/c;
.super Lcom/b/a/e;
.source "DrawableRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/b/a/e",
        "<TModelType;",
        "Lcom/b/a/d/c/j;",
        "Lcom/b/a/d/d/e/a;",
        "Lcom/b/a/d/d/b/b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lcom/b/a/g/f;Lcom/b/a/h;Lcom/b/a/e/q;Lcom/b/a/e/i;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TModelType;>;",
            "Lcom/b/a/g/f",
            "<TModelType;",
            "Lcom/b/a/d/c/j;",
            "Lcom/b/a/d/d/e/a;",
            "Lcom/b/a/d/d/b/b;",
            ">;",
            "Lcom/b/a/h;",
            "Lcom/b/a/e/q;",
            "Lcom/b/a/e/i;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    const-class v4, Lcom/b/a/d/d/b/b;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/b/a/e;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/b/a/g/f;Ljava/lang/Class;Lcom/b/a/h;Lcom/b/a/e/q;Lcom/b/a/e/i;)V

    .line 51
    invoke-virtual {p0}, Lcom/b/a/c;->c()Lcom/b/a/c;

    .line 52
    return-void
.end method


# virtual methods
.method public a()Lcom/b/a/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/c",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 180
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/b/a/d/g;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/b/a/c;->c:Lcom/b/a/h;

    invoke-virtual {v2}, Lcom/b/a/h;->e()Lcom/b/a/d/d/e/h;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/b/a/c;->a([Lcom/b/a/d/g;)Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public a(II)Lcom/b/a/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/b/a/c",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 404
    invoke-super {p0, p1, p2}, Lcom/b/a/e;->b(II)Lcom/b/a/e;

    .line 405
    return-object p0
.end method

.method public a(Lcom/b/a/d/b/e;)Lcom/b/a/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/b/e;",
            ")",
            "Lcom/b/a/c",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 386
    invoke-super {p0, p1}, Lcom/b/a/e;->b(Lcom/b/a/d/b/e;)Lcom/b/a/e;

    .line 387
    return-object p0
.end method

.method public a(Lcom/b/a/d/b;)Lcom/b/a/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/b",
            "<",
            "Lcom/b/a/d/c/j;",
            ">;)",
            "Lcom/b/a/c",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 413
    invoke-super {p0, p1}, Lcom/b/a/e;->b(Lcom/b/a/d/b;)Lcom/b/a/e;

    .line 414
    return-object p0
.end method

.method public a(Lcom/b/a/d/c;)Lcom/b/a/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/c;",
            ")",
            "Lcom/b/a/c",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 428
    invoke-super {p0, p1}, Lcom/b/a/e;->b(Lcom/b/a/d/c;)Lcom/b/a/e;

    .line 429
    return-object p0
.end method

.method public a(Lcom/b/a/d/e;)Lcom/b/a/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/e",
            "<",
            "Lcom/b/a/d/c/j;",
            "Lcom/b/a/d/d/e/a;",
            ">;)",
            "Lcom/b/a/c",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/b/a/e;->b(Lcom/b/a/d/e;)Lcom/b/a/e;

    .line 117
    return-object p0
.end method

.method public a(Lcom/b/a/h/a/f;)Lcom/b/a/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/h/a/f",
            "<",
            "Lcom/b/a/d/d/b/b;",
            ">;)",
            "Lcom/b/a/c",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 299
    invoke-super {p0, p1}, Lcom/b/a/e;->b(Lcom/b/a/h/a/f;)Lcom/b/a/e;

    .line 300
    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/b/a/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lcom/b/a/c",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 434
    invoke-super {p0, p1}, Lcom/b/a/e;->b(Ljava/lang/Object;)Lcom/b/a/e;

    .line 435
    return-object p0
.end method

.method public a(Z)Lcom/b/a/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/b/a/c",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 395
    invoke-super {p0, p1}, Lcom/b/a/e;->b(Z)Lcom/b/a/e;

    .line 396
    return-object p0
.end method

.method public varargs a([Lcom/b/a/d/g;)Lcom/b/a/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/b/a/d/g",
            "<",
            "Lcom/b/a/d/d/e/a;",
            ">;)",
            "Lcom/b/a/c",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 229
    invoke-super {p0, p1}, Lcom/b/a/e;->b([Lcom/b/a/d/g;)Lcom/b/a/e;

    .line 230
    return-object p0
.end method

.method public a(Landroid/widget/ImageView;)Lcom/b/a/h/b/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/b/a/h/b/k",
            "<",
            "Lcom/b/a/d/d/b/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 457
    invoke-super {p0, p1}, Lcom/b/a/e;->a(Landroid/widget/ImageView;)Lcom/b/a/h/b/k;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/b/a/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/c",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 195
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/b/a/d/g;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/b/a/c;->c:Lcom/b/a/h;

    invoke-virtual {v2}, Lcom/b/a/h;->f()Lcom/b/a/d/d/e/h;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/b/a/c;->a([Lcom/b/a/d/g;)Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(II)Lcom/b/a/e;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/b/a/c;->a(II)Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/b/a/d/b/e;)Lcom/b/a/e;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/b/a/c;->a(Lcom/b/a/d/b/e;)Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/b/a/d/b;)Lcom/b/a/e;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/b/a/c;->a(Lcom/b/a/d/b;)Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/b/a/d/c;)Lcom/b/a/e;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/b/a/c;->a(Lcom/b/a/d/c;)Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/b/a/d/e;)Lcom/b/a/e;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/b/a/c;->a(Lcom/b/a/d/e;)Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/b/a/h/a/f;)Lcom/b/a/e;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/b/a/c;->a(Lcom/b/a/h/a/f;)Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;)Lcom/b/a/e;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/b/a/c;->a(Ljava/lang/Object;)Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Z)Lcom/b/a/e;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/b/a/c;->a(Z)Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b([Lcom/b/a/d/g;)Lcom/b/a/e;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/b/a/c;->a([Lcom/b/a/d/g;)Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/b/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/c",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 247
    new-instance v0, Lcom/b/a/h/a/a;

    invoke-direct {v0}, Lcom/b/a/h/a/a;-><init>()V

    invoke-super {p0, v0}, Lcom/b/a/e;->b(Lcom/b/a/h/a/f;)Lcom/b/a/e;

    .line 248
    return-object p0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/b/a/c;->g()Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method d()V
    .locals 0

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/b/a/c;->b()Lcom/b/a/c;

    .line 463
    return-void
.end method

.method e()V
    .locals 0

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/b/a/c;->a()Lcom/b/a/c;

    .line 468
    return-void
.end method

.method public synthetic f()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/b/a/c;->g()Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/b/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/c",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 440
    invoke-super {p0}, Lcom/b/a/e;->f()Lcom/b/a/e;

    move-result-object v0

    check-cast v0, Lcom/b/a/c;

    return-object v0
.end method
