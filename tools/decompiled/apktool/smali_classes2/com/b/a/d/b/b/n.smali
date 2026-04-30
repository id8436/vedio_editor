.class public Lcom/b/a/d/b/b/n;
.super Lcom/b/a/j/e;
.source "LruResourceCache.java"

# interfaces
.implements Lcom/b/a/d/b/b/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/b/a/j/e",
        "<",
        "Lcom/b/a/d/c;",
        "Lcom/b/a/d/b/z",
        "<*>;>;",
        "Lcom/b/a/d/b/b/o;"
    }
.end annotation


# instance fields
.field private a:Lcom/b/a/d/b/b/p;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/b/a/j/e;-><init>(I)V

    .line 22
    return-void
.end method


# virtual methods
.method protected a(Lcom/b/a/d/b/z;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/b/z",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 38
    invoke-interface {p1}, Lcom/b/a/d/b/z;->c()I

    move-result v0

    return v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 12
    check-cast p1, Lcom/b/a/d/b/z;

    invoke-virtual {p0, p1}, Lcom/b/a/d/b/b/n;->a(Lcom/b/a/d/b/z;)I

    move-result v0

    return v0
.end method

.method public synthetic a(Lcom/b/a/d/c;)Lcom/b/a/d/b/z;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/b/a/j/e;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/d/b/z;

    return-object v0
.end method

.method public a(I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 44
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_1

    .line 47
    invoke-virtual {p0}, Lcom/b/a/d/b/b/n;->a()V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/b/a/d/b/b/n;->b()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/b/a/d/b/b/n;->b(I)V

    goto :goto_0
.end method

.method public a(Lcom/b/a/d/b/b/p;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/b/a/d/b/b/n;->a:Lcom/b/a/d/b/b/p;

    .line 27
    return-void
.end method

.method protected a(Lcom/b/a/d/c;Lcom/b/a/d/b/z;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/c;",
            "Lcom/b/a/d/b/z",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/b/a/d/b/b/n;->a:Lcom/b/a/d/b/b/p;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/b/a/d/b/b/n;->a:Lcom/b/a/d/b/b/p;

    invoke-interface {v0, p2}, Lcom/b/a/d/b/b/p;->b(Lcom/b/a/d/b/z;)V

    .line 34
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lcom/b/a/d/c;

    check-cast p2, Lcom/b/a/d/b/z;

    invoke-virtual {p0, p1, p2}, Lcom/b/a/d/b/b/n;->a(Lcom/b/a/d/c;Lcom/b/a/d/b/z;)V

    return-void
.end method

.method public bridge synthetic b(Lcom/b/a/d/c;Lcom/b/a/d/b/z;)Lcom/b/a/d/b/z;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/b/a/j/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/d/b/z;

    return-object v0
.end method
