.class public Lorg/mortbay/jetty/security/BasicAuthenticator;
.super Ljava/lang/Object;
.source "BasicAuthenticator.java"

# interfaces
.implements Lorg/mortbay/jetty/security/Authenticator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticate(Lorg/mortbay/jetty/security/UserRealm;Ljava/lang/String;Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Ljava/security/Principal;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    const/4 v1, 0x0

    .line 50
    const-string/jumbo v0, "Authorization"

    invoke-virtual {p3, v0}, Lorg/mortbay/jetty/Request;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_1

    .line 56
    :try_start_0
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Credentials: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 57
    :cond_0
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 58
    sget-object v2, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/mortbay/jetty/security/B64Code;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 60
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 61
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-interface {p1, v3, v0, p3}, Lorg/mortbay/jetty/security/UserRealm;->authenticate(Ljava/lang/String;Ljava/lang/Object;Lorg/mortbay/jetty/Request;)Ljava/security/Principal;

    move-result-object v1

    .line 64
    if-nez v1, :cond_3

    .line 66
    const-string/jumbo v0, "AUTH FAILURE: user {}"

    invoke-static {v3}, Lorg/mortbay/util/StringUtil;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    if-eqz p4, :cond_2

    .line 83
    invoke-virtual {p0, p1, p4}, Lorg/mortbay/jetty/security/BasicAuthenticator;->sendChallenge(Lorg/mortbay/jetty/security/UserRealm;Lorg/mortbay/jetty/Response;)V

    .line 85
    :cond_2
    return-object v1

    .line 70
    :cond_3
    :try_start_1
    const-string/jumbo v0, "BASIC"

    invoke-virtual {p3, v0}, Lorg/mortbay/jetty/Request;->setAuthType(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p3, v1}, Lorg/mortbay/jetty/Request;->setUserPrincipal(Ljava/security/Principal;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 76
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "AUTH FAILURE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 77
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getAuthMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const-string/jumbo v0, "BASIC"

    return-object v0
.end method

.method public sendChallenge(Lorg/mortbay/jetty/security/UserRealm;Lorg/mortbay/jetty/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    const-string/jumbo v0, "WWW-Authenticate"

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "Basic realm=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p1}, Lorg/mortbay/jetty/security/UserRealm;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/mortbay/jetty/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/16 v0, 0x191

    invoke-virtual {p2, v0}, Lorg/mortbay/jetty/Response;->sendError(I)V

    .line 100
    return-void
.end method
