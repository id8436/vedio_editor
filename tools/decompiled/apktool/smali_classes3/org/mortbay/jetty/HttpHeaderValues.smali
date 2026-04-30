.class public Lorg/mortbay/jetty/HttpHeaderValues;
.super Lorg/mortbay/io/BufferCache;
.source "HttpHeaderValues.java"


# static fields
.field public static final BYTES:Ljava/lang/String; = "bytes"

.field public static final BYTES_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final BYTES_ORDINAL:I = 0x9

.field public static final CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

.field public static final CHUNKED:Ljava/lang/String; = "chunked"

.field public static final CHUNKED_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final CHUNKED_ORDINAL:I = 0x2

.field public static final CLOSE:Ljava/lang/String; = "close"

.field public static final CLOSE_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final CLOSE_ORDINAL:I = 0x1

.field public static final CONTINUE:Ljava/lang/String; = "100-continue"

.field public static final CONTINUE_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final CONTINUE_ORDINAL:I = 0x6

.field public static final GZIP:Ljava/lang/String; = "gzip"

.field public static final GZIP_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final GZIP_ORDINAL:I = 0x3

.field public static final IDENTITY:Ljava/lang/String; = "identity"

.field public static final IDENTITY_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final IDENTITY_ORDINAL:I = 0x4

.field public static final KEEP_ALIVE:Ljava/lang/String; = "keep-alive"

.field public static final KEEP_ALIVE_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final KEEP_ALIVE_ORDINAL:I = 0x5

.field public static final NO_CACHE:Ljava/lang/String; = "no-cache"

.field public static final NO_CACHE_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final NO_CACHE_ORDINAL:I = 0xa

.field public static final PROCESSING:Ljava/lang/String; = "102-processing"

.field public static final PROCESSING_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final PROCESSING_ORDINAL:I = 0x7

.field public static final TE:Ljava/lang/String; = "TE"

.field public static final TE_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final TE_ORDINAL:I = 0x8

.field static class$org$mortbay$jetty$HttpHeaderValues:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 60
    new-instance v0, Lorg/mortbay/jetty/HttpHeaderValues;

    invoke-direct {v0}, Lorg/mortbay/jetty/HttpHeaderValues;-><init>()V

    sput-object v0, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    .line 63
    sget-object v0, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    const-string/jumbo v1, "close"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpHeaderValues;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/HttpHeaderValues;->CLOSE_BUFFER:Lorg/mortbay/io/Buffer;

    .line 64
    sget-object v0, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    const-string/jumbo v1, "chunked"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpHeaderValues;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/HttpHeaderValues;->CHUNKED_BUFFER:Lorg/mortbay/io/Buffer;

    .line 65
    sget-object v0, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    const-string/jumbo v1, "gzip"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpHeaderValues;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/HttpHeaderValues;->GZIP_BUFFER:Lorg/mortbay/io/Buffer;

    .line 66
    sget-object v0, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    const-string/jumbo v1, "identity"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpHeaderValues;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/HttpHeaderValues;->IDENTITY_BUFFER:Lorg/mortbay/io/Buffer;

    .line 67
    sget-object v0, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    const-string/jumbo v1, "keep-alive"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpHeaderValues;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/HttpHeaderValues;->KEEP_ALIVE_BUFFER:Lorg/mortbay/io/Buffer;

    .line 68
    sget-object v0, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    const-string/jumbo v1, "100-continue"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpHeaderValues;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/HttpHeaderValues;->CONTINUE_BUFFER:Lorg/mortbay/io/Buffer;

    .line 69
    sget-object v0, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    const-string/jumbo v1, "102-processing"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpHeaderValues;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/HttpHeaderValues;->PROCESSING_BUFFER:Lorg/mortbay/io/Buffer;

    .line 70
    sget-object v0, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    const-string/jumbo v1, "TE"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpHeaderValues;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/HttpHeaderValues;->TE_BUFFER:Lorg/mortbay/io/Buffer;

    .line 71
    sget-object v0, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    const-string/jumbo v1, "bytes"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpHeaderValues;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/HttpHeaderValues;->BYTES_BUFFER:Lorg/mortbay/io/Buffer;

    .line 72
    sget-object v0, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    const-string/jumbo v1, "no-cache"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpHeaderValues;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/HttpHeaderValues;->NO_CACHE_BUFFER:Lorg/mortbay/io/Buffer;

    .line 76
    const/16 v0, 0x64

    .line 77
    sget-object v1, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    const-string/jumbo v2, "gzip"

    const/16 v3, 0x65

    invoke-virtual {v1, v2, v0}, Lorg/mortbay/jetty/HttpHeaderValues;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 78
    sget-object v0, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    const-string/jumbo v1, "gzip,deflate"

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v3}, Lorg/mortbay/jetty/HttpHeaderValues;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 79
    sget-object v0, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    const-string/jumbo v3, "deflate"

    const/16 v1, 0x67

    invoke-virtual {v0, v3, v2}, Lorg/mortbay/jetty/HttpHeaderValues;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 83
    :try_start_0
    sget-object v0, Lorg/mortbay/jetty/HttpHeaderValues;->class$org$mortbay$jetty$HttpHeaderValues:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string/jumbo v0, "org.mortbay.jetty.HttpHeaderValues"

    invoke-static {v0}, Lorg/mortbay/jetty/HttpHeaderValues;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/HttpHeaderValues;->class$org$mortbay$jetty$HttpHeaderValues:Ljava/lang/Class;

    :goto_0
    const-string/jumbo v2, "/org/mortbay/jetty/useragents"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_1

    .line 86
    new-instance v3, Ljava/io/LineNumberReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v2}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 87
    invoke-virtual {v3}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 88
    :goto_1
    if-eqz v0, :cond_1

    .line 90
    sget-object v4, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v4, v0, v1}, Lorg/mortbay/jetty/HttpHeaderValues;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 91
    invoke-virtual {v3}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    goto :goto_1

    .line 83
    :cond_0
    sget-object v0, Lorg/mortbay/jetty/HttpHeaderValues;->class$org$mortbay$jetty$HttpHeaderValues:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    .line 100
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/mortbay/io/BufferCache;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 83
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method
