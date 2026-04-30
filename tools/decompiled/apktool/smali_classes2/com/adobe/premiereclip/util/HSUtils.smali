.class public Lcom/adobe/premiereclip/util/HSUtils;
.super Ljava/lang/Object;
.source "HSUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final SORTABLE_IDENTIFIER_UTILITY_BASE_10:Z = false

.field private static final SORTABLE_IDENTIFIER_UTILITY_BASE_26:Z = false

.field private static final SORTABLE_IDENTIFIER_UTILITY_BASE_62:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/adobe/premiereclip/util/HSUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/adobe/premiereclip/util/HSUtils;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static appendCharsToString(Ljava/lang/String;CI)Ljava/lang/String;
    .locals 1

    .prologue
    .line 471
    .line 472
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, p2, :cond_0

    .line 474
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 476
    :cond_0
    return-object p0
.end method

.method static debug_verifySequentialElseLogMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 489
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    .line 490
    if-gtz v0, :cond_0

    if-lez v1, :cond_1

    .line 493
    :cond_0
    const-string/jumbo v0, "HSUtils"

    const-string/jumbo v1, "Output was not alphabetically between inputs!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_1
    return-void
.end method

.method static digitCharForValue(I)C
    .locals 3

    .prologue
    const/16 v2, 0x19

    .line 418
    const/16 v0, 0x30

    .line 420
    if-ltz p0, :cond_1

    const/16 v1, 0x9

    if-gt p0, v1, :cond_1

    .line 422
    add-int/lit8 v0, p0, 0x30

    .line 441
    :cond_0
    :goto_0
    int-to-char v0, v0

    return v0

    .line 426
    :cond_1
    add-int/lit8 v1, p0, -0xa

    .line 427
    if-ltz v1, :cond_2

    if-gt v1, v2, :cond_2

    .line 429
    add-int/lit8 v0, v1, 0x41

    goto :goto_0

    .line 433
    :cond_2
    add-int/lit8 v1, v1, -0x1a

    .line 434
    if-ltz v1, :cond_0

    if-gt v1, v2, :cond_0

    .line 436
    add-int/lit8 v0, v1, 0x61

    goto :goto_0
.end method

