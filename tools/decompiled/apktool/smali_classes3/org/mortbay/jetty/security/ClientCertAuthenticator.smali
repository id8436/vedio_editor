.class public Lorg/mortbay/jetty/security/ClientCertAuthenticator;
.super Ljava/lang/Object;
.source "ClientCertAuthenticator.java"

# interfaces
.implements Lorg/mortbay/jetty/security/Authenticator;


# instance fields
.field private _maxHandShakeSeconds:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/16 v0, 0x3c

    iput v0, p0, Lorg/mortbay/jetty/security/ClientCertAuthenticator;->_maxHandShakeSeconds:I

    .line 40
    return-void
.end method


# virtual methods
.method public authenticate(Lorg/mortbay/jetty/security/UserRealm;Ljava/lang/String;Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Ljava/security/Principal;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/16 v4, 0x193

    const/4 v3, 0x0

    .line 71
    const-string/jumbo v0, "javax.servlet.request.X509Certificate"

    invoke-virtual {p3, v0}, Lorg/mortbay/jetty/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    check-cast v0, [Ljava/security/cert/X509Certificate;

    .line 76
    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    aget-object v1, v0, v3

    if-nez v1, :cond_2

    .line 78
    :cond_0
    if-eqz p4, :cond_1

    .line 79
    const-string/jumbo v0, "A client certificate is required for accessing this web application but the server\'s listener is not configured for mutual authentication (or the client did not provide a certificate)."

    invoke-virtual {p4, v4, v0}, Lorg/mortbay/jetty/Response;->sendError(ILjava/lang/String;)V

    :cond_1
    move-object v0, v2

    .line 98
    :goto_0
    return-object v0

    .line 83
    :cond_2
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v1

    .line 84
    if-nez v1, :cond_3

    .line 85
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v1

    .line 86
    :cond_3
    if-nez v1, :cond_5

    const-string/jumbo v1, "clientcert"

    .line 88
    :goto_1
    invoke-interface {p1, v1, v0, p3}, Lorg/mortbay/jetty/security/UserRealm;->authenticate(Ljava/lang/String;Ljava/lang/Object;Lorg/mortbay/jetty/Request;)Ljava/security/Principal;

    move-result-object v0

    .line 89
    if-nez v0, :cond_6

    .line 91
    if-eqz p4, :cond_4

    .line 92
    const-string/jumbo v0, "The provided client certificate does not correspond to a trusted user."

    invoke-virtual {p4, v4, v0}, Lorg/mortbay/jetty/Response;->sendError(ILjava/lang/String;)V

    :cond_4
    move-object v0, v2

    .line 93
    goto :goto_0

    .line 86
    :cond_5
    invoke-interface {v1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 96
    :cond_6
    const-string/jumbo v1, "CLIENT_CERT"

    invoke-virtual {p3, v1}, Lorg/mortbay/jetty/Request;->setAuthType(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p3, v0}, Lorg/mortbay/jetty/Request;->setUserPrincipal(Ljava/security/Principal;)V

    goto :goto_0
.end method

.method public getAuthMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const-string/jumbo v0, "CLIENT_CERT"

    return-object v0
.end method

.method public getMaxHandShakeSeconds()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lorg/mortbay/jetty/security/ClientCertAuthenticator;->_maxHandShakeSeconds:I

    return v0
.end method

.method public setMaxHandShakeSeconds(I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lorg/mortbay/jetty/security/ClientCertAuthenticator;->_maxHandShakeSeconds:I

    .line 56
    return-void
.end method
