.class public Lorg/mortbay/io/BufferUtil;
.super Ljava/lang/Object;
.source "BufferUtil.java"


# static fields
.field static final DIGIT:[B

.field static final MINUS:B = 0x2dt

.field static final SPACE:B = 0x20t

.field private static decDivisors:[I

.field private static final decDivisorsL:[J

.field private static hexDivisors:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/mortbay/io/BufferUtil;->DIGIT:[B

    .line 283
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/mortbay/io/BufferUtil;->decDivisors:[I

    .line 286
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/mortbay/io/BufferUtil;->hexDivisors:[I

    .line 289
    const/16 v0, 0x13

    new-array v0, v0, [J

    fill-array-data v0, :array_3

    sput-object v0, Lorg/mortbay/io/BufferUtil;->decDivisorsL:[J

    return-void

    .line 30
    nop

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data

    .line 283
    :array_1
    .array-data 4
        0x3b9aca00
        0x5f5e100
        0x989680
        0xf4240
        0x186a0
        0x2710
        0x3e8
        0x64
        0xa
        0x1
    .end array-data

    .line 286
    :array_2
    .array-data 4
        0x10000000
        0x1000000
        0x100000
        0x10000
        0x1000
        0x100
        0x10
        0x1
    .end array-data

    .line 289
    :array_3
    .array-data 8
        0xde0b6b3a7640000L
        0x16345785d8a0000L
        0x2386f26fc10000L
        0x38d7ea4c68000L
        0x5af3107a4000L
        0x9184e72a000L
        0xe8d4a51000L
        0x174876e800L
        0x2540be400L
        0x3b9aca00
        0x5f5e100
        0x989680
        0xf4240
        0x186a0
        0x2710
        0x3e8
        0x64
        0xa
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPrefix(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 320
    invoke-interface {p0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    move v0, v3

    .line 326
    :goto_0
    return v0

    .line 322
    :cond_0
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v1

    .line 323
    invoke-interface {p0}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v0

    :goto_1
    invoke-interface {p0}, Lorg/mortbay/io/Buffer;->putIndex()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 324
    invoke-interface {p0, v0}, Lorg/mortbay/io/Buffer;->peek(I)B

    move-result v4

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p1, v1}, Lorg/mortbay/io/Buffer;->peek(I)B

    move-result v1

    if-eq v4, v1, :cond_1

    move v0, v3

    .line 325
    goto :goto_0

    .line 323
    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_1

    .line 326
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static prependHexInt(Lorg/mortbay/io/Buffer;I)V
    .locals 4

    .prologue
    .line 165
    if-nez p1, :cond_0

    .line 167
    invoke-interface {p0}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v0

    .line 168
    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x30

    invoke-interface {p0, v0, v1}, Lorg/mortbay/io/Buffer;->poke(IB)V

    .line 169
    invoke-interface {p0, v0}, Lorg/mortbay/io/Buffer;->setGetIndex(I)V

    .line 192
    :goto_0
    return-void

    .line 173
    :cond_0
    const/4 v0, 0x0

    .line 174
    if-gez p1, :cond_1

    .line 176
    const/4 v0, 0x1

    .line 177
    neg-int p1, p1

    .line 180
    :cond_1
    invoke-interface {p0}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v1

    .line 181
    :goto_1
    if-lez p1, :cond_2

    .line 183
    and-int/lit8 v2, p1, 0xf

    .line 184
    shr-int/lit8 p1, p1, 0x4

    .line 185
    add-int/lit8 v1, v1, -0x1

    sget-object v3, Lorg/mortbay/io/BufferUtil;->DIGIT:[B

    aget-byte v2, v3, v2

    invoke-interface {p0, v1, v2}, Lorg/mortbay/io/Buffer;->poke(IB)V

    goto :goto_1

    .line 188
    :cond_2
    if-eqz v0, :cond_3

    .line 189
    add-int/lit8 v0, v1, -0x1

    const/16 v1, 0x2d

    invoke-interface {p0, v0, v1}, Lorg/mortbay/io/Buffer;->poke(IB)V

    .line 190
    :goto_2
    invoke-interface {p0, v0}, Lorg/mortbay/io/Buffer;->setGetIndex(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public static putCRLF(Lorg/mortbay/io/Buffer;)V
    .locals 1

    .prologue
    .line 314
    const/16 v0, 0xd

    invoke-interface {p0, v0}, Lorg/mortbay/io/Buffer;->put(B)V

    .line 315
    const/16 v0, 0xa

    invoke-interface {p0, v0}, Lorg/mortbay/io/Buffer;->put(B)V

    .line 316
    return-void
.end method

.method public static putDecInt(Lorg/mortbay/io/Buffer;I)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 198
    if-gez p1, :cond_5

    .line 200
    const/16 v1, 0x2d

    invoke-interface {p0, v1}, Lorg/mortbay/io/Buffer;->put(B)V

    .line 202
    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_1

    .line 204
    const/16 v1, 0x32

    invoke-interface {p0, v1}, Lorg/mortbay/io/Buffer;->put(B)V

    .line 205
    const v1, 0x8ca6c00

    .line 211
    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_2

    .line 213
    sget-object v0, Lorg/mortbay/io/BufferUtil;->DIGIT:[B

    aget-byte v0, v0, v1

    invoke-interface {p0, v0}, Lorg/mortbay/io/Buffer;->put(B)V

    .line 234
    :cond_0
    return-void

    .line 208
    :cond_1
    neg-int v1, p1

    goto :goto_0

    :cond_2
    move v2, v1

    move v1, v0

    .line 219
    :goto_1
    sget-object v3, Lorg/mortbay/io/BufferUtil;->decDivisors:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 221
    sget-object v3, Lorg/mortbay/io/BufferUtil;->decDivisors:[I

    aget v3, v3, v0

    if-ge v2, v3, :cond_4

    .line 223
    if-eqz v1, :cond_3

    .line 224
    const/16 v3, 0x30

    invoke-interface {p0, v3}, Lorg/mortbay/io/Buffer;->put(B)V

    .line 219
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 228
    :cond_4
    const/4 v1, 0x1

    .line 229
    sget-object v3, Lorg/mortbay/io/BufferUtil;->decDivisors:[I

    aget v3, v3, v0

    div-int v3, v2, v3

    .line 230
    sget-object v4, Lorg/mortbay/io/BufferUtil;->DIGIT:[B

    aget-byte v4, v4, v3

    invoke-interface {p0, v4}, Lorg/mortbay/io/Buffer;->put(B)V

    .line 231
    sget-object v4, Lorg/mortbay/io/BufferUtil;->decDivisors:[I

    aget v4, v4, v0

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    goto :goto_2

    :cond_5
    move v1, p1

    goto :goto_0
.end method

.method public static putDecLong(Lorg/mortbay/io/Buffer;J)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 238
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_5

    .line 240
    const/16 v1, 0x2d

    invoke-interface {p0, v1}, Lorg/mortbay/io/Buffer;->put(B)V

    .line 242
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v1, p1, v2

    if-nez v1, :cond_1

    .line 244
    const/16 v1, 0x39

    invoke-interface {p0, v1}, Lorg/mortbay/io/Buffer;->put(B)V

    .line 245
    const-wide v2, 0x31993af1d7c0000L

    .line 251
    :goto_0
    const-wide/16 v4, 0xa

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    .line 253
    sget-object v0, Lorg/mortbay/io/BufferUtil;->DIGIT:[B

    long-to-int v1, v2

    aget-byte v0, v0, v1

    invoke-interface {p0, v0}, Lorg/mortbay/io/Buffer;->put(B)V

    .line 274
    :cond_0
    return-void

    .line 248
    :cond_1
    neg-long v2, p1

    goto :goto_0

    :cond_2
    move v1, v0

    .line 259
    :goto_1
    sget-object v4, Lorg/mortbay/io/BufferUtil;->decDivisorsL:[J

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 261
    sget-object v4, Lorg/mortbay/io/BufferUtil;->decDivisorsL:[J

    aget-wide v4, v4, v0

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 263
    if-eqz v1, :cond_3

    .line 264
    const/16 v4, 0x30

    invoke-interface {p0, v4}, Lorg/mortbay/io/Buffer;->put(B)V

    .line 259
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 268
    :cond_4
    const/4 v1, 0x1

    .line 269
    sget-object v4, Lorg/mortbay/io/BufferUtil;->decDivisorsL:[J

    aget-wide v4, v4, v0

    div-long v4, v2, v4

    .line 270
    sget-object v6, Lorg/mortbay/io/BufferUtil;->DIGIT:[B

    long-to-int v7, v4

    aget-byte v6, v6, v7

    invoke-interface {p0, v6}, Lorg/mortbay/io/Buffer;->put(B)V

    .line 271
    sget-object v6, Lorg/mortbay/io/BufferUtil;->decDivisorsL:[J

    aget-wide v6, v6, v0

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    goto :goto_2

    :cond_5
    move-wide v2, p1

    goto :goto_0
.end method

.method public static putHexInt(Lorg/mortbay/io/Buffer;I)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/16 v5, 0x30

    .line 112
    if-gez p1, :cond_5

    .line 114
    const/16 v1, 0x2d

    invoke-interface {p0, v1}, Lorg/mortbay/io/Buffer;->put(B)V

    .line 116
    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_1

    .line 118
    const/16 v0, 0x38

    invoke-interface {p0, v0}, Lorg/mortbay/io/Buffer;->put(B)V

    .line 119
    invoke-interface {p0, v5}, Lorg/mortbay/io/Buffer;->put(B)V

    .line 120
    invoke-interface {p0, v5}, Lorg/mortbay/io/Buffer;->put(B)V

    .line 121
    invoke-interface {p0, v5}, Lorg/mortbay/io/Buffer;->put(B)V

    .line 122
    invoke-interface {p0, v5}, Lorg/mortbay/io/Buffer;->put(B)V

    .line 123
    invoke-interface {p0, v5}, Lorg/mortbay/io/Buffer;->put(B)V

    .line 124
    invoke-interface {p0, v5}, Lorg/mortbay/io/Buffer;->put(B)V

    .line 125
    invoke-interface {p0, v5}, Lorg/mortbay/io/Buffer;->put(B)V

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    neg-int v1, p1

    .line 132
    :goto_1
    const/16 v2, 0x10

    if-ge v1, v2, :cond_2

    .line 134
    sget-object v0, Lorg/mortbay/io/BufferUtil;->DIGIT:[B

    aget-byte v0, v0, v1

    invoke-interface {p0, v0}, Lorg/mortbay/io/Buffer;->put(B)V

    goto :goto_0

    :cond_2
    move v2, v1

    move v1, v0

    .line 140
    :goto_2
    sget-object v3, Lorg/mortbay/io/BufferUtil;->hexDivisors:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 142
    sget-object v3, Lorg/mortbay/io/BufferUtil;->hexDivisors:[I

    aget v3, v3, v0

    if-ge v2, v3, :cond_4

    .line 144
    if-eqz v1, :cond_3

    .line 145
    invoke-interface {p0, v5}, Lorg/mortbay/io/Buffer;->put(B)V

    .line 140
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 149
    :cond_4
    const/4 v1, 0x1

    .line 150
    sget-object v3, Lorg/mortbay/io/BufferUtil;->hexDivisors:[I

    aget v3, v3, v0

    div-int v3, v2, v3

    .line 151
    sget-object v4, Lorg/mortbay/io/BufferUtil;->DIGIT:[B

    aget-byte v4, v4, v3

    invoke-interface {p0, v4}, Lorg/mortbay/io/Buffer;->put(B)V

    .line 152
    sget-object v4, Lorg/mortbay/io/BufferUtil;->hexDivisors:[I

    aget v4, v4, v0

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    goto :goto_3

    :cond_5
    move v1, p1

    goto :goto_1
.end method

.method public static to8859_1_String(Lorg/mortbay/io/Buffer;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 331
    invoke-interface {p0}, Lorg/mortbay/io/Buffer;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 348
    :goto_0
    return-object v0

    .line 336
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lorg/mortbay/io/Buffer;->array()[B

    move-result-object v1

    .line 337
    if-eqz v1, :cond_1

    .line 338
    new-instance v0, Ljava/lang/String;

    invoke-interface {p0}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v2

    invoke-interface {p0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v3

    sget-object v4, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 345
    :catch_0
    move-exception v0

    .line 347
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 348
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 340
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-interface {p0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 341
    invoke-interface {p0}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 342
    invoke-interface {p0, v1}, Lorg/mortbay/io/Buffer;->peek(I)B

    move-result v3

    and-int/lit8 v3, v3, 0x7f

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 341
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 343
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0
.end method

.method public static toBuffer(J)Lorg/mortbay/io/Buffer;
    .locals 2

    .prologue
    .line 278
    new-instance v0, Lorg/mortbay/io/ByteArrayBuffer;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(I)V

    .line 279
    invoke-static {v0, p0, p1}, Lorg/mortbay/io/BufferUtil;->putDecLong(Lorg/mortbay/io/Buffer;J)V

    .line 280
    return-object v0
.end method

.method public static toInt(Lorg/mortbay/io/Buffer;)I
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 42
    .line 45
    invoke-interface {p0}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v0

    move v2, v1

    move v3, v1

    :goto_0
    invoke-interface {p0}, Lorg/mortbay/io/Buffer;->putIndex()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 47
    invoke-interface {p0, v0}, Lorg/mortbay/io/Buffer;->peek(I)B

    move-result v5

    .line 48
    const/16 v6, 0x20

    if-gt v5, v6, :cond_2

    .line 50
    if-eqz v2, :cond_3

    .line 66
    :cond_0
    if-eqz v2, :cond_5

    .line 67
    if-eqz v1, :cond_1

    neg-int v3, v3

    :cond_1
    return v3

    .line 53
    :cond_2
    const/16 v6, 0x30

    if-lt v5, v6, :cond_4

    const/16 v6, 0x39

    if-gt v5, v6, :cond_4

    .line 55
    mul-int/lit8 v2, v3, 0xa

    add-int/lit8 v3, v5, -0x30

    add-int/2addr v3, v2

    move v2, v4

    .line 45
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_4
    const/16 v6, 0x2d

    if-ne v5, v6, :cond_0

    if-nez v2, :cond_0

    move v1, v4

    .line 60
    goto :goto_1

    .line 68
    :cond_5
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toLong(Lorg/mortbay/io/Buffer;)J
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 80
    const-wide/16 v2, 0x0

    .line 83
    invoke-interface {p0}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v0

    move-wide v4, v2

    move v2, v1

    :goto_0
    invoke-interface {p0}, Lorg/mortbay/io/Buffer;->putIndex()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 85
    invoke-interface {p0, v0}, Lorg/mortbay/io/Buffer;->peek(I)B

    move-result v3

    .line 86
    const/16 v7, 0x20

    if-gt v3, v7, :cond_2

    .line 88
    if-eqz v2, :cond_3

    .line 104
    :cond_0
    if-eqz v2, :cond_5

    .line 105
    if-eqz v1, :cond_1

    neg-long v4, v4

    :cond_1
    return-wide v4

    .line 91
    :cond_2
    const/16 v7, 0x30

    if-lt v3, v7, :cond_4

    const/16 v7, 0x39

    if-gt v3, v7, :cond_4

    .line 93
    const-wide/16 v8, 0xa

    mul-long/2addr v4, v8

    add-int/lit8 v2, v3, -0x30

    int-to-long v2, v2

    add-long/2addr v4, v2

    move v2, v6

    .line 83
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_4
    const/16 v7, 0x2d

    if-ne v3, v7, :cond_0

    if-nez v2, :cond_0

    move v1, v6

    .line 98
    goto :goto_1

    .line 106
    :cond_5
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
