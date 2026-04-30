.class public final Lcom/adobe/customextractor/Util/CodecUtil/H264Util;
.super Ljava/lang/Object;
.source "H264Util.java"


# static fields
.field public static final NAL_START_CODE:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/adobe/customextractor/Util/CodecUtil/H264Util;->NAL_START_CODE:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    return-void
.end method

.method public static clearPrefixFlags([Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 140
    aput-boolean v1, p0, v1

    .line 141
    const/4 v0, 0x1

    aput-boolean v1, p0, v0

    .line 142
    const/4 v0, 0x2

    aput-boolean v1, p0, v0

    .line 143
    return-void
.end method

.method public static findNalUnit([BII[Z)I
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 77
    sub-int v3, p2, p1

    .line 79
    if-ltz v3, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/adobe/customextractor/Assertions;->checkState(Z)V

    .line 80
    if-nez v3, :cond_2

    .line 131
    :cond_0
    :goto_1
    return p2

    :cond_1
    move v0, v2

    .line 79
    goto :goto_0

    .line 84
    :cond_2
    if-eqz p3, :cond_5

    .line 85
    aget-boolean v0, p3, v2

    if-eqz v0, :cond_3

    .line 86
    invoke-static {p3}, Lcom/adobe/customextractor/Util/CodecUtil/H264Util;->clearPrefixFlags([Z)V

    .line 87
    add-int/lit8 p2, p1, -0x3

    goto :goto_1

    .line 88
    :cond_3
    if-le v3, v1, :cond_4

    aget-boolean v0, p3, v1

    if-eqz v0, :cond_4

    aget-byte v0, p0, p1

    if-ne v0, v1, :cond_4

    .line 89
    invoke-static {p3}, Lcom/adobe/customextractor/Util/CodecUtil/H264Util;->clearPrefixFlags([Z)V

    .line 90
    add-int/lit8 p2, p1, -0x2

    goto :goto_1

    .line 91
    :cond_4
    if-le v3, v6, :cond_5

    aget-boolean v0, p3, v6

    if-eqz v0, :cond_5

    aget-byte v0, p0, p1

    if-nez v0, :cond_5

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    if-ne v0, v1, :cond_5

    .line 93
    invoke-static {p3}, Lcom/adobe/customextractor/Util/CodecUtil/H264Util;->clearPrefixFlags([Z)V

    .line 94
    add-int/lit8 p2, p1, -0x1

    goto :goto_1

    .line 98
    :cond_5
    add-int/lit8 v4, p2, -0x1

    .line 102
    add-int/lit8 v0, p1, 0x2

    :goto_2
    if-ge v0, v4, :cond_9

    .line 103
    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xfe

    if-eqz v5, :cond_6

    .line 102
    :goto_3
    add-int/lit8 v0, v0, 0x3

    goto :goto_2

    .line 106
    :cond_6
    add-int/lit8 v5, v0, -0x2

    aget-byte v5, p0, v5

    if-nez v5, :cond_8

    add-int/lit8 v5, v0, -0x1

    aget-byte v5, p0, v5

    if-nez v5, :cond_8

    aget-byte v5, p0, v0

    if-ne v5, v1, :cond_8

    .line 107
    if-eqz p3, :cond_7

    .line 108
    invoke-static {p3}, Lcom/adobe/customextractor/Util/CodecUtil/H264Util;->clearPrefixFlags([Z)V

    .line 110
    :cond_7
    add-int/lit8 p2, v0, -0x2

    goto :goto_1

    .line 114
    :cond_8
    add-int/lit8 v0, v0, -0x2

    goto :goto_3

    .line 118
    :cond_9
    if-eqz p3, :cond_0

    .line 120
    if-le v3, v6, :cond_b

    add-int/lit8 v0, p2, -0x3

    aget-byte v0, p0, v0

    if-nez v0, :cond_a

    add-int/lit8 v0, p2, -0x2

    aget-byte v0, p0, v0

    if-nez v0, :cond_a

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-ne v0, v1, :cond_a

    move v0, v1

    :goto_4
    aput-boolean v0, p3, v2

    .line 125
    if-le v3, v1, :cond_10

    add-int/lit8 v0, p2, -0x2

    aget-byte v0, p0, v0

    if-nez v0, :cond_f

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_f

    move v0, v1

    :goto_5
    aput-boolean v0, p3, v1

    .line 128
    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_12

    :goto_6
    aput-boolean v1, p3, v6

    goto/16 :goto_1

    :cond_a
    move v0, v2

    .line 120
    goto :goto_4

    :cond_b
    if-ne v3, v6, :cond_d

    aget-boolean v0, p3, v6

    if-eqz v0, :cond_c

    add-int/lit8 v0, p2, -0x2

    aget-byte v0, p0, v0

    if-nez v0, :cond_c

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-ne v0, v1, :cond_c

    move v0, v1

    goto :goto_4

    :cond_c
    move v0, v2

    goto :goto_4

    :cond_d
    aget-boolean v0, p3, v1

    if-eqz v0, :cond_e

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-ne v0, v1, :cond_e

    move v0, v1

    goto :goto_4

    :cond_e
    move v0, v2

    goto :goto_4

    :cond_f
    move v0, v2

    .line 125
    goto :goto_5

    :cond_10
    aget-boolean v0, p3, v6

    if-eqz v0, :cond_11

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_11

    move v0, v1

    goto :goto_5

    :cond_11
    move v0, v2

    goto :goto_5

    :cond_12
    move v1, v2

    .line 128
    goto :goto_6
.end method

.method public static getNalUnitType([BI)I
    .locals 1

    .prologue
    .line 51
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public static parseChildNalUnit(Lcom/adobe/customextractor/Util/ParsableByteArray;)[B
    .locals 3

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    .line 37
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 38
    invoke-virtual {p0, v0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->skipBytes(I)V

    .line 39
    iget-object v2, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->data:[B

    invoke-static {v2, v1, v0}, Lcom/adobe/customextractor/Util/CodecUtil/CodecSpecificDataUtil;->buildNalUnit([BII)[B

    move-result-object v0

    return-object v0
.end method

.method private static readUnsignedIntToInt(Ljava/nio/ByteBuffer;)I
    .locals 4

    .prologue
    .line 152
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v1, v0, 0xff

    .line 153
    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 154
    shl-int/lit8 v1, v1, 0x8

    .line 155
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_0
    if-gez v1, :cond_1

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Top bit not zero: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_1
    return v1
.end method

.method public static replaceLengthPrefixesWithAvcStartCodes(Ljava/nio/ByteBuffer;I)V
    .locals 4

    .prologue
    .line 20
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int v1, v0, p1

    move v0, v1

    .line 22
    :goto_0
    add-int v2, v1, p1

    if-ge v0, v2, :cond_0

    .line 23
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 24
    invoke-static {p0}, Lcom/adobe/customextractor/Util/CodecUtil/H264Util;->readUnsignedIntToInt(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 25
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 26
    sget-object v3, Lcom/adobe/customextractor/Util/CodecUtil/H264Util;->NAL_START_CODE:[B

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 27
    add-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    add-int v0, v1, p1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 30
    return-void
.end method
