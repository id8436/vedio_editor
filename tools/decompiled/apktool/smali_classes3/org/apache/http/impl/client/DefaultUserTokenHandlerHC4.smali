.class public Lorg/apache/http/impl/client/DefaultUserTokenHandlerHC4;
.super Ljava/lang/Object;
.source "DefaultUserTokenHandlerHC4.java"

# interfaces
.implements Lorg/apache/http/client/UserTokenHandler;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/http/impl/client/DefaultUserTokenHandlerHC4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lorg/apache/http/impl/client/DefaultUserTokenHandlerHC4;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultUserTokenHandlerHC4;-><init>()V

    sput-object v0, Lorg/apache/http/impl/client/DefaultUserTokenHandlerHC4;->INSTANCE:Lorg/apache/http/impl/client/DefaultUserTokenHandlerHC4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAuthPrincipal(Lorg/apache/http/auth/AuthStateHC4;)Ljava/security/Principal;
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p0}, Lorg/apache/http/auth/AuthStateHC4;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/auth/AuthScheme;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/apache/http/auth/AuthScheme;->isConnectionBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lorg/apache/http/auth/AuthStateHC4;->getCredentials()Lorg/apache/http/auth/Credentials;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0}, Lorg/apache/http/auth/Credentials;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getUserToken(Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 64
    invoke-static {p1}, Lorg/apache/http/client/protocol/HttpClientContext;->adapt(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/client/protocol/HttpClientContext;

    move-result-object v0

    .line 66
    const/4 v1, 0x0

    .line 68
    invoke-virtual {v0}, Lorg/apache/http/client/protocol/HttpClientContext;->getTargetAuthState()Lorg/apache/http/auth/AuthStateHC4;

    move-result-object v2

    .line 69
    if-eqz v2, :cond_0

    .line 70
    invoke-static {v2}, Lorg/apache/http/impl/client/DefaultUserTokenHandlerHC4;->getAuthPrincipal(Lorg/apache/http/auth/AuthStateHC4;)Ljava/security/Principal;

    move-result-object v1

    .line 71
    if-nez v1, :cond_0

    .line 72
    invoke-virtual {v0}, Lorg/apache/http/client/protocol/HttpClientContext;->getProxyAuthState()Lorg/apache/http/auth/AuthStateHC4;

    move-result-object v1

    .line 73
    invoke-static {v1}, Lorg/apache/http/impl/client/DefaultUserTokenHandlerHC4;->getAuthPrincipal(Lorg/apache/http/auth/AuthStateHC4;)Ljava/security/Principal;

    move-result-object v1

    .line 77
    :cond_0
    if-nez v1, :cond_1

    .line 78
    invoke-virtual {v0}, Lorg/apache/http/client/protocol/HttpClientContext;->getConnection()Lorg/apache/http/HttpConnection;

    move-result-object v0

    .line 79
    invoke-interface {v0}, Lorg/apache/http/HttpConnection;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, v0, Lorg/apache/http/conn/ManagedHttpClientConnection;

    if-eqz v2, :cond_1

    .line 80
    check-cast v0, Lorg/apache/http/conn/ManagedHttpClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedHttpClientConnection;->getSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_1

    .line 82
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
