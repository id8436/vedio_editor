.class public final Lcom/adobe/customextractor/Util/CodecUtil/Ac3Util;
.super Ljava/lang/Object;
.source "Ac3Util.java"


# static fields
.field private static final BITRATES:[I

.field private static final CHANNEL_COUNTS:[I

.field private static final FRMSIZECOD_TO_FRAME_SIZE_44_1:[I

.field private static final SAMPLE_RATES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x13

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/adobe/customextractor/Util/CodecUtil/Ac3Util;->SAMPLE_RATES:[I

    .line 17
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/adobe/customextractor/Util/CodecUtil/Ac3Util;->CHANNEL_COUNTS:[I

    .line 19
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/adobe/customextractor/Util/CodecUtil/Ac3Util;->BITRATES:[I

    .line 22
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/adobe/customextractor/Util/CodecUtil/Ac3Util;->FRMSIZECOD_TO_FRAME_SIZE_44_1:[I

    return-void

    .line 15
    :array_0
    .array-data 4
        0xbb80
        0xac44
        0x7d00
    .end array-data

    .line 17
    :array_1
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
    .end array-data

    .line 19
    :array_2
    .array-data 4
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
        0x180
        0x1c0
        0x200
        0x240
        0x280
    .end array-data

    .line 22
    :array_3
    .array-data 4
        0x45
        0x57
        0x68
        0x79
        0x8b
        0xae
        0xd0
        0xf3
        0x116
        0x15c
        0x1a1
        0x1e7
        0x22d
        0x2b8
        0x343
        0x3cf
        0x45a
        0x4e5
        0x571
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    return-void
.end method

.method public static getBitrate(II)I
    .locals 3

    .prologue
    .line 130
    mul-int/lit8 v0, p0, 0x8

    mul-int/2addr v0, p1

    .line 131
    const v1, 0x177000

    .line 132
    const v2, 0xbb800

    add-int/2addr v0, v2

    div-int/2addr v0, v1

    return v0
.end method

.method public static parseAnnexFAc3Format(Lcom/adobe/customextractor/Util/ParsableByteArray;)Lcom/adobe/customextractor/Util/Media/MediaFormat;
    .locals 7

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    .line 32
    sget-object v1, Lcom/adobe/customextractor/Util/CodecUtil/Ac3Util;->SAMPLE_RATES:[I

    aget v5, v1, v0

    .line 33
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 35
    sget-object v1, Lcom/adobe/customextractor/Util/CodecUtil/Ac3Util;->CHANNEL_COUNTS:[I

    and-int/lit8 v2, v0, 0x38

    shr-int/lit8 v2, v2, 0x3

    aget v4, v1, v2

    .line 37
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 38
    add-int/lit8 v4, v4, 0x1

    .line 40
    :cond_0
    const-string/jumbo v0, "audio/ac3"

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    .line 41
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 40
    invoke-static/range {v0 .. v6}, Lcom/adobe/customextractor/Util/Media/MediaFormat;->createAudioFormat(Ljava/lang/String;IJIILjava/util/List;)Lcom/adobe/customextractor/Util/Media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static parseAnnexFEAc3Format(Lcom/adobe/customextractor/Util/ParsableByteArray;)Lcom/adobe/customextractor/Util/Media/MediaFormat;
    .locals 5

    .prologue
    .line 49
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->skipBytes(I)V

    .line 54
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    .line 55
    sget-object v1, Lcom/adobe/customextractor/Util/CodecUtil/Ac3Util;->SAMPLE_RATES:[I

    aget v1, v1, v0

    .line 56
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 58
    sget-object v0, Lcom/adobe/customextractor/Util/CodecUtil/Ac3Util;->CHANNEL_COUNTS:[I

    and-int/lit8 v3, v2, 0xe

    shr-int/lit8 v3, v3, 0x1

    aget v0, v0, v3

    .line 60
    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 61
    add-int/lit8 v0, v0, 0x1

    .line 63
    :cond_0
    const-string/jumbo v2, "audio/eac3"

    const/4 v3, -0x1

    .line 64
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 63
    invoke-static {v2, v3, v0, v1, v4}, Lcom/adobe/customextractor/Util/Media/MediaFormat;->createAudioFormat(Ljava/lang/String;IIILjava/util/List;)Lcom/adobe/customextractor/Util/Media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrameAc3Format(Lcom/adobe/customextractor/Util/ParsableBitArray;)Lcom/adobe/customextractor/Util/Media/MediaFormat;
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x2

    .line 76
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/adobe/customextractor/Util/ParsableBitArray;->skipBits(I)V

    .line 78
    invoke-virtual {p0, v1}, Lcom/adobe/customextractor/Util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 79
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/adobe/customextractor/Util/ParsableBitArray;->skipBits(I)V

    .line 80
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/adobe/customextractor/Util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 81
    and-int/lit8 v0, v6, 0x1

    if-eqz v0, :cond_0

    if-eq v6, v4, :cond_0

    .line 82
    invoke-virtual {p0, v1}, Lcom/adobe/customextractor/Util/ParsableBitArray;->skipBits(I)V

    .line 84
    :cond_0
    and-int/lit8 v0, v6, 0x4

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {p0, v1}, Lcom/adobe/customextractor/Util/ParsableBitArray;->skipBits(I)V

    .line 87
    :cond_1
    if-ne v6, v1, :cond_2

    .line 88
    invoke-virtual {p0, v1}, Lcom/adobe/customextractor/Util/ParsableBitArray;->skipBits(I)V

    .line 90
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableBitArray;->readBit()Z

    move-result v7

    .line 91
    const-string/jumbo v0, "audio/ac3"

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    sget-object v8, Lcom/adobe/customextractor/Util/CodecUtil/Ac3Util;->CHANNEL_COUNTS:[I

    aget v6, v8, v6

    if-eqz v7, :cond_3

    :goto_0
    add-int/2addr v4, v6

    sget-object v6, Lcom/adobe/customextractor/Util/CodecUtil/Ac3Util;->SAMPLE_RATES:[I

    aget v5, v6, v5

    .line 93
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 91
    invoke-static/range {v0 .. v6}, Lcom/adobe/customextractor/Util/Media/MediaFormat;->createAudioFormat(Ljava/lang/String;IJIILjava/util/List;)Lcom/adobe/customextractor/Util/Media/MediaFormat;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static parseFrameSize(Lcom/adobe/customextractor/Util/ParsableBitArray;)I
    .locals 4

    .prologue
    .line 105
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/adobe/customextractor/Util/ParsableBitArray;->skipBits(I)V

    .line 107
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/adobe/customextractor/Util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 108
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/adobe/customextractor/Util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 109
    sget-object v2, Lcom/adobe/customextractor/Util/CodecUtil/Ac3Util;->SAMPLE_RATES:[I

    aget v0, v2, v0

    .line 110
    sget-object v2, Lcom/adobe/customextractor/Util/CodecUtil/Ac3Util;->BITRATES:[I

    div-int/lit8 v3, v1, 0x2

    aget v2, v2, v3

    .line 111
    const/16 v3, 0x7d00

    if-ne v0, v3, :cond_0

    .line 112
    mul-int/lit8 v0, v2, 0x6

    .line 116
    :goto_0
    return v0

    .line 113
    :cond_0
    const v3, 0xac44

    if-ne v0, v3, :cond_1

    .line 114
    sget-object v0, Lcom/adobe/customextractor/Util/CodecUtil/Ac3Util;->FRMSIZECOD_TO_FRAME_SIZE_44_1:[I

    div-int/lit8 v2, v1, 0x2

    aget v0, v0, v2

    rem-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 116
    :cond_1
    mul-int/lit8 v0, v2, 0x4

    goto :goto_0
.end method
