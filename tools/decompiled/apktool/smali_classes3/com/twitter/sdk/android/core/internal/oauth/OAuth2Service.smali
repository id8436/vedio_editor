.class public Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;
.super Lcom/twitter/sdk/android/core/internal/oauth/i;
.source "OAuth2Service.java"


# instance fields
.field a:Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$OAuth2Api;


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/af;Lcom/twitter/sdk/android/core/internal/z;)V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/twitter/sdk/android/core/internal/oauth/i;-><init>(Lcom/twitter/sdk/android/core/af;Lcom/twitter/sdk/android/core/internal/z;)V

    .line 57
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;->f()Lf/aw;

    move-result-object v0

    const-class v1, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$OAuth2Api;

    invoke-virtual {v0, v1}, Lf/aw;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$OAuth2Api;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;->a:Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$OAuth2Api;

    .line 58
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;->c()Lcom/twitter/sdk/android/core/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/af;->c()Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    move-result-object v0

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/sdk/android/core/internal/a/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 136
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/sdk/android/core/internal/a/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v0}, Le/k;->a(Ljava/lang/String;)Le/k;

    move-result-object v0

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Basic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Le/k;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Bearer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/sdk/android/core/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/c",
            "<",
            "Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Lcom/twitter/sdk/android/core/internal/oauth/e;

    invoke-direct {v0, p0, p1}, Lcom/twitter/sdk/android/core/internal/oauth/e;-><init>(Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;Lcom/twitter/sdk/android/core/c;)V

    .line 100
    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;->b(Lcom/twitter/sdk/android/core/c;)V

    .line 101
    return-void
.end method

.method a(Lcom/twitter/sdk/android/core/c;Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/c",
            "<",
            "Lcom/twitter/sdk/android/core/internal/oauth/a;",
            ">;",
            "Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;",
            ")V"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;->a:Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$OAuth2Api;

    invoke-direct {p0, p2}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;->a(Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$OAuth2Api;->getGuestToken(Ljava/lang/String;)Lf/g;

    move-result-object v0

    invoke-interface {v0, p1}, Lf/g;->a(Lf/j;)V

    .line 122
    return-void
.end method

.method b(Lcom/twitter/sdk/android/core/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/c",
            "<",
            "Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;->a:Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$OAuth2Api;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "client_credentials"

    invoke-interface {v0, v1, v2}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$OAuth2Api;->getAppAuthToken(Ljava/lang/String;Ljava/lang/String;)Lf/g;

    move-result-object v0

    .line 110
    invoke-interface {v0, p1}, Lf/g;->a(Lf/j;)V

    .line 111
    return-void
.end method
