.class public Lorg/apache/http/impl/io/DefaultHttpResponseWriter;
.super Lorg/apache/http/impl/io/AbstractMessageWriterHC4;
.source "DefaultHttpResponseWriter.java"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionOutputBuffer;)V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/io/AbstractMessageWriterHC4;-><init>(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/message/LineFormatter;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/message/LineFormatter;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/io/AbstractMessageWriterHC4;-><init>(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/message/LineFormatter;)V

    .line 58
    return-void
.end method


# virtual methods
.method protected writeHeadLine(Lorg/apache/http/HttpMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/http/impl/io/DefaultHttpResponseWriter;->lineFormatter:Lorg/apache/http/message/LineFormatter;

    iget-object v1, p0, Lorg/apache/http/impl/io/DefaultHttpResponseWriter;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    check-cast p1, Lorg/apache/http/HttpResponse;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/message/LineFormatter;->formatStatusLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/StatusLine;)Lorg/apache/http/util/CharArrayBuffer;

    .line 67
    iget-object v0, p0, Lorg/apache/http/impl/io/DefaultHttpResponseWriter;->sessionBuffer:Lorg/apache/http/io/SessionOutputBuffer;

    iget-object v1, p0, Lorg/apache/http/impl/io/DefaultHttpResponseWriter;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    invoke-interface {v0, v1}, Lorg/apache/http/io/SessionOutputBuffer;->writeLine(Lorg/apache/http/util/CharArrayBuffer;)V

    .line 68
    return-void
.end method
