.class final Lcom/google/common/util/concurrent/Futures$1;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/AsyncFunction",
        "<TI;TO;>;"
    }
.end annotation


# instance fields
.field final synthetic val$function:Lcom/google/common/base/Function;


# direct methods
.method constructor <init>(Lcom/google/common/base/Function;)V
    .locals 0

    .prologue
    .line 713
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$1;->val$function:Lcom/google/common/base/Function;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TO;>;"
        }
    .end annotation

    .prologue
    .line 715
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$1;->val$function:Lcom/google/common/base/Function;

    invoke-interface {v0, p1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 716
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
