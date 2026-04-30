.class public abstract Ljavax/mail/Service;
.super Ljava/lang/Object;
.source "Service.java"


# instance fields
.field private connected:Z

.field private connectionListeners:Ljava/util/Vector;

.field protected debug:Z

.field private q:Ljavax/mail/EventQueue;

.field private qLock:Ljava/lang/Object;

.field protected session:Ljavax/mail/Session;

.field protected url:Ljavax/mail/URLName;


# direct methods
.method protected constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    .line 65
    iput-boolean v0, p0, Ljavax/mail/Service;->debug:Z

    .line 67
    iput-boolean v0, p0, Ljavax/mail/Service;->connected:Z

    .line 68
    iput-object v1, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    .line 542
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/mail/Service;->qLock:Ljava/lang/Object;

    .line 77
    iput-object p1, p0, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    .line 78
    iput-object p2, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    .line 79
    invoke-virtual {p1}, Ljavax/mail/Session;->getDebug()Z

    move-result v0

    iput-boolean v0, p0, Ljavax/mail/Service;->debug:Z

    .line 80
    return-void
.end method

.method private terminateQueue()V
    .locals 4

    .prologue
    .line 581
    iget-object v1, p0, Ljavax/mail/Service;->qLock:Ljava/lang/Object;

    monitor-enter v1

    .line 582
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    if-eqz v0, :cond_0

    .line 583
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 584
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->setSize(I)V

    .line 585
    iget-object v2, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    new-instance v3, Ljavax/mail/Service$TerminatorEvent;

    invoke-direct {v3}, Ljavax/mail/Service$TerminatorEvent;-><init>()V

    invoke-virtual {v2, v3, v0}, Ljavax/mail/EventQueue;->enqueue(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 586
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    .line 588
    :cond_0
    monitor-exit v1

    .line 589
    return-void

    .line 588
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addConnectionListener(Ljavax/mail/event/ConnectionListener;)V
    .locals 1

    .prologue
    .line 470
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 471
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    .line 472
    :cond_0
    iget-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    monitor-exit p0

    return-void

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 412
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Ljavax/mail/Service;->setConnected(Z)V

    .line 413
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljavax/mail/Service;->notifyConnectionListeners(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    monitor-exit p0

    return-void

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, v0, v0, v0}, Ljavax/mail/Service;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public connect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-virtual {p0}, Ljavax/mail/Service;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "already connected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 201
    :cond_0
    const/4 v13, 0x0

    .line 202
    const/4 v8, 0x0

    .line 203
    const/4 v2, 0x0

    .line 204
    const/4 v5, 0x0

    .line 209
    iget-object v1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    if-eqz v1, :cond_11

    .line 210
    iget-object v1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v1}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object v2

    .line 211
    if-nez p1, :cond_10

    .line 212
    iget-object v1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v1}, Ljavax/mail/URLName;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 213
    :goto_0
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_f

    .line 214
    iget-object v1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v1}, Ljavax/mail/URLName;->getPort()I

    move-result v4

    .line 216
    :goto_1
    if-nez p3, :cond_7

    .line 217
    iget-object v1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v1}, Ljavax/mail/URLName;->getUsername()Ljava/lang/String;

    move-result-object p3

    .line 218
    if-nez p4, :cond_1

    .line 219
    iget-object v1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v1}, Ljavax/mail/URLName;->getPassword()Ljava/lang/String;

    move-result-object p4

    .line 226
    :cond_1
    :goto_2
    iget-object v1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v1}, Ljavax/mail/URLName;->getFile()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v7, p4

    move-object/from16 v6, p3

    .line 230
    :goto_3
    if-eqz v2, :cond_3

    .line 231
    if-nez v3, :cond_2

    .line 232
    iget-object v1, p0, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v9, "mail."

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v9, ".host"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 233
    :cond_2
    if-nez v6, :cond_3

    .line 234
    iget-object v1, p0, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v9, "mail."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string/jumbo v9, ".user"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 238
    :cond_3
    if-nez v3, :cond_4

    .line 239
    iget-object v1, p0, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    const-string/jumbo v3, "mail.host"

    invoke-virtual {v1, v3}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 241
    :cond_4
    if-nez v6, :cond_5

    .line 242
    iget-object v1, p0, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    const-string/jumbo v6, "mail.user"

    invoke-virtual {v1, v6}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 245
    :cond_5
    if-nez v6, :cond_6

    .line 247
    :try_start_0
    const-string/jumbo v1, "user.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 255
    :cond_6
    :goto_4
    if-nez v7, :cond_e

    iget-object v1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    if-eqz v1, :cond_e

    .line 257
    new-instance v1, Ljavax/mail/URLName;

    invoke-direct/range {v1 .. v7}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljavax/mail/Service;->setURLName(Ljavax/mail/URLName;)V

    .line 258
    iget-object v1, p0, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    invoke-virtual {p0}, Ljavax/mail/Service;->getURLName()Ljavax/mail/URLName;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljavax/mail/Session;->getPasswordAuthentication(Ljavax/mail/URLName;)Ljavax/mail/PasswordAuthentication;

    move-result-object v1

    .line 259
    if-eqz v1, :cond_9

    .line 260
    if-nez v6, :cond_8

    .line 261
    invoke-virtual {v1}, Ljavax/mail/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v6

    .line 262
    invoke-virtual {v1}, Ljavax/mail/PasswordAuthentication;->getPassword()Ljava/lang/String;

    move-result-object v7

    move v12, v8

    move-object v1, v7

    move-object v11, v6

    .line 273
    :goto_5
    const/4 v6, 0x0

    .line 275
    :try_start_1
    invoke-virtual {p0, v3, v4, v11, v1}, Ljavax/mail/Service;->protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljavax/mail/AuthenticationFailedException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v13

    move-object v14, v6

    .line 281
    :goto_6
    if-nez v13, :cond_d

    .line 284
    :try_start_2
    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v7

    .line 288
    :goto_7
    iget-object v6, p0, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    const/4 v10, 0x0

    move v8, v4

    move-object v9, v2

    invoke-virtual/range {v6 .. v11}, Ljavax/mail/Session;->requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/PasswordAuthentication;

    move-result-object v6

    .line 292
    if-eqz v6, :cond_d

    .line 293
    invoke-virtual {v6}, Ljavax/mail/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v11

    .line 294
    invoke-virtual {v6}, Ljavax/mail/PasswordAuthentication;->getPassword()Ljava/lang/String;

    move-result-object v7

    .line 297
    invoke-virtual {p0, v3, v4, v11, v7}, Ljavax/mail/Service;->protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    move-object v6, v11

    .line 302
    :goto_8
    if-nez v1, :cond_b

    .line 303
    if-eqz v14, :cond_a

    .line 304
    throw v14

    .line 221
    :cond_7
    if-nez p4, :cond_1

    iget-object v1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v1}, Ljavax/mail/URLName;->getUsername()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    iget-object v1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v1}, Ljavax/mail/URLName;->getPassword()Ljava/lang/String;

    move-result-object p4

    goto/16 :goto_2

    .line 248
    :catch_0
    move-exception v1

    .line 249
    iget-boolean v9, p0, Ljavax/mail/Service;->debug:Z

    if-eqz v9, :cond_6

    .line 250
    iget-object v9, p0, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    invoke-virtual {v9}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/SecurityException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_4

    .line 263
    :cond_8
    invoke-virtual {v1}, Ljavax/mail/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 264
    invoke-virtual {v1}, Ljavax/mail/PasswordAuthentication;->getPassword()Ljava/lang/String;

    move-result-object v7

    move v12, v8

    move-object v1, v7

    move-object v11, v6

    .line 265
    goto :goto_5

    .line 267
    :cond_9
    const/4 v1, 0x1

    move v12, v1

    move-object v11, v6

    move-object v1, v7

    goto :goto_5

    .line 276
    :catch_1
    move-exception v6

    move-object v14, v6

    .line 277
    goto :goto_6

    .line 285
    :catch_2
    move-exception v6

    .line 286
    const/4 v7, 0x0

    goto :goto_7

    .line 306
    :cond_a
    new-instance v1, Ljavax/mail/AuthenticationFailedException;

    invoke-direct {v1}, Ljavax/mail/AuthenticationFailedException;-><init>()V

    throw v1

    .line 309
    :cond_b
    new-instance v1, Ljavax/mail/URLName;

    invoke-direct/range {v1 .. v7}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljavax/mail/Service;->setURLName(Ljavax/mail/URLName;)V

    .line 311
    if-eqz v12, :cond_c

    .line 312
    iget-object v1, p0, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    invoke-virtual {p0}, Ljavax/mail/Service;->getURLName()Ljavax/mail/URLName;

    move-result-object v2

    new-instance v3, Ljavax/mail/PasswordAuthentication;

    invoke-direct {v3, v6, v7}, Ljavax/mail/PasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljavax/mail/Session;->setPasswordAuthentication(Ljavax/mail/URLName;Ljavax/mail/PasswordAuthentication;)V

    .line 316
    :cond_c
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljavax/mail/Service;->setConnected(Z)V

    .line 319
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljavax/mail/Service;->notifyConnectionListeners(I)V

    .line 320
    return-void

    :cond_d
    move-object v7, v1

    move-object v6, v11

    move v1, v13

    goto :goto_8

    :cond_e
    move v12, v8

    move-object v1, v7

    move-object v11, v6

    goto/16 :goto_5

    :cond_f
    move/from16 v4, p2

    goto/16 :goto_1

    :cond_10
    move-object/from16 v3, p1

    goto/16 :goto_0

    :cond_11
    move-object/from16 v7, p4

    move-object/from16 v6, p3

    move/from16 v4, p2

    move-object/from16 v3, p1

    goto/16 :goto_3
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Ljavax/mail/Service;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 156
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2, p3}, Ljavax/mail/Service;->connect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 595
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 596
    invoke-direct {p0}, Ljavax/mail/Service;->terminateQueue()V

    .line 597
    return-void
