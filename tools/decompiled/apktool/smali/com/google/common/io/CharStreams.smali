.class public final Lcom/google/common/io/CharStreams;
.super Ljava/lang/Object;
.source "CharStreams.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# static fields
.field private static final BUF_SIZE:I = 0x800


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asCharSink(Lcom/google/common/io/OutputSupplier;)Lcom/google/common/io/CharSink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/OutputSupplier",
            "<+",
            "Ljava/lang/Appendable;",
            ">;)",
            "Lcom/google/common/io/CharSink;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 582
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    new-instance v0, Lcom/google/common/io/CharStreams$4;

    invoke-direct {v0, p0}, Lcom/google/common/io/CharStreams$4;-><init>(Lcom/google/common/io/OutputSupplier;)V

    return-object v0
.end method

.method public static asCharSource(Lcom/google/common/io/InputSupplier;)Lcom/google/common/io/CharSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/lang/Readable;",
            ">;)",
            "Lcom/google/common/io/CharSource;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 552
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    new-instance v0, Lcom/google/common/io/CharStreams$3;

    invoke-direct {v0, p0}, Lcom/google/common/io/CharStreams$3;-><init>(Lcom/google/common/io/InputSupplier;)V

    return-object v0
.end method

.method static asInputSupplier(Lcom/google/common/io/CharSource;)Lcom/google/common/io/InputSupplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/io/Reader;",
            ">(",
            "Lcom/google/common/io/CharSource;",
            ")",
            "Lcom/google/common/io/InputSupplier",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 599
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/io/InputSupplier;

    return-object v0
.end method

.method static asOutputSupplier(Lcom/google/common/io/CharSink;)Lcom/google/common/io/OutputSupplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<W:",
            "Ljava/io/Writer;",
            ">(",
            "Lcom/google/common/io/CharSink;",
            ")",
            "Lcom/google/common/io/OutputSupplier",
            "<TW;>;"
        }
    .end annotation

    .prologue
    .line 605
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/io/OutputSupplier;

    return-object v0
.end method

