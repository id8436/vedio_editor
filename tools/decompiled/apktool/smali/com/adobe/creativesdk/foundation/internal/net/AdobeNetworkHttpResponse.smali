.class public Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;
.super Ljava/lang/Object;
.source "AdobeNetworkHttpResponse.java"


# instance fields
.field private _networkException:Ljava/lang/Exception;

.field protected bytesReceived:I

.field protected bytesSent:I

.field protected data:Ljava/nio/ByteBuffer;

.field private hasFileError:Z

.field protected headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private noStorageSpaceError:Ljava/lang/Boolean;

.field protected statusCode:I

.field protected url:Ljava/net/URL;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->data:Ljava/nio/ByteBuffer;

    .line 32
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->statusCode:I

    .line 33
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->url:Ljava/net/URL;

    .line 34
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->headers:Ljava/util/Map;

    .line 35
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->bytesSent:I

    .line 36
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->bytesReceived:I

    .line 37
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->hasFileError:Z

    .line 38
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->_networkException:Ljava/lang/Exception;

    .line 39
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->noStorageSpaceError:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getBytesReceived()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->bytesReceived:I

    return v0
.end method

.method public getBytesSent()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->bytesSent:I

    return v0
.end method

.method public getDataBytes()[B
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 83
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDataString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 68
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 70
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-object v0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Error during getDataString operation"

    invoke-static {v2, v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 73
    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 76
    goto :goto_0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getNetworkException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->_networkException:Ljava/lang/Exception;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->statusCode:I

    return v0
.end method

.method public getUrl()Ljava/net/URL;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->url:Ljava/net/URL;

    return-object v0
.end method

.method public hasFileError()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->hasFileError:Z

    return v0
.end method

.method public hasNoStorageSpaceError()Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->noStorageSpaceError:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method setBytesReceived(I)V
    .locals 0

    .prologue
    .line 131
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->bytesReceived:I

    .line 132
    return-void
.end method

.method setBytesSent(I)V
    .locals 0

    .prologue
    .line 123
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->bytesSent:I

    .line 124
    return-void
.end method

.method public setData(Ljava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->data:Ljava/nio/ByteBuffer;

    .line 96
    return-void
.end method

.method public setHasFileError(Z)V
    .locals 0

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->hasFileError:Z

    .line 52
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
    .line 115
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->headers:Ljava/util/Map;

    .line 116
    return-void
.end method

.method public setNetworkException(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->_networkException:Ljava/lang/Exception;

    .line 61
    return-void
.end method

.method public setNoStorageSpaceError(Z)V
    .locals 1

    .prologue
    .line 56
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->noStorageSpaceError:Ljava/lang/Boolean;

    .line 57
    return-void
.end method

.method public setStatusCode(I)V
    .locals 0

    .prologue
    .line 99
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->statusCode:I

    .line 100
    return-void
.end method

.method public setURL(Ljava/net/URL;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->url:Ljava/net/URL;

    .line 92
    return-void
.end method

.method setUrl(Ljava/net/URL;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->url:Ljava/net/URL;

    .line 108
    return-void
.end method
