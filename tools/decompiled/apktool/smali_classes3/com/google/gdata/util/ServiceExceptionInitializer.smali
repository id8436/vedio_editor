.class public Lcom/google/gdata/util/ServiceExceptionInitializer;
.super Ljava/lang/Object;
.source "ServiceExceptionInitializer.java"


# instance fields
.field private currentException:Lcom/google/gdata/util/ServiceException;

.field private final initialException:Lcom/google/gdata/util/ServiceException;


# direct methods
.method public constructor <init>(Lcom/google/gdata/util/ServiceException;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/util/ServiceExceptionInitializer;->currentException:Lcom/google/gdata/util/ServiceException;

    .line 61
    iput-object p1, p0, Lcom/google/gdata/util/ServiceExceptionInitializer;->initialException:Lcom/google/gdata/util/ServiceException;

    .line 62
    return-void
.end method

.method static synthetic access$100(Lcom/google/gdata/util/ServiceExceptionInitializer;)Lcom/google/gdata/util/ServiceException;
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/gdata/util/ServiceExceptionInitializer;->nextException()Lcom/google/gdata/util/ServiceException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/gdata/util/ServiceExceptionInitializer;)Lcom/google/gdata/util/ServiceException;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/gdata/util/ServiceExceptionInitializer;->currentException:Lcom/google/gdata/util/ServiceException;

    return-object v0
.end method

.method private nextException()Lcom/google/gdata/util/ServiceException;
    .locals 4

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/gdata/util/ServiceExceptionInitializer;->currentException:Lcom/google/gdata/util/ServiceException;

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/google/gdata/util/ServiceExceptionInitializer;->initialException:Lcom/google/gdata/util/ServiceException;

    iput-object v0, p0, Lcom/google/gdata/util/ServiceExceptionInitializer;->currentException:Lcom/google/gdata/util/ServiceException;

    .line 151
    iget-object v0, p0, Lcom/google/gdata/util/ServiceExceptionInitializer;->currentException:Lcom/google/gdata/util/ServiceException;

    .line 160
    :goto_0
    return-object v0

    .line 156
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/gdata/util/ServiceExceptionInitializer;->initialException:Lcom/google/gdata/util/ServiceException;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/gdata/util/ServiceExceptionInitializer;->initialException:Lcom/google/gdata/util/ServiceException;

    invoke-virtual {v3}, Lcom/google/gdata/util/ServiceException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/util/ServiceException;

    iput-object v0, p0, Lcom/google/gdata/util/ServiceExceptionInitializer;->currentException:Lcom/google/gdata/util/ServiceException;

    .line 159
    iget-object v0, p0, Lcom/google/gdata/util/ServiceExceptionInitializer;->initialException:Lcom/google/gdata/util/ServiceException;

    iget-object v1, p0, Lcom/google/gdata/util/ServiceExceptionInitializer;->currentException:Lcom/google/gdata/util/ServiceException;

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/ServiceException;->addSibling(Lcom/google/gdata/util/ServiceException;)Lcom/google/gdata/util/ServiceException;

    .line 160
    iget-object v0, p0, Lcom/google/gdata/util/ServiceExceptionInitializer;->currentException:Lcom/google/gdata/util/ServiceException;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 163
    :catch_1
    move-exception v0

    .line 164
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 165
    :catch_2
    move-exception v0

    .line 166
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 167
    :catch_3
    move-exception v0

    .line 168
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public parse(Lcom/google/gdata/util/ContentType;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 129
    sget-object v0, Lcom/google/gdata/util/ContentType;->GDATA_ERROR:Lcom/google/gdata/util/ContentType;

    invoke-virtual {v0, p1}, Lcom/google/gdata/util/ContentType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Lcom/google/gdata/util/XmlParser;

    invoke-direct {v0}, Lcom/google/gdata/util/XmlParser;-><init>()V

    .line 132
    :try_start_0
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/gdata/util/ServiceExceptionInitializer$ErrorsHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/gdata/util/ServiceExceptionInitializer$ErrorsHandler;-><init>(Lcom/google/gdata/util/ServiceExceptionInitializer;Lcom/google/gdata/util/ServiceExceptionInitializer$1;)V

    const-string/jumbo v3, "http://schemas.google.com/g/2005"

    const-string/jumbo v4, "errors"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/gdata/util/XmlParser;->parse(Ljava/io/Reader;Lcom/google/gdata/util/XmlParser$ElementHandler;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 136
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Impossible parser I/O"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parse(Ljava/net/HttpURLConnection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/gdata/util/ServiceExceptionInitializer;->initialException:Lcom/google/gdata/util/ServiceException;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    iput v1, v0, Lcom/google/gdata/util/ServiceException;->httpErrorCodeOverride:I

    .line 79
    iget-object v0, p0, Lcom/google/gdata/util/ServiceExceptionInitializer;->initialException:Lcom/google/gdata/util/ServiceException;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/google/gdata/util/ServiceException;->httpHeaders:Ljava/util/Map;

    .line 83
    new-instance v3, Lcom/google/gdata/util/ContentType;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/google/gdata/util/ContentType;-><init>(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/google/gdata/util/ServiceExceptionInitializer;->initialException:Lcom/google/gdata/util/ServiceException;

    iput-object v3, v0, Lcom/google/gdata/util/ServiceException;->responseContentType:Lcom/google/gdata/util/ContentType;

    .line 88
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    .line 89
    if-gez v1, :cond_2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v0

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/google/gdata/util/ServiceExceptionInitializer;->initialException:Lcom/google/gdata/util/ServiceException;

    iget v0, v0, Lcom/google/gdata/util/ServiceException;->httpErrorCodeOverride:I

    const/16 v2, 0x190

    if-lt v0, v2, :cond_3

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    .line 101
    :goto_1
    if-eqz v2, :cond_5

    .line 102
    const-string/jumbo v0, "gzip"

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v0

    .line 106
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Lcom/google/gdata/util/ContentType;->getAttributes()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v4, "charset"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 107
    if-nez v0, :cond_1

    .line 108
    const-string/jumbo v0, "iso8859-1"

    .line 110
    :cond_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 113
    :goto_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 114
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 121
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0

    .line 91
    :cond_2
    if-lez v1, :cond_5

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v0

    goto :goto_0

    .line 98
    :cond_3
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    goto :goto_1

    .line 117
    :cond_4
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/google/gdata/util/ServiceExceptionInitializer;->initialException:Lcom/google/gdata/util/ServiceException;

    iput-object v0, v1, Lcom/google/gdata/util/ServiceException;->responseBody:Ljava/lang/String;

    .line 119
    invoke-virtual {p0, v3, v0}, Lcom/google/gdata/util/ServiceExceptionInitializer;->parse(Lcom/google/gdata/util/ContentType;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 125
    :cond_5
    return-void
.end method
