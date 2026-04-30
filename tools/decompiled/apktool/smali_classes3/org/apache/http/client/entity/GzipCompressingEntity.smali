.class public Lorg/apache/http/client/entity/GzipCompressingEntity;
.super Lorg/apache/http/entity/HttpEntityWrapperHC4;
.source "GzipCompressingEntity.java"


# static fields
.field private static final GZIP_CODEC:Ljava/lang/String; = "gzip"


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapperHC4;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 80
    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 3

    .prologue
    .line 84
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v1, "Content-Encoding"

    const-string/jumbo v2, "gzip"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 89
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public isChunked()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    const-string/jumbo v0, "Output stream"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 108
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/client/entity/GzipCompressingEntity;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0, v1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 112
    return-void

    .line 110
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    throw v0
.end method
