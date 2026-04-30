.class public Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkMockHttpResponse;
.super Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;
.source "AdobeNetworkMockHttpResponse.java"


# instance fields
.field protected exception:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getException()Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkMockHttpResponse;->exception:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    return-object v0
.end method

.method public setBytesReceived(I)V
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkMockHttpResponse;->bytesReceived:I

    .line 47
    return-void
.end method

.method public setBytesSent(I)V
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkMockHttpResponse;->bytesSent:I

    .line 42
    return-void
.end method

.method public setData(Ljava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkMockHttpResponse;->data:Ljava/nio/ByteBuffer;

    .line 22
    return-void
.end method

.method public setException(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 0

    .prologue
    .line 51
    if-eqz p1, :cond_0

    .line 52
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkMockHttpResponse;->exception:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    .line 54
    :cond_0
    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkMockHttpResponse;->headers:Ljava/util/Map;

    .line 37
    return-void
.end method

.method public setStatusCode(I)V
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkMockHttpResponse;->statusCode:I

    .line 27
    return-void
.end method

.method public setURL(Ljava/net/URL;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkMockHttpResponse;->url:Ljava/net/URL;

    .line 17
    return-void
.end method

.method public setUrl(Ljava/net/URL;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkMockHttpResponse;->url:Ljava/net/URL;

    .line 32
    return-void
.end method
