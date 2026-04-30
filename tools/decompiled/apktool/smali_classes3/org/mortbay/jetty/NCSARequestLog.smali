.class public Lorg/mortbay/jetty/NCSARequestLog;
.super Lorg/mortbay/component/AbstractLifeCycle;
.source "NCSARequestLog.java"

# interfaces
.implements Lorg/mortbay/jetty/RequestLog;


# instance fields
.field private _append:Z

.field private transient _buffers:Ljava/util/ArrayList;

.field private _closeOut:Z

.field private transient _copy:[C

.field private _extended:Z

.field private transient _fileOut:Ljava/io/OutputStream;

.field private _filename:Ljava/lang/String;

.field private _filenameDateFormat:Ljava/lang/String;

.field private transient _ignorePathMap:Lorg/mortbay/jetty/servlet/PathMap;

.field private _ignorePaths:[Ljava/lang/String;

.field private _logCookies:Z

.field private transient _logDateCache:Lorg/mortbay/util/DateCache;

.field private _logDateFormat:Ljava/lang/String;

.field private _logLatency:Z

.field private _logLocale:Ljava/util/Locale;

.field private _logServer:Z

.field private _logTimeZone:Ljava/lang/String;

.field private transient _out:Ljava/io/OutputStream;

.field private _preferProxiedForAddress:Z

.field private _retainDays:I

.field private transient _writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;-><init>()V

    .line 55
    const-string/jumbo v0, "dd/MMM/yyyy:HH:mm:ss Z"

    iput-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_logDateFormat:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_filenameDateFormat:Ljava/lang/String;

    .line 57
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_logLocale:Ljava/util/Locale;

    .line 58
    const-string/jumbo v0, "GMT"

    iput-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_logTimeZone:Ljava/lang/String;

    .line 60
    iput-boolean v1, p0, Lorg/mortbay/jetty/NCSARequestLog;->_logLatency:Z

    .line 61
    iput-boolean v1, p0, Lorg/mortbay/jetty/NCSARequestLog;->_logCookies:Z

    .line 62
    iput-boolean v1, p0, Lorg/mortbay/jetty/NCSARequestLog;->_logServer:Z

    .line 75
    iput-boolean v2, p0, Lorg/mortbay/jetty/NCSARequestLog;->_extended:Z

    .line 76
    iput-boolean v2, p0, Lorg/mortbay/jetty/NCSARequestLog;->_append:Z

    .line 77
    const/16 v0, 0x1f

    iput v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_retainDays:I

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;-><init>()V

    .line 55
    const-string/jumbo v0, "dd/MMM/yyyy:HH:mm:ss Z"

    iput-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_logDateFormat:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_filenameDateFormat:Ljava/lang/String;

    .line 57
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_logLocale:Ljava/util/Locale;

    .line 58
    const-string/jumbo v0, "GMT"

    iput-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_logTimeZone:Ljava/lang/String;

    .line 60
    iput-boolean v1, p0, Lorg/mortbay/jetty/NCSARequestLog;->_logLatency:Z

    .line 61
    iput-boolean v1, p0, Lorg/mortbay/jetty/NCSARequestLog;->_logCookies:Z

    .line 62
    iput-boolean v1, p0, Lorg/mortbay/jetty/NCSARequestLog;->_logServer:Z

    .line 86
    iput-boolean v2, p0, Lorg/mortbay/jetty/NCSARequestLog;->_extended:Z

    .line 87
    iput-boolean v2, p0, Lorg/mortbay/jetty/NCSARequestLog;->_append:Z

    .line 88
    const/16 v0, 0x1f

    iput v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_retainDays:I

    .line 89
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/NCSARequestLog;->setFilename(Ljava/lang/String;)V

    .line 90
    return-void
.end method


# virtual methods
.method protected doStart()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 420
    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_logDateFormat:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 422
    new-instance v0, Lorg/mortbay/util/DateCache;

    iget-object v1, p0, Lorg/mortbay/jetty/NCSARequestLog;->_logDateFormat:Ljava/lang/String;

    iget-object v2, p0, Lorg/mortbay/jetty/NCSARequestLog;->_logLocale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Lorg/mortbay/util/DateCache;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_logDateCache:Lorg/mortbay/util/DateCache;

    .line 423
    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_logDateCache:Lorg/mortbay/util/DateCache;

    iget-object v1, p0, Lorg/mortbay/jetty/NCSARequestLog;->_logTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/mortbay/util/DateCache;->setTimeZoneID(Ljava/lang/String;)V

    .line 426
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_filename:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 428
    new-instance v0, Lorg/mortbay/util/RolloverFileOutputStream;

    iget-object v1, p0, Lorg/mortbay/jetty/NCSARequestLog;->_filename:Ljava/lang/String;

    iget-boolean v2, p0, Lorg/mortbay/jetty/NCSARequestLog;->_append:Z

    iget v3, p0, Lorg/mortbay/jetty/NCSARequestLog;->_retainDays:I

    iget-object v4, p0, Lorg/mortbay/jetty/NCSARequestLog;->_logTimeZone:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    iget-object v5, p0, Lorg/mortbay/jetty/NCSARequestLog;->_filenameDateFormat:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lorg/mortbay/util/RolloverFileOutputStream;-><init>(Ljava/lang/String;ZILjava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_fileOut:Ljava/io/OutputStream;

    .line 429
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_closeOut:Z

    .line 430
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "Opened "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mortbay/jetty/NCSARequestLog;->getDatedFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;)V

    .line 435
    :goto_0
    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_fileOut:Ljava/io/OutputStream;

    iput-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_out:Ljava/io/OutputStream;

    .line 437
    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_ignorePaths:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_ignorePaths:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 439
    new-instance v0, Lorg/mortbay/jetty/servlet/PathMap;

    invoke-direct {v0}, Lorg/mortbay/jetty/servlet/PathMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_ignorePathMap:Lorg/mortbay/jetty/servlet/PathMap;

    .line 440
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/mortbay/jetty/NCSARequestLog;->_ignorePaths:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 441
    iget-object v1, p0, Lorg/mortbay/jetty/NCSARequestLog;->_ignorePathMap:Lorg/mortbay/jetty/servlet/PathMap;

    iget-object v2, p0, Lorg/mortbay/jetty/NCSARequestLog;->_ignorePaths:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lorg/mortbay/jetty/NCSARequestLog;->_ignorePaths:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Lorg/mortbay/jetty/servlet/PathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 433
    :cond_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_fileOut:Ljava/io/OutputStream;

    goto :goto_0

    .line 444
    :cond_2
    iput-object v6, p0, Lorg/mortbay/jetty/NCSARequestLog;->_ignorePathMap:Lorg/mortbay/jetty/servlet/PathMap;

    .line 446
    :cond_3
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lorg/mortbay/jetty/NCSARequestLog;->_out:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_writer:Ljava/io/Writer;

    .line 447
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_buffers:Ljava/util/ArrayList;

    .line 448
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_copy:[C

    .line 449
    invoke-super {p0}, Lorg/mortbay/component/AbstractLifeCycle;->doStart()V

    .line 450
    return-void
.end method

.method protected doStop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 455
    invoke-super {p0}, Lorg/mortbay/component/AbstractLifeCycle;->doStop()V

    .line 456
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_writer:Ljava/io/Writer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_out:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_closeOut:Z

    if-eqz v0, :cond_1

    .line 458
    :try_start_1
    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 460
    :cond_1
    :goto_1
    iput-object v1, p0, Lorg/mortbay/jetty/NCSARequestLog;->_out:Ljava/io/OutputStream;

    .line 461
    iput-object v1, p0, Lorg/mortbay/jetty/NCSARequestLog;->_fileOut:Ljava/io/OutputStream;

    .line 462
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_closeOut:Z

    .line 463
    iput-object v1, p0, Lorg/mortbay/jetty/NCSARequestLog;->_logDateCache:Lorg/mortbay/util/DateCache;

    .line 464
    iput-object v1, p0, Lorg/mortbay/jetty/NCSARequestLog;->_writer:Ljava/io/Writer;

    .line 465
    iput-object v1, p0, Lorg/mortbay/jetty/NCSARequestLog;->_buffers:Ljava/util/ArrayList;

    .line 466
    iput-object v1, p0, Lorg/mortbay/jetty/NCSARequestLog;->_copy:[C

    .line 467
    return-void

    .line 456
    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 458
    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getDatedFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_fileOut:Ljava/io/OutputStream;

    instance-of v0, v0, Lorg/mortbay/util/RolloverFileOutputStream;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_fileOut:Ljava/io/OutputStream;

    check-cast v0, Lorg/mortbay/util/RolloverFileOutputStream;

    invoke-virtual {v0}, Lorg/mortbay/util/RolloverFileOutputStream;->getDatedFilename()Ljava/lang/String;

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_filename:Ljava/lang/String;

    return-object v0
.end method

.method public getFilenameDateFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_filenameDateFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getIgnorePaths()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_ignorePaths:[Ljava/lang/String;

    return-object v0
.end method

.method public getLogCookies()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_logCookies:Z

    return v0
.end method

.method public getLogDateFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_logDateFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getLogLatency()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_logLatency:Z

    return v0
.end method

.method public getLogLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_logLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getLogServer()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_logServer:Z

    return v0
.end method

.method public getLogTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_logTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method public getRetainDays()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_retainDays:I

    return v0
.end method

.method public isAppend()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_append:Z

    return v0
.end method

.method public isExtended()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_extended:Z

    return v0
.end method

.method public log(Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)V
    .locals 12

    .prologue
    .line 232
    invoke-virtual {p0}, Lorg/mortbay/jetty/NCSARequestLog;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_ignorePathMap:Lorg/mortbay/jetty/servlet/PathMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_ignorePathMap:Lorg/mortbay/jetty/servlet/PathMap;

    invoke-virtual {p1}, Lorg/mortbay/jetty/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/PathMap;->getMatch(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/PathMap$Entry;

    move-result-object v0

    if-nez v0, :cond_0

    .line 240
    :cond_2
    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_fileOut:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 245
    iget-object v2, p0, Lorg/mortbay/jetty/NCSARequestLog;->_writer:Ljava/io/Writer;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :try_start_1
    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_buffers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 248
    if-nez v0, :cond_9

    new-instance v0, Lorg/mortbay/util/Utf8StringBuffer;

    const/16 v1, 0xa0

    invoke-direct {v0, v1}, Lorg/mortbay/util/Utf8StringBuffer;-><init>(I)V

    move-object v1, v0

    .line 249
    :goto_1
    invoke-virtual {v1}, Lorg/mortbay/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v3

    .line 250
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 252
    :try_start_2
    monitor-enter v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 254
    :try_start_3
    iget-boolean v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_logServer:Z

    if-eqz v0, :cond_3

    .line 256
    invoke-virtual {p1}, Lorg/mortbay/jetty/Request;->getServerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    const/16 v0, 0x20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 260
    :cond_3
    const/4 v0, 0x0

    .line 261
    iget-boolean v2, p0, Lorg/mortbay/jetty/NCSARequestLog;->_preferProxiedForAddress:Z

    if-eqz v2, :cond_4

    .line 263
    const-string/jumbo v0, "X-Forwarded-For"

    invoke-virtual {p1, v0}, Lorg/mortbay/jetty/Request;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    :cond_4
    if-nez v0, :cond_5

    .line 267
    invoke-virtual {p1}, Lorg/mortbay/jetty/Request;->getRemoteAddr()Ljava/lang/String;

    move-result-object v0

    .line 269
    :cond_5
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    const-string/jumbo v0, " - "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    invoke-virtual {p1}, Lorg/mortbay/jetty/Request;->getRemoteUser()Ljava/lang/String;

    move-result-object v0

    .line 272
    if-nez v0, :cond_6

    const-string/jumbo v0, " - "

    :cond_6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 273
    const-string/jumbo v0, " ["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 274
    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_logDateCache:Lorg/mortbay/util/DateCache;

    if-eqz v0, :cond_a

    .line 275
    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_logDateCache:Lorg/mortbay/util/DateCache;

    invoke-virtual {p1}, Lorg/mortbay/jetty/Request;->getTimeStamp()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/mortbay/util/DateCache;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 279
    :goto_2
    const-string/jumbo v0, "] \""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 280
    invoke-virtual {p1}, Lorg/mortbay/jetty/Request;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 281
    const/16 v0, 0x20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 283
    invoke-virtual {p1}, Lorg/mortbay/jetty/Request;->getUri()Lorg/mortbay/jetty/HttpURI;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/HttpURI;->writeTo(Lorg/mortbay/util/Utf8StringBuffer;)V

    .line 285
    const/16 v0, 0x20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 286
    invoke-virtual {p1}, Lorg/mortbay/jetty/Request;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 287
    const-string/jumbo v0, "\" "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    invoke-virtual {p2}, Lorg/mortbay/jetty/Response;->getStatus()I

    move-result v0

    .line 289
    if-gtz v0, :cond_7

    .line 290
    const/16 v0, 0x194

    .line 291
    :cond_7
    div-int/lit8 v2, v0, 0x64

    rem-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 292
    div-int/lit8 v2, v0, 0xa

    rem-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 293
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 296
    invoke-virtual {p2}, Lorg/mortbay/jetty/Response;->getContentCount()J

    move-result-wide v4

    .line 297
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_10

    .line 299
    const/16 v0, 0x20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 300
    const-wide/32 v6, 0x1869f

    cmp-long v0, v4, v6

    if-lez v0, :cond_b

    .line 301
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    :goto_3
    const/16 v0, 0x20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 319
    :goto_4
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 321
    :try_start_4
    iget-boolean v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_extended:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_logCookies:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_logLatency:Z

    if-nez v0, :cond_11

    .line 323
    iget-object v2, p0, Lorg/mortbay/jetty/NCSARequestLog;->_writer:Ljava/io/Writer;

    monitor-enter v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 325
    :try_start_5
    sget-object v0, Lorg/mortbay/util/StringUtil;->__LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 326
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 327
    iget-object v4, p0, Lorg/mortbay/jetty/NCSARequestLog;->_copy:[C

    array-length v4, v4

    if-le v0, v4, :cond_8

    .line 328
    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_copy:[C

    array-length v0, v0

    .line 329
    :cond_8
    const/4 v4, 0x0

    iget-object v5, p0, Lorg/mortbay/jetty/NCSARequestLog;->_copy:[C

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v0, v5, v6}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 330
    iget-object v3, p0, Lorg/mortbay/jetty/NCSARequestLog;->_writer:Ljava/io/Writer;

    iget-object v4, p0, Lorg/mortbay/jetty/NCSARequestLog;->_copy:[C

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Ljava/io/Writer;->write([CII)V

    .line 331
    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 332
    invoke-virtual {v1}, Lorg/mortbay/util/Utf8StringBuffer;->reset()V

    .line 333
    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_buffers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 384
    :catch_0
    move-exception v0

    .line 386
    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 248
    :cond_9
    :try_start_7
    iget-object v1, p0, Lorg/mortbay/jetty/NCSARequestLog;->_buffers:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/util/Utf8StringBuffer;

    move-object v1, v0

    goto/16 :goto_1

    .line 250
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 277
    :cond_a
    :try_start_9
    invoke-virtual {p1}, Lorg/mortbay/jetty/Request;->getTimeStampBuffer()Lorg/mortbay/io/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 319
    :catchall_2
    move-exception v0

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 304
    :cond_b
    const-wide/16 v6, 0x270f

    cmp-long v0, v4, v6

    if-lez v0, :cond_c

    .line 305
    const-wide/16 v6, 0x30

    const-wide/16 v8, 0x2710

    :try_start_b
    div-long v8, v4, v8

    const-wide/16 v10, 0xa

    rem-long/2addr v8, v10

    add-long/2addr v6, v8

    long-to-int v0, v6

    int-to-char v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 306
    :cond_c
    const-wide/16 v6, 0x3e7

    cmp-long v0, v4, v6

    if-lez v0, :cond_d

    .line 307
    const-wide/16 v6, 0x30

    const-wide/16 v8, 0x3e8

    div-long v8, v4, v8

    const-wide/16 v10, 0xa

    rem-long/2addr v8, v10

    add-long/2addr v6, v8

    long-to-int v0, v6

    int-to-char v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 308
    :cond_d
    const-wide/16 v6, 0x63

    cmp-long v0, v4, v6

    if-lez v0, :cond_e

    .line 309
    const-wide/16 v6, 0x30

    const-wide/16 v8, 0x64

    div-long v8, v4, v8

    const-wide/16 v10, 0xa

    rem-long/2addr v8, v10

    add-long/2addr v6, v8

    long-to-int v0, v6

    int-to-char v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 310
    :cond_e
    const-wide/16 v6, 0x9

    cmp-long v0, v4, v6

    if-lez v0, :cond_f

    .line 311
    const-wide/16 v6, 0x30

    const-wide/16 v8, 0xa

    div-long v8, v4, v8

    const-wide/16 v10, 0xa

    rem-long/2addr v8, v10

    add-long/2addr v6, v8

    long-to-int v0, v6

    int-to-char v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 312
    :cond_f
    const-wide/16 v6, 0x30

    const-wide/16 v8, 0xa

    rem-long/2addr v4, v8

    add-long/2addr v4, v6

    long-to-int v0, v4

    int-to-char v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 317
    :cond_10
    const-string/jumbo v0, " - "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto/16 :goto_4

    .line 338
    :cond_11
    :try_start_c
    iget-object v2, p0, Lorg/mortbay/jetty/NCSARequestLog;->_writer:Ljava/io/Writer;

    monitor-enter v2
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    .line 340
    :try_start_d
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 341
    iget-object v4, p0, Lorg/mortbay/jetty/NCSARequestLog;->_copy:[C

    array-length v4, v4

    if-le v0, v4, :cond_12

    .line 342
    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_copy:[C

    array-length v0, v0

    .line 343
    :cond_12
    const/4 v4, 0x0

    iget-object v5, p0, Lorg/mortbay/jetty/NCSARequestLog;->_copy:[C

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v0, v5, v6}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 344
    iget-object v3, p0, Lorg/mortbay/jetty/NCSARequestLog;->_writer:Ljava/io/Writer;

    iget-object v4, p0, Lorg/mortbay/jetty/NCSARequestLog;->_copy:[C

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Ljava/io/Writer;->write([CII)V

    .line 345
    invoke-virtual {v1}, Lorg/mortbay/util/Utf8StringBuffer;->reset()V

    .line 346
    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_buffers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    iget-boolean v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_extended:Z

    if-eqz v0, :cond_13

    .line 350
    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_writer:Ljava/io/Writer;

    invoke-virtual {p0, p1, p2, v0}, Lorg/mortbay/jetty/NCSARequestLog;->logExtended(Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;Ljava/io/Writer;)V

    .line 353
    :cond_13
    iget-boolean v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_logCookies:Z

    if-eqz v0, :cond_15

    .line 355
    invoke-virtual {p1}, Lorg/mortbay/jetty/Request;->getCookies()[Ljavax/servlet/http/Cookie;

    move-result-object v1

    .line 356
    if-eqz v1, :cond_14

    array-length v0, v1

    if-nez v0, :cond_17

    .line 357
    :cond_14
    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_writer:Ljava/io/Writer;

    const-string/jumbo v1, " -"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 373
    :cond_15
    :goto_5
    iget-boolean v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_logLatency:Z

    if-eqz v0, :cond_16

    .line 375
    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_writer:Ljava/io/Writer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 376
    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_writer:Ljava/io/Writer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1}, Lorg/mortbay/jetty/Request;->getTimeStamp()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Lorg/mortbay/util/TypeUtil;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 379
    :cond_16
    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_writer:Ljava/io/Writer;

    sget-object v1, Lorg/mortbay/util/StringUtil;->__LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 381
    monitor-exit v2

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    .line 360
    :cond_17
    :try_start_f
    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_writer:Ljava/io/Writer;

    const-string/jumbo v3, " \""

    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 361
    const/4 v0, 0x0

    :goto_6
    array-length v3, v1

    if-ge v0, v3, :cond_19

    .line 363
    if-eqz v0, :cond_18

    .line 364
    iget-object v3, p0, Lorg/mortbay/jetty/NCSARequestLog;->_writer:Ljava/io/Writer;

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    .line 365
    :cond_18
    iget-object v3, p0, Lorg/mortbay/jetty/NCSARequestLog;->_writer:Ljava/io/Writer;

    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljavax/servlet/http/Cookie;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 366
    iget-object v3, p0, Lorg/mortbay/jetty/NCSARequestLog;->_writer:Ljava/io/Writer;

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    .line 367
    iget-object v3, p0, Lorg/mortbay/jetty/NCSARequestLog;->_writer:Ljava/io/Writer;

    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljavax/servlet/http/Cookie;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 361
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 369
    :cond_19
    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->_writer:Ljava/io/Writer;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_5
.end method

.method protected logExtended(Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x22

    .line 396
    const-string/jumbo v0, "Referer"

    invoke-virtual {p1, v0}, Lorg/mortbay/jetty/Request;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 397
    if-nez v0, :cond_0

    .line 398
    const-string/jumbo v0, "\"-\" "

    invoke-virtual {p3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 406
    :goto_0
    const-string/jumbo v0, "User-Agent"

    invoke-virtual {p1, v0}, Lorg/mortbay/jetty/Request;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 407
    if-nez v0, :cond_1

    .line 408
    const-string/jumbo v0, "\"-\" "

    invoke-virtual {p3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 415
    :goto_1
    return-void

    .line 401
    :cond_0
    invoke-virtual {p3, v1}, Ljava/io/Writer;->write(I)V

    .line 402
    invoke-virtual {p3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 403
    const-string/jumbo v0, "\" "

    invoke-virtual {p3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 411
    :cond_1
    invoke-virtual {p3, v1}, Ljava/io/Writer;->write(I)V

    .line 412
    invoke-virtual {p3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p3, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_1
.end method

.method public setAppend(Z)V
    .locals 0

    .prologue
    .line 176
    iput-boolean p1, p0, Lorg/mortbay/jetty/NCSARequestLog;->_append:Z

    .line 177
    return-void
.end method

.method public setExtended(Z)V
    .locals 0

    .prologue
    .line 166
    iput-boolean p1, p0, Lorg/mortbay/jetty/NCSARequestLog;->_extended:Z

    .line 167
    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 98
    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 102
    const/4 p1, 0x0

    .line 104
    :cond_0
    iput-object p1, p0, Lorg/mortbay/jetty/NCSARequestLog;->_filename:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setFilenameDateFormat(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 485
    iput-object p1, p0, Lorg/mortbay/jetty/NCSARequestLog;->_filenameDateFormat:Ljava/lang/String;

    .line 486
    return-void
.end method

.method public setIgnorePaths([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lorg/mortbay/jetty/NCSARequestLog;->_ignorePaths:[Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setLogCookies(Z)V
    .locals 0

    .prologue
    .line 196
    iput-boolean p1, p0, Lorg/mortbay/jetty/NCSARequestLog;->_logCookies:Z

    .line 197
    return-void
.end method

.method public setLogDateFormat(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lorg/mortbay/jetty/NCSARequestLog;->_logDateFormat:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setLogLatency(Z)V
    .locals 0

    .prologue
    .line 216
    iput-boolean p1, p0, Lorg/mortbay/jetty/NCSARequestLog;->_logLatency:Z

    .line 217
    return-void
.end method

.method public setLogLocale(Ljava/util/Locale;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lorg/mortbay/jetty/NCSARequestLog;->_logLocale:Ljava/util/Locale;

    .line 137
    return-void
.end method

.method public setLogServer(Z)V
    .locals 0

    .prologue
    .line 211
    iput-boolean p1, p0, Lorg/mortbay/jetty/NCSARequestLog;->_logServer:Z

    .line 212
    return-void
.end method

.method public setLogTimeZone(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lorg/mortbay/jetty/NCSARequestLog;->_logTimeZone:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setPreferProxiedForAddress(Z)V
    .locals 0

    .prologue
    .line 226
    iput-boolean p1, p0, Lorg/mortbay/jetty/NCSARequestLog;->_preferProxiedForAddress:Z

    .line 227
    return-void
.end method

.method public setRetainDays(I)V
    .locals 0

    .prologue
    .line 156
    iput p1, p0, Lorg/mortbay/jetty/NCSARequestLog;->_retainDays:I

    .line 157
    return-void
.end method
