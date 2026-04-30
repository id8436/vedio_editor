.class Lcom/twitter/sdk/android/core/internal/oauth/f;
.super Lcom/twitter/sdk/android/core/c;
.source "OAuth2Service.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/c",
        "<",
        "Lcom/twitter/sdk/android/core/internal/oauth/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;

.field final synthetic b:Lcom/twitter/sdk/android/core/internal/oauth/e;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/internal/oauth/e;Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/oauth/f;->b:Lcom/twitter/sdk/android/core/internal/oauth/e;

    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/oauth/f;->a:Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/c;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/twitter/sdk/android/core/ah;)V
    .locals 3

    .prologue
    .line 83
    invoke-static {}, Lcom/twitter/sdk/android/core/v;->h()Lcom/twitter/sdk/android/core/j;

    move-result-object v0

    const-string/jumbo v1, "Twitter"

    const-string/jumbo v2, "Your app may not allow guest auth. Please talk to us regarding upgrading your consumer key."

    invoke-interface {v0, v1, v2, p1}, Lcom/twitter/sdk/android/core/j;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/f;->b:Lcom/twitter/sdk/android/core/internal/oauth/e;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/internal/oauth/e;->a:Lcom/twitter/sdk/android/core/c;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/c;->failure(Lcom/twitter/sdk/android/core/ah;)V

    .line 87
    return-void
.end method

.method public success(Lcom/twitter/sdk/android/core/s;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/s",
            "<",
            "Lcom/twitter/sdk/android/core/internal/oauth/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v1, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/f;->a:Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;

    .line 76
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/f;->a:Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p1, Lcom/twitter/sdk/android/core/s;->a:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/sdk/android/core/internal/oauth/a;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/internal/oauth/a;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/f;->b:Lcom/twitter/sdk/android/core/internal/oauth/e;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/internal/oauth/e;->a:Lcom/twitter/sdk/android/core/c;

    new-instance v2, Lcom/twitter/sdk/android/core/s;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/twitter/sdk/android/core/s;-><init>(Ljava/lang/Object;Lf/av;)V

    invoke-virtual {v0, v2}, Lcom/twitter/sdk/android/core/c;->success(Lcom/twitter/sdk/android/core/s;)V

    .line 79
    return-void
.end method
