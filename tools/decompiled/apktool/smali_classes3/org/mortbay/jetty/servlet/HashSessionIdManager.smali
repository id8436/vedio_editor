.class public Lorg/mortbay/jetty/servlet/HashSessionIdManager;
.super Lorg/mortbay/component/AbstractLifeCycle;
.source "HashSessionIdManager.java"

# interfaces
.implements Lorg/mortbay/jetty/SessionIdManager;


# static fields
.field private static final __NEW_SESSION_ID:Ljava/lang/String; = "org.mortbay.jetty.newSessionId"


# instance fields
.field protected _random:Ljava/util/Random;

.field _sessions:Lorg/mortbay/util/MultiMap;

.field private _weakRandom:Z

.field private _workerName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/util/Random;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_random:Ljava/util/Random;

    .line 53
    return-void
.end method


# virtual methods
.method public addSession(Ljavax/servlet/http/HttpSession;)V
    .locals 2

    .prologue
    .line 155
    monitor-enter p0

    .line 157
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_sessions:Lorg/mortbay/util/MultiMap;

    invoke-interface {p1}, Ljavax/servlet/http/HttpSession;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->getClusterId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    monitor-exit p0

    .line 159
    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected doStart()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_random:Ljava/util/Random;

    if-nez v0, :cond_0

    .line 119
    :try_start_0
    const-string/jumbo v0, "Init SecureRandom."

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 120
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_random:Ljava/util/Random;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_0
    :goto_0
    new-instance v0, Lorg/mortbay/util/MultiMap;

    invoke-direct {v0}, Lorg/mortbay/util/MultiMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_sessions:Lorg/mortbay/util/MultiMap;

    .line 130
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 124
    const-string/jumbo v1, "Could not generate SecureRandom for session-id randomness"

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_random:Ljava/util/Random;

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_weakRandom:Z

    goto :goto_0
.end method

.method protected doStop()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_sessions:Lorg/mortbay/util/MultiMap;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_sessions:Lorg/mortbay/util/MultiMap;

    invoke-virtual {v0}, Lorg/mortbay/util/MultiMap;->clear()V

    .line 137
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_sessions:Lorg/mortbay/util/MultiMap;

    .line 138
    return-void
.end method

.method public getClusterId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 106
    if-lez v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getNodeId(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x2e

    .line 87
    if-nez p2, :cond_1

    const/4 v0, 0x0

    .line 88
    :goto_0
    if-eqz v0, :cond_2

    .line 89
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 94
    :cond_0
    :goto_1
    return-object p1

    .line 87
    :cond_1
    const-string/jumbo v0, "org.mortbay.http.ajp.JVMRoute"

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 91
    :cond_2
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_workerName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_workerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method public getRandom()Ljava/util/Random;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_random:Ljava/util/Random;

    return-object v0
.end method

.method public getWorkerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_workerName:Ljava/lang/String;

    return-object v0
.end method

.method public idInUse(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_sessions:Lorg/mortbay/util/MultiMap;

    invoke-virtual {v0, p1}, Lorg/mortbay/util/MultiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public invalidateAll(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 181
    .line 182
    :cond_0
    :goto_0
    monitor-enter p0

    .line 184
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_sessions:Lorg/mortbay/util/MultiMap;

    invoke-virtual {v0, p1}, Lorg/mortbay/util/MultiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_sessions:Lorg/mortbay/util/MultiMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/mortbay/util/MultiMap;->getValue(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;

    .line 187
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_sessions:Lorg/mortbay/util/MultiMap;

    invoke-virtual {v1, p1, v0}, Lorg/mortbay/util/MultiMap;->removeValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 191
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->invalidate()V

    goto :goto_0

    .line 190
    :cond_1
    :try_start_1
    monitor-exit p0

    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public newSessionId(Ljavax/servlet/http/HttpServletRequest;J)Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 208
    monitor-enter p0

    .line 211
    :try_start_0
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestedSessionId()Ljava/lang/String;

    move-result-object v0

    .line 213
    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->getClusterId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->idInUse(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    monitor-exit p0

    .line 245
    :goto_0
    return-object v0

    .line 221
    :cond_0
    const-string/jumbo v0, "org.mortbay.jetty.newSessionId"

    invoke-interface {p1, v0}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 222
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->idInUse(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    monitor-exit p0

    goto :goto_0

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 226
    :cond_1
    const/4 v0, 0x0

    .line 227
    :goto_1
    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->idInUse(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 229
    :cond_2
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_weakRandom:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    xor-long/2addr v0, v2

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    int-to-long v2, v2

    xor-long/2addr v0, v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    xor-long/2addr v2, v0

    .line 232
    :goto_2
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    .line 233
    cmp-long v4, v2, v6

    if-gez v4, :cond_3

    .line 234
    neg-long v2, v2

    .line 235
    :cond_3
    cmp-long v4, v0, v6

    if-gez v4, :cond_4

    .line 236
    neg-long v0, v0

    .line 237
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

    goto :goto_1

    .line 229
    :cond_5
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    goto :goto_2

    .line 241
    :cond_6
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_workerName:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 242
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_workerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    :cond_7
    const-string/jumbo v1, "org.mortbay.jetty.newSessionId"

    invoke-interface {p1, v1, v0}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 245
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public removeSession(Ljavax/servlet/http/HttpSession;)V
    .locals 2

    .prologue
    .line 167
    monitor-enter p0

    .line 169
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_sessions:Lorg/mortbay/util/MultiMap;

    invoke-interface {p1}, Ljavax/servlet/http/HttpSession;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->getClusterId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/mortbay/util/MultiMap;->removeValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 170
    monitor-exit p0

    .line 171
    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRandom(Ljava/util/Random;)V
    .locals 1

    .prologue
    .line 258
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_random:Ljava/util/Random;

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_weakRandom:Z

    .line 260
    return-void
.end method

.method public setWorkerName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_workerName:Ljava/lang/String;

    .line 77
    return-void
.end method
