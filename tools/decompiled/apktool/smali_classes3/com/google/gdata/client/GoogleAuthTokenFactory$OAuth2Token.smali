.class public Lcom/google/gdata/client/GoogleAuthTokenFactory$OAuth2Token;
.super Ljava/lang/Object;
.source "GoogleAuthTokenFactory.java"

# interfaces
.implements Lcom/google/gdata/client/http/HttpAuthToken;


# static fields
.field static final HEADER_PREFIX:Ljava/lang/String; = "Bearer "


# instance fields
.field final credential:Lcom/google/api/client/auth/oauth2/Credential;


# direct methods
.method public constructor <init>(Lcom/google/api/client/auth/oauth2/Credential;)V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput-object p1, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory$OAuth2Token;->credential:Lcom/google/api/client/auth/oauth2/Credential;

    .line 237
    return-void
.end method


# virtual methods
.method public getAuthorizationHeader(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Bearer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory$OAuth2Token;->credential:Lcom/google/api/client/auth/oauth2/Credential;

    invoke-virtual {v1}, Lcom/google/api/client/auth/oauth2/Credential;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public refreshToken()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory$OAuth2Token;->credential:Lcom/google/api/client/auth/oauth2/Credential;

    invoke-virtual {v0}, Lcom/google/api/client/auth/oauth2/Credential;->refreshToken()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    new-instance v1, Lcom/google/gdata/util/AuthenticationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to refresh access token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gdata/util/AuthenticationException;-><init>(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v1, v0}, Lcom/google/gdata/util/AuthenticationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 263
    throw v1
.end method
