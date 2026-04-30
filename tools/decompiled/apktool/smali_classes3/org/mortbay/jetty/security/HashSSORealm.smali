.class public Lorg/mortbay/jetty/security/HashSSORealm;
.super Ljava/lang/Object;
.source "HashSSORealm.java"

# interfaces
.implements Lorg/mortbay/jetty/security/SSORealm;


# static fields
.field public static final SSO_COOKIE_NAME:Ljava/lang/String; = "SSO_ID"


# instance fields
.field private transient _random:Ljava/util/Random;

.field private _ssoId2Principal:Ljava/util/HashMap;

.field private _ssoPrincipal2Credential:Ljava/util/HashMap;

.field private _ssoUsername2Id:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/security/HashSSORealm;->_ssoId2Principal:Ljava/util/HashMap;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/security/HashSSORealm;->_ssoUsername2Id:Ljava/util/HashMap;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/security/HashSSORealm;->_ssoPrincipal2Credential:Ljava/util/HashMap;

    .line 40
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/security/HashSSORealm;->_random:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public clearSingleSignOn(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 126
    iget-object v1, p0, Lorg/mortbay/jetty/security/HashSSORealm;->_ssoId2Principal:Ljava/util/HashMap;

    monitor-enter v1

    .line 128
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/security/HashSSORealm;->_ssoUsername2Id:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 129
    iget-object v2, p0, Lorg/mortbay/jetty/security/HashSSORealm;->_ssoId2Principal:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 130
    iget-object v2, p0, Lorg/mortbay/jetty/security/HashSSORealm;->_ssoPrincipal2Credential:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    monitor-exit v1

    .line 132
    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSingleSignOn(Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Lorg/mortbay/jetty/security/Credential;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 45
    .line 46
    invoke-virtual {p1}, Lorg/mortbay/jetty/Request;->getCookies()[Ljavax/servlet/http/Cookie;

    move-result-object v1

    .line 47
    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_5

    array-length v2, v1

    if-ge v0, v2, :cond_5

    .line 49
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljavax/servlet/http/Cookie;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SSO_ID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 51
    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljavax/servlet/http/Cookie;->getValue()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 55
    :goto_1
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "get ssoID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 59
    :cond_0
    iget-object v2, p0, Lorg/mortbay/jetty/security/HashSSORealm;->_ssoId2Principal:Ljava/util/HashMap;

    monitor-enter v2

    .line 61
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/security/HashSSORealm;->_ssoId2Principal:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Principal;

    .line 62
    iget-object v1, p0, Lorg/mortbay/jetty/security/HashSSORealm;->_ssoPrincipal2Credential:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mortbay/jetty/security/Credential;

    .line 63
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "SSO principal="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 67
    :cond_1
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 70
    invoke-virtual {p1}, Lorg/mortbay/jetty/Request;->getContext()Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextHandler()Lorg/mortbay/jetty/handler/ContextHandler;

    move-result-object v2

    check-cast v2, Lorg/mortbay/jetty/webapp/WebAppContext;

    check-cast v2, Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v2}, Lorg/mortbay/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/mortbay/jetty/security/SecurityHandler;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mortbay/jetty/security/SecurityHandler;->getUserRealm()Lorg/mortbay/jetty/security/UserRealm;

    move-result-object v2

    .line 71
    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v1, p1}, Lorg/mortbay/jetty/security/UserRealm;->authenticate(Ljava/lang/String;Ljava/lang/Object;Lorg/mortbay/jetty/Request;)Ljava/security/Principal;

    move-result-object v2

    .line 72
    if-eqz v2, :cond_3

    .line 74
    invoke-virtual {p1, v2}, Lorg/mortbay/jetty/Request;->setUserPrincipal(Ljava/security/Principal;)V

    .line 87
    :goto_2
    return-object v1

    .line 47
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 63
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 79
    :cond_3
    iget-object v1, p0, Lorg/mortbay/jetty/security/HashSSORealm;->_ssoId2Principal:Ljava/util/HashMap;

    monitor-enter v1

    .line 81
    :try_start_2
    iget-object v2, p0, Lorg/mortbay/jetty/security/HashSSORealm;->_ssoId2Principal:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v2, p0, Lorg/mortbay/jetty/security/HashSSORealm;->_ssoPrincipal2Credential:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v2, p0, Lorg/mortbay/jetty/security/HashSSORealm;->_ssoUsername2Id:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    monitor-exit v1

    :cond_4
    move-object v1, v4

    .line 87
    goto :goto_2

    .line 84
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_5
    move-object v3, v4

    goto/16 :goto_1
.end method

.method public setSingleSignOn(Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;Ljava/security/Principal;Lorg/mortbay/jetty/security/Credential;)V
    .locals 8

    .prologue
    .line 98
    .line 100
    iget-object v1, p0, Lorg/mortbay/jetty/security/HashSSORealm;->_ssoId2Principal:Ljava/util/HashMap;

    monitor-enter v1

    .line 105
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/security/HashSSORealm;->_random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x7

    rem-long/2addr v4, v6

    long-to-int v0, v4

    add-int/lit8 v0, v0, 0x1e

    invoke-static {v2, v3, v0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    .line 107
    iget-object v2, p0, Lorg/mortbay/jetty/security/HashSSORealm;->_ssoId2Principal:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 111
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "set ssoID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 112
    :cond_1
    iget-object v2, p0, Lorg/mortbay/jetty/security/HashSSORealm;->_ssoId2Principal:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v2, p0, Lorg/mortbay/jetty/security/HashSSORealm;->_ssoPrincipal2Credential:Ljava/util/HashMap;

    invoke-virtual {v2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v2, p0, Lorg/mortbay/jetty/security/HashSSORealm;->_ssoUsername2Id:Ljava/util/HashMap;

    invoke-interface {p3}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    new-instance v1, Ljavax/servlet/http/Cookie;

    const-string/jumbo v2, "SSO_ID"

    invoke-direct {v1, v2, v0}, Ljavax/servlet/http/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string/jumbo v0, "/"

    invoke-virtual {v1, v0}, Ljavax/servlet/http/Cookie;->setPath(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2, v1}, Lorg/mortbay/jetty/Response;->addCookie(Ljavax/servlet/http/Cookie;)V

    .line 120
    return-void

    .line 115
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
