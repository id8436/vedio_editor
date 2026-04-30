.class Lf/p;
.super Ljava/lang/Object;
.source "ExecutorCallAdapterFactory.java"

# interfaces
.implements Lf/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/h",
        "<",
        "Ljava/lang/Object;",
        "Lf/g",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/reflect/Type;

.field final synthetic b:Lf/o;


# direct methods
.method constructor <init>(Lf/o;Ljava/lang/reflect/Type;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lf/p;->b:Lf/o;

    iput-object p2, p0, Lf/p;->a:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lf/g;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lf/p;->b(Lf/g;)Lf/g;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lf/p;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public b(Lf/g;)Lf/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/g",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lf/g",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lf/q;

    iget-object v1, p0, Lf/p;->b:Lf/o;

    iget-object v1, v1, Lf/o;->a:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p1}, Lf/q;-><init>(Ljava/util/concurrent/Executor;Lf/g;)V

    return-object v0
.end method
