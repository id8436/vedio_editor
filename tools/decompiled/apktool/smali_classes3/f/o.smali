.class final Lf/o;
.super Lf/i;
.source "ExecutorCallAdapterFactory.java"


# instance fields
.field final a:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lf/i;-><init>()V

    .line 30
    iput-object p1, p0, Lf/o;->a:Ljava/util/concurrent/Executor;

    .line 31
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lf/aw;)Lf/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lf/aw;",
            ")",
            "Lf/h",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {p1}, Lf/o;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lf/g;

    if-eq v0, v1, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 39
    :goto_0
    return-object v0

    .line 38
    :cond_0
    invoke-static {p1}, Lf/bb;->e(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 39
    new-instance v0, Lf/p;

    invoke-direct {v0, p0, v1}, Lf/p;-><init>(Lf/o;Ljava/lang/reflect/Type;)V

    goto :goto_0
.end method
