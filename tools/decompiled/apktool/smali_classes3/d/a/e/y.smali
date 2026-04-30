.class final Ld/a/e/y;
.super Ljava/lang/Object;
.source "Http2Reader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final a:Ljava/util/logging/Logger;


# instance fields
.field final b:Ld/a/e/e;

.field private final c:Le/j;

.field private final d:Ld/a/e/z;

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Ld/a/e/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ld/a/e/y;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Le/j;Z)V
    .locals 3

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Ld/a/e/y;->c:Le/j;

    .line 72
    iput-boolean p2, p0, Ld/a/e/y;->e:Z

    .line 73
    new-instance v0, Ld/a/e/z;

    iget-object v1, p0, Ld/a/e/y;->c:Le/j;

    invoke-direct {v0, v1}, Ld/a/e/z;-><init>(Le/j;)V

    iput-object v0, p0, Ld/a/e/y;->d:Ld/a/e/z;

    .line 74
    new-instance v0, Ld/a/e/e;

    const/16 v1, 0x1000

    iget-object v2, p0, Ld/a/e/y;->d:Ld/a/e/z;

    invoke-direct {v0, v1, v2}, Ld/a/e/e;-><init>(ILe/ab;)V

    iput-object v0, p0, Ld/a/e/y;->b:Ld/a/e/e;

    .line 75
    return-void
.end method

.method static a(IBS)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 406
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_0

    add-int/lit8 p0, p0, -0x1

    .line 407
    :cond_0
    if-le p2, p0, :cond_1

    .line 408
    const-string/jumbo v0, "PROTOCOL_ERROR padding %s > remaining length %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ld/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 410
    :cond_1
    sub-int v0, p0, p2

    int-to-short v0, v0

    return v0
.end method

