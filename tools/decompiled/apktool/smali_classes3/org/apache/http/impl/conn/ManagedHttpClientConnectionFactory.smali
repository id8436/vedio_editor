.class public Lorg/apache/http/impl/conn/ManagedHttpClientConnectionFactory;
.super Ljava/lang/Object;
.source "ManagedHttpClientConnectionFactory.java"

# interfaces
.implements Lorg/apache/http/conn/HttpConnectionFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/conn/HttpConnectionFactory",
        "<",
        "Lorg/apache/http/conn/routing/HttpRoute;",
        "Lorg/apache/http/conn/ManagedHttpClientConnection;",
        ">;"
    }
.end annotation

.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field private static final COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

.field public static final INSTANCE:Lorg/apache/http/impl/conn/ManagedHttpClientConnectionFactory;

.field private static final TAG:Ljava/lang/String; = "HttpClient"


# instance fields
.field private final requestWriterFactory:Lorg/apache/http/io/HttpMessageWriterFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/io/HttpMessageWriterFactory",
            "<",
            "Lorg/apache/http/HttpRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final responseParserFactory:Lorg/apache/http/io/HttpMessageParserFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/io/HttpMessageParserFactory",
            "<",
            "Lorg/apache/http/HttpResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lorg/apache/http/impl/conn/ManagedHttpClientConnectionFactory;->COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    .line 57
    new-instance v0, Lorg/apache/http/impl/conn/ManagedHttpClientConnectionFactory;

    invoke-direct {v0}, Lorg/apache/http/impl/conn/ManagedHttpClientConnectionFactory;-><init>()V

    sput-object v0, Lorg/apache/http/impl/conn/ManagedHttpClientConnectionFactory;->INSTANCE:Lorg/apache/http/impl/conn/ManagedHttpClientConnectionFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, v0, v0}, Lorg/apache/http/impl/conn/ManagedHttpClientConnectionFactory;-><init>(Lorg/apache/http/io/HttpMessageWriterFactory;Lorg/apache/http/io/HttpMessageParserFactory;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/io/HttpMessageParserFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/io/HttpMessageParserFactory",
            "<",
            "Lorg/apache/http/HttpResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/http/impl/conn/ManagedHttpClientConnectionFactory;-><init>(Lorg/apache/http/io/HttpMessageWriterFactory;Lorg/apache/http/io/HttpMessageParserFactory;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/io/HttpMessageWriterFactory;Lorg/apache/http/io/HttpMessageParserFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/io/HttpMessageWriterFactory",
            "<",
            "Lorg/apache/http/HttpRequest;",
            ">;",
            "Lorg/apache/http/io/HttpMessageParserFactory",
            "<",
            "Lorg/apache/http/HttpResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lorg/apache/http/impl/conn/ManagedHttpClientConnectionFactory;->requestWriterFactory:Lorg/apache/http/io/HttpMessageWriterFactory;

    .line 70
    if-eqz p2, :cond_1

    :goto_1
    iput-object p2, p0, Lorg/apache/http/impl/conn/ManagedHttpClientConnectionFactory;->responseParserFactory:Lorg/apache/http/io/HttpMessageParserFactory;

    .line 72
    return-void

    .line 68
    :cond_0
    sget-object p1, Lorg/apache/http/impl/io/DefaultHttpRequestWriterFactory;->INSTANCE:Lorg/apache/http/impl/io/DefaultHttpRequestWriterFactory;

    goto :goto_0

    .line 70
    :cond_1
    sget-object p2, Lorg/apache/http/impl/conn/DefaultHttpResponseParserFactory;->INSTANCE:Lorg/apache/http/impl/conn/DefaultHttpResponseParserFactory;

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic create(Ljava/lang/Object;Lorg/apache/http/config/ConnectionConfig;)Lorg/apache/http/HttpConnection;
    .locals 1

    .prologue
    .line 51
    check-cast p1, Lorg/apache/http/conn/routing/HttpRoute;

    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/conn/ManagedHttpClientConnectionFactory;->create(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/config/ConnectionConfig;)Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    return-object v0
.end method

.method public create(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/config/ConnectionConfig;)Lorg/apache/http/conn/ManagedHttpClientConnection;
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 84
    if-eqz p2, :cond_0

    .line 87
    :goto_0
    invoke-virtual {p2}, Lorg/apache/http/config/ConnectionConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    .line 88
    invoke-virtual {p2}, Lorg/apache/http/config/ConnectionConfig;->getMalformedInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lorg/apache/http/config/ConnectionConfig;->getMalformedInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v0

    .line 90
    :goto_1
    invoke-virtual {p2}, Lorg/apache/http/config/ConnectionConfig;->getUnmappableInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lorg/apache/http/config/ConnectionConfig;->getUnmappableInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v1

    .line 92
    :goto_2
    if-eqz v2, :cond_3

    .line 93
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v4

    .line 94
    invoke-virtual {v4, v0}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 95
    invoke-virtual {v4, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 96
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v5

    .line 97
    invoke-virtual {v5, v0}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 98
    invoke-virtual {v5, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 100
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http-outgoing-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/apache/http/impl/conn/ManagedHttpClientConnectionFactory;->COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 101
    new-instance v0, Lorg/apache/http/impl/conn/LoggingManagedHttpClientConnection;

    invoke-virtual {p2}, Lorg/apache/http/config/ConnectionConfig;->getBufferSize()I

    move-result v2

    invoke-virtual {p2}, Lorg/apache/http/config/ConnectionConfig;->getFragmentSizeHint()I

    move-result v3

    invoke-virtual {p2}, Lorg/apache/http/config/ConnectionConfig;->getMessageConstraints()Lorg/apache/http/config/MessageConstraints;

    move-result-object v6

    iget-object v9, p0, Lorg/apache/http/impl/conn/ManagedHttpClientConnectionFactory;->requestWriterFactory:Lorg/apache/http/io/HttpMessageWriterFactory;

    iget-object v10, p0, Lorg/apache/http/impl/conn/ManagedHttpClientConnectionFactory;->responseParserFactory:Lorg/apache/http/io/HttpMessageParserFactory;

    move-object v8, v7

    invoke-direct/range {v0 .. v10}, Lorg/apache/http/impl/conn/LoggingManagedHttpClientConnection;-><init>(Ljava/lang/String;IILjava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lorg/apache/http/config/MessageConstraints;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/io/HttpMessageWriterFactory;Lorg/apache/http/io/HttpMessageParserFactory;)V

    return-object v0

    .line 84
    :cond_0
    sget-object p2, Lorg/apache/http/config/ConnectionConfig;->DEFAULT:Lorg/apache/http/config/ConnectionConfig;

    goto :goto_0

    .line 88
    :cond_1
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    goto :goto_1

    .line 90
    :cond_2
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    goto :goto_2

    :cond_3
    move-object v5, v7

    move-object v4, v7

    goto :goto_3
.end method
