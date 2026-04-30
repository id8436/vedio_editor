.class Lcom/twitter/sdk/android/core/internal/g;
.super Ljava/lang/Object;
.source "AdvertisingInfoProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/sdk/android/core/internal/e;

.field final synthetic b:Lcom/twitter/sdk/android/core/internal/f;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/internal/f;Lcom/twitter/sdk/android/core/internal/e;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/g;->b:Lcom/twitter/sdk/android/core/internal/f;

    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/g;->a:Lcom/twitter/sdk/android/core/internal/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/g;->b:Lcom/twitter/sdk/android/core/internal/f;

    invoke-static {v0}, Lcom/twitter/sdk/android/core/internal/f;->a(Lcom/twitter/sdk/android/core/internal/f;)Lcom/twitter/sdk/android/core/internal/e;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/g;->a:Lcom/twitter/sdk/android/core/internal/e;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    invoke-static {}, Lcom/twitter/sdk/android/core/v;->h()Lcom/twitter/sdk/android/core/j;

    move-result-object v1

    const-string/jumbo v2, "Twitter"

    const-string/jumbo v3, "Asychronously getting Advertising Info and storing it to preferences"

    .line 71
    invoke-interface {v1, v2, v3}, Lcom/twitter/sdk/android/core/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/g;->b:Lcom/twitter/sdk/android/core/internal/f;

    invoke-static {v1, v0}, Lcom/twitter/sdk/android/core/internal/f;->a(Lcom/twitter/sdk/android/core/internal/f;Lcom/twitter/sdk/android/core/internal/e;)V

    .line 75
    :cond_0
    return-void
.end method
