.class Lf/t;
.super Ljava/lang/Object;
.source "ExecutorCallAdapterFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:Lf/r;


# direct methods
.method constructor <init>(Lf/r;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lf/t;->b:Lf/r;

    iput-object p2, p0, Lf/t;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lf/t;->b:Lf/r;

    iget-object v0, v0, Lf/r;->a:Lf/j;

    iget-object v1, p0, Lf/t;->b:Lf/r;

    iget-object v1, v1, Lf/r;->b:Lf/q;

    iget-object v2, p0, Lf/t;->a:Ljava/lang/Throwable;

    invoke-interface {v0, v1, v2}, Lf/j;->onFailure(Lf/g;Ljava/lang/Throwable;)V

    .line 80
    return-void
.end method
