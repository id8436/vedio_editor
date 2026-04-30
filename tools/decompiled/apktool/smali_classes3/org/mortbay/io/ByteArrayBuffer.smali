.class public Lorg/mortbay/io/ByteArrayBuffer;
.super Lorg/mortbay/io/AbstractBuffer;
.source "ByteArrayBuffer.java"


# instance fields
.field protected _bytes:[B


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 66
    new-array v0, p1, [B

    const/4 v1, 0x2

    invoke-direct {p0, v0, v2, p1, v1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>([BIII)V

    .line 67
    invoke-virtual {p0, v2}, Lorg/mortbay/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 68
    return-void
.end method

.method protected constructor <init>(IZ)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lorg/mortbay/io/AbstractBuffer;-><init>(IZ)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lorg/mortbay/io/AbstractBuffer;-><init>(IZ)V

    .line 73
    invoke-static {p1}, Lorg/mortbay/io/Portable;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    .line 74
    invoke-virtual {p0, v1}, Lorg/mortbay/io/ByteArrayBuffer;->setGetIndex(I)V

    .line 75
    iget-object v0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/mortbay/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 76
    iput v1, p0, Lorg/mortbay/io/ByteArrayBuffer;->_access:I

    .line 77
    iput-object p1, p0, Lorg/mortbay/io/ByteArrayBuffer;->_string:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 82
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lorg/mortbay/io/AbstractBuffer;-><init>(IZ)V

    .line 83
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    .line 84
    invoke-virtual {p0, v1}, Lorg/mortbay/io/ByteArrayBuffer;->setGetIndex(I)V

    .line 85
    iget-object v0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/mortbay/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 86
    iput v1, p0, Lorg/mortbay/io/ByteArrayBuffer;->_access:I

    .line 87
    iput-object p1, p0, Lorg/mortbay/io/ByteArrayBuffer;->_string:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x0

    array-length v1, p1

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/mortbay/io/ByteArrayBuffer;-><init>([BIII)V

    .line 39
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/mortbay/io/ByteArrayBuffer;-><init>([BIII)V

    .line 44
    return-void
.end method

.method public constructor <init>([BIII)V
    .locals 2

    .prologue
    .line 48
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/mortbay/io/AbstractBuffer;-><init>(IZ)V

    .line 49
    iput-object p1, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    .line 50
    add-int v0, p2, p3

    invoke-virtual {p0, v0}, Lorg/mortbay/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 51
    invoke-virtual {p0, p2}, Lorg/mortbay/io/ByteArrayBuffer;->setGetIndex(I)V

    .line 52
    iput p4, p0, Lorg/mortbay/io/ByteArrayBuffer;->_access:I

    .line 53
    return-void
.end method

.method public constructor <init>([BIIIZ)V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x2

    invoke-direct {p0, v0, p5}, Lorg/mortbay/io/AbstractBuffer;-><init>(IZ)V

    .line 58
    iput-object p1, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    .line 59
    add-int v0, p2, p3

    invoke-virtual {p0, v0}, Lorg/mortbay/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 60
    invoke-virtual {p0, p2}, Lorg/mortbay/io/ByteArrayBuffer;->setGetIndex(I)V

    .line 61
    iput p4, p0, Lorg/mortbay/io/ByteArrayBuffer;->_access:I

    .line 62
    return-void
.end method


# virtual methods
.method public array()[B
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    return-object v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    array-length v0, v0

    return v0
.end method

.method public compact()V
    .locals 5

    .prologue
    .line 102
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "READONLY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->markIndex()I

    move-result v0

    if-ltz v0, :cond_4

    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->markIndex()I

    move-result v0

    .line 105
    :goto_0
    if-lez v0, :cond_3

    .line 107
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->putIndex()I

    move-result v1

    sub-int/2addr v1, v0

    .line 108
    if-lez v1, :cond_1

    .line 110
    iget-object v2, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    iget-object v3, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4, v1}, Lorg/mortbay/io/Portable;->arraycopy([BI[BII)V

    .line 112
    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->markIndex()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->markIndex()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/mortbay/io/ByteArrayBuffer;->setMarkIndex(I)V

    .line 113
    :cond_2
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->getIndex()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/mortbay/io/ByteArrayBuffer;->setGetIndex(I)V

    .line 114
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->putIndex()I

    move-result v1

    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Lorg/mortbay/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 116
    :cond_3
    return-void

    .line 104
    :cond_4
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->getIndex()I

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 121
    if-ne p1, p0, :cond_0

    move v0, v1

    .line 154
    :goto_0
    return v0

    .line 124
    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lorg/mortbay/io/Buffer;

    if-nez v0, :cond_2

    :cond_1
    move v0, v2

    .line 125
    goto :goto_0

    .line 127
    :cond_2
    instance-of v0, p1, Lorg/mortbay/io/Buffer$CaseInsensitve;

    if-eqz v0, :cond_3

    .line 128
    check-cast p1, Lorg/mortbay/io/Buffer;

    invoke-virtual {p0, p1}, Lorg/mortbay/io/ByteArrayBuffer;->equalsIgnoreCase(Lorg/mortbay/io/Buffer;)Z

    move-result v0

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 131
    check-cast v0, Lorg/mortbay/io/Buffer;

    .line 134
    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v3

    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->length()I

    move-result v4

    if-eq v3, v4, :cond_4

    move v0, v2

    .line 135
    goto :goto_0

    .line 138
    :cond_4
    iget v3, p0, Lorg/mortbay/io/ByteArrayBuffer;->_hash:I

    if-eqz v3, :cond_5

    instance-of v3, p1, Lorg/mortbay/io/AbstractBuffer;

    if-eqz v3, :cond_5

    .line 140
    check-cast p1, Lorg/mortbay/io/AbstractBuffer;

    .line 141
    iget v3, p1, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    if-eqz v3, :cond_5

    iget v3, p0, Lorg/mortbay/io/ByteArrayBuffer;->_hash:I

    iget v4, p1, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    if-eq v3, v4, :cond_5

    move v0, v2

    .line 142
    goto :goto_0

    .line 146
    :cond_5
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->getIndex()I

    move-result v6

    .line 147
    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->putIndex()I

    move-result v4

    .line 148
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->putIndex()I

    move-result v3

    move v5, v4

    :goto_1
    add-int/lit8 v4, v3, -0x1

    if-le v3, v6, :cond_7

    .line 150
    iget-object v3, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    aget-byte v7, v3, v4

    .line 151
    add-int/lit8 v3, v5, -0x1

    invoke-interface {v0, v3}, Lorg/mortbay/io/Buffer;->peek(I)B

    move-result v5

    .line 152
    if-eq v7, v5, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    move v5, v3

    move v3, v4

    .line 153
    goto :goto_1

    :cond_7
    move v0, v1

    .line 154
    goto :goto_0
.end method

.method public equalsIgnoreCase(Lorg/mortbay/io/Buffer;)Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/16 v9, 0x7a

    const/16 v8, 0x61

    const/4 v2, 0x0

    .line 160
    if-ne p1, p0, :cond_0

    move v0, v1

    .line 206
    :goto_0
    return v0

    .line 164
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->length()I

    move-result v3

    if-eq v0, v3, :cond_2

    :cond_1
    move v0, v2

    .line 165
    goto :goto_0

    .line 168
    :cond_2
    iget v0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_hash:I

    if-eqz v0, :cond_3

    instance-of v0, p1, Lorg/mortbay/io/AbstractBuffer;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 170
    check-cast v0, Lorg/mortbay/io/AbstractBuffer;

    .line 171
    iget v3, v0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    if-eqz v3, :cond_3

    iget v3, p0, Lorg/mortbay/io/ByteArrayBuffer;->_hash:I

    iget v0, v0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    if-eq v3, v0, :cond_3

    move v0, v2

    goto :goto_0

    .line 175
    :cond_3
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->getIndex()I

    move-result v6

    .line 176
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->putIndex()I

    move-result v3

    .line 177
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->array()[B

    move-result-object v7

    .line 178
    if-nez v7, :cond_7

    .line 180
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->putIndex()I

    move-result v0

    move v5, v3

    :goto_1
    add-int/lit8 v4, v0, -0x1

    if-le v0, v6, :cond_b

    .line 182
    iget-object v0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    aget-byte v3, v0, v4

    .line 183
    add-int/lit8 v5, v5, -0x1

    invoke-interface {p1, v5}, Lorg/mortbay/io/Buffer;->peek(I)B

    move-result v0

    .line 184
    if-eq v3, v0, :cond_6

    .line 186
    if-gt v8, v3, :cond_4

    if-gt v3, v9, :cond_4

    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0x41

    int-to-byte v3, v3

    .line 187
    :cond_4
    if-gt v8, v0, :cond_5

    if-gt v0, v9, :cond_5

    add-int/lit8 v0, v0, -0x61

    add-int/lit8 v0, v0, 0x41

    int-to-byte v0, v0

    .line 188
    :cond_5
    if-eq v3, v0, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    move v0, v4

    .line 190
    goto :goto_1

    .line 194
    :cond_7
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->putIndex()I

    move-result v0

    move v5, v3

    :goto_2
    add-int/lit8 v4, v0, -0x1

    if-le v0, v6, :cond_b

    .line 196
    iget-object v0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    aget-byte v3, v0, v4

    .line 197
    add-int/lit8 v5, v5, -0x1

    aget-byte v0, v7, v5

    .line 198
    if-eq v3, v0, :cond_a

    .line 200
    if-gt v8, v3, :cond_8

    if-gt v3, v9, :cond_8

    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0x41

    int-to-byte v3, v3

    .line 201
    :cond_8
    if-gt v8, v0, :cond_9

    if-gt v0, v9, :cond_9

    add-int/lit8 v0, v0, -0x61

    add-int/lit8 v0, v0, 0x41

    int-to-byte v0, v0

    .line 202
    :cond_9
    if-eq v3, v0, :cond_a

    move v0, v2

    goto/16 :goto_0

    :cond_a
    move v0, v4

    .line 204
    goto :goto_2

    :cond_b
    move v0, v1

    .line 206
    goto/16 :goto_0
.end method

.method public get()B
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    iget v1, p0, Lorg/mortbay/io/ByteArrayBuffer;->_get:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mortbay/io/ByteArrayBuffer;->_get:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 216
    iget v0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_hash:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_hashGet:I

    iget v1, p0, Lorg/mortbay/io/ByteArrayBuffer;->_get:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_hashPut:I

    iget v1, p0, Lorg/mortbay/io/ByteArrayBuffer;->_put:I

    if-eq v0, v1, :cond_4

    .line 218
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->getIndex()I

    move-result v2

    .line 219
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->putIndex()I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-le v0, v2, :cond_2

    .line 221
    iget-object v0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    aget-byte v0, v0, v1

    .line 222
    const/16 v3, 0x61

    if-gt v3, v0, :cond_1

    const/16 v3, 0x7a

    if-gt v0, v3, :cond_1

    .line 223
    add-int/lit8 v0, v0, -0x61

    add-int/lit8 v0, v0, 0x41

    int-to-byte v0, v0

    .line 224
    :cond_1
    iget v3, p0, Lorg/mortbay/io/ByteArrayBuffer;->_hash:I

    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v0, v3

    iput v0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_hash:I

    move v0, v1

    .line 225
    goto :goto_0

    .line 226
    :cond_2
    iget v0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_hash:I

    if-nez v0, :cond_3

    .line 227
    const/4 v0, -0x1

    iput v0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_hash:I

    .line 228
    :cond_3
    iget v0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_get:I

    iput v0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_hashGet:I

    .line 229
    iget v0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_put:I

    iput v0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_hashPut:I

    .line 231
    :cond_4
    iget v0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_hash:I

    return v0
.end method

.method public peek(I)B
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public peek(I[BII)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 242
    .line 243
    add-int v1, p1, p4

    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->capacity()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 245
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->capacity()I

    move-result v1

    sub-int/2addr v1, p1

    .line 246
    if-nez v1, :cond_2

    .line 254
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, p4

    .line 250
    :cond_2
    if-ltz v1, :cond_0

    .line 253
    iget-object v0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    invoke-static {v0, p1, p2, p3, v1}, Lorg/mortbay/io/Portable;->arraycopy([BI[BII)V

    move v0, v1

    .line 254
    goto :goto_0
.end method

.method public poke(ILorg/mortbay/io/Buffer;)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 273
    iput v1, p0, Lorg/mortbay/io/ByteArrayBuffer;->_hash:I

    .line 282
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    .line 283
    add-int v2, p1, v0

    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->capacity()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 285
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->capacity()I

    move-result v0

    sub-int/2addr v0, p1

    .line 292
    :cond_0
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->array()[B

    move-result-object v5

    .line 293
    if-eqz v5, :cond_2

    .line 294
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v1

    iget-object v2, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    invoke-static {v5, v1, v2, p1, v0}, Lorg/mortbay/io/Portable;->arraycopy([BI[BII)V

    .line 308
    :cond_1
    return v0

    .line 295
    :cond_2
    if-eqz v5, :cond_3

    .line 297
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v2

    .line 298
    :goto_0
    if-ge v1, v0, :cond_1

    .line 299
    add-int/lit8 v4, p1, 0x1

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v5, v2

    invoke-virtual {p0, p1, v2}, Lorg/mortbay/io/ByteArrayBuffer;->poke(IB)V

    .line 298
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    move p1, v4

    goto :goto_0

    .line 303
    :cond_3
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v2

    .line 304
    :goto_1
    if-ge v1, v0, :cond_1

    .line 305
    iget-object v5, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    add-int/lit8 v4, p1, 0x1

    add-int/lit8 v3, v2, 0x1

    invoke-interface {p2, v2}, Lorg/mortbay/io/Buffer;->peek(I)B

    move-result v2

    aput-byte v2, v5, p1

    .line 304
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    move p1, v4

    goto :goto_1
.end method

.method public poke(I[BII)I
    .locals 2

    .prologue
    .line 314
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_hash:I

    .line 322
    add-int v0, p1, p4

    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->capacity()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 324
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->capacity()I

    move-result v0

    sub-int p4, v0, p1

    .line 330
    :cond_0
    iget-object v0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    invoke-static {p2, p3, v0, p1, p4}, Lorg/mortbay/io/Portable;->arraycopy([BI[BII)V

    .line 332
    return p4
.end method

.method public poke(IB)V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    aput-byte p2, v0, p1

    .line 269
    return-void
.end method

.method public readFrom(Ljava/io/InputStream;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 375
    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->space()I

    move-result v0

    if-le p2, v0, :cond_1

    .line 376
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->space()I

    move-result p2

    .line 377
    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->putIndex()I

    move-result v2

    move v0, p2

    move v3, v1

    .line 380
    :cond_2
    if-ge v1, p2, :cond_6

    .line 382
    iget-object v3, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    invoke-virtual {p1, v3, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 383
    if-gez v3, :cond_4

    move v0, v1

    move v1, v3

    .line 395
    :goto_0
    if-gez v1, :cond_3

    if-nez v0, :cond_3

    .line 396
    const/4 v0, -0x1

    .line 397
    :cond_3
    return v0

    .line 385
    :cond_4
    if-lez v3, :cond_5

    .line 387
    add-int/2addr v2, v3

    .line 388
    add-int/2addr v1, v3

    .line 389
    sub-int/2addr v0, v3

    .line 390
    invoke-virtual {p0, v2}, Lorg/mortbay/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 392
    :cond_5
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v4

    if-gtz v4, :cond_2

    move v0, v1

    move v1, v3

    .line 393
    goto :goto_0

    :cond_6
    move v0, v1

    move v1, v3

    goto :goto_0
.end method

.method public space()I
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    array-length v0, v0

    iget v1, p0, Lorg/mortbay/io/ByteArrayBuffer;->_put:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public wrap([B)V
    .locals 2

    .prologue
    .line 357
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "READONLY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "IMMUTABLE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_1
    iput-object p1, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    .line 360
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mortbay/io/ByteArrayBuffer;->setGetIndex(I)V

    .line 361
    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/mortbay/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 362
    return-void
.end method

.method public wrap([BII)V
    .locals 2

    .prologue
    .line 343
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "READONLY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "IMMUTABLE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_1
    iput-object p1, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    .line 346
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->clear()V

    .line 347
    invoke-virtual {p0, p2}, Lorg/mortbay/io/ByteArrayBuffer;->setGetIndex(I)V

    .line 348
    add-int v0, p2, p3

    invoke-virtual {p0, v0}, Lorg/mortbay/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 349
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->getIndex()I

    move-result v1

    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->length()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 369
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->clear()V

    .line 370
    return-void
.end method
