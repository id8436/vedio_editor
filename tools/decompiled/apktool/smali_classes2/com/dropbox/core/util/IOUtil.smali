.class public Lcom/dropbox/core/util/IOUtil;
.super Ljava/lang/Object;
.source "IOUtil.java"


# static fields
.field public static final BlackHoleOutputStream:Ljava/io/OutputStream;

.field public static final DEFAULT_COPY_BUFFER_SIZE:I = 0x4000

.field public static final EmptyInputStream:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 208
    new-instance v0, Lcom/dropbox/core/util/IOUtil$1;

    invoke-direct {v0}, Lcom/dropbox/core/util/IOUtil$1;-><init>()V

    sput-object v0, Lcom/dropbox/core/util/IOUtil;->EmptyInputStream:Ljava/io/InputStream;

    .line 214
    new-instance v0, Lcom/dropbox/core/util/IOUtil$2;

    invoke-direct {v0}, Lcom/dropbox/core/util/IOUtil$2;-><init>()V

    sput-object v0, Lcom/dropbox/core/util/IOUtil;->BlackHoleOutputStream:Ljava/io/OutputStream;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeInput(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 129
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeInput(Ljava/io/Reader;)V
    .locals 1

    .prologue
    .line 140
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 147
    if-eqz p0, :cond_0

    .line 149
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static copyStreamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/util/IOUtil$ReadException;,
            Lcom/dropbox/core/util/IOUtil$WriteException;
        }
    .end annotation

    .prologue
    .line 43
    const/16 v0, 0x4000

    invoke-static {p0, p1, v0}, Lcom/dropbox/core/util/IOUtil;->copyStreamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 44
    return-void
.end method

.method public static copyStreamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/util/IOUtil$ReadException;,
            Lcom/dropbox/core/util/IOUtil$WriteException;
        }
    .end annotation

    .prologue
    .line 68
    new-array v0, p2, [B

    invoke-static {p0, p1, v0}, Lcom/dropbox/core/util/IOUtil;->copyStreamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V

    .line 69
    return-void
.end method

.method public static copyStreamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/util/IOUtil$ReadException;,
            Lcom/dropbox/core/util/IOUtil$WriteException;
        }
    .end annotation

    .prologue
    .line 51
    :goto_0
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 56
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 64
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    new-instance v1, Lcom/dropbox/core/util/IOUtil$ReadException;

    invoke-direct {v1, v0}, Lcom/dropbox/core/util/IOUtil$ReadException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 59
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p1, p2, v1, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 60
    :catch_1
    move-exception v0

    .line 61
    new-instance v1, Lcom/dropbox/core/util/IOUtil$WriteException;

    invoke-direct {v1, v0}, Lcom/dropbox/core/util/IOUtil$WriteException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public static limit(Ljava/io/InputStream;J)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 157
    new-instance v0, Lcom/dropbox/core/util/IOUtil$LimitInputStream;

    invoke-direct {v0, p0, p1, p2}, Lcom/dropbox/core/util/IOUtil$LimitInputStream;-><init>(Ljava/io/InputStream;J)V

    return-object v0
.end method

.method public static slurp(Ljava/io/InputStream;I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    const/16 v0, 0x4000

    new-array v0, v0, [B

    invoke-static {p0, p1, v0}, Lcom/dropbox/core/util/IOUtil;->slurp(Ljava/io/InputStream;I[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static slurp(Ljava/io/InputStream;I[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\'byteLimit\' must be non-negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 79
    invoke-static {p0, v0, p2}, Lcom/dropbox/core/util/IOUtil;->copyStreamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V

    .line 80
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static toUtf8String(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/util/IOUtil$ReadException;,
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 35
    :try_start_0
    invoke-static {p0, v0}, Lcom/dropbox/core/util/IOUtil;->copyStreamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Lcom/dropbox/core/util/IOUtil$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/util/StringUtil;->utf8ToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "impossible"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static utf8Reader(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcom/dropbox/core/util/StringUtil;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/CharsetDecoder;)V

    return-object v0
.end method

.method public static utf8Writer(Ljava/io/OutputStream;)Ljava/io/Writer;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/io/OutputStreamWriter;

    sget-object v1, Lcom/dropbox/core/util/StringUtil;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/CharsetEncoder;)V

    return-object v0
.end method


# virtual methods
.method public copyFileToStream(Ljava/io/File;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/util/IOUtil$ReadException;,
            Lcom/dropbox/core/util/IOUtil$WriteException;
        }
    .end annotation

    .prologue
    .line 84
    const/16 v0, 0x4000

    invoke-virtual {p0, p1, p2, v0}, Lcom/dropbox/core/util/IOUtil;->copyFileToStream(Ljava/io/File;Ljava/io/OutputStream;I)V

    .line 85
    return-void
.end method

.method public copyFileToStream(Ljava/io/File;Ljava/io/OutputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/util/IOUtil$ReadException;,
            Lcom/dropbox/core/util/IOUtil$WriteException;
        }
    .end annotation

    .prologue
    .line 90
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :try_start_1
    invoke-static {v0, p2, p3}, Lcom/dropbox/core/util/IOUtil;->copyStreamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    invoke-static {v0}, Lcom/dropbox/core/util/IOUtil;->closeInput(Ljava/io/InputStream;)V

    .line 100
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    new-instance v1, Lcom/dropbox/core/util/IOUtil$ReadException;

    invoke-direct {v1, v0}, Lcom/dropbox/core/util/IOUtil$ReadException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 98
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/dropbox/core/util/IOUtil;->closeInput(Ljava/io/InputStream;)V

    throw v1
.end method

.method public copyStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/util/IOUtil$ReadException;,
            Lcom/dropbox/core/util/IOUtil$WriteException;
        }
    .end annotation

    .prologue
    .line 103
    const/16 v0, 0x4000

    invoke-virtual {p0, p1, p2, v0}, Lcom/dropbox/core/util/IOUtil;->copyStreamToFile(Ljava/io/InputStream;Ljava/io/File;I)V

    .line 104
    return-void
.end method

.method public copyStreamToFile(Ljava/io/InputStream;Ljava/io/File;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/util/IOUtil$ReadException;,
            Lcom/dropbox/core/util/IOUtil$WriteException;
        }
    .end annotation

    .prologue
    .line 109
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :try_start_1
    invoke-static {p1, v0, p3}, Lcom/dropbox/core/util/IOUtil;->copyStreamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 122
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    new-instance v1, Lcom/dropbox/core/util/IOUtil$WriteException;

    invoke-direct {v1, v0}, Lcom/dropbox/core/util/IOUtil$WriteException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 117
    :catch_1
    move-exception v0

    .line 119
    new-instance v1, Lcom/dropbox/core/util/IOUtil$WriteException;

    invoke-direct {v1, v0}, Lcom/dropbox/core/util/IOUtil$WriteException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 117
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 119
    throw v1

    .line 117
    :catch_2
    move-exception v0

    .line 119
    new-instance v1, Lcom/dropbox/core/util/IOUtil$WriteException;

    invoke-direct {v1, v0}, Lcom/dropbox/core/util/IOUtil$WriteException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method
