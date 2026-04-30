.class public final Lcom/adobe/customextractor/Util/ParsableBitArray;
.super Ljava/lang/Object;
.source "ParsableBitArray.java"


# instance fields
.field private bitOffset:I

.field private byteOffset:I

.field public data:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/adobe/customextractor/Util/ParsableBitArray;->data:[B

    .line 24
    return-void
.end method

.method private getUnsignedByte(I)I
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/adobe/customextractor/Util/ParsableBitArray;->data:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private readExpGolombCodeNum()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 157
    move v0, v1

    .line 158
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableBitArray;->readBit()Z

    move-result v2

    if-nez v2, :cond_0

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_0
    const/4 v2, 0x1

    shl-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    if-lez v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/adobe/customextractor/Util/ParsableBitArray;->readBits(I)I

    move-result v1

    :cond_1
    add-int v0, v2, v1

    return v0
.end method

.method private readUnsignedByte()I
    .locals 3

    .prologue
    .line 142
    iget v0, p0, Lcom/adobe/customextractor/Util/ParsableBitArray;->bitOffset:I

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/adobe/customextractor/Util/ParsableBitArray;->data:[B

    iget v1, p0, Lcom/adobe/customextractor/Util/ParsableBitArray;->byteOffset:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/adobe/customextractor/Util/ParsableBitArray;->bitOffset:I

    shl-int/2addr v0, v1

    iget-object v1, p0, Lcom/adobe/customextractor/Util/ParsableBitArray;->data:[B

    iget v2, p0, Lcom/adobe/customextractor/Util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    iget v2, p0, Lcom/adobe/customextractor/Util/ParsableBitArray;->bitOffset:I

    rsub-int/lit8 v2, v2, 0x8

    ushr-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 148
    :goto_0
    iget v1, p0, Lcom/adobe/customextractor/Util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/adobe/customextractor/Util/ParsableBitArray;->byteOffset:I

    .line 149
    and-int/lit16 v0, v0, 0xff

    return v0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/adobe/customextractor/Util/ParsableBitArray;->data:[B

    iget v1, p0, Lcom/adobe/customextractor/Util/ParsableBitArray;->byteOffset:I

    aget-byte v0, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getPosition()I
    .locals 2

    .prologue
    .line 43
    iget v0, p0, Lcom/adobe/customextractor/Util/ParsableBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/adobe/customextractor/Util/ParsableBitArray;->bitOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public readBit()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 76
    invoke-virtual {p0, v0}, Lcom/adobe/customextractor/Util/ParsableBitArray;->readBits(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readBits(I)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/16 v5, 0x8

    .line 86
    if-nez p1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    :goto_1
    if-lt p1, v5, :cond_2

    .line 94
    add-int/lit8 p1, p1, -0x8

    .line 95
    invoke-direct {p0}, Lcom/adobe/customextractor/Util/ParsableBitArray;->readUnsignedByte()I

    move-result v1

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    goto :goto_1

    .line 98
    :cond_2
    if-lez p1, :cond_0

    .line 99
    iget v1, p0, Lcom/adobe/customextractor/Util/ParsableBitArray;->bitOffset:I

    add-int/2addr v1, p1

    .line 100
    const/16 v2, 0xff

    rsub-int/lit8 v3, p1, 0x8

    shr-int/2addr v2, v3

    int-to-byte v2, v2

    .line 102
    if-le v1, v5, :cond_4

    .line 104
    iget v3, p0, Lcom/adobe/customextractor/Util/ParsableBitArray;->byteOffset:I

    invoke-direct {p0, v3}, Lcom/adobe/customextractor/Util/ParsableBitArray;->getUnsignedByte(I)I

    move-result v3

    add-int/lit8 v4, v1, -0x8

    shl-int/2addr v3, v4

    iget v4, p0, Lcom/adobe/customextractor/Util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v4, v4, 0x1

    .line 105
    invoke-direct {p0, v4}, Lcom/adobe/customextractor/Util/ParsableBitArray;->getUnsignedByte(I)I

    move-result v4

    rsub-int/lit8 v5, v1, 0x10

    shr-int/2addr v4, v5

    or-int/2addr v3, v4

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 106
    iget v2, p0, Lcom/adobe/customextractor/Util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/adobe/customextractor/Util/ParsableBitArray;->byteOffset:I

    .line 115
    :cond_3
    :goto_2
    rem-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/adobe/customextractor/Util/ParsableBitArray;->bitOffset:I

    goto :goto_0

    .line 109
    :cond_4
    iget v3, p0, Lcom/adobe/customextractor/Util/ParsableBitArray;->byteOffset:I

    invoke-direct {p0, v3}, Lcom/adobe/customextractor/Util/ParsableBitArray;->getUnsignedByte(I)I

    move-result v3

    rsub-int/lit8 v4, v1, 0x8

    shr-int/2addr v3, v4

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 110
    if-ne v1, v5, :cond_3

    .line 111
    iget v2, p0, Lcom/adobe/customextractor/Util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/adobe/customextractor/Util/ParsableBitArray;->byteOffset:I

    goto :goto_2
.end method

.method public readSignedExpGolombCodedInt()I
    .locals 2

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/adobe/customextractor/Util/ParsableBitArray;->readExpGolombCodeNum()I

    move-result v1

    .line 137
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
    .line 127
    invoke-direct {p0}, Lcom/adobe/customextractor/Util/ParsableBitArray;->readExpGolombCodeNum()I

    move-result v0

    return v0
.end method

.method public reset([B)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    iput-object p1, p0, Lcom/adobe/customextractor/Util/ParsableBitArray;->data:[B

    .line 33
    iput v0, p0, Lcom/adobe/customextractor/Util/ParsableBitArray;->byteOffset:I

    .line 34
    iput v0, p0, Lcom/adobe/customextractor/Util/ParsableBitArray;->bitOffset:I

    .line 35
    return-void
.end method

.method public setPosition(I)V
    .locals 1

    .prologue
    .line 52
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lcom/adobe/customextractor/Util/ParsableBitArray;->byteOffset:I

    .line 53
    iget v0, p0, Lcom/adobe/customextractor/Util/ParsableBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    sub-int v0, p1, v0

    iput v0, p0, Lcom/adobe/customextractor/Util/ParsableBitArray;->bitOffset:I

    .line 54
    return-void
.end method

.method public skipBits(I)V
    .locals 2

    .prologue
    .line 62
    iget v0, p0, Lcom/adobe/customextractor/Util/ParsableBitArray;->byteOffset:I

    div-int/lit8 v1, p1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/adobe/customextractor/Util/ParsableBitArray;->byteOffset:I

    .line 63
    iget v0, p0, Lcom/adobe/customextractor/Util/ParsableBitArray;->bitOffset:I

    rem-int/lit8 v1, p1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/adobe/customextractor/Util/ParsableBitArray;->bitOffset:I

    .line 64
    iget v0, p0, Lcom/adobe/customextractor/Util/ParsableBitArray;->bitOffset:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 65
    iget v0, p0, Lcom/adobe/customextractor/Util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/customextractor/Util/ParsableBitArray;->byteOffset:I

    .line 66
    iget v0, p0, Lcom/adobe/customextractor/Util/ParsableBitArray;->bitOffset:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/adobe/customextractor/Util/ParsableBitArray;->bitOffset:I

    .line 68
    :cond_0
    return-void
.end method