.method static asReader(Ljava/lang/Readable;)Ljava/io/Reader;
    .locals 1

    .prologue
    .line 512
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    instance-of v0, p0, Ljava/io/Reader;

    if-eqz v0, :cond_0

    .line 514
    check-cast p0, Ljava/io/Reader;

    .line 516
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/google/common/io/CharStreams$2;

    invoke-direct {v0, p0}, Lcom/google/common/io/CharStreams$2;-><init>(Ljava/lang/Readable;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static asWriter(Ljava/lang/Appendable;)Ljava/io/Writer;
    .locals 1

    .prologue
    .line 503
    instance-of v0, p0, Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 504
    check-cast p0, Ljava/io/Writer;

    .line 506
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/google/common/io/AppendableWriter;

    invoke-direct {v0, p0}, Lcom/google/common/io/AppendableWriter;-><init>(Ljava/lang/Appendable;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static copy(Lcom/google/common/io/InputSupplier;Lcom/google/common/io/OutputSupplier;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/lang/Readable;",
            ":",
            "Ljava/io/Closeable;",
            "W::",
            "Ljava/lang/Appendable;",
            ":",
            "Ljava/io/Closeable;",
            ">(",
            "Lcom/google/common/io/InputSupplier",
            "<TR;>;",
            "Lcom/google/common/io/OutputSupplier",
            "<TW;>;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 147
    invoke-static {p0}, Lcom/google/common/io/CharStreams;->asCharSource(Lcom/google/common/io/InputSupplier;)Lcom/google/common/io/CharSource;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/io/CharStreams;->asCharSink(Lcom/google/common/io/OutputSupplier;)Lcom/google/common/io/CharSink;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/CharSource;->copyTo(Lcom/google/common/io/CharSink;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static copy(Lcom/google/common/io/InputSupplier;Ljava/lang/Appendable;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/lang/Readable;",
            ":",
            "Ljava/io/Closeable;",
            ">(",
            "Lcom/google/common/io/InputSupplier",
            "<TR;>;",
            "Ljava/lang/Appendable;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 165
    invoke-static {p0}, Lcom/google/common/io/CharStreams;->asCharSource(Lcom/google/common/io/InputSupplier;)Lcom/google/common/io/CharSource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/io/CharSource;->copyTo(Ljava/lang/Appendable;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static copy(Ljava/lang/Readable;Ljava/lang/Appendable;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const/16 v0, 0x800

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v2

    .line 181
    const-wide/16 v0, 0x0

    .line 182
    :goto_0
    invoke-interface {p0, v2}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 183
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 184
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 185
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v3

    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 186
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0

    .line 188
    :cond_0
    return-wide v0
.end method

.method public static join(Ljava/lang/Iterable;)Lcom/google/common/io/InputSupplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/Reader;",
            ">;>;)",
            "Lcom/google/common/io/InputSupplier",
            "<",
            "Ljava/io/Reader;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 373
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    new-instance v0, Lcom/google/common/io/CharStreams$1;

    invoke-direct {v0}, Lcom/google/common/io/CharStreams$1;-><init>()V

    invoke-static {p0, v0}, Lcom/google/common/collect/Iterables;->transform(Ljava/lang/Iterable;Lcom/google/common/base/Function;)Ljava/lang/Iterable;

    move-result-object v0

    .line 381
    invoke-static {v0}, Lcom/google/common/io/CharSource;->concat(Ljava/lang/Iterable;)Lcom/google/common/io/CharSource;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/CharStreams;->asInputSupplier(Lcom/google/common/io/CharSource;)Lcom/google/common/io/InputSupplier;

    move-result-object v0

    return-object v0
.end method

.method public static varargs join([Lcom/google/common/io/InputSupplier;)Lcom/google/common/io/InputSupplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/Reader;",
            ">;)",
            "Lcom/google/common/io/InputSupplier",
            "<",
            "Ljava/io/Reader;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 394
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/CharStreams;->join(Ljava/lang/Iterable;)Lcom/google/common/io/InputSupplier;

    move-result-object v0

    return-object v0
.end method

.method public static newReaderSupplier(Lcom/google/common/io/InputSupplier;Ljava/nio/charset/Charset;)Lcom/google/common/io/InputSupplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lcom/google/common/io/InputSupplier",
            "<",
            "Ljava/io/InputStreamReader;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 93
    invoke-static {p0}, Lcom/google/common/io/ByteStreams;->asByteSource(Lcom/google/common/io/InputSupplier;)Lcom/google/common/io/ByteSource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/io/ByteSource;->asCharSource(Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/CharStreams;->asInputSupplier(Lcom/google/common/io/CharSource;)Lcom/google/common/io/InputSupplier;

    move-result-object v0

    return-object v0
.end method

.method public static newReaderSupplier(Ljava/lang/String;)Lcom/google/common/io/InputSupplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/io/InputSupplier",
            "<",
            "Ljava/io/StringReader;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 76
    invoke-static {p0}, Lcom/google/common/io/CharSource;->wrap(Ljava/lang/CharSequence;)Lcom/google/common/io/CharSource;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/CharStreams;->asInputSupplier(Lcom/google/common/io/CharSource;)Lcom/google/common/io/InputSupplier;

    move-result-object v0

    return-object v0
.end method

.method public static newWriterSupplier(Lcom/google/common/io/OutputSupplier;Ljava/nio/charset/Charset;)Lcom/google/common/io/OutputSupplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/OutputSupplier",
            "<+",
            "Ljava/io/OutputStream;",
            ">;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lcom/google/common/io/OutputSupplier",
            "<",
            "Ljava/io/OutputStreamWriter;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 111
    invoke-static {p0}, Lcom/google/common/io/ByteStreams;->asByteSink(Lcom/google/common/io/OutputSupplier;)Lcom/google/common/io/ByteSink;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/io/ByteSink;->asCharSink(Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSink;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/CharStreams;->asOutputSupplier(Lcom/google/common/io/CharSink;)Lcom/google/common/io/OutputSupplier;

    move-result-object v0

    return-object v0
.end method

.method public static nullWriter()Ljava/io/Writer;
    .locals 1

    .prologue
    .line 430
    invoke-static {}, Lcom/google/common/io/CharStreams$NullWriter;->access$000()Lcom/google/common/io/CharStreams$NullWriter;

    move-result-object v0

    return-object v0
.end method

.method public static readFirstLine(Lcom/google/common/io/InputSupplier;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/lang/Readable;",
            ":",
            "Ljava/io/Closeable;",
            ">(",
            "Lcom/google/common/io/InputSupplier",
            "<TR;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 247
    invoke-static {p0}, Lcom/google/common/io/CharStreams;->asCharSource(Lcom/google/common/io/InputSupplier;)Lcom/google/common/io/CharSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/io/CharSource;->readFirstLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readLines(Lcom/google/common/io/InputSupplier;Lcom/google/common/io/LineProcessor;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/lang/Readable;",
            ":",
            "Ljava/io/Closeable;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/io/InputSupplier",
            "<TR;>;",
            "Lcom/google/common/io/LineProcessor",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 339
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v1

    .line 344
    :try_start_0
    invoke-interface {p0}, Lcom/google/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    invoke-virtual {v1, v0}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v0

    check-cast v0, Ljava/lang/Readable;

    .line 345
    invoke-static {v0, p1}, Lcom/google/common/io/CharStreams;->readLines(Ljava/lang/Readable;Lcom/google/common/io/LineProcessor;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 349
    invoke-virtual {v1}, Lcom/google/common/io/Closer;->close()V

    return-object v0

    .line 346
    :catch_0
    move-exception v0

    .line 347
    :try_start_1
    invoke-virtual {v1, v0}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 349
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/common/io/Closer;->close()V

    throw v0
.end method

.method public static readLines(Ljava/lang/Readable;Lcom/google/common/io/LineProcessor;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Readable;",
            "Lcom/google/common/io/LineProcessor",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    new-instance v0, Lcom/google/common/io/LineReader;

    invoke-direct {v0, p0}, Lcom/google/common/io/LineReader;-><init>(Ljava/lang/Readable;)V

    .line 316
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/io/LineReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 317
    invoke-interface {p1, v1}, Lcom/google/common/io/LineProcessor;->processLine(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 321
    :cond_1
    invoke-interface {p1}, Lcom/google/common/io/LineProcessor;->getResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static readLines(Lcom/google/common/io/InputSupplier;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/lang/Readable;",
            ":",
            "Ljava/io/Closeable;",
            ">(",
            "Lcom/google/common/io/InputSupplier",
            "<TR;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 265
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v1

    .line 267
    :try_start_0
    invoke-interface {p0}, Lcom/google/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    invoke-virtual {v1, v0}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v0

    check-cast v0, Ljava/lang/Readable;

    .line 268
    invoke-static {v0}, Lcom/google/common/io/CharStreams;->readLines(Ljava/lang/Readable;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 272
    invoke-virtual {v1}, Lcom/google/common/io/Closer;->close()V

    return-object v0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    :try_start_1
    invoke-virtual {v1, v0}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/common/io/Closer;->close()V

    throw v0
.end method

.method public static readLines(Ljava/lang/Readable;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Readable;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 291
    new-instance v1, Lcom/google/common/io/LineReader;

    invoke-direct {v1, p0}, Lcom/google/common/io/LineReader;-><init>(Ljava/lang/Readable;)V

    .line 293
    :goto_0
    invoke-virtual {v1}, Lcom/google/common/io/LineReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 294
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 296
    :cond_0
    return-object v0
.end method

.method public static skipFully(Ljava/io/Reader;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 409
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    :goto_0
    cmp-long v0, p1, v4

    if-lez v0, :cond_2

    .line 411
    invoke-virtual {p0, p1, p2}, Ljava/io/Reader;->skip(J)J

    move-result-wide v0

    .line 412
    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    .line 414
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 415
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 417
    :cond_0
    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    :goto_1
    move-wide p1, v0

    .line 421
    goto :goto_0

    .line 419
    :cond_1
    sub-long v0, p1, v0

    goto :goto_1

    .line 422
    :cond_2
    return-void
.end method

.method public static toString(Lcom/google/common/io/InputSupplier;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/lang/Readable;",
            ":",
            "Ljava/io/Closeable;",
            ">(",
            "Lcom/google/common/io/InputSupplier",
            "<TR;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 216
    invoke-static {p0}, Lcom/google/common/io/CharStreams;->asCharSource(Lcom/google/common/io/InputSupplier;)Lcom/google/common/io/CharSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/io/CharSource;->read()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Readable;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-static {p0}, Lcom/google/common/io/CharStreams;->toStringBuilder(Ljava/lang/Readable;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toStringBuilder(Ljava/lang/Readable;)Ljava/lang/StringBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    invoke-static {p0, v0}, Lcom/google/common/io/CharStreams;->copy(Ljava/lang/Readable;Ljava/lang/Appendable;)J

    .line 230
    return-object v0
.end method

.method public static write(Ljava/lang/CharSequence;Lcom/google/common/io/OutputSupplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<W::",
            "Ljava/lang/Appendable;",
            ":",
            "Ljava/io/Closeable;",
            ">(",
            "Ljava/lang/CharSequence;",
            "Lcom/google/common/io/OutputSupplier",
            "<TW;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 128
    invoke-static {p1}, Lcom/google/common/io/CharStreams;->asCharSink(Lcom/google/common/io/OutputSupplier;)Lcom/google/common/io/CharSink;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/io/CharSink;->write(Ljava/lang/CharSequence;)V

    .line 129
    return-void
.end method
