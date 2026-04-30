.class Lcom/facebook/imagepipeline/e/q;
.super Ljava/lang/Object;
.source "PriorityThreadFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/facebook/imagepipeline/e/p;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/e/p;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/facebook/imagepipeline/e/q;->b:Lcom/facebook/imagepipeline/e/p;

    iput-object p2, p0, Lcom/facebook/imagepipeline/e/q;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/q;->b:Lcom/facebook/imagepipeline/e/p;

    invoke-static {v0}, Lcom/facebook/imagepipeline/e/p;->a(Lcom/facebook/imagepipeline/e/p;)I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/q;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 44
    return-void

    .line 40
    :catch_0
    move-exception v0

    goto :goto_0
.end method
