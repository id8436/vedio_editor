.class public final Lcom/adobe/customextractor/Util/ParsableByteArray;
.super Ljava/lang/Object;
.source "ParsableByteArray.java"


# instance fields
.field public data:[B

.field private limit:I

.field private position:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->data:[B

    .line 22
    iget-object v0, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->data:[B

    array-length v0, v0

    iput v0, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->limit:I

    .line 23
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->data:[B

    .line 28
    array-length v0, p1

    iput v0, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->limit:I

    .line 29
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->data:[B

    .line 39
    iput p2, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->limit:I

    .line 40
    return-void
.end method


# virtual methods
.method public bytesLeft()I
    .locals 2

    .prologue
    .line 64
    iget v0, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->limit:I

    iget v1, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->data:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->data:[B

    array-length v0, v0

    goto :goto_0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    return v0
.end method

.method public limit()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->limit:I

    return v0
.end method

.method public readBytes(Lcom/adobe/customextractor/Util/ParsableBitArray;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 123
    iget-object v0, p1, Lcom/adobe/customextractor/Util/ParsableBitArray;->data:[B

    invoke-virtual {p0, v0, v1, p2}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readBytes([BII)V

    .line 124
    invoke-virtual {p1, v1}, Lcom/adobe/customextractor/Util/ParsableBitArray;->setPosition(I)V

    .line 125
    return-void
.end method

.method public readBytes(Ljava/nio/ByteBuffer;I)V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->data:[B

    iget v1, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    invoke-virtual {p1, v0, v1, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 144
    iget v0, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    .line 145
    return-void
.end method

.method public readBytes([BII)V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->data:[B

    iget v1, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    iget v0, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    .line 135
    return-void
.end method

.method public readInt()I
    .locals 4

    .prologue
    .line 175
    iget-object v0, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->data:[B

    iget v1, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->data:[B

    iget v2, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->data:[B

    iget v2, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->data:[B

    iget v2, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public readLong()J
    .locals 8

    .prologue
    const-wide/16 v6, 0xff

    .line 183
    iget-object v0, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->data:[B

    iget v1, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    int-to-long v0, v0

    and-long/2addr v0, v6

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    iget-object v2, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->data:[B

    iget v3, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->data:[B

    iget v3, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->data:[B

    iget v3, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->data:[B

    iget v3, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->data:[B

    iget v3, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->data:[B

    iget v3, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->data:[B

    iget v3, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public readSynchSafeInt()I
    .locals 4

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 211
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 212
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 213
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 214
    shl-int/lit8 v0, v0, 0x15

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x7

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    return v0
.end method

.method public readUnsignedByte()I
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->data:[B

    iget v1, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readUnsignedFixedPoint1616()I
    .locals 4

    .prologue
    .line 195
    iget-object v0, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->data:[B

    iget v1, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->data:[B

    iget v2, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 197
    iget v1, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    .line 198
    return v0
.end method

.method public readUnsignedInt()J
    .locals 8

    .prologue
    const-wide/16 v6, 0xff

    .line 167
    iget-object v0, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->data:[B

    iget v1, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    int-to-long v0, v0

    and-long/2addr v0, v6

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    iget-object v2, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->data:[B

    iget v3, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->data:[B

    iget v3, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->data:[B

    iget v3, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public readUnsignedInt24()I
    .locals 4

    .prologue
    .line 160
    iget-object v0, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->data:[B

    iget v1, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    iget-object v1, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->data:[B

    iget v2, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->data:[B

    iget v2, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public readUnsignedIntToInt()I
    .locals 4

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readInt()I

    move-result v0

    .line 224
    if-gez v0, :cond_0

    .line 225
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Top bit not zero: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 227
    :cond_0
    return v0
.end method

.method public readUnsignedLongToLong()J
    .locals 5

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readLong()J

    move-result-wide v0

    .line 237
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 238
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Top bit not zero: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 240
    :cond_0
    return-wide v0
.end method

.method public readUnsignedShort()I
    .locals 4

    .prologue
    .line 154
    iget-object v0, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->data:[B

    iget v1, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->data:[B

    iget v2, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    .line 59
    iput v0, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->limit:I

    .line 60
    return-void
.end method

.method public reset([BI)V
    .locals 1

    .prologue
    .line 49
    iput-object p1, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->data:[B

    .line 50
    iput p2, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->limit:I

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    .line 52
    return-void
.end method

.method public setLimit(I)V
    .locals 1

    .prologue
    .line 78
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->data:[B

    array-length v0, v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/adobe/customextractor/Assertions;->checkArgument(Z)V

    .line 79
    iput p1, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->limit:I

    .line 80
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPosition(I)V
    .locals 1

    .prologue
    .line 101
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->limit:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/adobe/customextractor/Assertions;->checkArgument(Z)V

    .line 102
    iput p1, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    .line 103
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public skipBytes(I)V
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->position:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->setPosition(I)V

    .line 113
    return-void
.end method
