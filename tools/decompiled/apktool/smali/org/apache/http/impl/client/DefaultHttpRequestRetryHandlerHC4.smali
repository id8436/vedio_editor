.class public Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandlerHC4;
.super Ljava/lang/Object;
.source "DefaultHttpRequestRetryHandlerHC4.java"

# interfaces
.implements Lorg/apache/http/client/HttpRequestRetryHandler;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandlerHC4;


# instance fields
.field private final nonRetriableClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/io/IOException;",
            ">;>;"
        }
    .end annotation
.end field

.field private final requestSentRetryEnabled:Z

.field private final retryCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandlerHC4;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandlerHC4;-><init>()V

    sput-object v0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandlerHC4;->INSTANCE:Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandlerHC4;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 121
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandlerHC4;-><init>(IZ)V

    .line 122
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 3

    .prologue
    .line 103
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/io/InterruptedIOException;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/net/UnknownHostException;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Ljava/net/ConnectException;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Ljavax/net/ssl/SSLException;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandlerHC4;-><init>(IZLjava/util/Collection;)V

    .line 108
    return-void
.end method

.method protected constructor <init>(IZLjava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/io/IOException;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandlerHC4;->retryCount:I

    .line 82
    iput-boolean p2, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandlerHC4;->requestSentRetryEnabled:Z

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandlerHC4;->nonRetriableClasses:Ljava/util/Set;

    .line 84
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 85
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandlerHC4;->nonRetriableClasses:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    :cond_0
    return-void
.end method


# virtual methods
.method public getRetryCount()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandlerHC4;->retryCount:I

    return v0
.end method

.method protected handleAsIdempotent(Lorg/apache/http/HttpRequest;)Z
    .locals 1

    .prologue
    .line 186
    instance-of v0, p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequestSentRetryEnabled()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandlerHC4;->requestSentRetryEnabled:Z

    return v0
.end method

.method protected requestIsAborted(Lorg/apache/http/HttpRequest;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 196
    .line 197
    instance-of v0, p1, Lorg/apache/http/impl/client/RequestWrapper;

    if-eqz v0, :cond_1

    .line 198
    check-cast p1, Lorg/apache/http/impl/client/RequestWrapper;

    invoke-virtual {p1}, Lorg/apache/http/impl/client/RequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object v0

    .line 200
    :goto_0
    instance-of v1, v0, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 131
    const-string/jumbo v0, "Exception parameter"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 132
    const-string/jumbo v0, "HTTP context"

    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 133
    iget v0, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandlerHC4;->retryCount:I

    if-le p2, v0, :cond_0

    move v0, v1

    .line 164
    :goto_0
    return v0

    .line 137
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandlerHC4;->nonRetriableClasses:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 138
    goto :goto_0

    .line 140
    :cond_1
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandlerHC4;->nonRetriableClasses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 141
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 142
    goto :goto_0

    .line 146
    :cond_3
    invoke-static {p3}, Lorg/apache/http/client/protocol/HttpClientContext;->adapt(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/client/protocol/HttpClientContext;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lorg/apache/http/client/protocol/HttpClientContext;->getRequest()Lorg/apache/http/HttpRequest;

    move-result-object v3

    .line 149
    invoke-virtual {p0, v3}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandlerHC4;->requestIsAborted(Lorg/apache/http/HttpRequest;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v1

    .line 150
    goto :goto_0

    .line 153
    :cond_4
    invoke-virtual {p0, v3}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandlerHC4;->handleAsIdempotent(Lorg/apache/http/HttpRequest;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v2

    .line 155
    goto :goto_0

    .line 158
    :cond_5
    invoke-virtual {v0}, Lorg/apache/http/client/protocol/HttpClientContext;->isRequestSent()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandlerHC4;->requestSentRetryEnabled:Z

    if-eqz v0, :cond_7

    :cond_6
    move v0, v2

    .line 161
    goto :goto_0

    :cond_7
    move v0, v1

    .line 164
    goto :goto_0
.end method
