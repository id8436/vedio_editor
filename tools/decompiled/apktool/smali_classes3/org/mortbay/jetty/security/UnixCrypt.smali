.class public Lorg/mortbay/jetty/security/UnixCrypt;
.super Ljava/lang/Object;
.source "UnixCrypt.java"


# static fields
.field private static A64TOI:[B

.field private static CF6464:[[J

.field private static final CIFP:[B

.field private static final ExpandTr:[B

.field private static IE3264:[[J

.field private static final IP:[B

.field private static final ITOA64:[B

.field private static final P32Tr:[B

.field private static final PC1:[B

.field private static PC1ROT:[[J

.field private static final PC2:[B

.field private static PC2ROT:[[[J

.field private static final Rotates:[B

.field private static final S:[[B

.field private static SPE:[[J


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v8, 0x2

    const/16 v4, 0x10

    const/16 v12, 0x8

    const/4 v1, 0x0

    const/16 v11, 0x40

    .line 37
    new-array v0, v11, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/mortbay/jetty/security/UnixCrypt;->IP:[B

    .line 48
    const/16 v0, 0x30

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/mortbay/jetty/security/UnixCrypt;->ExpandTr:[B

    .line 58
    const/16 v0, 0x38

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/mortbay/jetty/security/UnixCrypt;->PC1:[B

    .line 69
    new-array v0, v4, [B

    fill-array-data v0, :array_3

    sput-object v0, Lorg/mortbay/jetty/security/UnixCrypt;->Rotates:[B

    .line 73
    new-array v0, v11, [B

    fill-array-data v0, :array_4

    sput-object v0, Lorg/mortbay/jetty/security/UnixCrypt;->PC2:[B

    .line 84
    new-array v0, v12, [[B

    new-array v2, v11, [B

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v2, 0x1

    new-array v3, v11, [B

    fill-array-data v3, :array_6

    aput-object v3, v0, v2

    new-array v2, v11, [B

    fill-array-data v2, :array_7

    aput-object v2, v0, v8

    const/4 v2, 0x3

    new-array v3, v11, [B

    fill-array-data v3, :array_8

    aput-object v3, v0, v2

    const/4 v2, 0x4

    new-array v3, v11, [B

    fill-array-data v3, :array_9

    aput-object v3, v0, v2

    const/4 v2, 0x5

    new-array v3, v11, [B

    fill-array-data v3, :array_a

    aput-object v3, v0, v2

    const/4 v2, 0x6

    new-array v3, v11, [B

    fill-array-data v3, :array_b

    aput-object v3, v0, v2

    const/4 v2, 0x7

    new-array v3, v11, [B

    fill-array-data v3, :array_c

    aput-object v3, v0, v2

    sput-object v0, Lorg/mortbay/jetty/security/UnixCrypt;->S:[[B

    .line 126
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_d

    sput-object v0, Lorg/mortbay/jetty/security/UnixCrypt;->P32Tr:[B

    .line 136
    new-array v0, v11, [B

    fill-array-data v0, :array_e

    sput-object v0, Lorg/mortbay/jetty/security/UnixCrypt;->CIFP:[B

    .line 147
    new-array v0, v11, [B

    fill-array-data v0, :array_f

    sput-object v0, Lorg/mortbay/jetty/security/UnixCrypt;->ITOA64:[B

    .line 159
    const/16 v0, 0x80

    new-array v0, v0, [B

    sput-object v0, Lorg/mortbay/jetty/security/UnixCrypt;->A64TOI:[B

    .line 162
    filled-new-array {v4, v4}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    sput-object v0, Lorg/mortbay/jetty/security/UnixCrypt;->PC1ROT:[[J

    .line 165
    filled-new-array {v8, v4, v4}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[J

    sput-object v0, Lorg/mortbay/jetty/security/UnixCrypt;->PC2ROT:[[[J

    .line 168
    filled-new-array {v12, v4}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    sput-object v0, Lorg/mortbay/jetty/security/UnixCrypt;->IE3264:[[J

    .line 171
    filled-new-array {v12, v11}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    sput-object v0, Lorg/mortbay/jetty/security/UnixCrypt;->SPE:[[J

    .line 174
    filled-new-array {v4, v4}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    sput-object v0, Lorg/mortbay/jetty/security/UnixCrypt;->CF6464:[[J

    .line 180
    new-array v6, v11, [B

    .line 181
    new-array v7, v11, [B

    move v0, v1

    .line 184
    :goto_0
    if-ge v0, v11, :cond_0

    sget-object v2, Lorg/mortbay/jetty/security/UnixCrypt;->A64TOI:[B

    sget-object v3, Lorg/mortbay/jetty/security/UnixCrypt;->ITOA64:[B

    aget-byte v3, v3, v0

    int-to-byte v4, v0

    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 187
    :goto_1
    if-ge v0, v11, :cond_1

    aput-byte v1, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v2, v1

    .line 188
    :goto_2
    if-ge v2, v11, :cond_5

    .line 190
    sget-object v0, Lorg/mortbay/jetty/security/UnixCrypt;->PC2:[B

    aget-byte v0, v0, v2

    if-nez v0, :cond_2

    .line 188
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 191
    :cond_2
    sget-object v3, Lorg/mortbay/jetty/security/UnixCrypt;->Rotates:[B

    aget-byte v3, v3, v1

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v0, v3

    .line 192
    rem-int/lit8 v3, v0, 0x1c

    sget-object v4, Lorg/mortbay/jetty/security/UnixCrypt;->Rotates:[B

    aget-byte v4, v4, v1

    if-ge v3, v4, :cond_3

    add-int/lit8 v0, v0, -0x1c

    .line 193
    :cond_3
    sget-object v3, Lorg/mortbay/jetty/security/UnixCrypt;->PC1:[B

    aget-byte v0, v3, v0

    .line 194
    if-lez v0, :cond_4

    .line 195
    add-int/lit8 v0, v0, -0x1

    .line 196
    or-int/lit8 v3, v0, 0x7

    and-int/lit8 v0, v0, 0x7

    sub-int v0, v3, v0

    .line 197
    add-int/lit8 v0, v0, 0x1

    .line 199
    :cond_4
    int-to-byte v0, v0

    aput-byte v0, v6, v2

    goto :goto_3

    .line 201
    :cond_5
    sget-object v0, Lorg/mortbay/jetty/security/UnixCrypt;->PC1ROT:[[J

    invoke-static {v0, v6, v12}, Lorg/mortbay/jetty/security/UnixCrypt;->init_perm([[J[BI)V

    move v3, v1

    .line 204
    :goto_4
    if-ge v3, v8, :cond_c

    move v0, v1

    .line 206
    :goto_5
    if-ge v0, v11, :cond_6

    aput-byte v1, v7, v0

    aput-byte v1, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    move v0, v1

    .line 207
    :goto_6
    if-ge v0, v11, :cond_8

    .line 208
    sget-object v2, Lorg/mortbay/jetty/security/UnixCrypt;->PC2:[B

    aget-byte v2, v2, v0

    if-nez v2, :cond_7

    .line 207
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 209
    :cond_7
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v4, v0, 0x1

    int-to-byte v4, v4

    aput-byte v4, v7, v2

    goto :goto_7

    :cond_8
    move v2, v1

    .line 211
    :goto_8
    if-ge v2, v11, :cond_b

    .line 212
    sget-object v0, Lorg/mortbay/jetty/security/UnixCrypt;->PC2:[B

    aget-byte v0, v0, v2

    if-nez v0, :cond_9

    .line 211
    :goto_9
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    .line 213
    :cond_9
    add-int/2addr v0, v3

    .line 214
    rem-int/lit8 v4, v0, 0x1c

    if-gt v4, v3, :cond_a

    add-int/lit8 v0, v0, -0x1c

    .line 215
    :cond_a
    aget-byte v0, v7, v0

    aput-byte v0, v6, v2

    goto :goto_9

    .line 218
    :cond_b
    sget-object v0, Lorg/mortbay/jetty/security/UnixCrypt;->PC2ROT:[[[J

    aget-object v0, v0, v3

    invoke-static {v0, v6, v12}, Lorg/mortbay/jetty/security/UnixCrypt;->init_perm([[J[BI)V

    .line 204
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_c
    move v3, v1

    .line 222
    :goto_a
    if-ge v3, v12, :cond_12

    move v2, v1

    .line 223
    :goto_b
    if-ge v2, v12, :cond_11

    .line 224
    if-ge v2, v8, :cond_f

    move v0, v1

    .line 225
    :goto_c
    const/16 v4, 0x20

    if-le v0, v4, :cond_10

    add-int/lit8 v0, v0, -0x20

    .line 227
    :cond_d
    :goto_d
    if-lez v0, :cond_e

    .line 228
    add-int/lit8 v0, v0, -0x1

    .line 229
    or-int/lit8 v4, v0, 0x7

    and-int/lit8 v0, v0, 0x7

    sub-int v0, v4, v0

    .line 230
    add-int/lit8 v0, v0, 0x1

    .line 232
    :cond_e
    mul-int/lit8 v4, v3, 0x8

    add-int/2addr v4, v2

    int-to-byte v0, v0

    aput-byte v0, v6, v4

    .line 223
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_b

    .line 224
    :cond_f
    sget-object v0, Lorg/mortbay/jetty/security/UnixCrypt;->IP:[B

    sget-object v4, Lorg/mortbay/jetty/security/UnixCrypt;->ExpandTr:[B

    mul-int/lit8 v5, v3, 0x6

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x2

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, -0x1

    aget-byte v0, v0, v4

    goto :goto_c

    .line 226
    :cond_10
    if-lez v0, :cond_d

    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 222
    :cond_11
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_a

    .line 236
    :cond_12
    sget-object v0, Lorg/mortbay/jetty/security/UnixCrypt;->IE3264:[[J

    invoke-static {v0, v6, v12}, Lorg/mortbay/jetty/security/UnixCrypt;->init_perm([[J[BI)V

    move v2, v1

    .line 239
    :goto_e
    if-ge v2, v11, :cond_14

    .line 240
    sget-object v0, Lorg/mortbay/jetty/security/UnixCrypt;->IP:[B

    sget-object v3, Lorg/mortbay/jetty/security/UnixCrypt;->CIFP:[B

    aget-byte v3, v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-byte v0, v0, v3

    .line 241
    if-lez v0, :cond_13

    .line 242
    add-int/lit8 v0, v0, -0x1

    .line 243
    or-int/lit8 v3, v0, 0x7

    and-int/lit8 v0, v0, 0x7

    sub-int v0, v3, v0

    .line 244
    add-int/lit8 v0, v0, 0x1

    .line 246
    :cond_13
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v3, v2, 0x1

    int-to-byte v3, v3

    aput-byte v3, v6, v0

    .line 239
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_e

    .line 249
    :cond_14
    sget-object v0, Lorg/mortbay/jetty/security/UnixCrypt;->CF6464:[[J

    invoke-static {v0, v6, v12}, Lorg/mortbay/jetty/security/UnixCrypt;->init_perm([[J[BI)V

    move v0, v1

    .line 252
    :goto_f
    const/16 v2, 0x30

    if-ge v0, v2, :cond_15

    .line 253
    sget-object v2, Lorg/mortbay/jetty/security/UnixCrypt;->P32Tr:[B

    sget-object v3, Lorg/mortbay/jetty/security/UnixCrypt;->ExpandTr:[B

    aget-byte v3, v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-byte v2, v2, v3

    aput-byte v2, v6, v0

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_15
    move v5, v1

    .line 254
    :goto_10
    if-ge v5, v12, :cond_1a

    move v4, v1

    .line 255
    :goto_11
    if-ge v4, v11, :cond_19

    .line 256
    shr-int/lit8 v0, v4, 0x0

    and-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x5

    shr-int/lit8 v2, v4, 0x1

    and-int/lit8 v2, v2, 0x1

    shl-int/lit8 v2, v2, 0x3

    or-int/2addr v0, v2

    shr-int/lit8 v2, v4, 0x2

    and-int/lit8 v2, v2, 0x1

    shl-int/lit8 v2, v2, 0x2

    or-int/2addr v0, v2

    shr-int/lit8 v2, v4, 0x3

    and-int/lit8 v2, v2, 0x1

    shl-int/lit8 v2, v2, 0x1

    or-int/2addr v0, v2

    shr-int/lit8 v2, v4, 0x4

    and-int/lit8 v2, v2, 0x1

    shl-int/lit8 v2, v2, 0x0

    or-int/2addr v0, v2

    shr-int/lit8 v2, v4, 0x5

    and-int/lit8 v2, v2, 0x1

    shl-int/lit8 v2, v2, 0x4

    or-int/2addr v0, v2

    .line 259
    sget-object v2, Lorg/mortbay/jetty/security/UnixCrypt;->S:[[B

    aget-object v2, v2, v5

    aget-byte v0, v2, v0

    .line 260
    shr-int/lit8 v2, v0, 0x3

    and-int/lit8 v2, v2, 0x1

    shl-int/lit8 v2, v2, 0x0

    shr-int/lit8 v3, v0, 0x2

    and-int/lit8 v3, v3, 0x1

    shl-int/lit8 v3, v3, 0x1

    or-int/2addr v2, v3

    shr-int/lit8 v3, v0, 0x1

    and-int/lit8 v3, v3, 0x1

    shl-int/lit8 v3, v3, 0x2

    or-int/2addr v2, v3

    shr-int/lit8 v0, v0, 0x0

    and-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x3

    or-int/2addr v2, v0

    move v0, v1

    .line 262
    :goto_12
    const/16 v3, 0x20

    if-ge v0, v3, :cond_16

    aput-byte v1, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_16
    move v0, v1

    .line 263
    :goto_13
    const/4 v3, 0x4

    if-ge v0, v3, :cond_17

    mul-int/lit8 v3, v5, 0x4

    add-int/2addr v3, v0

    shr-int v8, v2, v0

    and-int/lit8 v8, v8, 0x1

    int-to-byte v8, v8

    aput-byte v8, v7, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 264
    :cond_17
    const-wide/16 v2, 0x0

    .line 265
    const/16 v0, 0x18

    :goto_14
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_18

    const/4 v8, 0x1

    shl-long/2addr v2, v8

    aget-byte v8, v6, v0

    add-int/lit8 v8, v8, -0x1

    aget-byte v8, v7, v8

    int-to-long v8, v8

    const/16 v10, 0x20

    shl-long/2addr v8, v10

    or-long/2addr v2, v8

    add-int/lit8 v8, v0, 0x18

    aget-byte v8, v6, v8

    add-int/lit8 v8, v8, -0x1

    aget-byte v8, v7, v8

    int-to-long v8, v8

    or-long/2addr v2, v8

    goto :goto_14

    .line 269
    :cond_18
    sget-object v0, Lorg/mortbay/jetty/security/UnixCrypt;->SPE:[[J

    aget-object v0, v0, v5

    invoke-static {v2, v3}, Lorg/mortbay/jetty/security/UnixCrypt;->to_six_bit(J)J

    move-result-wide v2

    aput-wide v2, v0, v4

    .line 255
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_11

    .line 254
    :cond_19
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_10

    .line 272
    :cond_1a
    return-void

    .line 37
    nop

    :array_0
    .array-data 1
        0x3at
        0x32t
        0x2at
        0x22t
        0x1at
        0x12t
        0xat
        0x2t
        0x3ct
        0x34t
        0x2ct
        0x24t
        0x1ct
        0x14t
        0xct
        0x4t
        0x3et
        0x36t
        0x2et
        0x26t
        0x1et
        0x16t
        0xet
        0x6t
        0x40t
        0x38t
        0x30t
        0x28t
        0x20t
        0x18t
        0x10t
        0x8t
        0x39t
        0x31t
        0x29t
        0x21t
        0x19t
        0x11t
        0x9t
        0x1t
        0x3bt
        0x33t
        0x2bt
        0x23t
        0x1bt
        0x13t
        0xbt
        0x3t
        0x3dt
        0x35t
        0x2dt
        0x25t
        0x1dt
        0x15t
        0xdt
        0x5t
        0x3ft
        0x37t
        0x2ft
        0x27t
        0x1ft
        0x17t
        0xft
        0x7t
    .end array-data

    .line 48
    :array_1
    .array-data 1
        0x20t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0x18t
        0x19t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x1t
    .end array-data

    .line 58
    :array_2
    .array-data 1
        0x39t
        0x31t
        0x29t
        0x21t
        0x19t
        0x11t
        0x9t
        0x1t
        0x3at
        0x32t
        0x2at
        0x22t
        0x1at
        0x12t
        0xat
        0x2t
        0x3bt
        0x33t
        0x2bt
        0x23t
        0x1bt
        0x13t
        0xbt
        0x3t
        0x3ct
        0x34t
        0x2ct
        0x24t
        0x3ft
        0x37t
        0x2ft
        0x27t
        0x1ft
        0x17t
        0xft
        0x7t
        0x3et
        0x36t
        0x2et
        0x26t
        0x1et
        0x16t
        0xet
        0x6t
        0x3dt
        0x35t
        0x2dt
        0x25t
        0x1dt
        0x15t
        0xdt
        0x5t
        0x1ct
        0x14t
        0xct
        0x4t
    .end array-data

    .line 69
    :array_3
    .array-data 1
        0x1t
        0x1t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x1t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x1t
    .end array-data

    .line 73
    :array_4
    .array-data 1
        0x9t
        0x12t
        0xet
        0x11t
        0xbt
        0x18t
        0x1t
        0x5t
        0x16t
        0x19t
        0x3t
        0x1ct
        0xft
        0x6t
        0x15t
        0xat
        0x23t
        0x26t
        0x17t
        0x13t
        0xct
        0x4t
        0x1at
        0x8t
        0x2bt
        0x36t
        0x10t
        0x7t
        0x1bt
        0x14t
        0xdt
        0x2t
        0x0t
        0x0t
        0x29t
        0x34t
        0x1ft
        0x25t
        0x2ft
        0x37t
        0x0t
        0x0t
        0x1et
        0x28t
        0x33t
        0x2dt
        0x21t
        0x30t
        0x0t
        0x0t
        0x2ct
        0x31t
        0x27t
        0x38t
        0x22t
        0x35t
        0x0t
        0x0t
        0x2et
        0x2at
        0x32t
        0x24t
        0x1dt
        0x20t
    .end array-data

    .line 84
    :array_5
    .array-data 1
        0xet
        0x4t
        0xdt
        0x1t
        0x2t
        0xft
        0xbt
        0x8t
        0x3t
        0xat
        0x6t
        0xct
        0x5t
        0x9t
        0x0t
        0x7t
        0x0t
        0xft
        0x7t
        0x4t
        0xet
        0x2t
        0xdt
        0x1t
        0xat
        0x6t
        0xct
        0xbt
        0x9t
        0x5t
        0x3t
        0x8t
        0x4t
        0x1t
        0xet
        0x8t
        0xdt
        0x6t
        0x2t
        0xbt
        0xft
        0xct
        0x9t
        0x7t
        0x3t
        0xat
        0x5t
        0x0t
        0xft
        0xct
        0x8t
        0x2t
        0x4t
        0x9t
        0x1t
        0x7t
        0x5t
        0xbt
        0x3t
        0xet
        0xat
        0x0t
        0x6t
        0xdt
    .end array-data

    :array_6
    .array-data 1
        0xft
        0x1t
        0x8t
        0xet
        0x6t
        0xbt
        0x3t
        0x4t
        0x9t
        0x7t
        0x2t
        0xdt
        0xct
        0x0t
        0x5t
        0xat
        0x3t
        0xdt
        0x4t
        0x7t
        0xft
        0x2t
        0x8t
        0xet
        0xct
        0x0t
        0x1t
        0xat
        0x6t
        0x9t
        0xbt
        0x5t
        0x0t
        0xet
        0x7t
        0xbt
        0xat
        0x4t
        0xdt
        0x1t
        0x5t
        0x8t
        0xct
        0x6t
        0x9t
        0x3t
        0x2t
        0xft
        0xdt
        0x8t
        0xat
        0x1t
        0x3t
        0xft
        0x4t
        0x2t
        0xbt
        0x6t
        0x7t
        0xct
        0x0t
        0x5t
        0xet
        0x9t
    .end array-data

    :array_7
    .array-data 1
        0xat
        0x0t
        0x9t
        0xet
        0x6t
        0x3t
        0xft
        0x5t
        0x1t
        0xdt
        0xct
        0x7t
        0xbt
        0x4t
        0x2t
        0x8t
        0xdt
        0x7t
        0x0t
        0x9t
        0x3t
        0x4t
        0x6t
        0xat
        0x2t
        0x8t
        0x5t
        0xet
        0xct
        0xbt
        0xft
        0x1t
        0xdt
        0x6t
        0x4t
        0x9t
        0x8t
        0xft
        0x3t
        0x0t
        0xbt
        0x1t
        0x2t
        0xct
        0x5t
        0xat
        0xet
        0x7t
        0x1t
        0xat
        0xdt
        0x0t
        0x6t
        0x9t
        0x8t
        0x7t
        0x4t
        0xft
        0xet
        0x3t
        0xbt
        0x5t
        0x2t
        0xct
    .end array-data

    :array_8
    .array-data 1
        0x7t
        0xdt
        0xet
        0x3t
        0x0t
        0x6t
        0x9t
        0xat
        0x1t
        0x2t
        0x8t
        0x5t
        0xbt
        0xct
        0x4t
        0xft
        0xdt
        0x8t
        0xbt
        0x5t
        0x6t
        0xft
        0x0t
        0x3t
        0x4t
        0x7t
        0x2t
        0xct
        0x1t
        0xat
        0xet
        0x9t
        0xat
        0x6t
        0x9t
        0x0t
        0xct
        0xbt
        0x7t
        0xdt
        0xft
        0x1t
        0x3t
        0xet
        0x5t
        0x2t
        0x8t
        0x4t
        0x3t
        0xft
        0x0t
        0x6t
        0xat
        0x1t
        0xdt
        0x8t
        0x9t
        0x4t
        0x5t
        0xbt
        0xct
        0x7t
        0x2t
        0xet
    .end array-data

    :array_9
    .array-data 1
        0x2t
        0xct
        0x4t
        0x1t
        0x7t
        0xat
        0xbt
        0x6t
        0x8t
        0x5t
        0x3t
        0xft
        0xdt
        0x0t
        0xet
        0x9t
        0xet
        0xbt
        0x2t
        0xct
        0x4t
        0x7t
        0xdt
        0x1t
        0x5t
        0x0t
        0xft
        0xat
        0x3t
        0x9t
        0x8t
        0x6t
        0x4t
        0x2t
        0x1t
        0xbt
        0xat
        0xdt
        0x7t
        0x8t
        0xft
        0x9t
        0xct
        0x5t
        0x6t
        0x3t
        0x0t
        0xet
        0xbt
        0x8t
        0xct
        0x7t
        0x1t
        0xet
        0x2t
        0xdt
        0x6t
        0xft
        0x0t
        0x9t
        0xat
        0x4t
        0x5t
        0x3t
    .end array-data

    :array_a
    .array-data 1
        0xct
        0x1t
        0xat
        0xft
        0x9t
        0x2t
        0x6t
        0x8t
        0x0t
        0xdt
        0x3t
        0x4t
        0xet
        0x7t
        0x5t
        0xbt
        0xat
        0xft
        0x4t
        0x2t
        0x7t
        0xct
        0x9t
        0x5t
        0x6t
        0x1t
        0xdt
        0xet
        0x0t
        0xbt
        0x3t
        0x8t
        0x9t
        0xet
        0xft
        0x5t
        0x2t
        0x8t
        0xct
        0x3t
        0x7t
        0x0t
        0x4t
        0xat
        0x1t
        0xdt
        0xbt
        0x6t
        0x4t
        0x3t
        0x2t
        0xct
        0x9t
        0x5t
        0xft
        0xat
        0xbt
        0xet
        0x1t
        0x7t
        0x6t
        0x0t
        0x8t
        0xdt
    .end array-data

    :array_b
    .array-data 1
        0x4t
        0xbt
        0x2t
        0xet
        0xft
        0x0t
        0x8t
        0xdt
        0x3t
        0xct
        0x9t
        0x7t
        0x5t
        0xat
        0x6t
        0x1t
        0xdt
        0x0t
        0xbt
        0x7t
        0x4t
        0x9t
        0x1t
        0xat
        0xet
        0x3t
        0x5t
        0xct
        0x2t
        0xft
        0x8t
        0x6t
        0x1t
        0x4t
        0xbt
        0xdt
        0xct
        0x3t
        0x7t
        0xet
        0xat
        0xft
        0x6t
        0x8t
        0x0t
        0x5t
        0x9t
        0x2t
        0x6t
        0xbt
        0xdt
        0x8t
        0x1t
        0x4t
        0xat
        0x7t
        0x9t
        0x5t
        0x0t
        0xft
        0xet
        0x2t
        0x3t
        0xct
    .end array-data

    :array_c
    .array-data 1
        0xdt
        0x2t
        0x8t
        0x4t
        0x6t
        0xft
        0xbt
        0x1t
        0xat
        0x9t
        0x3t
        0xet
        0x5t
        0x0t
        0xct
        0x7t
        0x1t
        0xft
        0xdt
        0x8t
        0xat
        0x3t
        0x7t
        0x4t
        0xct
        0x5t
        0x6t
        0xbt
        0x0t
        0xet
        0x9t
        0x2t
        0x7t
        0xbt
        0x4t
        0x1t
        0x9t
        0xct
        0xet
        0x2t
        0x0t
        0x6t
        0xat
        0xdt
        0xft
        0x3t
        0x5t
        0x8t
        0x2t
        0x1t
        0xet
        0x7t
        0x4t
        0xat
        0x8t
        0xdt
        0xft
        0xct
        0x9t
        0x0t
        0x3t
        0x5t
        0x6t
        0xbt
    .end array-data

    .line 126
    :array_d
    .array-data 1
        0x10t
        0x7t
        0x14t
        0x15t
        0x1dt
        0xct
        0x1ct
        0x11t
        0x1t
        0xft
        0x17t
        0x1at
        0x5t
        0x12t
        0x1ft
        0xat
        0x2t
        0x8t
        0x18t
        0xet
        0x20t
        0x1bt
        0x3t
        0x9t
        0x13t
        0xdt
        0x1et
        0x6t
        0x16t
        0xbt
        0x4t
        0x19t
    .end array-data

    .line 136
    :array_e
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x11t
        0x12t
        0x13t
        0x14t
        0x5t
        0x6t
        0x7t
        0x8t
        0x15t
        0x16t
        0x17t
        0x18t
        0x9t
        0xat
        0xbt
        0xct
        0x19t
        0x1at
        0x1bt
        0x1ct
        0xdt
        0xet
        0xft
        0x10t
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x31t
        0x32t
        0x33t
        0x34t
        0x25t
        0x26t
        0x27t
        0x28t
        0x35t
        0x36t
        0x37t
        0x38t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x3dt
        0x3et
        0x3ft
        0x40t
    .end array-data

    .line 147
    :array_f
    .array-data 1
        0x2et
        0x2ft
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
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static crypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    .line 428
    const-wide/16 v4, 0x0

    .line 429
    const/16 v0, 0xd

    new-array v6, v0, [B

    .line 430
    const-wide/16 v2, 0x0

    .line 432
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 433
    :cond_0
    const-string/jumbo v0, "*"

    .line 459
    :goto_0
    return-object v0

    .line 435
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 437
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    const/16 v0, 0x8

    if-ge v1, v0, :cond_3

    .line 438
    const/16 v0, 0x8

    shl-long/2addr v2, v0

    if-ge v1, v7, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    :goto_2
    int-to-long v8, v0

    or-long/2addr v2, v8

    .line 437
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 438
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 441
    :cond_3
    invoke-static {v2, v3}, Lorg/mortbay/jetty/security/UnixCrypt;->des_setkey(J)[J

    move-result-object v3

    .line 443
    const/4 v1, 0x0

    .line 444
    const/4 v0, 0x2

    move v2, v1

    :goto_3
    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_5

    .line 445
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 446
    :goto_4
    int-to-byte v7, v0

    aput-byte v7, v6, v1

    .line 447
    shl-int/lit8 v2, v2, 0x6

    sget-object v7, Lorg/mortbay/jetty/security/UnixCrypt;->A64TOI:[B

    aget-byte v0, v7, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    move v2, v0

    move v0, v1

    .line 448
    goto :goto_3

    .line 445
    :cond_4
    const/16 v0, 0x2e

    goto :goto_4

    .line 450
    :cond_5
    const/16 v0, 0x19

    invoke-static {v4, v5, v2, v0, v3}, Lorg/mortbay/jetty/security/UnixCrypt;->des_cipher(JII[J)J

    move-result-wide v0

    .line 452
    const/16 v2, 0xc

    sget-object v3, Lorg/mortbay/jetty/security/UnixCrypt;->ITOA64:[B

    long-to-int v4, v0

    shl-int/lit8 v4, v4, 0x2

    and-int/lit8 v4, v4, 0x3f

    aget-byte v3, v3, v4

    aput-byte v3, v6, v2

    .line 453
    const/4 v2, 0x4

    shr-long v2, v0, v2

    .line 454
    const/16 v0, 0xc

    :goto_5
    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_6

    .line 455
    sget-object v1, Lorg/mortbay/jetty/security/UnixCrypt;->ITOA64:[B

    long-to-int v4, v2

    and-int/lit8 v4, v4, 0x3f

    aget-byte v1, v1, v4

    aput-byte v1, v6, v0

    .line 456
    const/4 v1, 0x6

    shr-long/2addr v2, v1

    goto :goto_5

    .line 459
    :cond_6
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xd

    invoke-direct {v0, v6, v1, v2, v3}, Ljava/lang/String;-><init>([BIII)V

    goto :goto_0
.end method

.method private static des_cipher(JII[J)J
    .locals 16

    .prologue
    .line 353
    invoke-static/range {p2 .. p2}, Lorg/mortbay/jetty/security/UnixCrypt;->to_six_bit(I)I

    move-result v1

    .line 356
    const-wide v2, 0x5555555555555555L    # 1.1945305291614955E103

    and-long v2, v2, p0

    .line 357
    const-wide v4, -0x5555555600000000L    # -3.720660661677042E-103

    and-long v4, v4, p0

    const/4 v0, 0x1

    shr-long v6, p0, v0

    const-wide/32 v8, 0x55555555

    and-long/2addr v6, v8

    or-long/2addr v4, v6

    .line 358
    const/4 v0, 0x1

    shl-long v6, v2, v0

    const/16 v0, 0x20

    shl-long/2addr v2, v0

    or-long/2addr v2, v6

    const-wide v6, -0x100000000L

    and-long/2addr v2, v6

    const/16 v0, 0x20

    shr-long v6, v4, v0

    or-long/2addr v4, v6

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 361
    const/16 v0, 0x20

    shr-long/2addr v2, v0

    long-to-int v0, v2

    sget-object v2, Lorg/mortbay/jetty/security/UnixCrypt;->IE3264:[[J

    invoke-static {v0, v2}, Lorg/mortbay/jetty/security/UnixCrypt;->perm3264(I[[J)J

    move-result-wide v4

    .line 362
    const-wide/16 v2, -0x1

    and-long/2addr v2, v4

    long-to-int v0, v2

    sget-object v2, Lorg/mortbay/jetty/security/UnixCrypt;->IE3264:[[J

    invoke-static {v0, v2}, Lorg/mortbay/jetty/security/UnixCrypt;->perm3264(I[[J)J

    move-result-wide v2

    .line 364
    :goto_0
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_1

    .line 365
    const/4 v0, 0x0

    :goto_1
    const/16 v6, 0x8

    if-ge v0, v6, :cond_0

    .line 370
    shl-int/lit8 v6, v0, 0x1

    aget-wide v6, p4, v6

    .line 371
    const/16 v8, 0x20

    shr-long v8, v2, v8

    xor-long/2addr v8, v2

    int-to-long v10, v1

    and-long/2addr v8, v10

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    .line 372
    const/16 v10, 0x20

    shl-long v10, v8, v10

    or-long/2addr v8, v10

    .line 373
    xor-long/2addr v8, v2

    xor-long/2addr v6, v8

    .line 375
    sget-object v8, Lorg/mortbay/jetty/security/UnixCrypt;->SPE:[[J

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/16 v9, 0x3a

    shr-long v10, v6, v9

    const-wide/16 v12, 0x3f

    and-long/2addr v10, v12

    long-to-int v9, v10

    aget-wide v8, v8, v9

    sget-object v10, Lorg/mortbay/jetty/security/UnixCrypt;->SPE:[[J

    const/4 v11, 0x1

    aget-object v10, v10, v11

    const/16 v11, 0x32

    shr-long v12, v6, v11

    const-wide/16 v14, 0x3f

    and-long/2addr v12, v14

    long-to-int v11, v12

    aget-wide v10, v10, v11

    xor-long/2addr v8, v10

    sget-object v10, Lorg/mortbay/jetty/security/UnixCrypt;->SPE:[[J

    const/4 v11, 0x2

    aget-object v10, v10, v11

    const/16 v11, 0x2a

    shr-long v12, v6, v11

    const-wide/16 v14, 0x3f

    and-long/2addr v12, v14

    long-to-int v11, v12

    aget-wide v10, v10, v11

    xor-long/2addr v8, v10

    sget-object v10, Lorg/mortbay/jetty/security/UnixCrypt;->SPE:[[J

    const/4 v11, 0x3

    aget-object v10, v10, v11

    const/16 v11, 0x22

    shr-long v12, v6, v11

    const-wide/16 v14, 0x3f

    and-long/2addr v12, v14

    long-to-int v11, v12

    aget-wide v10, v10, v11

    xor-long/2addr v8, v10

    sget-object v10, Lorg/mortbay/jetty/security/UnixCrypt;->SPE:[[J

    const/4 v11, 0x4

    aget-object v10, v10, v11

    const/16 v11, 0x1a

    shr-long v12, v6, v11

    const-wide/16 v14, 0x3f

    and-long/2addr v12, v14

    long-to-int v11, v12

    aget-wide v10, v10, v11

    xor-long/2addr v8, v10

    sget-object v10, Lorg/mortbay/jetty/security/UnixCrypt;->SPE:[[J

    const/4 v11, 0x5

    aget-object v10, v10, v11

    const/16 v11, 0x12

    shr-long v12, v6, v11

    const-wide/16 v14, 0x3f

    and-long/2addr v12, v14

    long-to-int v11, v12

    aget-wide v10, v10, v11

    xor-long/2addr v8, v10

    sget-object v10, Lorg/mortbay/jetty/security/UnixCrypt;->SPE:[[J

    const/4 v11, 0x6

    aget-object v10, v10, v11

    const/16 v11, 0xa

    shr-long v12, v6, v11

    const-wide/16 v14, 0x3f

    and-long/2addr v12, v14

    long-to-int v11, v12

    aget-wide v10, v10, v11

    xor-long/2addr v8, v10

    sget-object v10, Lorg/mortbay/jetty/security/UnixCrypt;->SPE:[[J

    const/4 v11, 0x7

    aget-object v10, v10, v11

    const/4 v11, 0x2

    shr-long/2addr v6, v11

    const-wide/16 v12, 0x3f

    and-long/2addr v6, v12

    long-to-int v6, v6

    aget-wide v6, v10, v6

    xor-long/2addr v6, v8

    xor-long/2addr v4, v6

    .line 380
    shl-int/lit8 v6, v0, 0x1

    add-int/lit8 v6, v6, 0x1

    aget-wide v6, p4, v6

    .line 381
    const/16 v8, 0x20

    shr-long v8, v4, v8

    xor-long/2addr v8, v4

    int-to-long v10, v1

    and-long/2addr v8, v10

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    .line 382
    const/16 v10, 0x20

    shl-long v10, v8, v10

    or-long/2addr v8, v10

    .line 383
    xor-long/2addr v8, v4

    xor-long/2addr v6, v8

    .line 385
    sget-object v8, Lorg/mortbay/jetty/security/UnixCrypt;->SPE:[[J

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/16 v9, 0x3a

    shr-long v10, v6, v9

    const-wide/16 v12, 0x3f

    and-long/2addr v10, v12

    long-to-int v9, v10

    aget-wide v8, v8, v9

    sget-object v10, Lorg/mortbay/jetty/security/UnixCrypt;->SPE:[[J

    const/4 v11, 0x1

    aget-object v10, v10, v11

    const/16 v11, 0x32

    shr-long v12, v6, v11

    const-wide/16 v14, 0x3f

    and-long/2addr v12, v14

    long-to-int v11, v12

    aget-wide v10, v10, v11

    xor-long/2addr v8, v10

    sget-object v10, Lorg/mortbay/jetty/security/UnixCrypt;->SPE:[[J

    const/4 v11, 0x2

    aget-object v10, v10, v11

    const/16 v11, 0x2a

    shr-long v12, v6, v11

    const-wide/16 v14, 0x3f

    and-long/2addr v12, v14

    long-to-int v11, v12

    aget-wide v10, v10, v11

    xor-long/2addr v8, v10

    sget-object v10, Lorg/mortbay/jetty/security/UnixCrypt;->SPE:[[J

    const/4 v11, 0x3

    aget-object v10, v10, v11

    const/16 v11, 0x22

    shr-long v12, v6, v11

    const-wide/16 v14, 0x3f

    and-long/2addr v12, v14

    long-to-int v11, v12

    aget-wide v10, v10, v11

    xor-long/2addr v8, v10

    sget-object v10, Lorg/mortbay/jetty/security/UnixCrypt;->SPE:[[J

    const/4 v11, 0x4

    aget-object v10, v10, v11

    const/16 v11, 0x1a

    shr-long v12, v6, v11

    const-wide/16 v14, 0x3f

    and-long/2addr v12, v14

    long-to-int v11, v12

    aget-wide v10, v10, v11

    xor-long/2addr v8, v10

    sget-object v10, Lorg/mortbay/jetty/security/UnixCrypt;->SPE:[[J

    const/4 v11, 0x5

    aget-object v10, v10, v11

    const/16 v11, 0x12

    shr-long v12, v6, v11

    const-wide/16 v14, 0x3f

    and-long/2addr v12, v14

    long-to-int v11, v12

    aget-wide v10, v10, v11

    xor-long/2addr v8, v10

    sget-object v10, Lorg/mortbay/jetty/security/UnixCrypt;->SPE:[[J

    const/4 v11, 0x6

    aget-object v10, v10, v11

    const/16 v11, 0xa

    shr-long v12, v6, v11

    const-wide/16 v14, 0x3f

    and-long/2addr v12, v14

    long-to-int v11, v12

    aget-wide v10, v10, v11

    xor-long/2addr v8, v10

    sget-object v10, Lorg/mortbay/jetty/security/UnixCrypt;->SPE:[[J

    const/4 v11, 0x7

    aget-object v10, v10, v11

    const/4 v11, 0x2

    shr-long/2addr v6, v11

    const-wide/16 v12, 0x3f

    and-long/2addr v6, v12

    long-to-int v6, v6

    aget-wide v6, v10, v6

    xor-long/2addr v6, v8

    xor-long/2addr v2, v6

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 391
    :cond_0
    xor-long/2addr v4, v2

    .line 392
    xor-long/2addr v2, v4

    .line 393
    xor-long/2addr v4, v2

    goto/16 :goto_0

    .line 395
    :cond_1
    const/16 v0, 0x23

    shr-long v0, v4, v0

    const-wide/32 v6, 0xf0f0f0f

    and-long/2addr v0, v6

    const-wide/16 v6, -0x1

    and-long/2addr v4, v6

    const/4 v6, 0x1

    shl-long/2addr v4, v6

    const-wide v6, 0xf0f0f0f0L

    and-long/2addr v4, v6

    or-long/2addr v0, v4

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    const/16 v4, 0x23

    shr-long v4, v2, v4

    const-wide/32 v6, 0xf0f0f0f

    and-long/2addr v4, v6

    const-wide/16 v6, -0x1

    and-long/2addr v2, v6

    const/4 v6, 0x1

    shl-long/2addr v2, v6

    const-wide v6, 0xf0f0f0f0L

    and-long/2addr v2, v6

    or-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 398
    sget-object v2, Lorg/mortbay/jetty/security/UnixCrypt;->CF6464:[[J

    invoke-static {v0, v1, v2}, Lorg/mortbay/jetty/security/UnixCrypt;->perm6464(J[[J)J

    move-result-wide v0

    .line 400
    return-wide v0
.end method

.method private static des_setkey(J)[J
    .locals 10

    .prologue
    const-wide v8, -0x303030300000001L    # -1.157117777211213E294

    const/16 v6, 0x10

    .line 335
    sget-object v0, Lorg/mortbay/jetty/security/UnixCrypt;->PC1ROT:[[J

    invoke-static {p0, p1, v0}, Lorg/mortbay/jetty/security/UnixCrypt;->perm6464(J[[J)J

    move-result-wide v2

    .line 336
    new-array v1, v6, [J

    .line 337
    const/4 v0, 0x0

    and-long v4, v2, v8

    aput-wide v4, v1, v0

    .line 339
    const/4 v0, 0x1

    :goto_0
    if-ge v0, v6, :cond_0

    .line 340
    aput-wide v2, v1, v0

    .line 341
    sget-object v4, Lorg/mortbay/jetty/security/UnixCrypt;->PC2ROT:[[[J

    sget-object v5, Lorg/mortbay/jetty/security/UnixCrypt;->Rotates:[B

    aget-byte v5, v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    invoke-static {v2, v3, v4}, Lorg/mortbay/jetty/security/UnixCrypt;->perm6464(J[[J)J

    move-result-wide v2

    .line 343
    and-long v4, v2, v8

    aput-wide v4, v1, v0

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 345
    :cond_0
    return-object v1
.end method

.method private static init_perm([[J[BI)V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 407
    move v2, v1

    :goto_0
    mul-int/lit8 v0, p2, 0x8

    if-ge v2, v0, :cond_3

    .line 409
    aget-byte v0, p1, v2

    add-int/lit8 v0, v0, -0x1

    .line 410
    if-gez v0, :cond_1

    .line 407
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 411
    :cond_1
    shr-int/lit8 v3, v0, 0x2

    .line 412
    const/4 v4, 0x1

    and-int/lit8 v0, v0, 0x3

    shl-int/2addr v4, v0

    move v0, v1

    .line 413
    :goto_1
    const/16 v5, 0x10

    if-ge v0, v5, :cond_0

    .line 414
    and-int/lit8 v5, v2, 0x7

    shr-int/lit8 v6, v2, 0x3

    rsub-int/lit8 v6, v6, 0x7

    shl-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    .line 415
    and-int v6, v0, v4

    if-eqz v6, :cond_2

    aget-object v6, p0, v3

    aget-wide v8, v6, v0

    const-wide/16 v10, 0x1

    shl-long/2addr v10, v5

    or-long/2addr v8, v10

    aput-wide v8, v6, v0

    .line 413
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 418
    :cond_3
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 464
    array-length v0, p0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 466
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "Usage - java org.mortbay.util.UnixCrypt <key> <salt>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 467
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 470
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "Crypt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p0, v2

    aget-object v3, p0, v3

    invoke-static {v2, v3}, Lorg/mortbay/jetty/security/UnixCrypt;->crypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 471
    return-void
.end method

.method private static perm3264(I[[J)J
    .locals 6

    .prologue
    .line 319
    const-wide/16 v2, 0x0

    .line 320
    const/4 v0, 0x4

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 321
    and-int/lit16 v1, p0, 0xff

    .line 322
    shr-int/lit8 p0, p0, 0x8

    .line 323
    shl-int/lit8 v4, v0, 0x1

    aget-object v4, p1, v4

    and-int/lit8 v5, v1, 0xf

    aget-wide v4, v4, v5

    .line 324
    or-long/2addr v2, v4

    .line 325
    shl-int/lit8 v4, v0, 0x1

    add-int/lit8 v4, v4, 0x1

    aget-object v4, p1, v4

    shr-int/lit8 v1, v1, 0x4

    aget-wide v4, v4, v1

    .line 326
    or-long/2addr v2, v4

    .line 327
    goto :goto_0

    .line 328
    :cond_0
    return-wide v2
.end method

.method private static perm6464(J[[J)J
    .locals 8

    .prologue
    const/16 v1, 0x8

    .line 302
    const-wide/16 v2, 0x0

    move v0, v1

    .line 303
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 304
    const-wide/16 v4, 0xff

    and-long/2addr v4, p0

    long-to-int v4, v4

    .line 305
    shr-long/2addr p0, v1

    .line 306
    shl-int/lit8 v5, v0, 0x1

    aget-object v5, p2, v5

    and-int/lit8 v6, v4, 0xf

    aget-wide v6, v5, v6

    .line 307
    or-long/2addr v2, v6

    .line 308
    shl-int/lit8 v5, v0, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-object v5, p2, v5

    shr-int/lit8 v4, v4, 0x4

    aget-wide v4, v5, v4

    .line 309
    or-long/2addr v2, v4

    .line 310
    goto :goto_0

    .line 311
    :cond_0
    return-wide v2
.end method

.method private static to_six_bit(I)I
    .locals 3

    .prologue
    .line 284
    shl-int/lit8 v0, p0, 0x1a

    const/high16 v1, -0x4000000

    and-int/2addr v0, v1

    shl-int/lit8 v1, p0, 0xc

    const/high16 v2, 0xfc0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    shr-int/lit8 v1, p0, 0x2

    const v2, 0xfc00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xfc

    or-int/2addr v0, v1

    return v0
.end method

.method private static to_six_bit(J)J
    .locals 6

    .prologue
    .line 293
    const/16 v0, 0x1a

    shl-long v0, p0, v0

    const-wide v2, -0x3ffffff04000000L

    and-long/2addr v0, v2

    const/16 v2, 0xc

    shl-long v2, p0, v2

    const-wide v4, 0xfc000000fc0000L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x2

    shr-long v2, p0, v2

    const-wide v4, 0xfc000000fc00L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    const/16 v2, 0x10

    shr-long v2, p0, v2

    const-wide v4, 0xfc000000fcL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method
