.class public Lorg/mortbay/util/IO;
.super Lorg/mortbay/thread/BoundedThreadPool;
.source "IO.java"


# static fields
.field public static final CRLF:Ljava/lang/String; = "\r\n"

.field public static final CRLF_BYTES:[B

.field private static __closedStream:Lorg/mortbay/util/IO$ClosedIS;

.field private static __nullStream:Lorg/mortbay/util/IO$NullOS;

.field private static __nullWriter:Lorg/mortbay/util/IO$NullWrite;

.field public static bufferSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/mortbay/util/IO;->CRLF_BYTES:[B

    .line 48
    const/16 v0, 0x4000

    sput v0, Lorg/mortbay/util/IO;->bufferSize:I

    .line 436
    new-instance v0, Lorg/mortbay/util/IO$NullOS;

    invoke-direct {v0, v1}, Lorg/mortbay/util/IO$NullOS;-><init>(Lorg/mortbay/util/IO$1;)V

    sput-object v0, Lorg/mortbay/util/IO;->__nullStream:Lorg/mortbay/util/IO$NullOS;

    .line 448
    new-instance v0, Lorg/mortbay/util/IO$ClosedIS;

    invoke-direct {v0, v1}, Lorg/mortbay/util/IO$ClosedIS;-><init>(Lorg/mortbay/util/IO$1;)V

    sput-object v0, Lorg/mortbay/util/IO;->__closedStream:Lorg/mortbay/util/IO$ClosedIS;

    .line 471
    new-instance v0, Lorg/mortbay/util/IO$NullWrite;

    invoke-direct {v0, v1}, Lorg/mortbay/util/IO$NullWrite;-><init>(Lorg/mortbay/util/IO$1;)V

    sput-object v0, Lorg/mortbay/util/IO;->__nullWriter:Lorg/mortbay/util/IO$NullWrite;

    return-void

    .line 45
    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/mortbay/thread/BoundedThreadPool;-><init>()V

    .line 461
    return-void
.end method

.method public static close(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 371
    if-eqz p0, :cond_0

    .line 372
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 374
    :catch_0
    move-exception v0

    .line 376
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static close(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 399
    if-eqz p0, :cond_0

    .line 400
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 402
    :catch_0
    move-exception v0

    .line 404
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static copy(Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    invoke-static {p0, p1}, Lorg/mortbay/util/IO;->copyDir(Ljava/io/File;Ljava/io/File;)V

    .line 273
    :goto_0
    return-void

    .line 272
    :cond_0
    invoke-static {p0, p1}, Lorg/mortbay/util/IO;->copyFile(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, v0, v1}, Lorg/mortbay/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V

    .line 143
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 180
    sget v0, Lorg/mortbay/util/IO;->bufferSize:I

    new-array v1, v0, [B

    .line 181
    sget v0, Lorg/mortbay/util/IO;->bufferSize:I

    .line 183
    cmp-long v0, p2, v6

    if-ltz v0, :cond_4

    .line 185
    :goto_0
    cmp-long v0, p2, v6

    if-lez v0, :cond_0

    .line 187
    sget v0, Lorg/mortbay/util/IO;->bufferSize:I

    int-to-long v2, v0

    cmp-long v0, p2, v2

    if-gez v0, :cond_1

    .line 188
    long-to-int v0, p2

    invoke-virtual {p0, v1, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 192
    :goto_1
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 209
    :cond_0
    :goto_2
    return-void

    .line 190
    :cond_1
    sget v0, Lorg/mortbay/util/IO;->bufferSize:I

    invoke-virtual {p0, v1, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    goto :goto_1

    .line 195
    :cond_2
    int-to-long v2, v0

    sub-long/2addr p2, v2

    .line 196
    invoke-virtual {p1, v1, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 206
    :cond_3
    invoke-virtual {p1, v1, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 203
    :cond_4
    sget v0, Lorg/mortbay/util/IO;->bufferSize:I

    invoke-virtual {p0, v1, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 204
    if-gez v0, :cond_3

    goto :goto_2
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, v0, v1}, Lorg/mortbay/util/IO;->copy(Ljava/io/Reader;Ljava/io/Writer;J)V

    .line 170
    return-void
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/Writer;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 219
    sget v0, Lorg/mortbay/util/IO;->bufferSize:I

    new-array v1, v0, [C

    .line 220
    sget v0, Lorg/mortbay/util/IO;->bufferSize:I

    .line 222
    cmp-long v0, p2, v6

    if-ltz v0, :cond_3

    .line 224
    :goto_0
    cmp-long v0, p2, v6

    if-lez v0, :cond_0

    .line 226
    sget v0, Lorg/mortbay/util/IO;->bufferSize:I

    int-to-long v2, v0

    cmp-long v0, p2, v2

    if-gez v0, :cond_1

    .line 227
    long-to-int v0, p2

    invoke-virtual {p0, v1, v4, v0}, Ljava/io/Reader;->read([CII)I

    move-result v0

    .line 231
    :goto_1
    if-ne v0, v5, :cond_2

    .line 259
    :cond_0
    :goto_2
    return-void

    .line 229
    :cond_1
    sget v0, Lorg/mortbay/util/IO;->bufferSize:I

    invoke-virtual {p0, v1, v4, v0}, Ljava/io/Reader;->read([CII)I

    move-result v0

    goto :goto_1

    .line 234
    :cond_2
    int-to-long v2, v0

    sub-long/2addr p2, v2

    .line 235
    invoke-virtual {p1, v1, v4, v0}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 238
    :cond_3
    instance-of v0, p1, Ljava/io/PrintWriter;

    if-eqz v0, :cond_5

    move-object v0, p1

    .line 240
    check-cast v0, Ljava/io/PrintWriter;

    .line 241
    :goto_3
    invoke-virtual {v0}, Ljava/io/PrintWriter;->checkError()Z

    move-result v2

    if-nez v2, :cond_0

    .line 243
    sget v2, Lorg/mortbay/util/IO;->bufferSize:I

    invoke-virtual {p0, v1, v4, v2}, Ljava/io/Reader;->read([CII)I

    move-result v2

    .line 244
    if-eq v2, v5, :cond_0

    .line 246
    invoke-virtual {p1, v1, v4, v2}, Ljava/io/Writer;->write([CII)V

    goto :goto_3

    .line 256
    :cond_4
    invoke-virtual {p1, v1, v4, v0}, Ljava/io/Writer;->write([CII)V

    .line 253
    :cond_5
    sget v0, Lorg/mortbay/util/IO;->bufferSize:I

    invoke-virtual {p0, v1, v4, v0}, Ljava/io/Reader;->read([CII)I

    move-result v0

    .line 254
    if-ne v0, v5, :cond_4

    goto :goto_2
.end method

.method public static copyDir(Ljava/io/File;Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 281
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 286
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 287
    if-eqz v1, :cond_4

    .line 289
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 291
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 292
    const-string/jumbo v3, "."

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, ".."

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 289
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    :cond_3
    aget-object v3, v1, v0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lorg/mortbay/util/IO;->copy(Ljava/io/File;Ljava/io/File;)V

    goto :goto_1

    .line 297
    :cond_4
    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 303
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 304
    invoke-static {v0, v1}, Lorg/mortbay/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 305
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 306
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 307
    return-void
.end method

.method public static copyThread(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 126
    :try_start_0
    new-instance v0, Lorg/mortbay/util/IO$Job;

    invoke-direct {v0, p0, p1}, Lorg/mortbay/util/IO$Job;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 127
    invoke-static {}, Lorg/mortbay/util/IO;->instance()Lorg/mortbay/util/IO;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/mortbay/util/IO;->dispatch(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    invoke-virtual {v0}, Lorg/mortbay/util/IO$Job;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 132
    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static copyThread(Ljava/io/Reader;Ljava/io/Writer;)V
    .locals 2

    .prologue
    .line 153
    :try_start_0
    new-instance v0, Lorg/mortbay/util/IO$Job;

    invoke-direct {v0, p0, p1}, Lorg/mortbay/util/IO$Job;-><init>(Ljava/io/Reader;Ljava/io/Writer;)V

    .line 154
    invoke-static {}, Lorg/mortbay/util/IO;->instance()Lorg/mortbay/util/IO;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/mortbay/util/IO;->dispatch(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    invoke-virtual {v0}, Lorg/mortbay/util/IO$Job;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 159
    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static delete(Ljava/io/File;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 350
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 358
    :goto_0
    return v0

    .line 352
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 354
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 355
    :goto_1
    if-eqz v1, :cond_1

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 356
    aget-object v2, v1, v0

    invoke-static {v2}, Lorg/mortbay/util/IO;->delete(Ljava/io/File;)Z

    .line 355
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 358
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_0
.end method

.method public static getClosedStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 423
    sget-object v0, Lorg/mortbay/util/IO;->__closedStream:Lorg/mortbay/util/IO$ClosedIS;

    return-object v0
.end method

.method public static getNullStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 414
    sget-object v0, Lorg/mortbay/util/IO;->__nullStream:Lorg/mortbay/util/IO$NullOS;

    return-object v0
.end method

.method public static getNullWriter()Ljava/io/Writer;
    .locals 1

    .prologue
    .line 456
    sget-object v0, Lorg/mortbay/util/IO;->__nullWriter:Lorg/mortbay/util/IO$NullWrite;

    return-object v0
.end method

.method public static instance()Lorg/mortbay/util/IO;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lorg/mortbay/util/IO$Singleton;->__instance:Lorg/mortbay/util/IO;

    return-object v0
.end method

.method public static readBytes(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 384
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 385
    invoke-static {p0, v0}, Lorg/mortbay/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 386
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/mortbay/util/IO;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 325
    if-nez p1, :cond_0

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 327
    :goto_0
    invoke-static {v0, v1}, Lorg/mortbay/util/IO;->copy(Ljava/io/Reader;Ljava/io/Writer;)V

    .line 328
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 325
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static toString(Ljava/io/Reader;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 338
    invoke-static {p0, v0}, Lorg/mortbay/util/IO;->copy(Ljava/io/Reader;Ljava/io/Writer;)V

    .line 339
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