.end method

.method public getURLName()Ljavax/mail/URLName;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 431
    iget-object v0, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v0}, Ljavax/mail/URLName;->getPassword()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v0}, Ljavax/mail/URLName;->getFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 432
    :cond_0
    new-instance v0, Ljavax/mail/URLName;

    iget-object v1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v1}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v2}, Ljavax/mail/URLName;->getHost()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v3}, Ljavax/mail/URLName;->getPort()I

    move-result v3

    iget-object v5, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v5}, Ljavax/mail/URLName;->getUsername()Ljava/lang/String;

    move-result-object v5

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 372
    iget-boolean v0, p0, Ljavax/mail/Service;->connected:Z

    return v0
.end method

.method protected declared-synchronized notifyConnectionListeners(I)V
    .locals 2

    .prologue
    .line 500
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 501
    new-instance v0, Ljavax/mail/event/ConnectionEvent;

    invoke-direct {v0, p0, p1}, Ljavax/mail/event/ConnectionEvent;-><init>(Ljava/lang/Object;I)V

    .line 502
    iget-object v1, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Ljavax/mail/Service;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 515
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 516
    invoke-direct {p0}, Ljavax/mail/Service;->terminateQueue()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    :cond_1
    monitor-exit p0

    return-void

    .line 500
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 356
    const/4 v0, 0x0

    return v0
