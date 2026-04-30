.class public abstract Lcom/twitter/sdk/android/core/c;
.super Ljava/lang/Object;
.source "Callback.java"

# interfaces
.implements Lf/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf/j",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract failure(Lcom/twitter/sdk/android/core/ah;)V
.end method

.method public final onFailure(Lf/g;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/g",
            "<TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lcom/twitter/sdk/android/core/ah;

    const-string/jumbo v1, "Request Failure"

    invoke-direct {v0, v1, p2}, Lcom/twitter/sdk/android/core/ah;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/c;->failure(Lcom/twitter/sdk/android/core/ah;)V

    .line 49
    return-void
.end method

.method public final onResponse(Lf/g;Lf/av;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/g",
            "<TT;>;",
            "Lf/av",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p2}, Lf/av;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Lcom/twitter/sdk/android/core/s;

    invoke-virtual {p2}, Lf/av;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/twitter/sdk/android/core/s;-><init>(Ljava/lang/Object;Lf/av;)V

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/c;->success(Lcom/twitter/sdk/android/core/s;)V

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    new-instance v0, Lcom/twitter/sdk/android/core/x;

    invoke-direct {v0, p2}, Lcom/twitter/sdk/android/core/x;-><init>(Lf/av;)V

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/c;->failure(Lcom/twitter/sdk/android/core/ah;)V

    goto :goto_0
.end method

.method public abstract success(Lcom/twitter/sdk/android/core/s;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/s",
            "<TT;>;)V"
        }
    .end annotation
.end method
