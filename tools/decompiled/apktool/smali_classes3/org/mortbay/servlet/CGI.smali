.class public Lorg/mortbay/servlet/CGI;
.super Ljavax/servlet/http/HttpServlet;
.source "CGI.java"


# instance fields
.field private _cmdPrefix:Ljava/lang/String;

.field private _docRoot:Ljava/io/File;

.field private _env:Lorg/mortbay/servlet/CGI$EnvList;

.field private _ignoreExitState:Z

.field private _ok:Z

.field private _path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljavax/servlet/http/HttpServlet;-><init>()V

    .line 394
    return-void
.end method

.method private exec(Ljava/io/File;Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 202
    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 203
    invoke-virtual {p0}, Lorg/mortbay/servlet/CGI;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    invoke-interface {v0, v4}, Ljavax/servlet/ServletContext;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 204
    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getPathTranslated()Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getContentLength()I

    move-result v2

    .line 207
    if-gez v2, :cond_0

    .line 208
    const/4 v2, 0x0

    .line 209
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    move-object v0, v1

    .line 212
    :cond_2
    new-instance v6, Lorg/mortbay/servlet/CGI$EnvList;

    iget-object v7, p0, Lorg/mortbay/servlet/CGI;->_env:Lorg/mortbay/servlet/CGI$EnvList;

    invoke-direct {v6, v7}, Lorg/mortbay/servlet/CGI$EnvList;-><init>(Lorg/mortbay/servlet/CGI$EnvList;)V

    .line 216
    const-string/jumbo v7, "AUTH_TYPE"

    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getAuthType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/mortbay/servlet/CGI$EnvList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string/jumbo v7, "CONTENT_LENGTH"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/mortbay/servlet/CGI$EnvList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string/jumbo v7, "CONTENT_TYPE"

    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getContentType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/mortbay/servlet/CGI$EnvList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string/jumbo v7, "GATEWAY_INTERFACE"

    const-string/jumbo v8, "CGI/1.1"

    invoke-virtual {v6, v7, v8}, Lorg/mortbay/servlet/CGI$EnvList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 222
    const-string/jumbo v7, "PATH_INFO"

    invoke-virtual {v6, v7, p2}, Lorg/mortbay/servlet/CGI$EnvList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_3
    const-string/jumbo v7, "PATH_TRANSLATED"

    invoke-virtual {v6, v7, v0}, Lorg/mortbay/servlet/CGI$EnvList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string/jumbo v0, "QUERY_STRING"

    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lorg/mortbay/servlet/CGI$EnvList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string/jumbo v0, "REMOTE_ADDR"

    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getRemoteAddr()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lorg/mortbay/servlet/CGI$EnvList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string/jumbo v0, "REMOTE_HOST"

    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getRemoteHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lorg/mortbay/servlet/CGI$EnvList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string/jumbo v0, "REMOTE_USER"

    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getRemoteUser()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lorg/mortbay/servlet/CGI$EnvList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string/jumbo v0, "REQUEST_METHOD"

    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lorg/mortbay/servlet/CGI$EnvList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string/jumbo v0, "SCRIPT_NAME"

    invoke-virtual {v6, v0, v4}, Lorg/mortbay/servlet/CGI$EnvList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string/jumbo v0, "SCRIPT_FILENAME"

    invoke-virtual {v6, v0, v5}, Lorg/mortbay/servlet/CGI$EnvList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string/jumbo v0, "SERVER_NAME"

    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getServerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v0, v4}, Lorg/mortbay/servlet/CGI$EnvList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string/jumbo v0, "SERVER_PORT"

    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getServerPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v0, v4}, Lorg/mortbay/servlet/CGI$EnvList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string/jumbo v0, "SERVER_PROTOCOL"

    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v0, v4}, Lorg/mortbay/servlet/CGI$EnvList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string/jumbo v0, "SERVER_SOFTWARE"

    invoke-virtual {p0}, Lorg/mortbay/servlet/CGI;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v4

    invoke-interface {v4}, Ljavax/servlet/ServletContext;->getServerInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v0, v4}, Lorg/mortbay/servlet/CGI$EnvList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getHeaderNames()Ljava/util/Enumeration;

    move-result-object v4

    .line 243
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 245
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 246
    invoke-interface {p3, v0}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 247
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v8, "HTTP_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v8, 0x2d

    const/16 v9, 0x5f

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v5}, Lorg/mortbay/servlet/CGI$EnvList;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :cond_4
    const-string/jumbo v4, "HTTPS"

    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "ON"

    :goto_1
    invoke-virtual {v6, v4, v0}, Lorg/mortbay/servlet/CGI$EnvList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x22

    if-eq v0, v4, :cond_f

    const-string/jumbo v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_f

    .line 261
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    :goto_2
    iget-object v4, p0, Lorg/mortbay/servlet/CGI;->_cmdPrefix:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 263
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v5, p0, Lorg/mortbay/servlet/CGI;->_cmdPrefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    :cond_5
    if-nez v3, :cond_9

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v6}, Lorg/mortbay/servlet/CGI$EnvList;->getEnvArray()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 268
    :goto_3
    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getInputStream()Ljavax/servlet/ServletInputStream;

    move-result-object v3

    .line 269
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 272
    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v5, v6}, Lorg/mortbay/util/IO;->copyThread(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 274
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lorg/mortbay/servlet/CGI$1;

    invoke-direct {v6, p0, v2, v3, v4}, Lorg/mortbay/servlet/CGI$1;-><init>(Lorg/mortbay/servlet/CGI;ILjava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 293
    const/4 v2, 0x0

    .line 299
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 303
    :cond_6
    :goto_4
    invoke-direct {p0, v3}, Lorg/mortbay/servlet/CGI;->getTextLineFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_d

    .line 305
    const-string/jumbo v5, "HTTP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 307
    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 308
    if-lez v5, :cond_6

    .line 310
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 311
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 312
    const-string/jumbo v5, "Location"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 314
    invoke-interface {p4, v4}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 346
    :catch_0
    move-exception v1

    move-object v1, v2

    .line 350
    :goto_5
    :try_start_1
    const-string/jumbo v2, "CGI: Client closed connection!"

    invoke-static {v2}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 358
    if-eqz v1, :cond_7

    .line 362
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 370
    :cond_7
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 373
    return-void

    .line 251
    :cond_8
    const-string/jumbo v0, "OFF"

    goto/16 :goto_1

    .line 265
    :cond_9
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v6}, Lorg/mortbay/servlet/CGI$EnvList;->getEnvArray()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v0

    goto :goto_3

    .line 316
    :cond_a
    :try_start_3
    const-string/jumbo v5, "Status"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 318
    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 319
    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 320
    invoke-interface {p4, v4}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 352
    :catch_1
    move-exception v1

    .line 354
    :try_start_4
    const-string/jumbo v1, "CGI: interrupted!"

    invoke-static {v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 358
    if-eqz v2, :cond_7

    .line 362
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_6

    .line 364
    :catch_2
    move-exception v1

    .line 366
    invoke-static {v1}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 325
    :cond_b
    :try_start_6
    invoke-interface {p4, v6, v4}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_4

    .line 358
    :catchall_0
    move-exception v1

    :goto_7
    if-eqz v2, :cond_c

    .line 362
    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 370
    :cond_c
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 358
    throw v1

    .line 331
    :cond_d
    :try_start_8
    invoke-interface {p4}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v2

    .line 332
    :try_start_9
    invoke-static {v3, v2}, Lorg/mortbay/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 333
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 335
    iget-boolean v3, p0, Lorg/mortbay/servlet/CGI;->_ignoreExitState:Z

    if-nez v3, :cond_e

    .line 337
    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I

    move-result v3

    .line 338
    if-eqz v3, :cond_e

    .line 340
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "Non-zero exit status ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, ") from CGI program: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 341
    invoke-interface {p4}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v1

    if-nez v1, :cond_e

    .line 342
    const/16 v1, 0x1f4

    const-string/jumbo v3, "Failed to exec CGI"

    invoke-interface {p4, v1, v3}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 358
    :cond_e
    if-eqz v2, :cond_7

    .line 362
    :try_start_a
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_6

    .line 364
    :catch_3
    move-exception v1

    .line 366
    invoke-static {v1}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 364
    :catch_4
    move-exception v2

    .line 366
    invoke-static {v2}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 364
    :catch_5
    move-exception v1

    .line 366
    invoke-static {v1}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 358
    :catchall_1
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    goto :goto_7

    .line 346
    :catch_6
    move-exception v1

    move-object v1, v2

    goto/16 :goto_5

    :cond_f
    move-object v0, v1

    goto/16 :goto_2
.end method

.method private getTextLineFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 385
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    .line 386
    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 388
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public init()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lorg/mortbay/servlet/CGI$EnvList;

    invoke-direct {v0}, Lorg/mortbay/servlet/CGI$EnvList;-><init>()V

    iput-object v0, p0, Lorg/mortbay/servlet/CGI;->_env:Lorg/mortbay/servlet/CGI$EnvList;

    .line 69
    const-string/jumbo v0, "commandPrefix"

    invoke-virtual {p0, v0}, Lorg/mortbay/servlet/CGI;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/servlet/CGI;->_cmdPrefix:Ljava/lang/String;

    .line 71
    const-string/jumbo v0, "cgibinResourceBase"

    invoke-virtual {p0, v0}, Lorg/mortbay/servlet/CGI;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    if-nez v0, :cond_0

    .line 74
    const-string/jumbo v0, "resourceBase"

    invoke-virtual {p0, v0}, Lorg/mortbay/servlet/CGI;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lorg/mortbay/servlet/CGI;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-interface {v0, v1}, Ljavax/servlet/ServletContext;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_0
    if-nez v0, :cond_1

    .line 81
    const-string/jumbo v0, "CGI: no CGI bin !"

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 137
    :goto_0
    return-void

    .line 85
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 88
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "CGI: CGI bin does not exist - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_3

    .line 94
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "CGI: CGI bin is not readable - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_4

    .line 100
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "CGI: CGI bin is not a directory - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_4
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/servlet/CGI;->_docRoot:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    const-string/jumbo v0, "Path"

    invoke-virtual {p0, v0}, Lorg/mortbay/servlet/CGI;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/servlet/CGI;->_path:Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lorg/mortbay/servlet/CGI;->_path:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 116
    iget-object v0, p0, Lorg/mortbay/servlet/CGI;->_env:Lorg/mortbay/servlet/CGI$EnvList;

    const-string/jumbo v1, "PATH"

    iget-object v2, p0, Lorg/mortbay/servlet/CGI;->_path:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/servlet/CGI$EnvList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_5
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "ignoreExitState"

    invoke-virtual {p0, v1}, Lorg/mortbay/servlet/CGI;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mortbay/servlet/CGI;->_ignoreExitState:Z

    .line 119
    invoke-virtual {p0}, Lorg/mortbay/servlet/CGI;->getInitParameterNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 120
    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 122
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    if-eqz v0, :cond_6

    const-string/jumbo v2, "ENV_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 124
    iget-object v2, p0, Lorg/mortbay/servlet/CGI;->_env:Lorg/mortbay/servlet/CGI$EnvList;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0}, Lorg/mortbay/servlet/CGI;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/mortbay/servlet/CGI$EnvList;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 108
    :catch_0
    move-exception v0

    .line 110
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "CGI: CGI bin failed - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 126
    :cond_7
    iget-object v0, p0, Lorg/mortbay/servlet/CGI;->_env:Lorg/mortbay/servlet/CGI$EnvList;

    invoke-static {v0}, Lorg/mortbay/servlet/CGI$EnvList;->access$000(Lorg/mortbay/servlet/CGI$EnvList;)Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "SystemRoot"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 128
    const-string/jumbo v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 131
    const-string/jumbo v0, "windir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lorg/mortbay/servlet/CGI;->_env:Lorg/mortbay/servlet/CGI$EnvList;

    const-string/jumbo v2, "SystemRoot"

    if-eqz v0, :cond_9

    :goto_2
    invoke-virtual {v1, v2, v0}, Lorg/mortbay/servlet/CGI$EnvList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/servlet/CGI;->_ok:Z

    goto/16 :goto_0

    .line 132
    :cond_9
    const-string/jumbo v0, "C:\\WINDOWS"

    goto :goto_2
