.class public Lorg/mortbay/jetty/handler/StatisticsHandler;
.super Lorg/mortbay/jetty/handler/AbstractStatisticsHandler;
.source "StatisticsHandler.java"


# instance fields
.field private transient _maxRequestTime:J

.field private transient _minRequestTime:J

.field private transient _requests:I

.field private transient _requestsActive:I

.field private transient _requestsActiveMax:I

.field private transient _responses1xx:I

.field private transient _responses2xx:I

.field private transient _responses3xx:I

.field private transient _responses4xx:I

.field private transient _responses5xx:I

.field private transient _statsStartedAt:J

.field private transient _totalRequestTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/mortbay/jetty/handler/AbstractStatisticsHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequestTimeAverage()J
    .locals 4

    .prologue
    .line 212
    monitor-enter p0

    .line 214
    :try_start_0
    iget v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_requests:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_totalRequestTime:J

    iget v2, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_requests:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRequestTimeMax()J
    .locals 2

    .prologue
    .line 196
    monitor-enter p0

    .line 198
    :try_start_0
    iget-wide v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_maxRequestTime:J

    monitor-exit p0

    return-wide v0

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRequestTimeMin()J
    .locals 2

    .prologue
    .line 188
    monitor-enter p0

    .line 190
    :try_start_0
    iget-wide v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_minRequestTime:J

    monitor-exit p0

    return-wide v0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRequestTimeTotal()J
    .locals 2

    .prologue
    .line 204
    monitor-enter p0

    .line 206
    :try_start_0
    iget-wide v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_totalRequestTime:J

    monitor-exit p0

    return-wide v0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRequests()I
    .locals 1

    .prologue
    .line 116
    monitor-enter p0

    .line 118
    :try_start_0
    iget v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_requests:I

    monitor-exit p0

    return v0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRequestsActive()I
    .locals 1

    .prologue
    .line 124
    monitor-enter p0

    .line 126
    :try_start_0
    iget v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_requestsActive:I

    monitor-exit p0

    return v0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRequestsActiveMax()I
    .locals 1

    .prologue
    .line 132
    monitor-enter p0

    .line 134
    :try_start_0
    iget v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_requestsActiveMax:I

    monitor-exit p0

    return v0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getResponses1xx()I
    .locals 1

    .prologue
    .line 140
    monitor-enter p0

    .line 142
    :try_start_0
    iget v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_responses1xx:I

    monitor-exit p0

    return v0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getResponses2xx()I
    .locals 1

    .prologue
    .line 148
    monitor-enter p0

    .line 150
    :try_start_0
    iget v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_responses2xx:I

    monitor-exit p0

    return v0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getResponses3xx()I
    .locals 1

    .prologue
    .line 156
    monitor-enter p0

    .line 158
    :try_start_0
    iget v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_responses3xx:I

    monitor-exit p0

    return v0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getResponses4xx()I
    .locals 1

    .prologue
    .line 164
    monitor-enter p0

    .line 166
    :try_start_0
    iget v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_responses4xx:I

    monitor-exit p0

    return v0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getResponses5xx()I
    .locals 1

    .prologue
    .line 172
    monitor-enter p0

    .line 174
    :try_start_0
    iget v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_responses5xx:I

    monitor-exit p0

    return v0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getStatsOnMs()J
    .locals 4

    .prologue
    .line 180
    monitor-enter p0

    .line 182
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_statsStartedAt:J

    sub-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 42
    monitor-enter p0

    .line 44
    :try_start_0
    iget v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_requests:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_requests:I

    .line 45
    iget v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_requestsActive:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_requestsActive:I

    .line 46
    iget v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_requestsActive:I

    iget v1, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_requestsActiveMax:I

    if-le v0, v1, :cond_0

    .line 47
    iget v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_requestsActive:I

    iput v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_requestsActiveMax:I

    .line 48
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 53
    :try_start_1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/mortbay/jetty/handler/AbstractStatisticsHandler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 59
    monitor-enter p0

    .line 61
    :try_start_2
    iget v2, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_requestsActive:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_requestsActive:I

    .line 62
    iget v2, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_requestsActive:I

    if-gez v2, :cond_1

    const/4 v2, 0x0

    iput v2, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_requestsActive:I

    .line 64
    :cond_1
    iget-wide v2, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_totalRequestTime:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_totalRequestTime:J

    .line 65
    iget-wide v2, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_minRequestTime:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    iget-wide v2, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_minRequestTime:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_3

    .line 66
    :cond_2
    iput-wide v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_minRequestTime:J

    .line 67
    :cond_3
    iget-wide v2, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_maxRequestTime:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_4

    .line 68
    iput-wide v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_maxRequestTime:J

    .line 70
    :cond_4
    instance-of v0, p3, Lorg/mortbay/jetty/Response;

    if-eqz v0, :cond_a

    check-cast p3, Lorg/mortbay/jetty/Response;

    .line 71
    :goto_0
    invoke-virtual {p3}, Lorg/mortbay/jetty/Response;->getStatus()I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    packed-switch v0, :pswitch_data_0

    .line 91
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 93
    return-void

    .line 48
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 57
    :catchall_1
    move-exception v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    .line 59
    monitor-enter p0

    .line 61
    :try_start_4
    iget v3, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_requestsActive:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_requestsActive:I

    .line 62
    iget v3, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_requestsActive:I

    if-gez v3, :cond_5

    const/4 v3, 0x0

    iput v3, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_requestsActive:I

    .line 64
    :cond_5
    iget-wide v4, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_totalRequestTime:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_totalRequestTime:J

    .line 65
    iget-wide v4, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_minRequestTime:J

    cmp-long v3, v0, v4

    if-ltz v3, :cond_6

    iget-wide v4, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_minRequestTime:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_7

    .line 66
    :cond_6
    iput-wide v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_minRequestTime:J

    .line 67
    :cond_7
    iget-wide v4, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_maxRequestTime:J

    cmp-long v3, v0, v4

    if-lez v3, :cond_8

    .line 68
    iput-wide v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_maxRequestTime:J

    .line 70
    :cond_8
    instance-of v0, p3, Lorg/mortbay/jetty/Response;

    if-eqz v0, :cond_9

    check-cast p3, Lorg/mortbay/jetty/Response;

    .line 71
    :goto_2
    invoke-virtual {p3}, Lorg/mortbay/jetty/Response;->getStatus()I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    packed-switch v0, :pswitch_data_1

    .line 91
    :goto_3
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 57
    throw v2

    .line 91
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 70
    :cond_9
    :try_start_6
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponse()Lorg/mortbay/jetty/Response;

    move-result-object p3

    goto :goto_2

    .line 74
    :pswitch_0
    iget v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_responses1xx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_responses1xx:I

    goto :goto_3

    .line 77
    :pswitch_1
    iget v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_responses2xx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_responses2xx:I

    goto :goto_3

    .line 80
    :pswitch_2
    iget v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_responses3xx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_responses3xx:I

    goto :goto_3

    .line 83
    :pswitch_3
    iget v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_responses4xx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_responses4xx:I

    goto :goto_3

    .line 86
    :pswitch_4
    iget v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_responses5xx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_responses5xx:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    .line 91
    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    .line 70
    :cond_a
    :try_start_8
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponse()Lorg/mortbay/jetty/Response;

    move-result-object p3

    goto/16 :goto_0

    .line 74
    :pswitch_5
    iget v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_responses1xx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_responses1xx:I

    goto/16 :goto_1

    .line 77
    :pswitch_6
    iget v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_responses2xx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_responses2xx:I

    goto/16 :goto_1

    .line 80
    :pswitch_7
    iget v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_responses3xx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_responses3xx:I

    goto/16 :goto_1

    .line 83
    :pswitch_8
    iget v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_responses4xx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_responses4xx:I

    goto/16 :goto_1

    .line 86
    :pswitch_9
    iget v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_responses5xx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_responses5xx:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto/16 :goto_1

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public statsReset()V
    .locals 2

    .prologue
    .line 97
    monitor-enter p0

    .line 99
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_statsStartedAt:J

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_requests:I

    .line 101
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_minRequestTime:J

    .line 102
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_maxRequestTime:J

    .line 103
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_totalRequestTime:J

    .line 104
    iget v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_requestsActive:I

    iput v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_requestsActiveMax:I

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_requestsActive:I

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_responses1xx:I

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_responses2xx:I

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_responses3xx:I

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_responses4xx:I

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->_responses5xx:I

    .line 111
    monitor-exit p0

    .line 112
    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
