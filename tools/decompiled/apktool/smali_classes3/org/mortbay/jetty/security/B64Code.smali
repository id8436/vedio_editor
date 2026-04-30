.class public Lorg/mortbay/jetty/security/B64Code;
.super Ljava/lang/Object;
.source "B64Code.java"


# static fields
.field static code2nibble:[B = null

.field static final nibble2code:[C

.field static final pad:C = '='


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x100

    const/16 v4, 0x40

    const/4 v1, 0x0

    .line 36
    new-array v0, v4, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/mortbay/jetty/security/B64Code;->nibble2code:[C

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lorg/mortbay/jetty/security/B64Code;->code2nibble:[B

    .line 48
    new-array v0, v5, [B

    sput-object v0, Lorg/mortbay/jetty/security/B64Code;->code2nibble:[B

    move v0, v1

    .line 49
    :goto_0
    if-ge v0, v5, :cond_0

    .line 50
    sget-object v2, Lorg/mortbay/jetty/security/B64Code;->code2nibble:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 51
    :goto_1
    if-ge v0, v4, :cond_1

    .line 52
    sget-object v2, Lorg/mortbay/jetty/security/B64Code;->code2nibble:[B

    sget-object v3, Lorg/mortbay/jetty/security/B64Code;->nibble2code:[C

    aget-char v3, v3, v0

    int-to-byte v3, v3

    aput-byte v0, v2, v3

    .line 51
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_1

    .line 53
    :cond_1
    sget-object v0, Lorg/mortbay/jetty/security/B64Code;->code2nibble:[B

    const/16 v2, 0x3d

    aput-byte v1, v0, v2

    .line 54
    return-void

    .line 36
    nop

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    :try_start_0
    sget-object v0, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/mortbay/jetty/security/B64Code;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 169
    :catch_0
    move-exception v0

    .line 171
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/jetty/security/B64Code;->decode([C)[B

    move-result-object v1

    .line 190
    if-nez p1, :cond_0

    .line 191
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 192
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method public static decode([C)[B
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 209
    if-nez p0, :cond_1

    .line 210
    const/4 v0, 0x0

    .line 279
    :cond_0
    :goto_0
    return-object v0

    .line 212
    :cond_1
    array-length v0, p0

    .line 213
    rem-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    .line 214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Input block size is not 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 217
    :goto_1
    if-ltz v0, :cond_3

    aget-char v2, p0, v0

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_3

    .line 218
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 220
    :cond_3
    if-gez v0, :cond_4

    .line 221
    new-array v0, v1, [B

    goto :goto_0

    .line 224
    :cond_4
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v3, v0, 0x4

    .line 225
    new-array v0, v3, [B

    .line 228
    div-int/lit8 v2, v3, 0x3

    mul-int/lit8 v5, v2, 0x3

    move v4, v1

    .line 232
    :goto_2
    if-ge v4, v5, :cond_7

    .line 234
    :try_start_0
    sget-object v6, Lorg/mortbay/jetty/security/B64Code;->code2nibble:[B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v1, 0x1

    :try_start_1
    aget-char v1, p0, v1

    aget-byte v6, v6, v1

    .line 235
    sget-object v7, Lorg/mortbay/jetty/security/B64Code;->code2nibble:[B
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v1, v2, 0x1

    :try_start_2
    aget-char v2, p0, v2

    aget-byte v7, v7, v2

    .line 236
    sget-object v8, Lorg/mortbay/jetty/security/B64Code;->code2nibble:[B
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v2, v1, 0x1

    :try_start_3
    aget-char v1, p0, v1

    aget-byte v8, v8, v1

    .line 237
    sget-object v9, Lorg/mortbay/jetty/security/B64Code;->code2nibble:[B
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    add-int/lit8 v1, v2, 0x1

    :try_start_4
    aget-char v2, p0, v2

    aget-byte v9, v9, v2

    .line 238
    if-ltz v6, :cond_5

    if-ltz v7, :cond_5

    if-ltz v8, :cond_5

    if-gez v9, :cond_6

    .line 239
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Not B64 encoded"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    .line 273
    :catch_0
    move-exception v0

    move v0, v1

    .line 275
    :goto_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "char "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, " was not B64 encoded"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 241
    :cond_6
    add-int/lit8 v2, v4, 0x1

    shl-int/lit8 v6, v6, 0x2

    ushr-int/lit8 v10, v7, 0x4

    or-int/2addr v6, v10

    int-to-byte v6, v6

    :try_start_5
    aput-byte v6, v0, v4

    .line 242
    add-int/lit8 v4, v2, 0x1

    shl-int/lit8 v6, v7, 0x4

    ushr-int/lit8 v7, v8, 0x2

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    .line 243
    add-int/lit8 v2, v4, 0x1

    shl-int/lit8 v6, v8, 0x6

    or-int/2addr v6, v9

    int-to-byte v6, v6

    aput-byte v6, v0, v4

    move v4, v2

    goto :goto_2

    .line 246
    :cond_7
    if-eq v3, v4, :cond_0

    .line 248
    rem-int/lit8 v2, v3, 0x3

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 261
    :pswitch_0
    sget-object v3, Lorg/mortbay/jetty/security/B64Code;->code2nibble:[B
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0

    add-int/lit8 v2, v1, 0x1

    :try_start_6
    aget-char v1, p0, v1

    aget-byte v3, v3, v1

    .line 262
    sget-object v5, Lorg/mortbay/jetty/security/B64Code;->code2nibble:[B
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_1

    add-int/lit8 v1, v2, 0x1

    :try_start_7
    aget-char v2, p0, v2

    aget-byte v2, v5, v2

    .line 263
    if-ltz v3, :cond_8

    if-gez v2, :cond_b

    .line 264
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Not B64 encoded"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :pswitch_1
    sget-object v2, Lorg/mortbay/jetty/security/B64Code;->code2nibble:[B
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_0

    add-int/lit8 v3, v1, 0x1

    :try_start_8
    aget-char v1, p0, v1

    aget-byte v5, v2, v1

    .line 252
    sget-object v1, Lorg/mortbay/jetty/security/B64Code;->code2nibble:[B
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_2

    add-int/lit8 v2, v3, 0x1

    :try_start_9
    aget-char v3, p0, v3

    aget-byte v3, v1, v3

    .line 253
    sget-object v6, Lorg/mortbay/jetty/security/B64Code;->code2nibble:[B
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_1

    add-int/lit8 v1, v2, 0x1

    :try_start_a
    aget-char v2, p0, v2

    aget-byte v2, v6, v2

    .line 254
    if-ltz v5, :cond_9

    if-ltz v3, :cond_9

    if-gez v2, :cond_a

    .line 255
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Not B64 encoded"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_a
    add-int/lit8 v6, v4, 0x1

    shl-int/lit8 v5, v5, 0x2

    ushr-int/lit8 v7, v3, 0x4

    or-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 257
    add-int/lit8 v4, v6, 0x1

    shl-int/lit8 v3, v3, 0x4

    ushr-int/lit8 v2, v2, 0x2

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v6

    goto/16 :goto_0

    .line 265
    :cond_b
    add-int/lit8 v5, v4, 0x1

    shl-int/lit8 v3, v3, 0x2

    ushr-int/lit8 v2, v2, 0x4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v4
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_0

    .line 273
    :catch_1
    move-exception v0

    move v0, v2

    goto/16 :goto_3

    :catch_2
    move-exception v0

    move v0, v3

    goto/16 :goto_3

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lorg/mortbay/jetty/security/B64Code;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 69
    :catch_0
    move-exception v0

    .line 71
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    sget-object v0, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 93
    :goto_0
    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Lorg/mortbay/jetty/security/B64Code;->encode([B)[C

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    .line 91
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static encode([B)[C
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/16 v11, 0x3d

    .line 106
    if-nez p0, :cond_1

    .line 107
    const/4 v0, 0x0

    .line 152
    :cond_0
    :goto_0
    return-object v0

    .line 109
    :cond_1
    array-length v3, p0

    .line 110
    add-int/lit8 v0, v3, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [C

    .line 114
    div-int/lit8 v2, v3, 0x3

    mul-int/lit8 v4, v2, 0x3

    move v2, v1

    .line 115
    :goto_1
    if-ge v1, v4, :cond_2

    .line 117
    add-int/lit8 v5, v1, 0x1

    aget-byte v6, p0, v1

    .line 118
    add-int/lit8 v7, v5, 0x1

    aget-byte v5, p0, v5

    .line 119
    add-int/lit8 v1, v7, 0x1

    aget-byte v7, p0, v7

    .line 120
    add-int/lit8 v8, v2, 0x1

    sget-object v9, Lorg/mortbay/jetty/security/B64Code;->nibble2code:[C

    ushr-int/lit8 v10, v6, 0x2

    and-int/lit8 v10, v10, 0x3f

    aget-char v9, v9, v10

    aput-char v9, v0, v2

    .line 121
    add-int/lit8 v2, v8, 0x1

    sget-object v9, Lorg/mortbay/jetty/security/B64Code;->nibble2code:[C

    shl-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0x3f

    ushr-int/lit8 v10, v5, 0x4

    and-int/lit8 v10, v10, 0xf

    or-int/2addr v6, v10

    aget-char v6, v9, v6

    aput-char v6, v0, v8

    .line 122
    add-int/lit8 v6, v2, 0x1

    sget-object v8, Lorg/mortbay/jetty/security/B64Code;->nibble2code:[C

    shl-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0x3f

    ushr-int/lit8 v9, v7, 0x6

    and-int/lit8 v9, v9, 0x3

    or-int/2addr v5, v9

    aget-char v5, v8, v5

    aput-char v5, v0, v2

    .line 123
    add-int/lit8 v2, v6, 0x1

    sget-object v5, Lorg/mortbay/jetty/security/B64Code;->nibble2code:[C

    and-int/lit8 v7, v7, 0x3f

    aget-char v5, v5, v7

    aput-char v5, v0, v6

    goto :goto_1

    .line 126
    :cond_2
    if-eq v3, v1, :cond_0

    .line 128
    rem-int/lit8 v3, v3, 0x3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 140
    :pswitch_0
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p0, v1

    .line 141
    add-int/lit8 v3, v2, 0x1

    sget-object v4, Lorg/mortbay/jetty/security/B64Code;->nibble2code:[C

    ushr-int/lit8 v5, v1, 0x2

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    aput-char v4, v0, v2

    .line 142
    add-int/lit8 v2, v3, 0x1

    sget-object v4, Lorg/mortbay/jetty/security/B64Code;->nibble2code:[C

    shl-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0x3f

    aget-char v1, v4, v1

    aput-char v1, v0, v3

    .line 143
    add-int/lit8 v1, v2, 0x1

    aput-char v11, v0, v2

    .line 144
    add-int/lit8 v2, v1, 0x1

    aput-char v11, v0, v1

    goto/16 :goto_0

    .line 131
    :pswitch_1
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p0, v1

    .line 132
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p0, v3

    .line 133
    add-int/lit8 v4, v2, 0x1

    sget-object v5, Lorg/mortbay/jetty/security/B64Code;->nibble2code:[C

    ushr-int/lit8 v6, v1, 0x2

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    aput-char v5, v0, v2

    .line 134
    add-int/lit8 v2, v4, 0x1

    sget-object v5, Lorg/mortbay/jetty/security/B64Code;->nibble2code:[C

    shl-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0x3f

    ushr-int/lit8 v6, v3, 0x4

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v1, v6

    aget-char v1, v5, v1

    aput-char v1, v0, v4

    .line 135
    add-int/lit8 v1, v2, 0x1

    sget-object v4, Lorg/mortbay/jetty/security/B64Code;->nibble2code:[C

    shl-int/lit8 v3, v3, 0x2

    and-int/lit8 v3, v3, 0x3f

    aget-char v3, v4, v3

    aput-char v3, v0, v2

    .line 136
    add-int/lit8 v2, v1, 0x1

    aput-char v11, v0, v1

    goto/16 :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
