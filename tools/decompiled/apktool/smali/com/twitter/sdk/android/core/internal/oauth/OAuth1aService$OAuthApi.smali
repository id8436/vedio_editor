.class interface abstract Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService$OAuthApi;
.super Ljava/lang/Object;
.source "OAuth1aService.java"


# virtual methods
.method public abstract getAccessToken(Ljava/lang/String;Ljava/lang/String;)Lf/g;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lf/b/i;
            a = "Authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lf/b/t;
            a = "oauth_verifier"
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
            "Ld/bf;",
            ">;"
        }
    .end annotation

    .annotation runtime Lf/b/o;
        a = "/oauth/access_token"
    .end annotation
.end method

.method public abstract getTempToken(Ljava/lang/String;)Lf/g;
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
            "Ld/bf;",
            ">;"
        }
    .end annotation

    .annotation runtime Lf/b/o;
        a = "/oauth/request_token"
    .end annotation
.end method
