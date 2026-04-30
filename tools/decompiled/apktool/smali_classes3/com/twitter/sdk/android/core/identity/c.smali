.class Lcom/twitter/sdk/android/core/identity/c;
.super Ljava/lang/Object;
.source "OAuthController.java"

# interfaces
.implements Lcom/twitter/sdk/android/core/identity/j;


# instance fields
.field final a:Lcom/twitter/sdk/android/core/identity/f;

.field b:Lcom/twitter/sdk/android/core/TwitterAuthToken;

.field private final c:Landroid/widget/ProgressBar;

.field private final d:Landroid/webkit/WebView;

.field private final e:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

.field private final f:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;


# direct methods
.method constructor <init>(Landroid/widget/ProgressBar;Landroid/webkit/WebView;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;Lcom/twitter/sdk/android/core/identity/f;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/twitter/sdk/android/core/identity/c;->c:Landroid/widget/ProgressBar;

    .line 59
    iput-object p2, p0, Lcom/twitter/sdk/android/core/identity/c;->d:Landroid/webkit/WebView;

    .line 60
    iput-object p3, p0, Lcom/twitter/sdk/android/core/identity/c;->e:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 61
    iput-object p4, p0, Lcom/twitter/sdk/android/core/identity/c;->f:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;

    .line 62
    iput-object p5, p0, Lcom/twitter/sdk/android/core/identity/c;->a:Lcom/twitter/sdk/android/core/identity/f;

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/twitter/sdk/android/core/identity/c;)Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/c;->f:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/sdk/android/core/identity/c;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/c;->d:Landroid/webkit/WebView;

    return-object v0
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 124
    invoke-static {}, Lcom/twitter/sdk/android/core/v;->h()Lcom/twitter/sdk/android/core/j;

    move-result-object v0

    const-string/jumbo v1, "Twitter"

    const-string/jumbo v2, "OAuth web view completed successfully"

    invoke-interface {v0, v1, v2}, Lcom/twitter/sdk/android/core/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    if-eqz p1, :cond_0

    .line 126
    const-string/jumbo v0, "oauth_verifier"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_0

    .line 129
    invoke-static {}, Lcom/twitter/sdk/android/core/v;->h()Lcom/twitter/sdk/android/core/j;

    move-result-object v1

    const-string/jumbo v2, "Twitter"

    const-string/jumbo v3, "Converting the request token to an access token."

    invoke-interface {v1, v2, v3}, Lcom/twitter/sdk/android/core/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/twitter/sdk/android/core/identity/c;->f:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/c;->c()Lcom/twitter/sdk/android/core/c;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/sdk/android/core/identity/c;->b:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    invoke-virtual {v1, v2, v3, v0}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->a(Lcom/twitter/sdk/android/core/c;Lcom/twitter/sdk/android/core/TwitterAuthToken;Ljava/lang/String;)V

    .line 142
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-static {}, Lcom/twitter/sdk/android/core/v;->h()Lcom/twitter/sdk/android/core/j;

    move-result-object v0

    const-string/jumbo v1, "Twitter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to get authorization, bundle incomplete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/twitter/sdk/android/core/j;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    const/4 v0, 0x1

    new-instance v1, Lcom/twitter/sdk/android/core/z;

    const-string/jumbo v2, "Failed to get authorization, bundle incomplete"

    invoke-direct {v1, v2}, Lcom/twitter/sdk/android/core/z;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/twitter/sdk/android/core/identity/c;->a(ILcom/twitter/sdk/android/core/z;)V

    goto :goto_0
.end method

.method private b(Lcom/twitter/sdk/android/core/identity/q;)V
    .locals 3

    .prologue
    .line 173
    invoke-static {}, Lcom/twitter/sdk/android/core/v;->h()Lcom/twitter/sdk/android/core/j;

    move-result-object v0

    const-string/jumbo v1, "Twitter"

    const-string/jumbo v2, "OAuth web view completed with an error"

    invoke-interface {v0, v1, v2, p1}, Lcom/twitter/sdk/android/core/j;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    const/4 v0, 0x1

    new-instance v1, Lcom/twitter/sdk/android/core/z;

    const-string/jumbo v2, "OAuth web view completed with an error"

    invoke-direct {v1, v2}, Lcom/twitter/sdk/android/core/z;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/twitter/sdk/android/core/identity/c;->a(ILcom/twitter/sdk/android/core/z;)V

    .line 176
    return-void
.end method

.method static synthetic c(Lcom/twitter/sdk/android/core/identity/c;)Lcom/twitter/sdk/android/core/TwitterAuthConfig;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/c;->e:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/c;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 180
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/identity/c;->e()V

    .line 181
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/c;->c:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 185
    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 67
    invoke-static {}, Lcom/twitter/sdk/android/core/v;->h()Lcom/twitter/sdk/android/core/j;

    move-result-object v0

    const-string/jumbo v1, "Twitter"

    const-string/jumbo v2, "Obtaining request token to start the sign in flow"

    invoke-interface {v0, v1, v2}, Lcom/twitter/sdk/android/core/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/c;->f:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/c;->b()Lcom/twitter/sdk/android/core/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->a(Lcom/twitter/sdk/android/core/c;)V

    .line 69
    return-void
.end method

.method protected a(ILcom/twitter/sdk/android/core/z;)V
    .locals 2

    .prologue
    .line 101
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 102
    const-string/jumbo v1, "auth_error"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 103
    iget-object v1, p0, Lcom/twitter/sdk/android/core/identity/c;->a:Lcom/twitter/sdk/android/core/identity/f;

    invoke-interface {v1, p1, v0}, Lcom/twitter/sdk/android/core/identity/f;->a(ILandroid/content/Intent;)V

    .line 104
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/core/identity/c;->b(Landroid/os/Bundle;)V

    .line 196
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/identity/c;->d()V

    .line 197
    return-void
.end method

.method a(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Ljava/lang/String;Landroid/webkit/WebChromeClient;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 112
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 113
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 114
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 115
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 116
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 117
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 118
    invoke-virtual {p1, p3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 119
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 120
    invoke-virtual {p1, p4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 121
    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/identity/c;->e()V

    .line 190
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 191
    return-void
.end method

.method public a(Lcom/twitter/sdk/android/core/identity/q;)V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/core/identity/c;->b(Lcom/twitter/sdk/android/core/identity/q;)V

    .line 202
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/identity/c;->d()V

    .line 203
    return-void
.end method

.method b()Lcom/twitter/sdk/android/core/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/sdk/android/core/c",
            "<",
            "Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lcom/twitter/sdk/android/core/identity/d;

    invoke-direct {v0, p0}, Lcom/twitter/sdk/android/core/identity/d;-><init>(Lcom/twitter/sdk/android/core/identity/c;)V

    return-object v0
.end method

.method c()Lcom/twitter/sdk/android/core/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/sdk/android/core/c",
            "<",
            "Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Lcom/twitter/sdk/android/core/identity/e;

    invoke-direct {v0, p0}, Lcom/twitter/sdk/android/core/identity/e;-><init>(Lcom/twitter/sdk/android/core/identity/c;)V

    return-object v0
.end method
