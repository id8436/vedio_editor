.class final Lcom/dropbox/core/http/OkHttpUtil$1;
.super Ljava/lang/Object;
.source "OkHttpUtil.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Thread;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/dropbox/core/http/OkHttpUtil$1;->call()Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method
