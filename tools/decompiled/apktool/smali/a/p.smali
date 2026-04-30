.class final La/p;
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
    .line 908
    iput-object p1, p0, La/p;->a:La/g;

    iput-object p2, p0, La/p;->b:La/t;

    iput-object p3, p0, La/p;->c:La/j;

    iput-object p4, p0, La/p;->d:La/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 911
    iget-object v0, p0, La/p;->a:La/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/p;->a:La/g;

    invoke-virtual {v0}, La/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, La/p;->b:La/t;

    invoke-virtual {v0}, La/t;->c()V

    .line 945
    :goto_0
    return-void

    .line 917
    :cond_0
    :try_start_0
    iget-object v0, p0, La/p;->c:La/j;

    iget-object v1, p0, La/p;->d:La/l;

    invoke-interface {v0, v1}, La/j;->a(La/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/l;

    .line 918
    if-nez v0, :cond_1

    .line 919
    iget-object v0, p0, La/p;->b:La/t;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, La/t;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 940
    :catch_0
    move-exception v0

    .line 941
    iget-object v0, p0, La/p;->b:La/t;

    invoke-virtual {v0}, La/t;->c()V

    goto :goto_0

    .line 921
    :cond_1
    :try_start_1
    new-instance v1, La/q;

    invoke-direct {v1, p0}, La/q;-><init>(La/p;)V

    invoke-virtual {v0, v1}, La/l;->a(La/j;)La/l;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 942
    :catch_1
    move-exception v0

    .line 943
    iget-object v1, p0, La/p;->b:La/t;

    invoke-virtual {v1, v0}, La/t;->b(Ljava/lang/Exception;)V

    goto :goto_0
.end method
