.class public Lcom/facebook/e/g;
.super Ljava/lang/Object;
.source "DataSources.java"


# direct methods
.method public static a(Ljava/lang/Throwable;)Lcom/facebook/e/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/facebook/e/f",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {}, Lcom/facebook/e/q;->j()Lcom/facebook/e/q;

    move-result-object v0

    .line 25
    invoke-virtual {v0, p0}, Lcom/facebook/e/q;->a(Ljava/lang/Throwable;)Z

    .line 26
    return-object v0
.end method

.method public static b(Ljava/lang/Throwable;)Lcom/facebook/d/d/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/facebook/d/d/m",
            "<",
            "Lcom/facebook/e/f",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lcom/facebook/e/h;

    invoke-direct {v0, p0}, Lcom/facebook/e/h;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method
