.class public Lorg/mortbay/jetty/servlet/HashSessionManager;
.super Lorg/mortbay/jetty/servlet/AbstractSessionManager;
.source "HashSessionManager.java"


# instance fields
.field private _lazyLoad:Z

.field private _savePeriodMs:I

.field private _saveTask:Ljava/util/TimerTask;

.field private _scavengePeriodMs:I

.field protected _sessions:Ljava/util/Map;

.field private _sessionsLoaded:Z

.field private _storeDir:Ljava/io/File;

.field private _task:Ljava/util/TimerTask;

.field private _timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;-><init>()V

    .line 48
    const/16 v0, 0x7530

    iput v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_scavengePeriodMs:I

    .line 49
    iput v1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_savePeriodMs:I

    .line 53
    iput-boolean v1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_lazyLoad:Z

    .line 54
    iput-boolean v1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_sessionsLoaded:Z

    .line 60
    return-void
.end method

.method static access$000(Lorg/mortbay/jetty/servlet/HashSessionManager;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/mortbay/jetty/servlet/HashSessionManager;->scavenge()V

    return-void
.end method

.method static access$100(Lorg/mortbay/jetty/servlet/HashSessionManager;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_scavengePeriodMs:I

    return v0
.end method

.method static access$200(Lorg/mortbay/jetty/servlet/HashSessionManager;)Ljava/io/File;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_storeDir:Ljava/io/File;

    return-object v0
.end method

.method private scavenge()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    .line 235
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/HashSessionManager;->isStopping()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/HashSessionManager;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 239
    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 242
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_loader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_2

    .line 243
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_loader:Ljava/lang/ClassLoader;

    invoke-virtual {v3, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 245
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    .line 249
    :try_start_1
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_sessionsLoaded:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_lazyLoad:Z

    if-eqz v0, :cond_3

    .line 250
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/HashSessionManager;->restoreSessions()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    :cond_3
    :goto_1
    const/4 v1, 0x0

    .line 262
    :try_start_2
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 265
    :try_start_3
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_sessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 267
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;

    .line 268
    iget-wide v8, v0, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->_maxIdleMs:J

    .line 269
    cmp-long v5, v8, v12

    if-lez v5, :cond_8

    iget-wide v10, v0, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->_accessed:J

    add-long/2addr v8, v10

    cmp-long v5, v8, v6

    if-gez v5, :cond_8

    .line 272
    invoke-static {v1, v0}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    :goto_3
    move-object v1, v0

    .line 274
    goto :goto_2

    .line 252
    :catch_0
    move-exception v0

    .line 254
    :try_start_4
    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 292
    :catch_1
    move-exception v0

    .line 294
    :try_start_5
    instance-of v1, v0, Ljava/lang/ThreadDeath;

    if-eqz v1, :cond_7

    .line 295
    check-cast v0, Ljava/lang/ThreadDeath;

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 301
    :catchall_0
    move-exception v0

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    throw v0

    .line 275
    :cond_4
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 278
    :try_start_7
    invoke-static {v1}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    :goto_4
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_6

    .line 281
    invoke-static {v1, v2}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;

    .line 282
    iget-wide v6, v0, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->_maxIdleMs:J

    .line 283
    cmp-long v5, v6, v12

    if-lez v5, :cond_5

    iget-wide v8, v0, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->_accessed:J

    add-long/2addr v6, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-gez v5, :cond_5

    .line 285
    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->timeout()V

    .line 286
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_sessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 287
    iget v5, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_minSessions:I

    if-ge v0, v5, :cond_5

    .line 288
    iput v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_minSessions:I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_5
    move v0, v2

    .line 290
    goto :goto_4

    .line 275
    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 301
    :cond_6
    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    goto/16 :goto_0

    .line 297
    :cond_7
    :try_start_a
    const-string/jumbo v1, "Problem scavenging sessions"

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 301
    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    goto/16 :goto_0

    :cond_8
    move-object v0, v1

    goto :goto_3
.end method


# virtual methods
.method protected addSession(Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;)V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_sessions:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->getClusterId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    return-void
.end method

.method public doStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_sessions:Ljava/util/Map;

    .line 69
    invoke-super {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->doStart()V

    .line 71
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_timer:Ljava/util/Timer;

    .line 73
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/HashSessionManager;->getScavengePeriod()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/HashSessionManager;->setScavengePeriod(I)V

    .line 75
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_storeDir:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 80
    :cond_0
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_lazyLoad:Z

    if-nez v0, :cond_1

    .line 81
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/HashSessionManager;->restoreSessions()V

    .line 84
    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/HashSessionManager;->getSavePeriod()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/HashSessionManager;->setSavePeriod(I)V

    .line 85
    return-void
.end method

.method public doStop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 94
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_storeDir:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/HashSessionManager;->saveSessions()V

    .line 97
    :cond_0
    invoke-super {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->doStop()V

    .line 99
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_sessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 100
    iput-object v1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_sessions:Ljava/util/Map;

    .line 103
    monitor-enter p0

    .line 105
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_saveTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_saveTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 107
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_task:Ljava/util/TimerTask;

    if-eqz v0, :cond_2

    .line 108
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_task:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 109
    :cond_2
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_timer:Ljava/util/Timer;

    if-eqz v0, :cond_3

    .line 110
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 111
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_timer:Ljava/util/Timer;

    .line 112
    monitor-exit p0

    .line 113
    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSavePeriod()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_savePeriodMs:I

    if-gtz v0, :cond_0

    .line 188
    const/4 v0, 0x0

    .line 190
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_savePeriodMs:I

    div-int/lit16 v0, v0, 0x3e8

    goto :goto_0
.end method

.method public getScavengePeriod()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_scavengePeriodMs:I

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public getSession(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;
    .locals 1

    .prologue
    .line 316
    :try_start_0
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_sessionsLoaded:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_lazyLoad:Z

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/HashSessionManager;->restoreSessions()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_sessions:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 325
    const/4 v0, 0x0

    .line 327
    :goto_1
    return-object v0

    .line 319
    :catch_0
    move-exception v0

    .line 321
    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 327
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_sessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;

    goto :goto_1
.end method

.method public getSessionMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_sessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSessions()I
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_sessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getStoreDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_storeDir:Ljava/io/File;

    return-object v0
.end method

.method protected invalidateSessions()V
    .locals 2

    .prologue
    .line 334
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_sessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 335
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;

    .line 338
    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->invalidate()V

    goto :goto_0

    .line 340
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_sessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 342
    return-void
.end method

.method public isLazyLoad()Z
    .locals 1

    .prologue
    .line 377
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_lazyLoad:Z

    return v0
.end method

.method protected newSession(Ljavax/servlet/http/HttpServletRequest;)Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;
    .locals 1

    .prologue
    .line 347
    new-instance v0, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;

    invoke-direct {v0, p0, p1}, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;-><init>(Lorg/mortbay/jetty/servlet/HashSessionManager;Ljavax/servlet/http/HttpServletRequest;)V

    return-object v0
.end method

.method protected removeSession(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_sessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    return-void
.end method

.method public restoreSession(Ljava/io/FileInputStream;)Lorg/mortbay/jetty/servlet/HashSessionManager$Session;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 464
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 465
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 466
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 467
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readBoolean()Z

    .line 468
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    .line 469
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    .line 470
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    .line 471
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    .line 476
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    .line 478
    new-instance v3, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;

    invoke-direct {v3, p0, v4, v5, v1}, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;-><init>(Lorg/mortbay/jetty/servlet/HashSessionManager;JLjava/lang/String;)V

    .line 479
    iput-wide v6, v3, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->_cookieSet:J

    .line 480
    iput-wide v8, v3, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->_lastAccessed:J

    .line 482
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 483
    if-lez v4, :cond_2

    .line 485
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 486
    :goto_0
    if-ge v1, v4, :cond_0

    .line 488
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    .line 489
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 491
    :cond_0
    new-instance v6, Lorg/mortbay/jetty/servlet/HashSessionManager$ClassLoadingObjectInputStream;

    invoke-direct {v6, p0, v2}, Lorg/mortbay/jetty/servlet/HashSessionManager$ClassLoadingObjectInputStream;-><init>(Lorg/mortbay/jetty/servlet/HashSessionManager;Ljava/io/InputStream;)V

    move v1, v0

    .line 492
    :goto_1
    if-ge v1, v4, :cond_1

    .line 494
    invoke-virtual {v6}, Lorg/mortbay/jetty/servlet/HashSessionManager$ClassLoadingObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v7

    .line 495
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0, v7}, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 492
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 497
    :cond_1
    invoke-virtual {v6}, Lorg/mortbay/jetty/servlet/HashSessionManager$ClassLoadingObjectInputStream;->close()V

    .line 501
    :goto_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 502
    return-object v3

    .line 500
    :cond_2
    invoke-virtual {v3}, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->initValues()V

    goto :goto_2
.end method

.method public restoreSessions()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 383
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_storeDir:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_2

    .line 390
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "Unable to restore Sessions: Cannot read from Session storage directory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 394
    :cond_2
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    move v1, v0

    .line 395
    :goto_1
    if-eqz v2, :cond_3

    array-length v0, v2

    if-ge v1, v0, :cond_3

    .line 399
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    aget-object v3, v2, v1

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 400
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/HashSessionManager;->restoreSession(Ljava/io/FileInputStream;)Lorg/mortbay/jetty/servlet/HashSessionManager$Session;

    move-result-object v3

    .line 401
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 402
    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lorg/mortbay/jetty/servlet/HashSessionManager;->addSession(Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;Z)V

    .line 403
    aget-object v0, v2, v1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 405
    :catch_0
    move-exception v0

    .line 407
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "Problem restoring session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 411
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_sessionsLoaded:Z

    goto :goto_0
.end method

.method public saveSessions()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 417
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_storeDir:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_2

    .line 424
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "Unable to save Sessions: Session persistence storage directory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " is not writeable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 428
    :cond_2
    monitor-enter p0

    .line 430
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_sessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 431
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 433
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 434
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 435
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    :try_start_1
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 439
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 440
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 441
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 442
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 443
    invoke-virtual {v0, v4}, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->save(Ljava/io/FileOutputStream;)V

    .line 444
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 446
    :catch_0
    move-exception v0

    .line 448
    :try_start_2
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "Problem persisting session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 451
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public setLazyLoad(Z)V
    .locals 0

    .prologue
    .line 371
    iput-boolean p1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_lazyLoad:Z

    .line 372
    return-void
.end method

.method public setMaxInactiveInterval(I)V
    .locals 2

    .prologue
    .line 142
    invoke-super {p0, p1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->setMaxInactiveInterval(I)V

    .line 143
    iget v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_dftMaxIdleSecs:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_scavengePeriodMs:I

    iget v1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_dftMaxIdleSecs:I

    mul-int/lit16 v1, v1, 0x3e8

    if-le v0, v1, :cond_0

    .line 144
    iget v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_dftMaxIdleSecs:I

    add-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/HashSessionManager;->setScavengePeriod(I)V

    .line 145
    :cond_0
    return-void
.end method

.method public setSavePeriod(I)V
    .locals 6

    .prologue
    .line 150
    iget v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_savePeriodMs:I

    .line 151
    mul-int/lit16 v0, p1, 0x3e8

    .line 152
    if-gez v0, :cond_0

    .line 153
    const/4 v0, 0x0

    .line 154
    :cond_0
    iput v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_savePeriodMs:I

    .line 156
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_timer:Ljava/util/Timer;

    if-eqz v0, :cond_3

    .line 158
    monitor-enter p0

    .line 160
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_saveTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_saveTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 162
    :cond_1
    iget v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_savePeriodMs:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_storeDir:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 164
    new-instance v0, Lorg/mortbay/jetty/servlet/HashSessionManager$1;

    invoke-direct {v0, p0}, Lorg/mortbay/jetty/servlet/HashSessionManager$1;-><init>(Lorg/mortbay/jetty/servlet/HashSessionManager;)V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_saveTask:Ljava/util/TimerTask;

    .line 178
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_timer:Ljava/util/Timer;

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_saveTask:Ljava/util/TimerTask;

    iget v2, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_savePeriodMs:I

    int-to-long v2, v2

    iget v4, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_savePeriodMs:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 180
    :cond_2
    monitor-exit p0

    .line 182
    :cond_3
    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setScavengePeriod(I)V
    .locals 6

    .prologue
    const v1, 0xea60

    const/16 v0, 0x3e8

    .line 198
    if-nez p1, :cond_0

    .line 199
    const/16 p1, 0x3c

    .line 201
    :cond_0
    iget v3, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_scavengePeriodMs:I

    .line 202
    mul-int/lit16 v2, p1, 0x3e8

    .line 203
    if-le v2, v1, :cond_5

    .line 205
    :goto_0
    if-ge v1, v0, :cond_4

    .line 208
    :goto_1
    iput v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_scavengePeriodMs:I

    .line 209
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_timer:Ljava/util/Timer;

    if-eqz v1, :cond_3

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_task:Ljava/util/TimerTask;

    if-nez v0, :cond_3

    .line 211
    :cond_1
    monitor-enter p0

    .line 213
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_task:Ljava/util/TimerTask;

    if-eqz v0, :cond_2

    .line 214
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_task:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 215
    :cond_2
    new-instance v0, Lorg/mortbay/jetty/servlet/HashSessionManager$2;

    invoke-direct {v0, p0}, Lorg/mortbay/jetty/servlet/HashSessionManager$2;-><init>(Lorg/mortbay/jetty/servlet/HashSessionManager;)V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_task:Ljava/util/TimerTask;

    .line 222
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_timer:Ljava/util/Timer;

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_task:Ljava/util/TimerTask;

    iget v2, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_scavengePeriodMs:I

    int-to-long v2, v2

    iget v4, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_scavengePeriodMs:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 223
    monitor-exit p0

    .line 225
    :cond_3
    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method public setStoreDirectory(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_storeDir:Ljava/io/File;

    .line 360
    return-void
.end method
