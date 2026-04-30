.class Lc/a/a/a/a/b/x;
.super Lc/a/a/a/a/b/l;
.source "ExecutorUtils.java"


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lc/a/a/a/a/b/w;


# direct methods
.method constructor <init>(Lc/a/a/a/a/b/w;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lc/a/a/a/a/b/x;->b:Lc/a/a/a/a/b/w;

    iput-object p2, p0, Lc/a/a/a/a/b/x;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Lc/a/a/a/a/b/l;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lc/a/a/a/a/b/x;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 76
    return-void
.end method
