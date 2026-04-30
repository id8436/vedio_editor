.class public final Lcom/google/android/exoplayer/util/ParsableBitArray;
.super Ljava/lang/Object;
.source "ParsableBitArray.java"


# instance fields
.field private bitOffset:I

.field private byteOffset:I

.field private data:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->data:[B

    .line 40
    return-void
.end method

.method private getUnsignedByte(I)I
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->data:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private readExpGolombCodeNum()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 192
    move v0, v1

    .line 193
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-nez v2, :cond_0

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_0
    const/4 v2, 0x1

    shl-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    if-lez v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v1

    :cond_1
    add-int v0, v2, v1

    return v0
.end method

.method private readUnsignedByte()I
    .locals 3

    .prologue
    .line 177
    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    shl-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->data:[B

    iget v2, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    iget v2, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    rsub-int/lit8 v2, v2, 0x8

    ushr-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 183
    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    .line 184
    and-int/lit16 v0, v0, 0xff

    return v0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    aget-byte v0, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->data:[B

    return-object v0
.end method

.method public getPosition()I
    .locals 2

    .prologue
    .line 68
    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public readBit()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 101
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readBits(I)I
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBitsLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public readBitsLong(I)J
    .locals 7

    .prologue
    const-wide/16 v0, 0x0

    const/16 v6, 0x8

    .line 121
    if-nez p1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-wide v0

    .line 128
    :cond_1
    :goto_1
    if-lt p1, v6, :cond_2

    .line 129
    add-int/lit8 p1, p1, -0x8

    .line 130
    invoke-direct {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedByte()I

    move-result v2

    shl-int/2addr v2, p1

    int-to-long v2, v2

    or-long/2addr v0, v2

    goto :goto_1

    .line 133
    :cond_2
    if-lez p1, :cond_0

    .line 134
    iget v2, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    add-int/2addr v2, p1

    .line 135
    const/16 v3, 0xff

    rsub-int/lit8 v4, p1, 0x8

    shr-int/2addr v3, v4

    int-to-byte v3, v3

    .line 137
    if-le v2, v6, :cond_4

    .line 139
    iget v4, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    invoke-direct {p0, v4}, Lcom/google/android/exoplayer/util/ParsableBitArray;->getUnsignedByte(I)I

    move-result v4

    add-int/lit8 v5, v2, -0x8

    shl-int/2addr v4, v5

    iget v5, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v5, v5, 0x1

    .line 140
    invoke-direct {p0, v5}, Lcom/google/android/exoplayer/util/ParsableBitArray;->getUnsignedByte(I)I

    move-result v5

    rsub-int/lit8 v6, v2, 0x10

    shr-int/2addr v5, v6

    or-int/2addr v4, v5

    and-int/2addr v3, v4

    int-to-long v4, v3

    or-long/2addr v0, v4

    .line 141
    iget v3, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    .line 150
    :cond_3
    :goto_2
    rem-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    goto :goto_0

    .line 144
    :cond_4
    iget v4, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    invoke-direct {p0, v4}, Lcom/google/android/exoplayer/util/ParsableBitArray;->getUnsignedByte(I)I

    move-result v4

    rsub-int/lit8 v5, v2, 0x8

    shr-int/2addr v4, v5

    and-int/2addr v3, v4

    int-to-long v4, v3

    or-long/2addr v0, v4

    .line 145
    if-ne v2, v6, :cond_3

    .line 146
    iget v3, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    goto :goto_2
.end method

.method public readSignedExpGolombCodedInt()I
    .locals 2

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readExpGolombCodeNum()I

    move-result v1

    .line 172
    rem-int/lit8 v0, v1, 0x2

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public readUnsignedExpGolombCodedInt()I
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readExpGolombCodeNum()I

    move-result v0

    return v0
.end method

.method public reset([B)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    iput-object p1, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->data:[B

    .line 49
    iput v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    .line 50
    iput v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    .line 51
    return-void
.end method

.method public setPosition(I)V
    .locals 1

    .prologue
    .line 77
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    .line 78
    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    sub-int v0, p1, v0

    iput v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    .line 79
    return-void
.end method

.method public skipBits(I)V
    .locals 2

    .prologue
    .line 87
    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    div-int/lit8 v1, p1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    .line 88
    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    rem-int/lit8 v1, p1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    .line 89
    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 90
    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    .line 91
    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    .line 93
    :cond_0
    return-void
.end method
