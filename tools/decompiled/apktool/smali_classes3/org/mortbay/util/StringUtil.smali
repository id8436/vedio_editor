.class public Lorg/mortbay/util/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# static fields
.field public static final CRLF:Ljava/lang/String; = "\r\n"

.field public static final __ISO_8859_1:Ljava/lang/String;

.field public static final __LINE_SEPARATOR:Ljava/lang/String;

.field public static final __UTF16:Ljava/lang/String; = "UTF-16"

.field public static final __UTF8:Ljava/lang/String; = "UTF-8"

.field public static final __UTF8Alt:Ljava/lang/String; = "UTF8"

.field private static lowercases:[C


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 32
    const-string/jumbo v0, "line.separator"

    const-string/jumbo v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/StringUtil;->__LINE_SEPARATOR:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "ISO_8859_1"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    if-nez v0, :cond_0

    .line 42
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0x14

    aput-byte v3, v1, v2

    const-string/jumbo v2, "ISO-8859-1"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 43
    const-string/jumbo v0, "ISO-8859-1"
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :cond_0
    :goto_0
    sput-object v0, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    .line 58
    const/16 v0, 0x80

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/mortbay/util/StringUtil;->lowercases:[C

    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 47
    const-string/jumbo v0, "ISO8859_1"

    goto :goto_0

    .line 58
    nop

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x3s
        0x4s
        0x5s
        0x6s
        0x7s
        0x8s
        0x9s
        0xas
        0xbs
        0xcs
        0xds
        0xes
        0xfs
        0x10s
        0x11s
        0x12s
        0x13s
        0x14s
        0x15s
        0x16s
        0x17s
        0x18s
        0x19s
        0x1as
        0x1bs
        0x1cs
        0x1ds
        0x1es
        0x1fs
        0x20s
        0x21s
        0x22s
        0x23s
        0x24s
        0x25s
        0x26s
        0x27s
        0x28s
        0x29s
        0x2as
        0x2bs
        0x2cs
        0x2ds
        0x2es
        0x2fs
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
        0x3as
        0x3bs
        0x3cs
        0x3ds
        0x3es
        0x3fs
        0x40s
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
        0x5bs
        0x5cs
        0x5ds
        0x5es
        0x5fs
        0x60s
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
        0x7bs
        0x7cs
        0x7ds
        0x7es
        0x7fs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static append(Ljava/lang/StringBuffer;BI)V
    .locals 3

    .prologue
    const/16 v2, 0x39

    .line 254
    and-int/lit16 v1, p1, 0xff

    .line 255
    div-int v0, v1, p2

    rem-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x30

    .line 256
    if-le v0, v2, :cond_0

    .line 257
    add-int/lit8 v0, v0, -0x30

    add-int/lit8 v0, v0, -0xa

    add-int/lit8 v0, v0, 0x61

    .line 258
    :cond_0
    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 259
    rem-int v0, v1, p2

    add-int/lit8 v0, v0, 0x30

    .line 260
    if-le v0, v2, :cond_1

    .line 261
    add-int/lit8 v0, v0, -0x30

    add-int/lit8 v0, v0, -0xa

    add-int/lit8 v0, v0, 0x61

    .line 262
    :cond_1
    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 263
    return-void
.end method

.method public static append(Ljava/lang/StringBuffer;Ljava/lang/String;II)V
    .locals 2

    .prologue
    .line 234
    monitor-enter p0

    .line 236
    add-int v0, p2, p3

    .line 237
    :goto_0
    if-ge p2, v0, :cond_0

    .line 239
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 243
    :cond_0
    monitor-exit p0

    .line 244
    return-void

    .line 241
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 237
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static append2digits(Ljava/lang/StringBuffer;I)V
    .locals 1

    .prologue
    .line 269
    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    .line 271
    div-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 272
    rem-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 274
    :cond_0
    return-void
.end method

.method public static asciiToLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x7f

    .line 84
    const/4 v1, 0x0

    .line 85
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v2, v0

    .line 88
    :goto_0
    add-int/lit8 v0, v2, -0x1

    if-lez v2, :cond_4

    .line 90
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 91
    if-gt v2, v4, :cond_0

    .line 93
    sget-object v3, Lorg/mortbay/util/StringUtil;->lowercases:[C

    aget-char v3, v3, v2

    .line 94
    if-eq v2, v3, :cond_0

    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 97
    aput-char v3, v1, v0

    move-object v2, v1

    .line 103
    :goto_1
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    .line 105
    aget-char v0, v2, v1

    if-gt v0, v4, :cond_3

    .line 106
    sget-object v0, Lorg/mortbay/util/StringUtil;->lowercases:[C

    aget-char v3, v2, v1

    aget-char v0, v0, v3

    aput-char v0, v2, v1

    move v0, v1

    goto :goto_1

    :cond_0
    move v2, v0

    .line 101
    goto :goto_0

    .line 109
    :cond_1
    if-nez v2, :cond_2

    :goto_2
    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move-object v2, v1

    goto :goto_1
.end method

.method public static endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/16 v7, 0x7f

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 142
    if-nez p1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v0

    .line 145
    :cond_1
    if-nez p0, :cond_2

    move v0, v1

    .line 146
    goto :goto_0

    .line 148
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 149
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 151
    if-ge v3, v2, :cond_4

    move v0, v1

    .line 152
    goto :goto_0

    :cond_3
    move v2, v4

    move v3, v5

    .line 154
    :cond_4
    add-int/lit8 v4, v2, -0x1

    if-lez v2, :cond_0

    .line 156
    add-int/lit8 v5, v3, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 157
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 158
    if-eq v3, v2, :cond_3

    .line 160
    if-gt v3, v7, :cond_5

    .line 161
    sget-object v6, Lorg/mortbay/util/StringUtil;->lowercases:[C

    aget-char v3, v6, v3

    .line 162
    :cond_5
    if-gt v2, v7, :cond_6

    .line 163
    sget-object v6, Lorg/mortbay/util/StringUtil;->lowercases:[C

    aget-char v2, v6, v2

    .line 164
    :cond_6
    if-eq v3, v2, :cond_3

    move v0, v1

    .line 165
    goto :goto_0
.end method

.method public static equals(Ljava/lang/String;[CII)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 291
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, p3, :cond_1

    .line 296
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v0

    .line 293
    :goto_1
    if-ge v1, p3, :cond_2

    .line 294
    add-int v2, p2, v1

    aget-char v2, p1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_0

    .line 293
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 296
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static indexFrom(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 177
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 178
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 180
    :goto_1
    return v0

    .line 177
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static isUTF8(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 341
    const-string/jumbo v0, "UTF-8"

    if-eq p0, v0, :cond_0

    const-string/jumbo v0, "UTF-8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "UTF8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static nonNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 283
    if-nez p0, :cond_0

    .line 284
    const-string/jumbo p0, ""

    .line 285
    :cond_0
    return-object p0
.end method

.method public static printable(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 348
    if-nez p0, :cond_0

    .line 349
    const/4 v0, 0x0

    .line 357
    :goto_0
    return-object v0

    .line 350
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 351
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 353
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 354
    invoke-static {v2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 355
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 351
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 357
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 189
    const/4 v1, 0x0

    .line 190
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 191
    if-ne v0, v5, :cond_0

    .line 208
    :goto_0
    return-object p0

    .line 194
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 196
    monitor-enter v2

    .line 200
    :cond_1
    :try_start_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    .line 203
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 205
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 206
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v2

    goto :goto_0

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/16 v6, 0x7f

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 116
    if-nez p1, :cond_1

    move v1, v2

    .line 136
    :cond_0
    :goto_0
    return v1

    .line 119
    :cond_1
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_0

    move v0, v1

    .line 122
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 124
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 125
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 126
    if-eq v4, v3, :cond_4

    .line 128
    if-gt v4, v6, :cond_2

    .line 129
    sget-object v5, Lorg/mortbay/util/StringUtil;->lowercases:[C

    aget-char v4, v5, v4

    .line 130
    :cond_2
    if-gt v3, v6, :cond_3

    .line 131
    sget-object v5, Lorg/mortbay/util/StringUtil;->lowercases:[C

    aget-char v3, v5, v3

    .line 132
    :cond_3
    if-ne v4, v3, :cond_0

    .line 122
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v1, v2

    .line 136
    goto :goto_0
.end method

.method public static toString([BIILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    if-eqz p3, :cond_0

    invoke-static {p3}, Lorg/mortbay/util/StringUtil;->isUTF8(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/mortbay/util/StringUtil;->toUTF8String([BII)Ljava/lang/String;

    move-result-object v0

    .line 333
    :goto_0
    return-object v0

    .line 328
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 330
    :catch_0
    move-exception v0

    .line 332
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 333
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toUTF8String([BII)Ljava/lang/String;
    .locals 2

    .prologue
    .line 304
    const/16 v0, 0x20

    if-ge p2, v0, :cond_0

    .line 306
    :try_start_0
    new-instance v0, Lorg/mortbay/util/Utf8StringBuffer;

    invoke-direct {v0, p2}, Lorg/mortbay/util/Utf8StringBuffer;-><init>(I)V

    .line 307
    invoke-virtual {v0, p0, p1, p2}, Lorg/mortbay/util/Utf8StringBuffer;->append([BII)V

    .line 308
    invoke-virtual {v0}, Lorg/mortbay/util/Utf8StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    :goto_0
    return-object v0

    .line 311
    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "UTF-8"

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 313
    :catch_0
    move-exception v0

    .line 315
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 316
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    invoke-static {p0}, Lorg/mortbay/util/QuotedStringTokenizer;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