.method static a(Le/j;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 399
    invoke-interface {p0}, Le/j;->i()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    .line 400
    invoke-interface {p0}, Le/j;->i()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 401
    invoke-interface {p0}, Le/j;->i()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 399
    return v0
.end method

.method private a(ISBI)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List",
            "<",
            "Ld/a/e/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Ld/a/e/y;->d:Ld/a/e/z;

    iget-object v1, p0, Ld/a/e/y;->d:Ld/a/e/z;

    iput p1, v1, Ld/a/e/z;->d:I

    iput p1, v0, Ld/a/e/z;->a:I

    .line 190
    iget-object v0, p0, Ld/a/e/y;->d:Ld/a/e/z;

    iput-short p2, v0, Ld/a/e/z;->e:S

    .line 191
    iget-object v0, p0, Ld/a/e/y;->d:Ld/a/e/z;

    iput-byte p3, v0, Ld/a/e/z;->b:B

    .line 192
    iget-object v0, p0, Ld/a/e/y;->d:Ld/a/e/z;

    iput p4, v0, Ld/a/e/z;->c:I

    .line 196
    iget-object v0, p0, Ld/a/e/y;->b:Ld/a/e/e;

    invoke-virtual {v0}, Ld/a/e/e;->a()V

    .line 197
    iget-object v0, p0, Ld/a/e/y;->b:Ld/a/e/e;

    invoke-virtual {v0}, Ld/a/e/e;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Ld/a/e/aa;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Ld/a/e/y;->c:Le/j;

    invoke-interface {v0}, Le/j;->k()I

    move-result v1

    .line 227
    const/high16 v0, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 228
    :goto_0
    const v2, 0x7fffffff

    and-int/2addr v1, v2

    .line 229
    iget-object v2, p0, Ld/a/e/y;->c:Le/j;

    invoke-interface {v2}, Le/j;->i()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v2, v2, 0x1

    .line 230
    invoke-interface {p1, p2, v1, v2, v0}, Ld/a/e/aa;->a(IIIZ)V

    .line 231
    return-void

    .line 227
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ld/a/e/aa;IBI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 169
    if-nez p4, :cond_0

    const-string/jumbo v1, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Ld/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 171
    :cond_0
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 173
    :goto_0
    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_1

    iget-object v0, p0, Ld/a/e/y;->c:Le/j;

    invoke-interface {v0}, Le/j;->i()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 175
    :cond_1
    and-int/lit8 v2, p3, 0x20

    if-eqz v2, :cond_2

    .line 176
    invoke-direct {p0, p1, p4}, Ld/a/e/y;->a(Ld/a/e/aa;I)V

    .line 177
    add-int/lit8 p2, p2, -0x5

    .line 180
    :cond_2
    invoke-static {p2, p3, v0}, Ld/a/e/y;->a(IBS)I

    move-result v2

    .line 182
    invoke-direct {p0, v2, v0, p3, p4}, Ld/a/e/y;->a(ISBI)Ljava/util/List;

    move-result-object v0

    .line 184
    const/4 v2, -0x1

    invoke-interface {p1, v1, p4, v2, v0}, Ld/a/e/aa;->a(ZIILjava/util/List;)V

    .line 185
    return-void

    :cond_3
    move v1, v0

    .line 171
    goto :goto_0
.end method

.method private b(Ld/a/e/aa;IBI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 202
    if-nez p4, :cond_0

    const-string/jumbo v1, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Ld/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 205
    :cond_0
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_1

    move v2, v1

    .line 206
    :goto_0
    and-int/lit8 v3, p3, 0x20

    if-eqz v3, :cond_2

    .line 207
    :goto_1
    if-eqz v1, :cond_3

    .line 208
    const-string/jumbo v1, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Ld/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1
    move v2, v0

    .line 205
    goto :goto_0

    :cond_2
    move v1, v0

    .line 206
    goto :goto_1

    .line 211
    :cond_3
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_4

    iget-object v0, p0, Ld/a/e/y;->c:Le/j;

    invoke-interface {v0}, Le/j;->i()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 212
    :cond_4
    invoke-static {p2, p3, v0}, Ld/a/e/y;->a(IBS)I

    move-result v1

    .line 214
    iget-object v3, p0, Ld/a/e/y;->c:Le/j;

    invoke-interface {p1, v2, p4, v3, v1}, Ld/a/e/aa;->a(ZILe/j;I)V

    .line 215
    iget-object v1, p0, Ld/a/e/y;->c:Le/j;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Le/j;->h(J)V

    .line 216
    return-void
.end method

.method private c(Ld/a/e/aa;IBI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 220
    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const-string/jumbo v0, "TYPE_PRIORITY length: %d != 5"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ld/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 221
    :cond_0
    if-nez p4, :cond_1

    const-string/jumbo v0, "TYPE_PRIORITY streamId == 0"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ld/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 222
    :cond_1
    invoke-direct {p0, p1, p4}, Ld/a/e/y;->a(Ld/a/e/aa;I)V

    .line 223
    return-void
.end method

.method private d(Ld/a/e/aa;IBI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 235
    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const-string/jumbo v0, "TYPE_RST_STREAM length: %d != 4"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ld/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 236
    :cond_0
    if-nez p4, :cond_1

    const-string/jumbo v0, "TYPE_RST_STREAM streamId == 0"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ld/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 237
    :cond_1
    iget-object v0, p0, Ld/a/e/y;->c:Le/j;

    invoke-interface {v0}, Le/j;->k()I

    move-result v0

    .line 238
    invoke-static {v0}, Ld/a/e/b;->a(I)Ld/a/e/b;

    move-result-object v1

    .line 239
    if-nez v1, :cond_2

    .line 240
    const-string/jumbo v1, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ld/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 242
    :cond_2
    invoke-interface {p1, p4, v1}, Ld/a/e/aa;->a(ILd/a/e/b;)V

    .line 243
    return-void
.end method

.method private e(Ld/a/e/aa;IBI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 247
    if-eqz p4, :cond_0

    const-string/jumbo v0, "TYPE_SETTINGS streamId != 0"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ld/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 248
    :cond_0
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_2

    .line 249
    if-eqz p2, :cond_1

    const-string/jumbo v0, "FRAME_SIZE_ERROR ack frame should be empty!"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ld/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 250
    :cond_1
    invoke-interface {p1}, Ld/a/e/aa;->a()V

    .line 290
    :goto_0
    return-void

    .line 254
    :cond_2
    rem-int/lit8 v0, p2, 0x6

    if-eqz v0, :cond_3

    const-string/jumbo v0, "TYPE_SETTINGS length %% 6 != 0: %s"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ld/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 255
    :cond_3
    new-instance v3, Ld/a/e/al;

    invoke-direct {v3}, Ld/a/e/al;-><init>()V

    move v1, v2

    .line 256
    :goto_1
    if-ge v1, p2, :cond_6

    .line 257
    iget-object v0, p0, Ld/a/e/y;->c:Le/j;

    invoke-interface {v0}, Le/j;->j()S

    move-result v0

    .line 258
    iget-object v4, p0, Ld/a/e/y;->c:Le/j;

    invoke-interface {v4}, Le/j;->k()I

    move-result v4

    .line 260
    packed-switch v0, :pswitch_data_0

    .line 287
    :cond_4
    :goto_2
    :pswitch_0
    invoke-virtual {v3, v0, v4}, Ld/a/e/al;->a(II)Ld/a/e/al;

    .line 256
    add-int/lit8 v0, v1, 0x6

    move v1, v0

    goto :goto_1

    .line 264
    :pswitch_1
    if-eqz v4, :cond_4

    if-eq v4, v6, :cond_4

    .line 265
    const-string/jumbo v0, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ld/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 269
    :pswitch_2
    const/4 v0, 0x4

    .line 270
    goto :goto_2

    .line 272
    :pswitch_3
    const/4 v0, 0x7

    .line 273
    if-gez v4, :cond_4

    .line 274
    const-string/jumbo v0, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ld/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 278
    :pswitch_4
    const/16 v5, 0x4000

    if-lt v4, v5, :cond_5

    const v5, 0xffffff

    if-le v4, v5, :cond_4

    .line 279
    :cond_5
    const-string/jumbo v0, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ld/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 289
    :cond_6
    invoke-interface {p1, v2, v3}, Ld/a/e/aa;->a(ZLd/a/e/al;)V

    goto :goto_0

    .line 260
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method private f(Ld/a/e/aa;IBI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 294
    if-nez p4, :cond_0

    .line 295
    const-string/jumbo v1, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Ld/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 297
    :cond_0
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_1

    iget-object v0, p0, Ld/a/e/y;->c:Le/j;

    invoke-interface {v0}, Le/j;->i()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 298
    :cond_1
    iget-object v1, p0, Ld/a/e/y;->c:Le/j;

    invoke-interface {v1}, Le/j;->k()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    .line 299
    add-int/lit8 v2, p2, -0x4

    .line 300
    invoke-static {v2, p3, v0}, Ld/a/e/y;->a(IBS)I

    move-result v2

    .line 301
    invoke-direct {p0, v2, v0, p3, p4}, Ld/a/e/y;->a(ISBI)Ljava/util/List;

    move-result-object v0

    .line 302
    invoke-interface {p1, p4, v1, v0}, Ld/a/e/aa;->a(IILjava/util/List;)V

    .line 303
    return-void
.end method

.method private g(Ld/a/e/aa;IBI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 307
    const/16 v2, 0x8

    if-eq p2, v2, :cond_0

    const-string/jumbo v2, "TYPE_PING length != 8: %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Ld/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 308
    :cond_0
    if-eqz p4, :cond_1

    const-string/jumbo v0, "TYPE_PING streamId != 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ld/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 309
    :cond_1
    iget-object v2, p0, Ld/a/e/y;->c:Le/j;

    invoke-interface {v2}, Le/j;->k()I

    move-result v2

    .line 310
    iget-object v3, p0, Ld/a/e/y;->c:Le/j;

    invoke-interface {v3}, Le/j;->k()I

    move-result v3

    .line 311
    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_2

    .line 312
    :goto_0
    invoke-interface {p1, v0, v2, v3}, Ld/a/e/aa;->a(ZII)V

    .line 313
    return-void

    :cond_2
    move v0, v1

    .line 311
    goto :goto_0
.end method

.method private h(Ld/a/e/aa;IBI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 317
    const/16 v0, 0x8

    if-ge p2, v0, :cond_0

    const-string/jumbo v0, "TYPE_GOAWAY length < 8: %s"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ld/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 318
    :cond_0
    if-eqz p4, :cond_1

    const-string/jumbo v0, "TYPE_GOAWAY streamId != 0"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ld/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 319
    :cond_1
    iget-object v0, p0, Ld/a/e/y;->c:Le/j;

    invoke-interface {v0}, Le/j;->k()I

    move-result v1

    .line 320
    iget-object v0, p0, Ld/a/e/y;->c:Le/j;

    invoke-interface {v0}, Le/j;->k()I

    move-result v0

    .line 321
    add-int/lit8 v2, p2, -0x8

    .line 322
    invoke-static {v0}, Ld/a/e/b;->a(I)Ld/a/e/b;

    move-result-object v3

    .line 323
    if-nez v3, :cond_2

    .line 324
    const-string/jumbo v1, "TYPE_GOAWAY unexpected error code: %d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ld/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 326
    :cond_2
    sget-object v0, Le/k;->b:Le/k;

    .line 327
    if-lez v2, :cond_3

    .line 328
    iget-object v0, p0, Ld/a/e/y;->c:Le/j;

    int-to-long v4, v2

    invoke-interface {v0, v4, v5}, Le/j;->c(J)Le/k;

    move-result-object v0

    .line 330
    :cond_3
    invoke-interface {p1, v1, v3, v0}, Ld/a/e/aa;->a(ILd/a/e/b;Le/k;)V

    .line 331
    return-void
.end method

.method private i(Ld/a/e/aa;IBI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 335
    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const-string/jumbo v0, "TYPE_WINDOW_UPDATE length !=4: %s"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ld/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 336
    :cond_0
    iget-object v0, p0, Ld/a/e/y;->c:Le/j;

    invoke-interface {v0}, Le/j;->k()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    .line 337
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "windowSizeIncrement was 0"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ld/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 338
    :cond_1
    invoke-interface {p1, p4, v0, v1}, Ld/a/e/aa;->a(IJ)V

    .line 339
    return-void
.end method


# virtual methods
.method public a(Ld/a/e/aa;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 78
    iget-boolean v0, p0, Ld/a/e/y;->e:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0, v6, p1}, Ld/a/e/y;->a(ZLd/a/e/aa;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 81
    const-string/jumbo v0, "Required SETTINGS preface not received"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ld/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 85
    :cond_0
    iget-object v0, p0, Ld/a/e/y;->c:Le/j;

    sget-object v1, Ld/a/e/g;->a:Le/k;

    invoke-virtual {v1}, Le/k;->g()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Le/j;->c(J)Le/k;

    move-result-object v0

    .line 86
    sget-object v1, Ld/a/e/y;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Ld/a/e/y;->a:Ljava/util/logging/Logger;

    const-string/jumbo v2, "<< CONNECTION %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Le/k;->e()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ld/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 87
    :cond_1
    sget-object v1, Ld/a/e/g;->a:Le/k;

    invoke-virtual {v1, v0}, Le/k;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 88
    const-string/jumbo v1, "Expected a connection header but was %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Le/k;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ld/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 91
    :cond_2
    return-void
.end method

.method public a(ZLd/a/e/aa;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 95
    :try_start_0
    iget-object v2, p0, Ld/a/e/y;->c:Le/j;

    const-wide/16 v4, 0x9

    invoke-interface {v2, v4, v5}, Le/j;->a(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    iget-object v2, p0, Ld/a/e/y;->c:Le/j;

    invoke-static {v2}, Ld/a/e/y;->a(Le/j;)I

    move-result v2

    .line 112
    if-ltz v2, :cond_0

    const/16 v3, 0x4000

    if-le v2, v3, :cond_1

    .line 113
    :cond_0
    const-string/jumbo v3, "FRAME_SIZE_ERROR: %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Ld/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 96
    :catch_0
    move-exception v0

    move v0, v1

    .line 164
    :goto_0
    return v0

    .line 115
    :cond_1
    iget-object v3, p0, Ld/a/e/y;->c:Le/j;

    invoke-interface {v3}, Le/j;->i()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 116
    if-eqz p1, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    .line 117
    const-string/jumbo v2, "Expected a SETTINGS frame but was %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Ld/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 119
    :cond_2
    iget-object v1, p0, Ld/a/e/y;->c:Le/j;

    invoke-interface {v1}, Le/j;->i()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 120
    iget-object v4, p0, Ld/a/e/y;->c:Le/j;

    invoke-interface {v4}, Le/j;->k()I

    move-result v4

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    .line 121
    sget-object v5, Ld/a/e/y;->a:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Ld/a/e/y;->a:Ljava/util/logging/Logger;

    invoke-static {v0, v4, v2, v3, v1}, Ld/a/e/g;->a(ZIIBB)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 123
    :cond_3
    packed-switch v3, :pswitch_data_0

    .line 162
    iget-object v1, p0, Ld/a/e/y;->c:Le/j;

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Le/j;->h(J)V

    goto :goto_0

    .line 125
    :pswitch_0
    invoke-direct {p0, p2, v2, v1, v4}, Ld/a/e/y;->b(Ld/a/e/aa;IBI)V

    goto :goto_0

    .line 129
    :pswitch_1
    invoke-direct {p0, p2, v2, v1, v4}, Ld/a/e/y;->a(Ld/a/e/aa;IBI)V

    goto :goto_0

    .line 133
    :pswitch_2
    invoke-direct {p0, p2, v2, v1, v4}, Ld/a/e/y;->c(Ld/a/e/aa;IBI)V

    goto :goto_0

    .line 137
    :pswitch_3
    invoke-direct {p0, p2, v2, v1, v4}, Ld/a/e/y;->d(Ld/a/e/aa;IBI)V

    goto :goto_0

    .line 141
    :pswitch_4
    invoke-direct {p0, p2, v2, v1, v4}, Ld/a/e/y;->e(Ld/a/e/aa;IBI)V

    goto :goto_0

    .line 145
    :pswitch_5
    invoke-direct {p0, p2, v2, v1, v4}, Ld/a/e/y;->f(Ld/a/e/aa;IBI)V

    goto :goto_0

    .line 149
    :pswitch_6
    invoke-direct {p0, p2, v2, v1, v4}, Ld/a/e/y;->g(Ld/a/e/aa;IBI)V

    goto :goto_0

    .line 153
    :pswitch_7
    invoke-direct {p0, p2, v2, v1, v4}, Ld/a/e/y;->h(Ld/a/e/aa;IBI)V

    goto :goto_0

    .line 157
    :pswitch_8
    invoke-direct {p0, p2, v2, v1, v4}, Ld/a/e/y;->i(Ld/a/e/aa;IBI)V

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, Ld/a/e/y;->c:Le/j;

    invoke-interface {v0}, Le/j;->close()V

    .line 343
    return-void
.end method