.method static firstTwoDigits(Ljava/lang/String;[C)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 481
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aput-char v0, p1, v1

    .line 482
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aput-char v0, p1, v2

    .line 483
    return-void
.end method

.method public static generateSequentialIdentifiers(I)Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v14, 0x5

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 215
    if-nez p0, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-object v0

    .line 223
    :cond_1
    if-ne p0, v2, :cond_2

    .line 225
    invoke-static {}, Lcom/adobe/premiereclip/util/HSUtils;->midPointIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 229
    :cond_2
    invoke-static {}, Lcom/adobe/premiereclip/util/HSUtils;->numDigitValues()I

    move-result v9

    .line 230
    add-int/lit8 v1, v9, -0x1

    mul-int/2addr v1, v9

    .line 233
    if-ge p0, v1, :cond_4

    .line 236
    new-array v4, v13, [C

    .line 237
    const/16 v1, 0x2e

    aput-char v1, v4, v5

    move v1, v5

    .line 239
    :goto_1
    if-ge v5, v9, :cond_0

    .line 241
    invoke-static {v5}, Lcom/adobe/premiereclip/util/HSUtils;->digitCharForValue(I)C

    move-result v3

    aput-char v3, v4, v2

    move v3, v1

    move v1, v2

    .line 242
    :goto_2
    if-ge v1, v9, :cond_3

    .line 244
    invoke-static {v1}, Lcom/adobe/premiereclip/util/HSUtils;->digitCharForValue(I)C

    move-result v6

    aput-char v6, v4, v12

    .line 245
    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v6

    .line 246
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    add-int/lit8 v3, v3, 0x1

    .line 248
    if-ge v3, p0, :cond_0

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 239
    :cond_3
    add-int/lit8 v5, v5, 0x1

    move v1, v3

    goto :goto_1

    .line 258
    :cond_4
    new-array v10, v14, [C

    .line 259
    const/16 v1, 0x2e

    aput-char v1, v10, v5

    move v8, v5

    move v1, v5

    .line 261
    :goto_3
    if-ge v8, v9, :cond_0

    .line 263
    invoke-static {v8}, Lcom/adobe/premiereclip/util/HSUtils;->digitCharForValue(I)C

    move-result v3

    aput-char v3, v10, v2

    move v7, v5

    .line 264
    :goto_4
    if-ge v7, v9, :cond_8

    .line 266
    invoke-static {v7}, Lcom/adobe/premiereclip/util/HSUtils;->digitCharForValue(I)C

    move-result v3

    aput-char v3, v10, v12

    move v6, v5

    .line 267
    :goto_5
    if-ge v6, v9, :cond_7

    .line 269
    invoke-static {v6}, Lcom/adobe/premiereclip/util/HSUtils;->digitCharForValue(I)C

    move-result v3

    aput-char v3, v10, v13

    move v4, v5

    .line 270
    :goto_6
    if-ge v4, v9, :cond_6

    .line 272
    const/4 v3, 0x4

    invoke-static {v4}, Lcom/adobe/premiereclip/util/HSUtils;->digitCharForValue(I)C

    move-result v11

    aput-char v11, v10, v3

    move v3, v1

    move v1, v2

    .line 273
    :goto_7
    if-ge v1, v9, :cond_5

    .line 275
    invoke-static {v1}, Lcom/adobe/premiereclip/util/HSUtils;->digitCharForValue(I)C

    move-result v11

    aput-char v11, v10, v14

    .line 276
    invoke-static {v10}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v11

    .line 277
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    add-int/lit8 v3, v3, 0x1

    .line 279
    if-ge v3, p0, :cond_0

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 270
    :cond_5
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v3

    goto :goto_6

    .line 267
    :cond_6
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_5

    .line 264
    :cond_7
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    goto :goto_4

    .line 261
    :cond_8
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    goto :goto_3
.end method

.method static greatestCommonPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 325
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v0, v1

    .line 326
    :goto_0
    if-ge v0, v2, :cond_1

    .line 327
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_0

    .line 328
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 331
    :goto_1
    return-object v0

    .line 326
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 331
    :cond_1
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static midPointIdentifier()Ljava/lang/String;
    .locals 2

    .prologue
    .line 460
    invoke-static {}, Lcom/adobe/premiereclip/util/HSUtils;->numDigitValues()I

    move-result v0

    .line 461
    div-int/lit8 v0, v0, 0x2

    .line 463
    invoke-static {v0}, Lcom/adobe/premiereclip/util/HSUtils;->digitCharForValue(I)C

    move-result v0

    .line 464
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 465
    const-string/jumbo v1, "."

    .line 466
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static numDigitValues()I
    .locals 1

    .prologue
    .line 453
    const/16 v0, 0x3e

    return v0
.end method

.method static simpleDecrementIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 336
    .line 337
    invoke-static {v4}, Lcom/adobe/premiereclip/util/HSUtils;->digitCharForValue(I)C

    move-result v0

    .line 342
    invoke-static {v5}, Lcom/adobe/premiereclip/util/HSUtils;->digitCharForValue(I)C

    move-result v1

    .line 344
    invoke-static {}, Lcom/adobe/premiereclip/util/HSUtils;->numDigitValues()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Lcom/adobe/premiereclip/util/HSUtils;->digitCharForValue(I)C

    move-result v2

    .line 346
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 350
    if-lt v3, v1, :cond_0

    .line 353
    invoke-static {v3}, Lcom/adobe/premiereclip/util/HSUtils;->valueForDigitChar(C)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/adobe/premiereclip/util/HSUtils;->digitCharForValue(I)C

    move-result v0

    .line 354
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 364
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 367
    return-object v0

    .line 359
    :cond_0
    new-array v1, v5, [C

    aput-char v0, v1, v4

    const/4 v0, 0x1

    aput-char v2, v1, v0

    .line 360
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static simpleIncrementIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 299
    .line 300
    invoke-static {}, Lcom/adobe/premiereclip/util/HSUtils;->numDigitValues()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/adobe/premiereclip/util/HSUtils;->digitCharForValue(I)C

    move-result v0

    .line 302
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 303
    if-ge v1, v0, :cond_0

    .line 306
    invoke-static {v1}, Lcom/adobe/premiereclip/util/HSUtils;->valueForDigitChar(C)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/adobe/premiereclip/util/HSUtils;->digitCharForValue(I)C

    move-result v0

    .line 307
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 309
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 320
    :goto_0
    return-object v0

    .line 317
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/adobe/premiereclip/util/HSUtils;->digitCharForValue(I)C

    move-result v0

    .line 318
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static valueAfter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    invoke-static {p0}, Lcom/adobe/premiereclip/util/HSUtils;->simpleIncrementIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueBefore(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    invoke-static {p0}, Lcom/adobe/premiereclip/util/HSUtils;->simpleDecrementIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueBetween(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 38
    if-nez p0, :cond_2

    .line 40
    if-nez p1, :cond_1

    .line 43
    invoke-static {}, Lcom/adobe/premiereclip/util/HSUtils;->midPointIdentifier()Ljava/lang/String;

    move-result-object p0

    .line 188
    :cond_0
    :goto_0
    return-object p0

    .line 47
    :cond_1
    invoke-static {p1}, Lcom/adobe/premiereclip/util/HSUtils;->simpleDecrementIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 52
    :cond_2
    if-nez p1, :cond_3

    .line 54
    invoke-static {p0}, Lcom/adobe/premiereclip/util/HSUtils;->simpleIncrementIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 59
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 63
    if-eqz v0, :cond_0

    .line 66
    if-lez v0, :cond_a

    .line 79
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 80
    add-int/lit8 v0, v0, 0x2

    .line 81
    invoke-static {v1}, Lcom/adobe/premiereclip/util/HSUtils;->digitCharForValue(I)C

    move-result v3

    invoke-static {p1, v3, v0}, Lcom/adobe/premiereclip/util/HSUtils;->appendCharsToString(Ljava/lang/String;CI)Ljava/lang/String;

    move-result-object v3

    .line 82
    invoke-static {v1}, Lcom/adobe/premiereclip/util/HSUtils;->digitCharForValue(I)C

    move-result v4

    invoke-static {p0, v4, v0}, Lcom/adobe/premiereclip/util/HSUtils;->appendCharsToString(Ljava/lang/String;CI)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {v3, v0}, Lcom/adobe/premiereclip/util/HSUtils;->greatestCommonPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 86
    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 88
    const-string/jumbo v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    new-array v5, v6, [C

    fill-array-data v5, :array_0

    .line 96
    new-array v6, v6, [C

    fill-array-data v6, :array_1

    .line 97
    invoke-static {v3, v5}, Lcom/adobe/premiereclip/util/HSUtils;->firstTwoDigits(Ljava/lang/String;[C)V

    .line 98
    aget-char v3, v5, v1

    aget-char v5, v5, v2

    .line 99
    invoke-static {v0, v6}, Lcom/adobe/premiereclip/util/HSUtils;->firstTwoDigits(Ljava/lang/String;[C)V

    .line 100
    aget-char v0, v6, v1

    aget-char v6, v6, v2

    .line 112
    invoke-static {v0}, Lcom/adobe/premiereclip/util/HSUtils;->valueForDigitChar(C)I

    move-result v0

    invoke-static {v3}, Lcom/adobe/premiereclip/util/HSUtils;->valueForDigitChar(C)I

    move-result v7

    sub-int/2addr v0, v7

    .line 114
    if-le v0, v2, :cond_4

    .line 120
    div-int/lit8 v0, v0, 0x2

    .line 121
    invoke-static {v3}, Lcom/adobe/premiereclip/util/HSUtils;->valueForDigitChar(C)I

    move-result v1

    .line 124
    add-int/2addr v0, v1

    .line 126
    invoke-static {v0}, Lcom/adobe/premiereclip/util/HSUtils;->digitCharForValue(I)C

    move-result v0

    .line 127
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {p1, v0, p0}, Lcom/adobe/premiereclip/util/HSUtils;->debug_verifySequentialElseLogMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v0

    .line 129
    goto :goto_0

    .line 137
    :cond_4
    invoke-static {v6}, Lcom/adobe/premiereclip/util/HSUtils;->valueForDigitChar(C)I

    move-result v0

    invoke-static {v5}, Lcom/adobe/premiereclip/util/HSUtils;->valueForDigitChar(C)I

    move-result v6

    sub-int/2addr v0, v6

    .line 140
    invoke-static {}, Lcom/adobe/premiereclip/util/HSUtils;->numDigitValues()I

    move-result v6

    add-int/2addr v0, v6

    .line 143
    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    .line 150
    invoke-static {}, Lcom/adobe/premiereclip/util/HSUtils;->numDigitValues()I

    move-result v6

    if-lt v0, v6, :cond_5

    .line 153
    invoke-static {}, Lcom/adobe/premiereclip/util/HSUtils;->numDigitValues()I

    move-result v1

    sub-int/2addr v0, v1

    move v1, v2

    .line 156
    :cond_5
    invoke-static {v5}, Lcom/adobe/premiereclip/util/HSUtils;->valueForDigitChar(C)I

    move-result v5

    add-int/2addr v0, v5

    .line 157
    invoke-static {}, Lcom/adobe/premiereclip/util/HSUtils;->numDigitValues()I

    move-result v5

    if-lt v0, v5, :cond_6

    .line 159
    invoke-static {}, Lcom/adobe/premiereclip/util/HSUtils;->numDigitValues()I

    move-result v5

    sub-int/2addr v0, v5

    .line 160
    add-int/lit8 v1, v1, 0x1

    .line 163
    :cond_6
    sget-boolean v5, Lcom/adobe/premiereclip/util/HSUtils;->$assertionsDisabled:Z

    if-nez v5, :cond_7

    if-eqz v1, :cond_7

    if-eq v1, v2, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 171
    :cond_7
    invoke-static {v3}, Lcom/adobe/premiereclip/util/HSUtils;->valueForDigitChar(C)I

    move-result v2

    add-int/2addr v1, v2

    .line 172
    invoke-static {v1}, Lcom/adobe/premiereclip/util/HSUtils;->digitCharForValue(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    if-eqz v0, :cond_9

    .line 177
    invoke-static {v0}, Lcom/adobe/premiereclip/util/HSUtils;->digitCharForValue(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    :goto_2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 184
    invoke-static {}, Lcom/adobe/premiereclip/util/HSUtils;->numDigitValues()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/adobe/premiereclip/util/HSUtils;->digitCharForValue(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    :cond_8
    invoke-static {p1, v0, p0}, Lcom/adobe/premiereclip/util/HSUtils;->debug_verifySequentialElseLogMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v0

    .line 188
    goto/16 :goto_0

    :cond_9
    move-object v0, v1

    goto :goto_2

    :cond_a
    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    goto/16 :goto_1

    .line 95
    nop

    :array_0
    .array-data 2
        0x0s
        0x0s
    .end array-data

    .line 96
    :array_1
    .array-data 2
        0x0s
        0x0s
    .end array-data
.end method

.method static valueForDigitChar(C)I
    .locals 2

    .prologue
    .line 372
    .line 382
    const/4 v0, 0x0

    .line 383
    const/16 v1, 0x30

    if-lt p0, v1, :cond_1

    const/16 v1, 0x39

    if-gt p0, v1, :cond_1

    .line 385
    add-int/lit8 v0, p0, -0x30

    .line 402
    :cond_0
    :goto_0
    return v0

    .line 389
    :cond_1
    const/16 v1, 0x41

    if-lt p0, v1, :cond_2

    const/16 v1, 0x5a

    if-gt p0, v1, :cond_2

    .line 391
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 395
    :cond_2
    const/16 v1, 0x61

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7a

    if-gt p0, v1, :cond_0

    .line 397
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0x24

    goto :goto_0
.end method
