.class public Lcom/google/gdata/client/GoogleAuthTokenFactory$OAuthToken;
.super Ljava/lang/Object;
.source "GoogleAuthTokenFactory.java"

# interfaces
.implements Lcom/google/gdata/client/http/HttpAuthToken;


# instance fields
.field parameters:Lcom/google/gdata/client/authn/oauth/OAuthParameters;

.field final signer:Lcom/google/gdata/client/authn/oauth/OAuthSigner;


# direct methods
.method public constructor <init>(Lcom/google/gdata/client/authn/oauth/OAuthParameters;Lcom/google/gdata/client/authn/oauth/OAuthSigner;)V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory$OAuthToken;->parameters:Lcom/google/gdata/client/authn/oauth/OAuthParameters;

    .line 190
    iput-object p2, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory$OAuthToken;->signer:Lcom/google/gdata/client/authn/oauth/OAuthSigner;

    .line 191
    return-void
.end method


# virtual methods
.method public getAuthorizationHeader(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory$OAuthToken;->parameters:Lcom/google/gdata/client/authn/oauth/OAuthParameters;

    invoke-virtual {v0}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->getOAuthType()Lcom/google/gdata/client/authn/oauth/OAuthParameters$OAuthType;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/client/authn/oauth/OAuthParameters$OAuthType;->TWO_LEGGED_OAUTH:Lcom/google/gdata/client/authn/oauth/OAuthParameters$OAuthType;

    if-ne v0, v1, :cond_0

    .line 204
    new-instance v0, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;

    iget-object v1, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory$OAuthToken;->signer:Lcom/google/gdata/client/authn/oauth/OAuthSigner;

    iget-object v2, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory$OAuthToken;->parameters:Lcom/google/gdata/client/authn/oauth/OAuthParameters;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;-><init>(Lcom/google/gdata/client/authn/oauth/OAuthSigner;Lcom/google/gdata/client/authn/oauth/OAuthParameters;)V

    .line 206
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->getAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    :goto_0
    return-object v0

    .line 209
    :cond_0
    new-instance v0, Lcom/google/gdata/client/authn/oauth/GoogleOAuthHelper;

    iget-object v1, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory$OAuthToken;->signer:Lcom/google/gdata/client/authn/oauth/OAuthSigner;

    invoke-direct {v0, v1}, Lcom/google/gdata/client/authn/oauth/GoogleOAuthHelper;-><init>(Lcom/google/gdata/client/authn/oauth/OAuthSigner;)V

    .line 210
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory$OAuthToken;->parameters:Lcom/google/gdata/client/authn/oauth/OAuthParameters;

    invoke-virtual {v0, v1, p2, v2}, Lcom/google/gdata/client/authn/oauth/GoogleOAuthHelper;->getAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/client/authn/oauth/OAuthParameters;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/gdata/client/authn/oauth/OAuthException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
