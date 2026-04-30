.class public abstract Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;
.super Lorg/mortbay/component/AbstractLifeCycle;
.source "AbstractSessionIdManager.java"

# interfaces
.implements Lorg/mortbay/jetty/SessionIdManager;


# static fields
.field private static final __NEW_SESSION_ID:Ljava/lang/String; = "org.mortbay.jetty.newSessionId"


# instance fields
.field protected _random:Ljava/util/Random;

.field protected _server:Lorg/mortbay/jetty/Server;

.field protected _weakRandom:Z

.field protected _workerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/Server;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_server:Lorg/mortbay/jetty/Server;

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/mortbay/jetty/Server;Ljava/util/Random;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;-><init>()V

    .line 45
    iput-object p2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_random:Ljava/util/Random;

    .line 46
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_server:Lorg/mortbay/jetty/Server;

    .line 47
    return-void
.end method


# virtual methods
.method public doStart()V
    .locals 0

    .prologue
    .line 126
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->initRandom()V

    .line 127
    return-void
.end method

.method public getRandom()Ljava/util/Random;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_random:Ljava/util/Random;

    return-object v0
.end method

.method public getWorkerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_workerName:Ljava/lang/String;

    return-object v0
.end method

.method public initRandom()V
    .locals 6

    .prologue
    .line 136
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_random:Ljava/util/Random;

    if-nez v0, :cond_0

    .line 140
    :try_start_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_random:Ljava/util/Random;

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_weakRandom:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_random:Ljava/util/Random;

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    xor-long/2addr v2, v4

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    int-to-long v4, v1

    xor-long/2addr v2, v4

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    xor-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/Random;->setSeed(J)V

    .line 151
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 145
    const-string/jumbo v1, "Could not generate SecureRandom for session-id randomness"

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_random:Ljava/util/Random;

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_weakRandom:Z

    goto :goto_0
.end method

.method public newSessionId(Ljavax/servlet/http/HttpServletRequest;J)Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/16 v6, 0x20

    .line 78
    monitor-enter p0

    .line 81
    :try_start_0
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestedSessionId()Ljava/lang/String;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->getClusterId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->idInUse(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    monitor-exit p0

    .line 120
    :goto_0
    return-object v0

    .line 90
    :cond_0
    const-string/jumbo v0, "org.mortbay.jetty.newSessionId"

    invoke-interface {p1, v0}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->idInUse(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    monitor-exit p0

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 97
    :cond_1
    const/4 v0, 0x0

    .line 98
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->idInUse(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 100
    :cond_3
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_weakRandom:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    xor-long/2addr v0, v2

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    int-to-long v2, v2

    xor-long/2addr v0, v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v6

    xor-long/2addr v0, v2

    .line 103
    :goto_2
    cmp-long v2, v0, v8

    if-gez v2, :cond_8

    .line 104
    neg-long v0, v0

    move-wide v2, v0

    .line 105
    :goto_3
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_weakRandom:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    xor-long/2addr v0, v4

    iget-object v4, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_random:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    int-to-long v4, v4

    xor-long/2addr v0, v4

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    int-to-long v4, v4

    shl-long/2addr v4, v6

    xor-long/2addr v0, v4

    .line 108
    :goto_4
    cmp-long v4, v0, v8

    if-gez v4, :cond_4

    .line 109
    neg-long v0, v0

    .line 110
    :cond_4
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v5, 0x24

    invoke-static {v2, v3, v5}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x24

    invoke-static {v0, v1, v3}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_workerName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 115
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_workerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 100
    :cond_5
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    goto :goto_2

    .line 105
    :cond_6
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    goto :goto_4

    .line 119
    :cond_7
    const-string/jumbo v1, "org.mortbay.jetty.newSessionId"

    invoke-interface {p1, v1, v0}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_8
    move-wide v2, v0

    goto :goto_3
.end method

.method public setRandom(Ljava/util/Random;)V
    .locals 1

    .prologue
    .line 68
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_random:Ljava/util/Random;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_weakRandom:Z

    .line 70
    return-void
.end method

.method public setWorkerName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_workerName:Ljava/lang/String;

    .line 57
    return-void
.end method
