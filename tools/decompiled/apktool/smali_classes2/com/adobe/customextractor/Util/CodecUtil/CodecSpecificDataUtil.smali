.class public final Lcom/adobe/customextractor/Util/CodecUtil/CodecSpecificDataUtil;
.super Ljava/lang/Object;
.source "CodecSpecificDataUtil.java"


# static fields
.field private static final AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

.field private static final AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

.field private static final NAL_START_CODE:[B

.field private static final SPS_NAL_UNIT_TYPE:I = 0x7


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/adobe/customextractor/Util/CodecUtil/CodecSpecificDataUtil;->NAL_START_CODE:[B

    .line 19
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/adobe/customextractor/Util/CodecUtil/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    .line 23
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/adobe/customextractor/Util/CodecUtil/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    return-void

    .line 17
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 19
    :array_1
    .array-data 4
        0x17700
        0x15888
        0xfa00
        0xbb80
        0xac44
        0x7d00
        0x5dc0
        0x5622
        0x3e80
        0x2ee0
        0x2b11
        0x1f40
        0x1cb6
    .end array-data

    .line 23
    :array_2
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildAudioSpecificConfig(II)[B
    .locals 5

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 72
    move v0, v1

    move v2, v3

    .line 73
    :goto_0
    sget-object v4, Lcom/adobe/customextractor/Util/CodecUtil/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 74
    sget-object v4, Lcom/adobe/customextractor/Util/CodecUtil/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    aget v4, v4, v0

    if-ne p0, v4, :cond_0

    move v2, v0

    .line 73
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 79
    :goto_1
    sget-object v4, Lcom/adobe/customextractor/Util/CodecUtil/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    array-length v4, v4

    if-ge v0, v4, :cond_3

    .line 80
    sget-object v4, Lcom/adobe/customextractor/Util/CodecUtil/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    aget v4, v4, v0

    if-ne p1, v4, :cond_2

    move v3, v0

    .line 79
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 85
    :cond_3
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 86
    shr-int/lit8 v4, v2, 0x1

    or-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 87
    const/4 v1, 0x1

    and-int/lit8 v2, v2, 0x1

    shl-int/lit8 v2, v2, 0x7

    shl-int/lit8 v3, v3, 0x3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 88
    return-object v0
.end method

.method public static buildAudioSpecificConfig(III)[B
    .locals 4

    .prologue
    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 59
    const/4 v1, 0x0

    shl-int/lit8 v2, p0, 0x3

    and-int/lit16 v2, v2, 0xf8

    shr-int/lit8 v3, p1, 0x1

    and-int/lit8 v3, v3, 0x7

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 60
    const/4 v1, 0x1

    shl-int/lit8 v2, p1, 0x7

    and-int/lit16 v2, v2, 0x80

    shl-int/lit8 v3, p2, 0x3

    and-int/lit8 v3, v3, 0x78

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 61
    return-object v0
.end method

.method public static buildNalUnit([BII)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 100
    sget-object v0, Lcom/adobe/customextractor/Util/CodecUtil/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v0, v0

    add-int/2addr v0, p2

    new-array v0, v0, [B

    .line 101
    sget-object v1, Lcom/adobe/customextractor/Util/CodecUtil/CodecSpecificDataUtil;->NAL_START_CODE:[B

    sget-object v2, Lcom/adobe/customextractor/Util/CodecUtil/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    sget-object v1, Lcom/adobe/customextractor/Util/CodecUtil/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v1, v1

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    return-object v0
.end method

.method private static findNalStartCode([BI)I
    .locals 3

    .prologue
    .line 147
    array-length v0, p0

    sget-object v1, Lcom/adobe/customextractor/Util/CodecUtil/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v1, v1

    sub-int v1, v0, v1

    move v0, p1

    .line 148
    :goto_0
    if-gt v0, v1, :cond_1

    .line 149
    invoke-static {p0, v0}, Lcom/adobe/customextractor/Util/CodecUtil/CodecSpecificDataUtil;->isNalStartCode([BI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    :goto_1
    return v0

    .line 148
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static isNalStartCode([BI)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 164
    array-length v0, p0

    sub-int/2addr v0, p1

    sget-object v2, Lcom/adobe/customextractor/Util/CodecUtil/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v2, v2

    if-gt v0, v2, :cond_1

    .line 172
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 167
    :goto_1
    sget-object v2, Lcom/adobe/customextractor/Util/CodecUtil/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 168
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    sget-object v3, Lcom/adobe/customextractor/Util/CodecUtil/CodecSpecificDataUtil;->NAL_START_CODE:[B

    aget-byte v3, v3, v0

    if-ne v2, v3, :cond_0

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 172
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static parseAudioSpecificConfig([B)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 38
    aget-byte v0, p0, v1

    shr-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, 0x1f

    .line 39
    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    const/16 v3, 0x1d

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v2

    .line 40
    :goto_0
    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0x7

    shl-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p0, v4

    shr-int/lit8 v4, v4, 0x7

    and-int/lit8 v4, v4, 0x1

    or-int/2addr v3, v4

    .line 42
    const/16 v4, 0xd

    if-ge v3, v4, :cond_2

    :goto_1
    invoke-static {v2}, Lcom/adobe/customextractor/Assertions;->checkState(Z)V

    .line 43
    sget-object v1, Lcom/adobe/customextractor/Util/CodecUtil/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    aget v1, v1, v3

    .line 44
    add-int/lit8 v0, v0, 0x1

    aget-byte v0, p0, v0

    shr-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, 0xf

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v1

    .line 39
    goto :goto_0

    :cond_2
    move v2, v1

    .line 42
    goto :goto_1
.end method

.method private static parseAvcLevel([B)I
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/16 v0, 0x8

    .line 224
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    .line 225
    sparse-switch v1, :sswitch_data_0

    .line 259
    const/4 v0, 0x0

    :goto_0
    :sswitch_0
    return v0

    .line 227
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 229
    :sswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 231
    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 235
    :sswitch_4
    const/16 v0, 0x10

    goto :goto_0

    .line 237
    :sswitch_5
    const/16 v0, 0x20

    goto :goto_0

    .line 239
    :sswitch_6
    const/16 v0, 0x40

    goto :goto_0

    .line 241
    :sswitch_7
    const/16 v0, 0x80

    goto :goto_0

    .line 243
    :sswitch_8
    const/16 v0, 0x100

    goto :goto_0

    .line 245
    :sswitch_9
    const/16 v0, 0x200

    goto :goto_0

    .line 247
    :sswitch_a
    const/16 v0, 0x400

    goto :goto_0

    .line 249
    :sswitch_b
    const/16 v0, 0x800

    goto :goto_0

    .line 251
    :sswitch_c
    const/16 v0, 0x1000

    goto :goto_0

    .line 253
    :sswitch_d
    const/16 v0, 0x2000

    goto :goto_0

    .line 255
    :sswitch_e
    const/16 v0, 0x4000

    goto :goto_0

    .line 257
    :sswitch_f
    const v0, 0x8000

    goto :goto_0

    .line 225
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0xb -> :sswitch_3
        0xc -> :sswitch_0
        0xd -> :sswitch_4
        0x14 -> :sswitch_5
        0x15 -> :sswitch_6
        0x16 -> :sswitch_7
        0x1e -> :sswitch_8
        0x1f -> :sswitch_9
        0x20 -> :sswitch_a
        0x28 -> :sswitch_b
        0x29 -> :sswitch_c
        0x2a -> :sswitch_d
        0x32 -> :sswitch_e
        0x33 -> :sswitch_f
    .end sparse-switch
.end method

.method private static parseAvcProfile([B)I
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 201
    const/4 v0, 0x6

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 202
    sparse-switch v0, :sswitch_data_0

    .line 218
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 204
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 206
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 208
    :sswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 210
    :sswitch_3
    const/16 v0, 0x8

    goto :goto_0

    .line 212
    :sswitch_4
    const/16 v0, 0x10

    goto :goto_0

    .line 214
    :sswitch_5
    const/16 v0, 0x20

    goto :goto_0

    .line 216
    :sswitch_6
    const/16 v0, 0x40

    goto :goto_0

    .line 202
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x4d -> :sswitch_1
        0x58 -> :sswitch_2
        0x64 -> :sswitch_3
        0x6e -> :sswitch_4
        0x7a -> :sswitch_5
        0xf4 -> :sswitch_6
    .end sparse-switch
.end method

.method public static parseSpsNalUnit([B)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/adobe/customextractor/Util/CodecUtil/CodecSpecificDataUtil;->isNalStartCode([BI)Z

    move-result v0

    if-eqz v0, :cond_0

    array-length v0, p0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 194
    invoke-static {p0}, Lcom/adobe/customextractor/Util/CodecUtil/CodecSpecificDataUtil;->parseAvcProfile([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Lcom/adobe/customextractor/Util/CodecUtil/CodecSpecificDataUtil;->parseAvcLevel([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 196
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static splitNalUnits([B)[[B
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-static {p0, v1}, Lcom/adobe/customextractor/Util/CodecUtil/CodecSpecificDataUtil;->isNalStartCode([BI)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    const/4 v0, 0x0

    check-cast v0, [[B

    .line 136
    :goto_0
    return-object v0

    .line 122
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 125
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v2, Lcom/adobe/customextractor/Util/CodecUtil/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v2, v2

    add-int/2addr v0, v2

    invoke-static {p0, v0}, Lcom/adobe/customextractor/Util/CodecUtil/CodecSpecificDataUtil;->findNalStartCode([BI)I

    move-result v0

    .line 127
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 128
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [[B

    move v2, v1

    .line 129
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 130
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 131
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_2

    add-int/lit8 v0, v2, 0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 132
    :goto_2
    sub-int/2addr v0, v5

    new-array v0, v0, [B

    .line 133
    array-length v6, v0

    invoke-static {p0, v5, v0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    aput-object v0, v3, v2

    .line 129
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 131
    :cond_2
    array-length v0, p0

    goto :goto_2

    :cond_3
    move-object v0, v3

    .line 136
    goto :goto_0
.end method