.end method

.method protected queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V
    .locals 2

    .prologue
    .line 549
    iget-object v1, p0, Ljavax/mail/Service;->qLock:Ljava/lang/Object;

    monitor-enter v1

    .line 550
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    if-nez v0, :cond_0

    .line 551
    new-instance v0, Ljavax/mail/EventQueue;

    invoke-direct {v0}, Ljavax/mail/EventQueue;-><init>()V

    iput-object v0, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    .line 552
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    invoke-virtual {p2}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 563
    iget-object v1, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    invoke-virtual {v1, p1, v0}, Ljavax/mail/EventQueue;->enqueue(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 564
    return-void

    .line 552
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized removeConnectionListener(Ljavax/mail/event/ConnectionListener;)V
    .locals 1

    .prologue
    .line 485
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    :cond_0
    monitor-exit p0

    return-void

    .line 485
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected setConnected(Z)V
    .locals 0

    .prologue
    .line 389
    iput-boolean p1, p0, Ljavax/mail/Service;->connected:Z

    .line 390
    return-void
.end method

.method protected setURLName(Ljavax/mail/URLName;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    .line 458
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 524
    invoke-virtual {p0}, Ljavax/mail/Service;->getURLName()Ljavax/mail/URLName;

    move-result-object v0

    .line 525
    if-eqz v0, :cond_0

    .line 526
    invoke-virtual {v0}, Ljavax/mail/URLName;->toString()Ljava/lang/String;

    move-result-object v0

    .line 528
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
