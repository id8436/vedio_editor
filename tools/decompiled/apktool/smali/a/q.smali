.class La/q;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements La/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/j",
        "<TTContinuationResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:La/p;


# direct methods
.method constructor <init>(La/p;)V
    .locals 0

    .prologue
    .line 921
    iput-object p1, p0, La/q;->a:La/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(La/l;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 921
    invoke-virtual {p0, p1}, La/q;->b(La/l;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public b(La/l;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/l",
            "<TTContinuationResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 924
    iget-object v0, p0, La/q;->a:La/p;

    iget-object v0, v0, La/p;->a:La/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/q;->a:La/p;

    iget-object v0, v0, La/p;->a:La/g;

    invoke-virtual {v0}, La/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, La/q;->a:La/p;

    iget-object v0, v0, La/p;->b:La/t;

    invoke-virtual {v0}, La/t;->c()V

    .line 936
    :goto_0
    return-object v2

    .line 929
    :cond_0
    invoke-virtual {p1}, La/l;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 930
    iget-object v0, p0, La/q;->a:La/p;

    iget-object v0, v0, La/p;->b:La/t;

    invoke-virtual {v0}, La/t;->c()V

    goto :goto_0

    .line 931
    :cond_1
    invoke-virtual {p1}, La/l;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 932
    iget-object v0, p0, La/q;->a:La/p;

    iget-object v0, v0, La/p;->b:La/t;

    invoke-virtual {p1}, La/l;->f()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, La/t;->b(Ljava/lang/Exception;)V

    goto :goto_0

    .line 934
    :cond_2
    iget-object v0, p0, La/q;->a:La/p;

    iget-object v0, v0, La/p;->b:La/t;

    invoke-virtual {p1}, La/l;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, La/t;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method
