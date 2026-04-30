.class Lc/a/a/a/a/c/i;
.super Ljava/lang/Object;
.source "AsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lc/a/a/a/a/c/h;


# direct methods
.method constructor <init>(Lc/a/a/a/a/c/h;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lc/a/a/a/a/c/i;->b:Lc/a/a/a/a/c/h;

    iput-object p2, p0, Lc/a/a/a/a/c/i;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 254
    :try_start_0
    iget-object v0, p0, Lc/a/a/a/a/c/i;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    iget-object v0, p0, Lc/a/a/a/a/c/i;->b:Lc/a/a/a/a/c/h;

    invoke-virtual {v0}, Lc/a/a/a/a/c/h;->a()V

    .line 258
    return-void

    .line 256
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc/a/a/a/a/c/i;->b:Lc/a/a/a/a/c/h;

    invoke-virtual {v1}, Lc/a/a/a/a/c/h;->a()V

    throw v0
.end method
