.class public final Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;
.super Ljava/lang/Object;
.source "StandardHttpRequestor.java"


# instance fields
.field private connectTimeoutMillis:J

.field private proxy:Ljava/net/Proxy;

.field private readTimeoutMillis:J


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    .line 320
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    sget-wide v2, Lcom/dropbox/core/http/HttpRequestor;->DEFAULT_CONNECT_TIMEOUT_MILLIS:J

    sget-wide v4, Lcom/dropbox/core/http/HttpRequestor;->DEFAULT_READ_TIMEOUT_MILLIS:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;-><init>(Ljava/net/Proxy;JJ)V

    .line 321
    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/core/http/StandardHttpRequestor$1;)V
    .locals 0

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/net/Proxy;JJ)V
    .locals 0

    .prologue
    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iput-object p1, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;->proxy:Ljava/net/Proxy;

    .line 325
    iput-wide p2, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;->connectTimeoutMillis:J

    .line 326
    iput-wide p4, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;->readTimeoutMillis:J

    .line 327
    return-void
.end method

.method synthetic constructor <init>(Ljava/net/Proxy;JJLcom/dropbox/core/http/StandardHttpRequestor$1;)V
    .locals 0

    .prologue
    .line 314
    invoke-direct/range {p0 .. p5}, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;-><init>(Ljava/net/Proxy;JJ)V

    return-void
.end method

.method private static checkTimeoutMillis(JLjava/util/concurrent/TimeUnit;)J
    .locals 4

    .prologue
    .line 420
    if-nez p2, :cond_0

    .line 421
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "unit"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 424
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_1
    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 427
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v2, v0

    if-gez v2, :cond_2

    .line 428
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout too large, must be less than: 2147483647"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_2
    return-wide v0
.end method


# virtual methods
.method public build()Lcom/dropbox/core/http/StandardHttpRequestor$Config;
    .locals 7

    .prologue
    .line 412
    new-instance v0, Lcom/dropbox/core/http/StandardHttpRequestor$Config;

    iget-object v1, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;->proxy:Ljava/net/Proxy;

    iget-wide v2, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;->connectTimeoutMillis:J

    iget-wide v4, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;->readTimeoutMillis:J

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/http/StandardHttpRequestor$Config;-><init>(Ljava/net/Proxy;JJLcom/dropbox/core/http/StandardHttpRequestor$1;)V

    return-object v0
.end method

.method public withConnectTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;
    .locals 3

    .prologue
    .line 370
    invoke-static {p1, p2, p3}, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;->checkTimeoutMillis(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;->connectTimeoutMillis:J

    .line 371
    return-object p0
.end method

.method public withNoConnectTimeout()Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;
    .locals 3

    .prologue
    .line 353
    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;->withConnectTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withNoReadTimeout()Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;
    .locals 3

    .prologue
    .line 380
    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;->withReadTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withProxy(Ljava/net/Proxy;)Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;
    .locals 2

    .prologue
    .line 339
    if-nez p1, :cond_0

    .line 340
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "proxy"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;->proxy:Ljava/net/Proxy;

    .line 343
    return-object p0
.end method

.method public withReadTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;
    .locals 3

    .prologue
    .line 402
    invoke-static {p1, p2, p3}, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;->checkTimeoutMillis(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;->readTimeoutMillis:J

    .line 403
    return-object p0
.end method
