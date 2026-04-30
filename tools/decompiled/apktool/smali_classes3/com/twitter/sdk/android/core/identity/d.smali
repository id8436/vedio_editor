.class Lcom/twitter/sdk/android/core/identity/d;
.super Lcom/twitter/sdk/android/core/c;
.source "OAuthController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/c",
        "<",
        "Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/sdk/android/core/identity/c;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/identity/c;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/twitter/sdk/android/core/identity/d;->a:Lcom/twitter/sdk/android/core/identity/c;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/c;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/twitter/sdk/android/core/ah;)V
    .locals 4

    .prologue
    .line 90
    invoke-static {}, Lcom/twitter/sdk/android/core/v;->h()Lcom/twitter/sdk/android/core/j;

    move-result-object v0

    const-string/jumbo v1, "Twitter"

    const-string/jumbo v2, "Failed to get request token"

    invoke-interface {v0, v1, v2, p1}, Lcom/twitter/sdk/android/core/j;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/d;->a:Lcom/twitter/sdk/android/core/identity/c;

    const/4 v1, 0x1

    new-instance v2, Lcom/twitter/sdk/android/core/z;

    const-string/jumbo v3, "Failed to get request token"

    invoke-direct {v2, v3}, Lcom/twitter/sdk/android/core/z;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/twitter/sdk/android/core/identity/c;->a(ILcom/twitter/sdk/android/core/z;)V

    .line 96
    return-void
.end method

.method public success(Lcom/twitter/sdk/android/core/s;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/s",
            "<",
            "Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v1, p0, Lcom/twitter/sdk/android/core/identity/d;->a:Lcom/twitter/sdk/android/core/identity/c;

    iget-object v0, p1, Lcom/twitter/sdk/android/core/s;->a:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;->a:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    iput-object v0, v1, Lcom/twitter/sdk/android/core/identity/c;->b:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    .line 79
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/d;->a:Lcom/twitter/sdk/android/core/identity/c;

    invoke-static {v0}, Lcom/twitter/sdk/android/core/identity/c;->a(Lcom/twitter/sdk/android/core/identity/c;)Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/sdk/android/core/identity/d;->a:Lcom/twitter/sdk/android/core/identity/c;

    iget-object v1, v1, Lcom/twitter/sdk/android/core/identity/c;->b:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->a(Lcom/twitter/sdk/android/core/TwitterAuthToken;)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {}, Lcom/twitter/sdk/android/core/v;->h()Lcom/twitter/sdk/android/core/j;

    move-result-object v1

    const-string/jumbo v2, "Twitter"

    const-string/jumbo v3, "Redirecting user to web view to complete authorization flow"

    invoke-interface {v1, v2, v3}, Lcom/twitter/sdk/android/core/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/twitter/sdk/android/core/identity/d;->a:Lcom/twitter/sdk/android/core/identity/c;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/identity/d;->a:Lcom/twitter/sdk/android/core/identity/c;

    invoke-static {v2}, Lcom/twitter/sdk/android/core/identity/c;->b(Lcom/twitter/sdk/android/core/identity/c;)Landroid/webkit/WebView;

    move-result-object v2

    new-instance v3, Lcom/twitter/sdk/android/core/identity/i;

    iget-object v4, p0, Lcom/twitter/sdk/android/core/identity/d;->a:Lcom/twitter/sdk/android/core/identity/c;

    .line 84
    invoke-static {v4}, Lcom/twitter/sdk/android/core/identity/c;->a(Lcom/twitter/sdk/android/core/identity/c;)Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;

    move-result-object v4

    iget-object v5, p0, Lcom/twitter/sdk/android/core/identity/d;->a:Lcom/twitter/sdk/android/core/identity/c;

    invoke-static {v5}, Lcom/twitter/sdk/android/core/identity/c;->c(Lcom/twitter/sdk/android/core/identity/c;)Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->a(Lcom/twitter/sdk/android/core/TwitterAuthConfig;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/twitter/sdk/android/core/identity/d;->a:Lcom/twitter/sdk/android/core/identity/c;

    invoke-direct {v3, v4, v5}, Lcom/twitter/sdk/android/core/identity/i;-><init>(Ljava/lang/String;Lcom/twitter/sdk/android/core/identity/j;)V

    new-instance v4, Lcom/twitter/sdk/android/core/identity/h;

    invoke-direct {v4}, Lcom/twitter/sdk/android/core/identity/h;-><init>()V

    .line 83
    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/twitter/sdk/android/core/identity/c;->a(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Ljava/lang/String;Landroid/webkit/WebChromeClient;)V

    .line 86
    return-void
.end method
