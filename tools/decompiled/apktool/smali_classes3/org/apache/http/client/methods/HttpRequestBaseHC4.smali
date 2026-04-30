.class public abstract Lorg/apache/http/client/methods/HttpRequestBaseHC4;
.super Lorg/apache/http/client/methods/AbstractExecutionAwareRequest;
.source "HttpRequestBaseHC4.java"

# interfaces
.implements Lorg/apache/http/client/methods/Configurable;
.implements Lorg/apache/http/client/methods/HttpUriRequest;


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private config:Lorg/apache/http/client/config/RequestConfig;

.field private uri:Ljava/net/URI;

.field private version:Lorg/apache/http/ProtocolVersion;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/apache/http/client/methods/AbstractExecutionAwareRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfig()Lorg/apache/http/client/config/RequestConfig;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestBaseHC4;->config:Lorg/apache/http/client/config/RequestConfig;

    return-object v0
.end method

.method public abstract getMethod()Ljava/lang/String;
.end method

.method public getProtocolVersion()Lorg/apache/http/ProtocolVersion;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestBaseHC4;->version:Lorg/apache/http/ProtocolVersion;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestBaseHC4;->version:Lorg/apache/http/ProtocolVersion;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBaseHC4;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/params/HttpProtocolParams;->getVersion(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/ProtocolVersion;

    move-result-object v0

    goto :goto_0
.end method

.method public getRequestLine()Lorg/apache/http/RequestLine;
    .locals 4

    .prologue
    .line 77
    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBaseHC4;->getMethod()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBaseHC4;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v2

    .line 79
    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBaseHC4;->getURI()Ljava/net/URI;

    move-result-object v3

    .line 80
    const/4 v0, 0x0

    .line 81
    if-eqz v3, :cond_0

    .line 82
    invoke-virtual {v3}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    .line 84
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 85
    :cond_1
    const-string/jumbo v0, "/"

    .line 87
    :cond_2
    new-instance v3, Lorg/apache/http/message/BasicRequestLine;

    invoke-direct {v3, v1, v0, v2}, Lorg/apache/http/message/BasicRequestLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)V

    return-object v3
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestBaseHC4;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public releaseConnection()V
    .locals 0

    .prologue
    .line 116
    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBaseHC4;->reset()V

    .line 117
    return-void
.end method

.method public setConfig(Lorg/apache/http/client/config/RequestConfig;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lorg/apache/http/client/methods/HttpRequestBaseHC4;->config:Lorg/apache/http/client/config/RequestConfig;

    .line 97
    return-void
.end method

.method public setProtocolVersion(Lorg/apache/http/ProtocolVersion;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lorg/apache/http/client/methods/HttpRequestBaseHC4;->version:Lorg/apache/http/ProtocolVersion;

    .line 60
    return-void
.end method

.method public setURI(Ljava/net/URI;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lorg/apache/http/client/methods/HttpRequestBaseHC4;->uri:Ljava/net/URI;

    .line 101
    return-void
.end method

.method public started()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBaseHC4;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBaseHC4;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBaseHC4;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
