.class Lcom/twitter/sdk/android/core/internal/scribe/ah;
.super Lcom/twitter/sdk/android/core/internal/scribe/k;
.source "ScribeHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/internal/scribe/k",
        "<",
        "Lcom/twitter/sdk/android/core/internal/scribe/ab;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/internal/scribe/q;Lcom/twitter/sdk/android/core/internal/scribe/h;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/sdk/android/core/internal/scribe/q",
            "<",
            "Lcom/twitter/sdk/android/core/internal/scribe/ab;",
            ">;",
            "Lcom/twitter/sdk/android/core/internal/scribe/h;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/twitter/sdk/android/core/internal/scribe/k;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/internal/scribe/q;Lcom/twitter/sdk/android/core/internal/scribe/h;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 29
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/sdk/android/core/internal/scribe/ab;)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/twitter/sdk/android/core/internal/scribe/ah;->a(Ljava/lang/Object;Z)V

    .line 36
    return-void
.end method
