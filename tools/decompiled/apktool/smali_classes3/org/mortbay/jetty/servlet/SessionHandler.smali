.class public Lorg/mortbay/jetty/servlet/SessionHandler;
.super Lorg/mortbay/jetty/handler/HandlerWrapper;
.source "SessionHandler.java"


# instance fields
.field private _sessionManager:Lorg/mortbay/jetty/SessionManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lorg/mortbay/jetty/servlet/HashSessionManager;

    invoke-direct {v0}, Lorg/mortbay/jetty/servlet/HashSessionManager;-><init>()V

    invoke-direct {p0, v0}, Lorg/mortbay/jetty/servlet/SessionHandler;-><init>(Lorg/mortbay/jetty/SessionManager;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/mortbay/jetty/SessionManager;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;-><init>()V

    .line 63
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/SessionHandler;->setSessionManager(Lorg/mortbay/jetty/SessionManager;)V

    .line 64
    return-void
.end method


# virtual methods
.method public addEventListener(Ljava/util/EventListener;)V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    invoke-interface {v0, p1}, Lorg/mortbay/jetty/SessionManager;->addEventListener(Ljava/util/EventListener;)V

    .line 299
    :cond_0
    return-void
.end method

.method public clearEventListeners()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    invoke-interface {v0}, Lorg/mortbay/jetty/SessionManager;->clearEventListeners()V

    .line 306
    :cond_0
    return-void
.end method

.method protected doStart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    invoke-interface {v0}, Lorg/mortbay/jetty/SessionManager;->start()V

    .line 117
    invoke-super {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->doStart()V

    .line 118
    return-void
.end method

.method protected doStop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 125
    invoke-super {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->doStop()V

    .line 126
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    invoke-interface {v0}, Lorg/mortbay/jetty/SessionManager;->stop()V

    .line 127
    return-void
.end method

.method public getSessionManager()Lorg/mortbay/jetty/SessionManager;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    return-object v0
.end method

.method public handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 136
    invoke-virtual {p0, p2, p4}, Lorg/mortbay/jetty/servlet/SessionHandler;->setRequestedId(Ljavax/servlet/http/HttpServletRequest;I)V

    .line 138
    instance-of v0, p2, Lorg/mortbay/jetty/Request;

    if-eqz v0, :cond_5

    move-object v0, p2

    check-cast v0, Lorg/mortbay/jetty/Request;

    .line 144
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lorg/mortbay/jetty/Request;->getSessionManager()Lorg/mortbay/jetty/SessionManager;
    :try_end_0
    .catch Lorg/mortbay/jetty/RetryRequest; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    .line 145
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/Request;->getSession(Z)Ljavax/servlet/http/HttpSession;
    :try_end_1
    .catch Lorg/mortbay/jetty/RetryRequest; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v2

    .line 147
    :try_start_2
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    if-eq v4, v1, :cond_0

    .line 150
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/Request;->setSessionManager(Lorg/mortbay/jetty/SessionManager;)V

    .line 151
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/Request;->setSession(Ljavax/servlet/http/HttpSession;)V

    .line 156
    :cond_0
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    if-eqz v1, :cond_1

    .line 158
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/Request;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v3

    .line 159
    if-eqz v3, :cond_6

    .line 161
    if-eq v3, v2, :cond_1

    .line 163
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->isSecure()Z

    move-result v5

    invoke-interface {v1, v3, v5}, Lorg/mortbay/jetty/SessionManager;->access(Ljavax/servlet/http/HttpSession;Z)Ljavax/servlet/http/Cookie;

    move-result-object v1

    .line 164
    if-eqz v1, :cond_1

    .line 165
    invoke-interface {p3, v1}, Ljavax/servlet/http/HttpServletResponse;->addCookie(Ljavax/servlet/http/Cookie;)V

    .line 176
    :cond_1
    :goto_1
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "sessionManager="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v5, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 179
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "session="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 182
    :cond_2
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/SessionHandler;->getHandler()Lorg/mortbay/jetty/Handler;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lorg/mortbay/jetty/Handler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    :try_end_2
    .catch Lorg/mortbay/jetty/RetryRequest; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 193
    invoke-interface {p2, v6}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v1

    .line 195
    iget-object v3, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    if-eq v4, v3, :cond_4

    .line 198
    if-eqz v1, :cond_3

    .line 199
    iget-object v3, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    invoke-interface {v3, v1}, Lorg/mortbay/jetty/SessionManager;->complete(Ljavax/servlet/http/HttpSession;)V

    .line 202
    :cond_3
    if-eqz v4, :cond_4

    .line 204
    invoke-virtual {v0, v4}, Lorg/mortbay/jetty/Request;->setSessionManager(Lorg/mortbay/jetty/SessionManager;)V

    .line 205
    invoke-virtual {v0, v2}, Lorg/mortbay/jetty/Request;->setSession(Ljavax/servlet/http/HttpSession;)V

    .line 209
    :cond_4
    return-void

    .line 138
    :cond_5
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v0

    goto/16 :goto_0

    .line 170
    :cond_6
    :try_start_3
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/Request;->recoverNewSession(Ljava/lang/Object;)Ljavax/servlet/http/HttpSession;

    move-result-object v3

    .line 171
    if-eqz v3, :cond_1

    .line 172
    invoke-virtual {v0, v3}, Lorg/mortbay/jetty/Request;->setSession(Ljavax/servlet/http/HttpSession;)V
    :try_end_3
    .catch Lorg/mortbay/jetty/RetryRequest; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    .line 184
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 186
    :goto_2
    const/4 v4, 0x0

    :try_start_4
    invoke-virtual {v0, v4}, Lorg/mortbay/jetty/Request;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v4

    .line 187
    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljavax/servlet/http/HttpSession;->isNew()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 188
    iget-object v5, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    invoke-virtual {v0, v5, v4}, Lorg/mortbay/jetty/Request;->saveNewSession(Ljava/lang/Object;Ljavax/servlet/http/HttpSession;)V

    .line 189
    :cond_7
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 193
    :catchall_0
    move-exception v1

    move-object v4, v3

    :goto_3
    invoke-interface {p2, v6}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v3

    .line 195
    iget-object v5, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    if-eq v4, v5, :cond_9

    .line 198
    if-eqz v3, :cond_8

    .line 199
    iget-object v5, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    invoke-interface {v5, v3}, Lorg/mortbay/jetty/SessionManager;->complete(Ljavax/servlet/http/HttpSession;)V

    .line 202
    :cond_8
    if-eqz v4, :cond_9

    .line 204
    invoke-virtual {v0, v4}, Lorg/mortbay/jetty/Request;->setSessionManager(Lorg/mortbay/jetty/SessionManager;)V

    .line 205
    invoke-virtual {v0, v2}, Lorg/mortbay/jetty/Request;->setSession(Ljavax/servlet/http/HttpSession;)V

    .line 208
    :cond_9
    throw v1

    .line 193
    :catchall_1
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v2, v3

    goto :goto_3

    :catchall_3
    move-exception v1

    goto :goto_3

    .line 184
    :catch_1
    move-exception v1

    move-object v2, v3

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    goto :goto_2
.end method

.method protected setRequestedId(Ljavax/servlet/http/HttpServletRequest;I)V
    .locals 12

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 218
    instance-of v0, p1, Lorg/mortbay/jetty/Request;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/mortbay/jetty/Request;

    .line 219
    :goto_0
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestedSessionId()Ljava/lang/String;

    move-result-object v4

    .line 220
    if-ne p2, v3, :cond_0

    if-eqz v4, :cond_2

    .line 289
    :cond_0
    :goto_1
    return-void

    .line 218
    :cond_1
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v0

    goto :goto_0

    .line 225
    :cond_2
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/SessionHandler;->getSessionManager()Lorg/mortbay/jetty/SessionManager;

    move-result-object v7

    .line 227
    const/4 v1, 0x0

    .line 229
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    invoke-interface {v2}, Lorg/mortbay/jetty/SessionManager;->isUsingCookies()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 231
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getCookies()[Ljavax/servlet/http/Cookie;

    move-result-object v8

    .line 232
    if-eqz v8, :cond_e

    array-length v2, v8

    if-lez v2, :cond_e

    move v5, v6

    move v2, v6

    .line 234
    :goto_2
    array-length v9, v8

    if-ge v5, v9, :cond_d

    .line 236
    invoke-interface {v7}, Lorg/mortbay/jetty/SessionManager;->getSessionCookie()Ljava/lang/String;

    move-result-object v9

    aget-object v10, v8, v5

    invoke-virtual {v10}, Ljavax/servlet/http/Cookie;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 238
    if-eqz v4, :cond_7

    .line 243
    invoke-interface {v7, v4}, Lorg/mortbay/jetty/SessionManager;->getHttpSession(Ljava/lang/String;)Ljavax/servlet/http/HttpSession;

    move-result-object v9

    if-eqz v9, :cond_7

    move-object v11, v1

    move v1, v2

    move-object v2, v4

    move-object v4, v11

    .line 259
    :goto_3
    if-eqz v2, :cond_3

    if-nez v4, :cond_6

    .line 261
    :cond_3
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v4

    .line 263
    invoke-interface {v7}, Lorg/mortbay/jetty/SessionManager;->getSessionURLPrefix()Ljava/lang/String;

    move-result-object v5

    .line 264
    if-eqz v5, :cond_6

    .line 266
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 267
    if-ltz v7, :cond_6

    .line 269
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    add-int v2, v7, v1

    move v1, v2

    .line 271
    :goto_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 273
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 274
    const/16 v7, 0x3b

    if-eq v5, v7, :cond_4

    const/16 v7, 0x23

    if-eq v5, v7, :cond_4

    const/16 v7, 0x3f

    if-eq v5, v7, :cond_4

    const/16 v7, 0x2f

    if-ne v5, v7, :cond_b

    .line 279
    :cond_4
    invoke-virtual {v4, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 281
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 282
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "Got Session ID "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v4, " from URL"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    :cond_5
    move-object v2, v1

    move v1, v6

    .line 287
    :cond_6
    invoke-virtual {v0, v2}, Lorg/mortbay/jetty/Request;->setRequestedSessionId(Ljava/lang/String;)V

    .line 288
    if-eqz v2, :cond_c

    if-eqz v1, :cond_c

    :goto_5
    invoke-virtual {v0, v3}, Lorg/mortbay/jetty/Request;->setRequestedSessionIdFromCookie(Z)V

    goto/16 :goto_1

    .line 247
    :cond_7
    aget-object v1, v8, v5

    invoke-virtual {v1}, Ljavax/servlet/http/Cookie;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 249
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "Got Session ID "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v4, " from cookie"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 251
    :cond_8
    invoke-interface {v7, v2}, Lorg/mortbay/jetty/SessionManager;->getHttpSession(Ljava/lang/String;)Ljavax/servlet/http/HttpSession;

    move-result-object v1

    .line 252
    if-eqz v1, :cond_9

    .line 253
    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/Request;->setSession(Ljavax/servlet/http/HttpSession;)V

    :cond_9
    move-object v4, v2

    move v2, v3

    .line 234
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 276
    :cond_b
    add-int/lit8 v1, v1, 0x1

    .line 277
    goto/16 :goto_4

    :cond_c
    move v3, v6

    .line 288
    goto :goto_5

    :cond_d
    move-object v11, v1

    move v1, v2

    move-object v2, v4

    move-object v4, v11

    goto/16 :goto_3

    :cond_e
    move-object v2, v4

    move-object v4, v1

    move v1, v6

    goto/16 :goto_3
.end method

.method public setServer(Lorg/mortbay/jetty/Server;)V
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 101
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/SessionHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v6

    .line 102
    if-eqz v6, :cond_0

    if-eq v6, p1, :cond_0

    .line 103
    invoke-virtual {v6}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    const-string/jumbo v4, "sessionManager"

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 104
    :cond_0
    invoke-super {p0, p1}, Lorg/mortbay/jetty/handler/HandlerWrapper;->setServer(Lorg/mortbay/jetty/Server;)V

    .line 105
    if-eqz p1, :cond_1

    if-eq p1, v6, :cond_1

    .line 106
    invoke-virtual {p1}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v6

    iget-object v9, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    const-string/jumbo v10, "sessionManager"

    move-object v7, p0

    move-object v8, v3

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 107
    :cond_1
    return-void
.end method

.method public setSessionManager(Lorg/mortbay/jetty/SessionManager;)V
    .locals 6

    .prologue
    .line 81
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/SessionHandler;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 83
    :cond_0
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    .line 85
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/SessionHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/SessionHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v0

    const-string/jumbo v4, "sessionManager"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 88
    :cond_1
    if-eqz p1, :cond_2

    .line 89
    invoke-interface {p1, p0}, Lorg/mortbay/jetty/SessionManager;->setSessionHandler(Lorg/mortbay/jetty/servlet/SessionHandler;)V

    .line 91
    :cond_2
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    .line 93
    if-eqz v2, :cond_3

    .line 94
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Lorg/mortbay/jetty/SessionManager;->setSessionHandler(Lorg/mortbay/jetty/servlet/SessionHandler;)V

    .line 95
    :cond_3
    return-void
.end method
