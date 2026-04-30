.class final enum Lcom/b/a/d/b/c/g;
.super Lcom/b/a/d/b/c/f;
.source "FifoPriorityThreadPoolExecutor.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/b/a/d/b/c/f;-><init>(Ljava/lang/String;ILcom/b/a/d/b/c/b;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 36
    const-string/jumbo v0, "PriorityExecutor"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const-string/jumbo v0, "PriorityExecutor"

    const-string/jumbo v1, "Request threw uncaught throwable"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    :cond_0
    return-void
.end method
