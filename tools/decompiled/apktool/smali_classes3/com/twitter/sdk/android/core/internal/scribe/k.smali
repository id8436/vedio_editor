.class public abstract Lcom/twitter/sdk/android/core/internal/scribe/k;
.super Ljava/lang/Object;
.source "EventsHandler.java"

# interfaces
.implements Lcom/twitter/sdk/android/core/internal/scribe/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/twitter/sdk/android/core/internal/scribe/p;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Ljava/util/concurrent/ScheduledExecutorService;

.field protected c:Lcom/twitter/sdk/android/core/internal/scribe/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/internal/scribe/q",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/internal/scribe/q;Lcom/twitter/sdk/android/core/internal/scribe/h;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/sdk/android/core/internal/scribe/q",
            "<TT;>;",
            "Lcom/twitter/sdk/android/core/internal/scribe/h;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/k;->a:Landroid/content/Context;

    .line 39
    iput-object p4, p0, Lcom/twitter/sdk/android/core/internal/scribe/k;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 40
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/scribe/k;->c:Lcom/twitter/sdk/android/core/internal/scribe/q;

    .line 42
    invoke-virtual {p3, p0}, Lcom/twitter/sdk/android/core/internal/scribe/h;->a(Lcom/twitter/sdk/android/core/internal/scribe/p;)V

    .line 43
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/l;

    invoke-direct {v0, p0, p1, p2}, Lcom/twitter/sdk/android/core/internal/scribe/l;-><init>(Lcom/twitter/sdk/android/core/internal/scribe/k;Ljava/lang/Object;Z)V

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/internal/scribe/k;->a(Ljava/lang/Runnable;)V

    .line 61
    return-void
.end method

.method protected a(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/k;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/k;->a:Landroid/content/Context;

    const-string/jumbo v2, "Failed to submit events task"

    invoke-static {v1, v2, v0}, Lcom/twitter/sdk/android/core/internal/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/m;

    invoke-direct {v0, p0}, Lcom/twitter/sdk/android/core/internal/scribe/m;-><init>(Lcom/twitter/sdk/android/core/internal/scribe/k;)V

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/internal/scribe/k;->a(Ljava/lang/Runnable;)V

    .line 89
    return-void
.end method
