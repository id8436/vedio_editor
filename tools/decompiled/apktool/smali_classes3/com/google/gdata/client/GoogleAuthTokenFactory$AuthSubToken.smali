.class public Lcom/google/gdata/client/GoogleAuthTokenFactory$AuthSubToken;
.super Ljava/lang/Object;
.source "GoogleAuthTokenFactory.java"

# interfaces
.implements Lcom/google/gdata/client/http/HttpAuthToken;


# instance fields
.field private key:Ljava/security/PrivateKey;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/PrivateKey;)V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory$AuthSubToken;->token:Ljava/lang/String;

    .line 138
    iput-object p2, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory$AuthSubToken;->key:Ljava/security/PrivateKey;

    .line 139
    return-void
.end method


# virtual methods
.method public getAuthorizationHeader(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory$AuthSubToken;->token:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory$AuthSubToken;->key:Ljava/security/PrivateKey;

    invoke-static {v0, v1, p1, p2}, Lcom/google/gdata/client/http/AuthSubUtil;->formAuthorizationHeader(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory$AuthSubToken;->token:Ljava/lang/String;

    return-object v0
.end method
