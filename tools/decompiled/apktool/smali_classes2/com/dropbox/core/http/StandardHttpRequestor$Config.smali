.class public final Lcom/dropbox/core/http/StandardHttpRequestor$Config;
.super Ljava/lang/Object;
.source "StandardHttpRequestor.java"


# static fields
.field public static final DEFAULT_INSTANCE:Lcom/dropbox/core/http/StandardHttpRequestor$Config;


# instance fields
.field private final connectTimeoutMillis:J

.field private final proxy:Ljava/net/Proxy;

.field private final readTimeoutMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 242
    invoke-static {}, Lcom/dropbox/core/http/StandardHttpRequestor$Config;->builder()Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;->build()Lcom/dropbox/core/http/StandardHttpRequestor$Config;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/http/StandardHttpRequestor$Config;->DEFAULT_INSTANCE:Lcom/dropbox/core/http/StandardHttpRequestor$Config;

    return-void
.end method

.method private constructor <init>(Ljava/net/Proxy;JJ)V
    .locals 0

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-object p1, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Config;->proxy:Ljava/net/Proxy;

    .line 252
    iput-wide p2, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Config;->connectTimeoutMillis:J

    .line 253
    iput-wide p4, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Config;->readTimeoutMillis:J

    .line 254
    return-void
.end method

.method synthetic constructor <init>(Ljava/net/Proxy;JJLcom/dropbox/core/http/StandardHttpRequestor$1;)V
    .locals 0

    .prologue
    .line 237
    invoke-direct/range {p0 .. p5}, Lcom/dropbox/core/http/StandardHttpRequestor$Config;-><init>(Ljava/net/Proxy;JJ)V

    return-void
.end method

.method public static builder()Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;
    .locals 2

    .prologue
    .line 308
    new-instance v0, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;-><init>(Lcom/dropbox/core/http/StandardHttpRequestor$1;)V

    return-object v0
.end method


# virtual methods
.method public copy()Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;
    .locals 7

    .prologue
    .line 299
    new-instance v0, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;

    iget-object v1, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Config;->proxy:Ljava/net/Proxy;

    iget-wide v2, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Config;->connectTimeoutMillis:J

    iget-wide v4, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Config;->readTimeoutMillis:J

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;-><init>(Ljava/net/Proxy;JJLcom/dropbox/core/http/StandardHttpRequestor$1;)V

    return-object v0
.end method

.method public getConnectTimeoutMillis()J
    .locals 2

    .prologue
    .line 275
    iget-wide v0, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Config;->connectTimeoutMillis:J

    return-wide v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Config;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public getReadTimeoutMillis()J
    .locals 2

    .prologue
    .line 288
    iget-wide v0, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Config;->readTimeoutMillis:J

    return-wide v0
.end method
