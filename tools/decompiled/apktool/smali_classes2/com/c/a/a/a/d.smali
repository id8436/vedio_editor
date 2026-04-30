.class public final Lcom/c/a/a/a/d;
.super Ljava/lang/Object;
.source "VarExploderFactory.java"


# direct methods
.method public static a(Ljava/lang/Object;Lcom/c/a/a/a/e;)Lcom/c/a/a/j;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/c/a/a/k;
        }
    .end annotation

    .prologue
    .line 44
    instance-of v0, p0, Lcom/c/a/a/j;

    if-eqz v0, :cond_0

    .line 46
    check-cast p0, Lcom/c/a/a/j;

    .line 54
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/c/a/a/a;

    invoke-direct {v0, p0}, Lcom/c/a/a/a;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method
