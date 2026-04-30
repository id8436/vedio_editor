.class final La/o;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:La/g;

.field final synthetic b:La/t;

.field final synthetic c:La/j;

.field final synthetic d:La/l;


# direct methods
.method constructor <init>(La/g;La/t;La/j;La/l;)V
    .locals 0

    .prologue
    .line 863
    iput-object p1, p0, La/o;->a:La/g;

    iput-object p2, p0, La/o;->b:La/t;

    iput-object p3, p0, La/o;->c:La/j;

    iput-object p4, p0, La/o;->d:La/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 866
    iget-object v0, p0, La/o;->a:La/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/o;->a:La/g;

    invoke-virtual {v0}, La/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, La/o;->b:La/t;

    invoke-virtual {v0}, La/t;->c()V

    .line 879
    :goto_0
    return-void

    .line 872
    :cond_0
    :try_start_0
    iget-object v0, p0, La/o;->c:La/j;

    iget-object v1, p0, La/o;->d:La/l;

    invoke-interface {v0, v1}, La/j;->a(La/l;)Ljava/lang/Object;

    move-result-object v0

    .line 873
    iget-object v1, p0, La/o;->b:La/t;

    invoke-virtual {v1, v0}, La/t;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 874
    :catch_0
    move-exception v0

    .line 875
    iget-object v0, p0, La/o;->b:La/t;

    invoke-virtual {v0}, La/t;->c()V

    goto :goto_0

    .line 876
    :catch_1
    move-exception v0

    .line 877
    iget-object v1, p0, La/o;->b:La/t;

    invoke-virtual {v1, v0}, La/t;->b(Ljava/lang/Exception;)V

    goto :goto_0
.end method
