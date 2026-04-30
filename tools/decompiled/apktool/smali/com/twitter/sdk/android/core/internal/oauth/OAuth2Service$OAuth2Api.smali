.class interface abstract Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$OAuth2Api;
.super Ljava/lang/Object;
.source "OAuth2Service.java"


# virtual methods
.method public abstract getAppAuthToken(Ljava/lang/String;Ljava/lang/String;)Lf/g;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lf/b/i;
            a = "Authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lf/b/c;
            a = "grant_type"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lf/g",
            "<",
            "Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;",
            ">;"
        }
    .end annotation

    .annotation runtime Lf/b/e;
    .end annotation

    .annotation runtime Lf/b/k;
        a = {
            "Content-Type: application/x-www-form-urlencoded;charset=UTF-8"
        }
    .end annotation

    .annotation runtime Lf/b/o;
        a = "/oauth2/token"
    .end annotation
.end method

.method public abstract getGuestToken(Ljava/lang/String;)Lf/g;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lf/b/i;
            a = "Authorization"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lf/g",
            "<",
            "Lcom/twitter/sdk/android/core/internal/oauth/a;",
            ">;"
        }
    .end annotation

    .annotation runtime Lf/b/o;
        a = "/1.1/guest/activate.json"
    .end annotation
.end method
