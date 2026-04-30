.class public final Lcom/google/gdata/util/common/io/Characters;
.super Ljava/lang/Object;
.source "Characters.java"


# static fields
.field private static final BUF_SIZE:I = 0x800


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asWriter(Ljava/lang/Appendable;)Ljava/io/Writer;
    .locals 1

    .prologue
    .line 427
    instance-of v0, p0, Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 428
    check-cast p0, Ljava/io/Writer;

    .line 430
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/google/gdata/util/common/io/AppendableWriter;

    invoke-direct {v0, p0}, Lcom/google/gdata/util/common/io/AppendableWriter;-><init>(Ljava/lang/Appendable;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static copy(Lcom/google/gdata/util/common/io/InputSupplier;Lcom/google/gdata/util/common/io/OutputSupplier;)J
    .locals 6
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
            "Lcom/google/gdata/util/common/io/InputSupplier",
            "<TR;>;",
            "Lcom/google/gdata/util/common/io/OutputSupplier",
            "<TW;>;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    const/4 v2, 0x1

    .line 143
    invoke-interface {p0}, Lcom/google/gdata/util/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Readable;

    .line 145
    :try_start_0
    invoke-interface {p1}, Lcom/google/gdata/util/common/io/OutputSupplier;->getOutput()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Appendable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 147
    :try_start_1
    invoke-static {v0, v1}, Lcom/google/gdata/util/common/io/Characters;->copy(Ljava/lang/Readable;Ljava/lang/Appendable;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    .line 148
    const/4 v2, 0x0

    .line 151
    :try_start_2
    check-cast v1, Ljava/io/Closeable;

    invoke-static {v1, v2}, Lcom/google/gdata/util/common/io/Closeables;->close(Ljava/io/Closeable;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 154
    check-cast v0, Ljava/io/Closeable;

    invoke-static {v0, v2}, Lcom/google/gdata/util/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    return-wide v4

    .line 151
    :catchall_0
    move-exception v3

    :try_start_3
    check-cast v1, Ljava/io/Closeable;

    invoke-static {v1, v2}, Lcom/google/gdata/util/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 154
    :catchall_1
    move-exception v1

    check-cast v0, Ljava/io/Closeable;

    invoke-static {v0, v2}, Lcom/google/gdata/util/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v1
.end method

.method public static copy(Lcom/google/gdata/util/common/io/InputSupplier;Ljava/lang/Appendable;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/lang/Readable;",
            ":",
            "Ljava/io/Closeable;",
            ">(",
            "Lcom/google/gdata/util/common/io/InputSupplier",
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

    .prologue
    .line 170
    const/4 v1, 0x1

    .line 171
    invoke-interface {p0}, Lcom/google/gdata/util/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Readable;

    .line 173
    :try_start_0
    invoke-static {v0, p1}, Lcom/google/gdata/util/common/io/Characters;->copy(Ljava/lang/Readable;Ljava/lang/Appendable;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 174
    const/4 v1, 0x0

    .line 177
    check-cast v0, Ljava/io/Closeable;

    invoke-static {v0, v1}, Lcom/google/gdata/util/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    return-wide v2

    :catchall_0
    move-exception v2

    check-cast v0, Ljava/io/Closeable;

    invoke-static {v0, v1}, Lcom/google/gdata/util/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v2
.end method

.method public static copy(Ljava/lang/Readable;Ljava/lang/Appendable;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    const/16 v0, 0x800

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v2

    .line 192
    const-wide/16 v0, 0x0

    .line 194
    :goto_0
    invoke-interface {p0, v2}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I

    move-result v3

    .line 195
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 202
    return-wide v0

    .line 198
    :cond_0
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 199
    const/4 v4, 0x0

    invoke-interface {p1, v2, v4, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 200
    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 201
    goto :goto_0
.end method

.method public static join(Ljava/lang/Iterable;)Lcom/google/gdata/util/common/io/InputSupplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/gdata/util/common/io/InputSupplier",
            "<+",
            "Ljava/io/Reader;",
            ">;>;)",
            "Lcom/google/gdata/util/common/io/InputSupplier",
            "<",
            "Ljava/io/Reader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 377
    new-instance v0, Lcom/google/gdata/util/common/io/Characters$4;

    invoke-direct {v0, p0}, Lcom/google/gdata/util/common/io/Characters$4;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static varargs join([Lcom/google/gdata/util/common/io/InputSupplier;)Lcom/google/gdata/util/common/io/InputSupplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/gdata/util/common/io/InputSupplier",
            "<+",
            "Ljava/io/Reader;",
            ">;)",
            "Lcom/google/gdata/util/common/io/InputSupplier",
            "<",
            "Ljava/io/Reader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 387
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gdata/util/common/io/Characters;->join(Ljava/lang/Iterable;)Lcom/google/gdata/util/common/io/InputSupplier;

    move-result-object v0

    return-object v0
.end method

.method public static newReaderSupplier(Lcom/google/gdata/util/common/io/InputSupplier;Ljava/nio/charset/Charset;)Lcom/google/gdata/util/common/io/InputSupplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/util/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lcom/google/gdata/util/common/io/InputSupplier",
            "<",
            "Ljava/io/InputStreamReader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {p0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {p1}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v0, Lcom/google/gdata/util/common/io/Characters$2;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/util/common/io/Characters$2;-><init>(Lcom/google/gdata/util/common/io/InputSupplier;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static newReaderSupplier(Ljava/lang/String;)Lcom/google/gdata/util/common/io/InputSupplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/gdata/util/common/io/InputSupplier",
            "<",
            "Ljava/io/StringReader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {p0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v0, Lcom/google/gdata/util/common/io/Characters$1;

    invoke-direct {v0, p0}, Lcom/google/gdata/util/common/io/Characters$1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static newWriterSupplier(Lcom/google/gdata/util/common/io/OutputSupplier;Ljava/nio/charset/Charset;)Lcom/google/gdata/util/common/io/OutputSupplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/util/common/io/OutputSupplier",
            "<+",
            "Ljava/io/OutputStream;",
            ">;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lcom/google/gdata/util/common/io/OutputSupplier",
            "<",
            "Ljava/io/OutputStreamWriter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    invoke-static {p0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static {p1}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v0, Lcom/google/gdata/util/common/io/Characters$3;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/util/common/io/Characters$3;-><init>(Lcom/google/gdata/util/common/io/OutputSupplier;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static readFirstLine(Lcom/google/gdata/util/common/io/InputSupplier;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/lang/Readable;",
            ":",
            "Ljava/io/Closeable;",
            ">(",
            "Lcom/google/gdata/util/common/io/InputSupplier",
            "<TR;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    const/4 v2, 0x1

    .line 276
    invoke-interface {p0}, Lcom/google/gdata/util/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Readable;

    .line 278
    :try_start_0
    new-instance v1, Lcom/google/gdata/util/common/io/LineReader;

    invoke-direct {v1, v0}, Lcom/google/gdata/util/common/io/LineReader;-><init>(Ljava/lang/Readable;)V

    invoke-virtual {v1}, Lcom/google/gdata/util/common/io/LineReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 279
    const/4 v2, 0x0

    .line 282
    check-cast v0, Ljava/io/Closeable;

    invoke-static {v0, v2}, Lcom/google/gdata/util/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    return-object v1

    :catchall_0
    move-exception v1

    check-cast v0, Ljava/io/Closeable;

    invoke-static {v0, v2}, Lcom/google/gdata/util/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v1
.end method

.method public static readLines(Lcom/google/gdata/util/common/io/InputSupplier;Lcom/google/gdata/util/common/io/LineProcessor;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/lang/Readable;",
            ":",
            "Ljava/io/Closeable;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gdata/util/common/io/InputSupplier",
            "<TR;>;",
            "Lcom/google/gdata/util/common/io/LineProcessor",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 343
    const/4 v2, 0x1

    .line 344
    invoke-interface {p0}, Lcom/google/gdata/util/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Readable;

    .line 346
    :try_start_0
    new-instance v1, Lcom/google/gdata/util/common/io/LineReader;

    invoke-direct {v1, v0}, Lcom/google/gdata/util/common/io/LineReader;-><init>(Ljava/lang/Readable;)V

    .line 348
    :cond_0
    invoke-virtual {v1}, Lcom/google/gdata/util/common/io/LineReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 349
    invoke-interface {p1, v3}, Lcom/google/gdata/util/common/io/LineProcessor;->processLine(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 353
    :cond_1
    const/4 v1, 0x0

    .line 355
    check-cast v0, Ljava/io/Closeable;

    invoke-static {v0, v1}, Lcom/google/gdata/util/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 357
    invoke-interface {p1}, Lcom/google/gdata/util/common/io/LineProcessor;->getResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 355
    :catchall_0
    move-exception v1

    check-cast v0, Ljava/io/Closeable;

    invoke-static {v0, v2}, Lcom/google/gdata/util/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v1
.end method

.method public static readLines(Lcom/google/gdata/util/common/io/InputSupplier;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/lang/Readable;",
            ":",
            "Ljava/io/Closeable;",
            ">(",
            "Lcom/google/gdata/util/common/io/InputSupplier",
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

    .prologue
    .line 297
    const/4 v1, 0x1

    .line 298
    invoke-interface {p0}, Lcom/google/gdata/util/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Readable;

    .line 300
    :try_start_0
    invoke-static {v0}, Lcom/google/gdata/util/common/io/Characters;->readLines(Ljava/lang/Readable;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 301
    const/4 v2, 0x0

    .line 304
    check-cast v0, Ljava/io/Closeable;

    invoke-static {v0, v2}, Lcom/google/gdata/util/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    return-object v1

    :catchall_0
    move-exception v2

    check-cast v0, Ljava/io/Closeable;

    invoke-static {v0, v1}, Lcom/google/gdata/util/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v2
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
    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 323
    new-instance v1, Lcom/google/gdata/util/common/io/LineReader;

    invoke-direct {v1, p0}, Lcom/google/gdata/util/common/io/LineReader;-><init>(Ljava/lang/Readable;)V

    .line 325
    :goto_0
    invoke-virtual {v1}, Lcom/google/gdata/util/common/io/LineReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 326
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 328
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

    .line 402
    :goto_0
    cmp-long v0, p1, v4

    if-lez v0, :cond_2

    .line 403
    invoke-virtual {p0, p1, p2}, Ljava/io/Reader;->skip(J)J

    move-result-wide v0

    .line 404
    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    .line 406
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 407
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 409
    :cond_0
    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    :goto_1
    move-wide p1, v0

    .line 413
    goto :goto_0

    .line 411
    :cond_1
    sub-long v0, p1, v0

    goto :goto_1

    .line 414
    :cond_2
    return-void
.end method

.method public static toString(Lcom/google/gdata/util/common/io/InputSupplier;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/lang/Readable;",
            ":",
            "Ljava/io/Closeable;",
            ">(",
            "Lcom/google/gdata/util/common/io/InputSupplier",
            "<TR;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    invoke-static {p0}, Lcom/google/gdata/util/common/io/Characters;->toStringBuilder(Lcom/google/gdata/util/common/io/InputSupplier;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
    .line 214
    invoke-static {p0}, Lcom/google/gdata/util/common/io/Characters;->toStringBuilder(Ljava/lang/Readable;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toStringBuilder(Lcom/google/gdata/util/common/io/InputSupplier;)Ljava/lang/StringBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/lang/Readable;",
            ":",
            "Ljava/io/Closeable;",
            ">(",
            "Lcom/google/gdata/util/common/io/InputSupplier",
            "<TR;>;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    const/4 v1, 0x1

    .line 254
    invoke-interface {p0}, Lcom/google/gdata/util/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Readable;

    .line 256
    :try_start_0
    invoke-static {v0}, Lcom/google/gdata/util/common/io/Characters;->toStringBuilder(Ljava/lang/Readable;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 257
    const/4 v2, 0x0

    .line 260
    check-cast v0, Ljava/io/Closeable;

    invoke-static {v0, v2}, Lcom/google/gdata/util/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    return-object v1

    :catchall_0
    move-exception v2

    check-cast v0, Ljava/io/Closeable;

    invoke-static {v0, v1}, Lcom/google/gdata/util/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v2
.end method

.method private static toStringBuilder(Ljava/lang/Readable;)Ljava/lang/StringBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    invoke-static {p0, v0}, Lcom/google/gdata/util/common/io/Characters;->copy(Ljava/lang/Readable;Ljava/lang/Appendable;)J

    .line 241
    return-object v0
.end method

.method public static write(Ljava/lang/CharSequence;Lcom/google/gdata/util/common/io/OutputSupplier;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<W::",
            "Ljava/lang/Appendable;",
            ":",
            "Ljava/io/Closeable;",
            ">(",
            "Ljava/lang/CharSequence;",
            "Lcom/google/gdata/util/common/io/OutputSupplier",
            "<TW;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-static {p0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const/4 v1, 0x1

    .line 120
    invoke-interface {p1}, Lcom/google/gdata/util/common/io/OutputSupplier;->getOutput()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Appendable;

    .line 122
    :try_start_0
    invoke-interface {v0, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    const/4 v1, 0x0

    .line 125
    check-cast v0, Ljava/io/Closeable;

    invoke-static {v0, v1}, Lcom/google/gdata/util/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 127
    return-void

    .line 125
    :catchall_0
    move-exception v2

    check-cast v0, Ljava/io/Closeable;

    invoke-static {v0, v1}, Lcom/google/gdata/util/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v2
.end method
