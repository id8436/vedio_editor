.class public Lorg/mortbay/util/DateCache;
.super Ljava/lang/Object;
.source "DateCache.java"


# static fields
.field public static DEFAULT_FORMAT:Ljava/lang/String;

.field private static __hitWindow:J


# instance fields
.field private _dfs:Ljava/text/DateFormatSymbols;

.field private _formatString:Ljava/lang/String;

.field private _lastMinutes:J

.field private _lastMs:I

.field private _lastResult:Ljava/lang/String;

.field private _lastSeconds:J

.field private _locale:Ljava/util/Locale;

.field private _minFormat:Ljava/text/SimpleDateFormat;

.field private _minFormatString:Ljava/lang/String;

.field private _secFormatString:Ljava/lang/String;

.field private _secFormatString0:Ljava/lang/String;

.field private _secFormatString1:Ljava/lang/String;

.field private _tzFormat:Ljava/text/SimpleDateFormat;

.field private _tzFormatString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const-string/jumbo v0, "EEE MMM dd HH:mm:ss zzz yyyy"

    sput-object v0, Lorg/mortbay/util/DateCache;->DEFAULT_FORMAT:Ljava/lang/String;

    .line 45
    const-wide/16 v0, 0xe10

    sput-wide v0, Lorg/mortbay/util/DateCache;->__hitWindow:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 73
    sget-object v0, Lorg/mortbay/util/DateCache;->DEFAULT_FORMAT:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/mortbay/util/DateCache;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lorg/mortbay/util/DateCache;->getFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-wide v2, p0, Lorg/mortbay/util/DateCache;->_lastMinutes:J

    .line 59
    iput-wide v2, p0, Lorg/mortbay/util/DateCache;->_lastSeconds:J

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lorg/mortbay/util/DateCache;->_lastMs:I

    .line 61
    iput-object v1, p0, Lorg/mortbay/util/DateCache;->_lastResult:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lorg/mortbay/util/DateCache;->_locale:Ljava/util/Locale;

    .line 64
    iput-object v1, p0, Lorg/mortbay/util/DateCache;->_dfs:Ljava/text/DateFormatSymbols;

    .line 83
    iput-object p1, p0, Lorg/mortbay/util/DateCache;->_formatString:Ljava/lang/String;

    .line 84
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/util/DateCache;->setTimeZone(Ljava/util/TimeZone;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-wide v2, p0, Lorg/mortbay/util/DateCache;->_lastMinutes:J

    .line 59
    iput-wide v2, p0, Lorg/mortbay/util/DateCache;->_lastSeconds:J

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lorg/mortbay/util/DateCache;->_lastMs:I

    .line 61
    iput-object v1, p0, Lorg/mortbay/util/DateCache;->_lastResult:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lorg/mortbay/util/DateCache;->_locale:Ljava/util/Locale;

    .line 64
    iput-object v1, p0, Lorg/mortbay/util/DateCache;->_dfs:Ljava/text/DateFormatSymbols;

    .line 99
    iput-object p1, p0, Lorg/mortbay/util/DateCache;->_formatString:Ljava/lang/String;

    .line 100
    iput-object p2, p0, Lorg/mortbay/util/DateCache;->_dfs:Ljava/text/DateFormatSymbols;

    .line 101
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/util/DateCache;->setTimeZone(Ljava/util/TimeZone;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-wide v2, p0, Lorg/mortbay/util/DateCache;->_lastMinutes:J

    .line 59
    iput-wide v2, p0, Lorg/mortbay/util/DateCache;->_lastSeconds:J

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lorg/mortbay/util/DateCache;->_lastMs:I

    .line 61
    iput-object v1, p0, Lorg/mortbay/util/DateCache;->_lastResult:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lorg/mortbay/util/DateCache;->_locale:Ljava/util/Locale;

    .line 64
    iput-object v1, p0, Lorg/mortbay/util/DateCache;->_dfs:Ljava/text/DateFormatSymbols;

    .line 91
    iput-object p1, p0, Lorg/mortbay/util/DateCache;->_formatString:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Lorg/mortbay/util/DateCache;->_locale:Ljava/util/Locale;

    .line 93
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/util/DateCache;->setTimeZone(Ljava/util/TimeZone;)V

    .line 94
    return-void
.end method

.method private setMinFormatString()V
    .locals 4

    .prologue
    .line 193
    iget-object v0, p0, Lorg/mortbay/util/DateCache;->_tzFormatString:Ljava/lang/String;

    const-string/jumbo v1, "ss.SSS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 195
    if-ltz v0, :cond_0

    .line 196
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ms not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_0
    iget-object v0, p0, Lorg/mortbay/util/DateCache;->_tzFormatString:Ljava/lang/String;

    const-string/jumbo v1, "ss"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 198
    const/4 v1, 0x2

    .line 201
    iget-object v2, p0, Lorg/mortbay/util/DateCache;->_tzFormatString:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 202
    iget-object v3, p0, Lorg/mortbay/util/DateCache;->_tzFormatString:Ljava/lang/String;

    add-int/2addr v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 203
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\'ss\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/util/DateCache;->_minFormatString:Ljava/lang/String;

    .line 204
    return-void
.end method

.method private setTzFormatString(Ljava/util/TimeZone;)V
    .locals 7

    .prologue
    const/16 v6, 0x30

    const/16 v5, 0xa

    .line 151
    iget-object v0, p0, Lorg/mortbay/util/DateCache;->_formatString:Ljava/lang/String;

    const-string/jumbo v1, "ZZZ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 152
    if-ltz v0, :cond_3

    .line 154
    iget-object v1, p0, Lorg/mortbay/util/DateCache;->_formatString:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 155
    iget-object v2, p0, Lorg/mortbay/util/DateCache;->_formatString:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    .line 158
    new-instance v3, Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/mortbay/util/DateCache;->_formatString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xa

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 159
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    const-string/jumbo v1, "\'"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    if-ltz v0, :cond_2

    .line 162
    const/16 v1, 0x2b

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 169
    :goto_0
    const v1, 0xea60

    div-int/2addr v0, v1

    .line 170
    div-int/lit8 v1, v0, 0x3c

    .line 171
    rem-int/lit8 v0, v0, 0x3c

    .line 173
    if-ge v1, v5, :cond_0

    .line 174
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 175
    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 176
    if-ge v0, v5, :cond_1

    .line 177
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 178
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 179
    const/16 v0, 0x27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 181
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/util/DateCache;->_tzFormatString:Ljava/lang/String;

    .line 186
    :goto_1
    invoke-direct {p0}, Lorg/mortbay/util/DateCache;->setMinFormatString()V

    .line 187
    return-void

    .line 165
    :cond_2
    neg-int v0, v0

    .line 166
    const/16 v1, 0x2d

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 185
    :cond_3
    iget-object v0, p0, Lorg/mortbay/util/DateCache;->_formatString:Ljava/lang/String;

    iput-object v0, p0, Lorg/mortbay/util/DateCache;->_tzFormatString:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized format(J)Ljava/lang/String;
    .locals 9

    .prologue
    .line 223
    monitor-enter p0

    const-wide/16 v0, 0x3e8

    :try_start_0
    div-long v0, p1, v0

    .line 226
    iget-wide v2, p0, Lorg/mortbay/util/DateCache;->_lastSeconds:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lorg/mortbay/util/DateCache;->_lastSeconds:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-wide v2, p0, Lorg/mortbay/util/DateCache;->_lastSeconds:J

    sget-wide v4, Lorg/mortbay/util/DateCache;->__hitWindow:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 230
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 231
    iget-object v1, p0, Lorg/mortbay/util/DateCache;->_tzFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 269
    :goto_0
    monitor-exit p0

    return-object v0

    .line 237
    :cond_1
    :try_start_1
    iget-wide v2, p0, Lorg/mortbay/util/DateCache;->_lastSeconds:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_2

    .line 238
    iget-object v0, p0, Lorg/mortbay/util/DateCache;->_lastResult:Ljava/lang/String;

    goto :goto_0

    .line 240
    :cond_2
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 243
    const-wide/16 v4, 0x3c

    div-long v4, v0, v4

    .line 244
    iget-wide v6, p0, Lorg/mortbay/util/DateCache;->_lastMinutes:J

    cmp-long v3, v6, v4

    if-eqz v3, :cond_3

    .line 246
    iput-wide v4, p0, Lorg/mortbay/util/DateCache;->_lastMinutes:J

    .line 247
    iget-object v3, p0, Lorg/mortbay/util/DateCache;->_minFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/util/DateCache;->_secFormatString:Ljava/lang/String;

    .line 249
    iget-object v2, p0, Lorg/mortbay/util/DateCache;->_secFormatString:Ljava/lang/String;

    const-string/jumbo v3, "ss"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 250
    const/4 v3, 0x2

    .line 251
    iget-object v4, p0, Lorg/mortbay/util/DateCache;->_secFormatString:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/mortbay/util/DateCache;->_secFormatString0:Ljava/lang/String;

    .line 252
    iget-object v4, p0, Lorg/mortbay/util/DateCache;->_secFormatString:Ljava/lang/String;

    add-int/2addr v2, v3

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/util/DateCache;->_secFormatString1:Ljava/lang/String;

    .line 256
    :cond_3
    iput-wide v0, p0, Lorg/mortbay/util/DateCache;->_lastSeconds:J

    .line 257
    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/mortbay/util/DateCache;->_secFormatString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 258
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 260
    :try_start_2
    iget-object v3, p0, Lorg/mortbay/util/DateCache;->_secFormatString0:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    const-wide/16 v4, 0x3c

    rem-long/2addr v0, v4

    long-to-int v0, v0

    .line 262
    const/16 v1, 0xa

    if-ge v0, v1, :cond_4

    .line 263
    const/16 v1, 0x30

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 264
    :cond_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 265
    iget-object v0, p0, Lorg/mortbay/util/DateCache;->_secFormatString1:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 266
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/util/DateCache;->_lastResult:Ljava/lang/String;

    .line 267
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 269
    :try_start_3
    iget-object v0, p0, Lorg/mortbay/util/DateCache;->_lastResult:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 267
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 223
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized format(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 213
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/mortbay/util/DateCache;->format(J)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public format(JLjava/lang/StringBuffer;)V
    .locals 1

    .prologue
    .line 279
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/util/DateCache;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 280
    return-void
.end method

.method public getFormat()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lorg/mortbay/util/DateCache;->_minFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public getFormatString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lorg/mortbay/util/DateCache;->_formatString:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/mortbay/util/DateCache;->_tzFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public lastMs()I
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lorg/mortbay/util/DateCache;->_lastMs:I

    return v0
.end method

.method public now()Ljava/lang/String;
    .locals 4

    .prologue
    .line 299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 300
    const-wide/16 v2, 0x3e8

    rem-long v2, v0, v2

    long-to-int v2, v2

    iput v2, p0, Lorg/mortbay/util/DateCache;->_lastMs:I

    .line 301
    invoke-virtual {p0, v0, v1}, Lorg/mortbay/util/DateCache;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 110
    invoke-direct {p0, p1}, Lorg/mortbay/util/DateCache;->setTzFormatString(Ljava/util/TimeZone;)V

    .line 111
    iget-object v0, p0, Lorg/mortbay/util/DateCache;->_locale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/mortbay/util/DateCache;->_tzFormatString:Ljava/lang/String;

    iget-object v2, p0, Lorg/mortbay/util/DateCache;->_locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/mortbay/util/DateCache;->_tzFormat:Ljava/text/SimpleDateFormat;

    .line 114
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/mortbay/util/DateCache;->_minFormatString:Ljava/lang/String;

    iget-object v2, p0, Lorg/mortbay/util/DateCache;->_locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/mortbay/util/DateCache;->_minFormat:Ljava/text/SimpleDateFormat;

    .line 126
    :goto_0
    iget-object v0, p0, Lorg/mortbay/util/DateCache;->_tzFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 127
    iget-object v0, p0, Lorg/mortbay/util/DateCache;->_minFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 128
    iput-wide v4, p0, Lorg/mortbay/util/DateCache;->_lastSeconds:J

    .line 129
    iput-wide v4, p0, Lorg/mortbay/util/DateCache;->_lastMinutes:J

    .line 130
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lorg/mortbay/util/DateCache;->_dfs:Ljava/text/DateFormatSymbols;

    if-eqz v0, :cond_1

    .line 118
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/mortbay/util/DateCache;->_tzFormatString:Ljava/lang/String;

    iget-object v2, p0, Lorg/mortbay/util/DateCache;->_dfs:Ljava/text/DateFormatSymbols;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    iput-object v0, p0, Lorg/mortbay/util/DateCache;->_tzFormat:Ljava/text/SimpleDateFormat;

    .line 119
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/mortbay/util/DateCache;->_minFormatString:Ljava/lang/String;

    iget-object v2, p0, Lorg/mortbay/util/DateCache;->_dfs:Ljava/text/DateFormatSymbols;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    iput-object v0, p0, Lorg/mortbay/util/DateCache;->_minFormat:Ljava/text/SimpleDateFormat;

    goto :goto_0

    .line 123
    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/mortbay/util/DateCache;->_tzFormatString:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/mortbay/util/DateCache;->_tzFormat:Ljava/text/SimpleDateFormat;

    .line 124
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/mortbay/util/DateCache;->_minFormatString:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/mortbay/util/DateCache;->_minFormat:Ljava/text/SimpleDateFormat;

    goto :goto_0
.end method

.method public setTimeZoneID(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 145
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/util/DateCache;->setTimeZone(Ljava/util/TimeZone;)V

    .line 146
    return-void
.end method
