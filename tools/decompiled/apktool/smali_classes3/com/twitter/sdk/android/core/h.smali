.class Lcom/twitter/sdk/android/core/h;
.super Lcom/twitter/sdk/android/core/c;
.source "GuestSessionProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/c",
        "<",
        "Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/CountDownLatch;

.field final synthetic b:Lcom/twitter/sdk/android/core/g;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/g;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/twitter/sdk/android/core/h;->b:Lcom/twitter/sdk/android/core/g;

    iput-object p2, p0, Lcom/twitter/sdk/android/core/h;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/c;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/twitter/sdk/android/core/ah;)V
    .locals 4

    .prologue
    .line 67
    iget-object v0, p0, Lcom/twitter/sdk/android/core/h;->b:Lcom/twitter/sdk/android/core/g;

    invoke-static {v0}, Lcom/twitter/sdk/android/core/g;->a(Lcom/twitter/sdk/android/core/g;)Lcom/twitter/sdk/android/core/u;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-interface {v0, v2, v3}, Lcom/twitter/sdk/android/core/u;->c(J)V

    .line 68
    iget-object v0, p0, Lcom/twitter/sdk/android/core/h;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 69
    return-void
.end method

.method public success(Lcom/twitter/sdk/android/core/s;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/s",
            "<",
            "Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/twitter/sdk/android/core/h;->b:Lcom/twitter/sdk/android/core/g;

    invoke-static {v0}, Lcom/twitter/sdk/android/core/g;->a(Lcom/twitter/sdk/android/core/g;)Lcom/twitter/sdk/android/core/u;

    move-result-object v1

    new-instance v2, Lcom/twitter/sdk/android/core/e;

    iget-object v0, p1, Lcom/twitter/sdk/android/core/s;->a:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;

    invoke-direct {v2, v0}, Lcom/twitter/sdk/android/core/e;-><init>(Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;)V

    invoke-interface {v1, v2}, Lcom/twitter/sdk/android/core/u;->a(Lcom/twitter/sdk/android/core/t;)V

    .line 62
    iget-object v0, p0, Lcom/twitter/sdk/android/core/h;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 63
    return-void
.end method
