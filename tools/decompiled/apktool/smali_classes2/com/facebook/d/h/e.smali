.class final Lcom/facebook/d/h/e;
.super Ljava/lang/Object;
.source "CloseableReference.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 401
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/facebook/d/h/d;->i()Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/facebook/d/h/f;

    .line 402
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/d/h/f;->a(Z)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 403
    :catch_0
    move-exception v0

    goto :goto_0
.end method