.end method

.method public service(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    iget-boolean v0, p0, Lorg/mortbay/servlet/CGI;->_ok:Z

    if-nez v0, :cond_0

    .line 144
    const/16 v0, 0x1f7

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 192
    :goto_0
    return-void

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/util/StringUtil;->nonNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/util/StringUtil;->nonNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 150
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "CGI: ContextPath : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getContextPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 153
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "CGI: ServletPath : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 154
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "CGI: PathInfo    : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 155
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "CGI: _docRoot    : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/servlet/CGI;->_docRoot:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 156
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "CGI: _path       : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/servlet/CGI;->_path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 157
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "CGI: _ignoreExitState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Lorg/mortbay/servlet/CGI;->_ignoreExitState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 166
    :cond_1
    const-string/jumbo v1, ""

    .line 168
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lorg/mortbay/servlet/CGI;->_docRoot:Ljava/io/File;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v3

    .line 170
    :goto_1
    const-string/jumbo v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ltz v4, :cond_3

    .line 172
    const/16 v0, 0x2f

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 174
    const/4 v1, 0x0

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 176
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lorg/mortbay/servlet/CGI;->_docRoot:Ljava/io/File;

    invoke-direct {v0, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    .line 179
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 181
    :cond_4
    const/16 v0, 0x194

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    goto/16 :goto_0

    .line 185
    :cond_5
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 187
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "CGI: script is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 188
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "CGI: pathInfo is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 190
    :cond_6
    invoke-direct {p0, v0, v1, p1, p2}, Lorg/mortbay/servlet/CGI;->exec(Ljava/io/File;Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto/16 :goto_0
.end method
