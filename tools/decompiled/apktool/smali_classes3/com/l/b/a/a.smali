.class public Lcom/l/b/a/a;
.super Ljava/lang/Object;
.source "ASCIIUtility.java"


# direct methods
.method public static a([BIII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 48
    if-nez p0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string/jumbo v1, "null"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    if-le p2, p1, :cond_6

    .line 59
    aget-byte v0, p0, p1

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_1

    .line 60
    const/4 v2, 0x1

    .line 61
    const/high16 v0, -0x80000000

    .line 62
    add-int/lit8 v1, p1, 0x1

    .line 66
    :goto_0
    div-int v5, v0, p3

    .line 67
    if-ge v1, p2, :cond_a

    .line 68
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p0, v1

    int-to-char v1, v1

    invoke-static {v1, p3}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 69
    if-gez v1, :cond_2

    .line 70
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "illegal number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p0, p1, p2}, Lcom/l/b/a/a;->a([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    const v0, -0x7fffffff

    move v1, p1

    move v2, v3

    goto :goto_0

    .line 74
    :cond_2
    neg-int v1, v1

    .line 77
    :goto_1
    if-ge v3, p2, :cond_7

    .line 79
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p0, v3

    int-to-char v3, v3

    invoke-static {v3, p3}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 80
    if-gez v3, :cond_3

    .line 81
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string/jumbo v1, "illegal number"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_3
    if-ge v1, v5, :cond_4

    .line 84
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string/jumbo v1, "illegal number"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_4
    mul-int/2addr v1, p3

    .line 87
    add-int v6, v0, v3

    if-ge v1, v6, :cond_5

    .line 88
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string/jumbo v1, "illegal number"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_5
    sub-int/2addr v1, v3

    move v3, v4

    .line 91
    goto :goto_1

    .line 93
    :cond_6
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string/jumbo v1, "illegal number"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_7
    if-eqz v2, :cond_9

    .line 96
    add-int/lit8 v0, p1, 0x1

    if-le v3, v0, :cond_8

    move v0, v1

    .line 102
    :goto_2
    return v0

    .line 99
    :cond_8
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string/jumbo v1, "illegal number"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_9
    neg-int v0, v1

    goto :goto_2

    :cond_a
    move v7, v1

    move v1, v3

    move v3, v7

    goto :goto_1
.end method

.method public static a([BII)Ljava/lang/String;
    .locals 6

    .prologue
    .line 199
    sub-int v3, p2, p1

    .line 200
    new-array v4, v3, [C

    .line 202
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 203
    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v0, p1, 0x1

    aget-byte v5, p0, p1

    and-int/lit16 v5, v5, 0xff

    int-to-char v5, v5

    aput-char v5, v4, v1

    move p1, v0

    move v1, v2

    goto :goto_0

    .line 205
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 234
    const/16 v0, 0x400

    .line 238
    instance-of v1, p0, Ljava/io/ByteArrayInputStream;

    if-eqz v1, :cond_0

    .line 239
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 240
    new-array v0, v1, [B

    .line 241
    invoke-virtual {p0, v0, v5, v1}, Ljava/io/InputStream;->read([BII)I

    .line 250
    :goto_0
    return-object v0

    .line 244
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 245
    new-array v2, v0, [B

    .line 246
    :goto_1
    invoke-virtual {p0, v2, v5, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 247
    invoke-virtual {v1, v2, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 248
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 6

    .prologue
    .line 222
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 223
    array-length v3, v2

    .line 224
    new-array v4, v3, [B

    .line 226
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 227
    add-int/lit8 v1, v0, 0x1

    aget-char v5, v2, v0

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    move v0, v1

    goto :goto_0

    .line 228
    :cond_0
    return-object v4
.end method
