.class Lcom/twitter/sdk/android/core/internal/oauth/e;
.super Lcom/twitter/sdk/android/core/c;
.source "OAuth2Service.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/c",
        "<",
        "Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/sdk/android/core/c;

.field final synthetic b:Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;Lcom/twitter/sdk/android/core/c;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/oauth/e;->b:Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;

    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/oauth/e;->a:Lcom/twitter/sdk/android/core/c;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/c;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/twitter/sdk/android/core/ah;)V
    .locals 3

    .prologue
    .line 94
    invoke-static {}, Lcom/twitter/sdk/android/core/v;->h()Lcom/twitter/sdk/android/core/j;

    move-result-object v0

    const-string/jumbo v1, "Twitter"

    const-string/jumbo v2, "Failed to get app auth token"

    invoke-interface {v0, v1, v2, p1}, Lcom/twitter/sdk/android/core/j;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/e;->a:Lcom/twitter/sdk/android/core/c;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/e;->a:Lcom/twitter/sdk/android/core/c;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/c;->failure(Lcom/twitter/sdk/android/core/ah;)V

    .line 98
    :cond_0
    return-void
.end method

.method public success(Lcom/twitter/sdk/android/core/s;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/s",
            "<",
            "Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p1, Lcom/twitter/sdk/android/core/s;->a:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;

    .line 70
    new-instance v1, Lcom/twitter/sdk/android/core/internal/oauth/f;

    invoke-direct {v1, p0, v0}, Lcom/twitter/sdk/android/core/internal/oauth/f;-><init>(Lcom/twitter/sdk/android/core/internal/oauth/e;Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;)V

    .line 89
    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/oauth/e;->b:Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;

    invoke-virtual {v2, v1, v0}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;->a(Lcom/twitter/sdk/android/core/c;Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;)V

    .line 90
    return-void
.end method
