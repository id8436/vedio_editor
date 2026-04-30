.class public Lcom/twitter/sdk/android/core/internal/t;
.super Ljava/lang/Object;
.source "SessionMonitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/twitter/sdk/android/core/t;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/twitter/sdk/android/core/internal/w;

.field private final b:Lcom/twitter/sdk/android/core/internal/y;

.field private final c:Lcom/twitter/sdk/android/core/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/u",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/ExecutorService;

.field private final e:Lcom/twitter/sdk/android/core/internal/x;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/u;Lcom/twitter/sdk/android/core/internal/y;Ljava/util/concurrent/ExecutorService;Lcom/twitter/sdk/android/core/internal/w;Lcom/twitter/sdk/android/core/internal/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/u",
            "<TT;>;",
            "Lcom/twitter/sdk/android/core/internal/y;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/twitter/sdk/android/core/internal/w;",
            "Lcom/twitter/sdk/android/core/internal/x;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/t;->b:Lcom/twitter/sdk/android/core/internal/y;

    .line 56
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/t;->c:Lcom/twitter/sdk/android/core/u;

    .line 57
    iput-object p3, p0, Lcom/twitter/sdk/android/core/internal/t;->d:Ljava/util/concurrent/ExecutorService;

    .line 58
    iput-object p4, p0, Lcom/twitter/sdk/android/core/internal/t;->a:Lcom/twitter/sdk/android/core/internal/w;

    .line 59
    iput-object p5, p0, Lcom/twitter/sdk/android/core/internal/t;->e:Lcom/twitter/sdk/android/core/internal/x;

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/twitter/sdk/android/core/u;Ljava/util/concurrent/ExecutorService;Lcom/twitter/sdk/android/core/internal/x;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/u",
            "<TT;>;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/twitter/sdk/android/core/internal/x",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v2, Lcom/twitter/sdk/android/core/internal/y;

    invoke-direct {v2}, Lcom/twitter/sdk/android/core/internal/y;-><init>()V

    new-instance v4, Lcom/twitter/sdk/android/core/internal/w;

    invoke-direct {v4}, Lcom/twitter/sdk/android/core/internal/w;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/twitter/sdk/android/core/internal/t;-><init>(Lcom/twitter/sdk/android/core/u;Lcom/twitter/sdk/android/core/internal/y;Ljava/util/concurrent/ExecutorService;Lcom/twitter/sdk/android/core/internal/w;Lcom/twitter/sdk/android/core/internal/x;)V

    .line 50
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 81
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/t;->c:Lcom/twitter/sdk/android/core/u;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/u;->b()Lcom/twitter/sdk/android/core/t;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/t;->b:Lcom/twitter/sdk/android/core/internal/y;

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/internal/y;->a()J

    move-result-wide v2

    .line 83
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/t;->a:Lcom/twitter/sdk/android/core/internal/w;

    .line 84
    invoke-virtual {v0, v2, v3}, Lcom/twitter/sdk/android/core/internal/w;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 85
    :goto_0
    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/t;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/twitter/sdk/android/core/internal/v;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/core/internal/v;-><init>(Lcom/twitter/sdk/android/core/internal/t;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 93
    :cond_0
    return-void

    .line 84
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/twitter/sdk/android/core/internal/a;)V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/twitter/sdk/android/core/internal/u;

    invoke-direct {v0, p0}, Lcom/twitter/sdk/android/core/internal/u;-><init>(Lcom/twitter/sdk/android/core/internal/t;)V

    invoke-virtual {p1, v0}, Lcom/twitter/sdk/android/core/internal/a;->a(Lcom/twitter/sdk/android/core/internal/d;)Z

    .line 73
    return-void
.end method

.method protected b()V
    .locals 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/t;->c:Lcom/twitter/sdk/android/core/u;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/u;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/t;

    .line 97
    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/t;->e:Lcom/twitter/sdk/android/core/internal/x;

    invoke-interface {v2, v0}, Lcom/twitter/sdk/android/core/internal/x;->a(Lcom/twitter/sdk/android/core/t;)V

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/t;->a:Lcom/twitter/sdk/android/core/internal/w;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/t;->b:Lcom/twitter/sdk/android/core/internal/y;

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/internal/y;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/sdk/android/core/internal/w;->b(J)V

    .line 100
    return-void
.end method
