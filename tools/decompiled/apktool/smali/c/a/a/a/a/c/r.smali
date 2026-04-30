.class Lc/a/a/a/a/c/r;
.super Lc/a/a/a/a/c/t;
.source "PriorityAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/a/a/a/c/t",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lc/a/a/a/a/c/q;


# direct methods
.method constructor <init>(Lc/a/a/a/a/c/q;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lc/a/a/a/a/c/r;->a:Lc/a/a/a/a/c/q;

    invoke-direct {p0, p2, p3}, Lc/a/a/a/a/c/t;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Lc/a/a/a/a/c/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lc/a/a/a/a/c/l",
            "<",
            "Lc/a/a/a/a/c/y;",
            ">;:",
            "Lc/a/a/a/a/c/u;",
            ":",
            "Lc/a/a/a/a/c/y;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lc/a/a/a/a/c/r;->a:Lc/a/a/a/a/c/q;

    invoke-static {v0}, Lc/a/a/a/a/c/q;->a(Lc/a/a/a/a/c/q;)Lc/a/a/a/a/c/p;

    move-result-object v0

    return-object v0
.end method
