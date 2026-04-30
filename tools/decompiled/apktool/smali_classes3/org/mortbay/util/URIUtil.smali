.class public Lorg/mortbay/util/URIUtil;
.super Ljava/lang/Object;
.source "URIUtil.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final HTTP:Ljava/lang/String; = "http"

.field public static final HTTPS:Ljava/lang/String; = "https"

.field public static final HTTPS_COLON:Ljava/lang/String; = "https:"

.field public static final HTTP_COLON:Ljava/lang/String; = "http:"

.field public static final SLASH:Ljava/lang/String; = "/"

.field public static final __CHARSET:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const-string/jumbo v0, "org.mortbay.util.URI.charset"

    const-string/jumbo v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/URIUtil;->__CHARSET:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x2f

    .line 314
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 316
    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_2

    .line 355
    :cond_1
    :goto_0
    return-object p0

    :cond_2
    move-object p0, p1

    .line 318
    goto :goto_0

    .line 320
    :cond_3
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 324
    if-gez v0, :cond_4

    .line 325
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 326
    :cond_4
    if-nez v0, :cond_5

    .line 327
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 328
    :cond_5
    if-gez v0, :cond_6

    .line 329
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 331
    :cond_6
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 332
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 334
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_8

    .line 336
    const-string/jumbo v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 338
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 339
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0, p1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 355
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 342
    :cond_7
    invoke-virtual {v1, v0, p1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 346
    :cond_8
    const-string/jumbo v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 347
    invoke-virtual {v1, v0, p1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 350
    :cond_9
    invoke-virtual {v1, v0, v4}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 351
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0, p1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static canonicalPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v11, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/16 v10, 0x2f

    const/16 v9, 0x2e

    .line 395
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 518
    :cond_0
    :goto_0
    return-object p0

    .line 398
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 399
    invoke-virtual {p0, v10, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v6

    .line 402
    :goto_1
    if-lez v1, :cond_3

    .line 404
    sub-int v0, v1, v6

    packed-switch v0, :pswitch_data_0

    .line 417
    :cond_2
    :goto_2
    add-int/lit8 v0, v6, -0x1

    invoke-virtual {p0, v10, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    move v1, v6

    move v6, v0

    goto :goto_1

    .line 407
    :pswitch_0
    add-int/lit8 v0, v6, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_2

    .line 421
    :cond_3
    if-ge v6, v1, :cond_0

    .line 424
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move v3, v4

    move v2, v5

    move v7, v5

    move v0, v1

    move v1, v6

    .line 429
    :goto_3
    if-lez v0, :cond_f

    .line 431
    sub-int v6, v0, v1

    packed-switch v6, :pswitch_data_1

    .line 488
    if-lez v3, :cond_16

    add-int/lit8 v6, v3, -0x1

    if-nez v6, :cond_15

    .line 490
    if-ltz v1, :cond_e

    move v3, v1

    .line 491
    :goto_4
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-ne v2, v7, :cond_4

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_4

    .line 492
    add-int/lit8 v3, v3, 0x1

    .line 497
    :cond_4
    :goto_5
    if-gtz v6, :cond_14

    if-ltz v3, :cond_14

    if-lt v2, v3, :cond_14

    .line 499
    invoke-virtual {v8, v3, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 501
    if-lez v6, :cond_13

    move v2, v5

    .line 505
    :goto_6
    add-int/lit8 v3, v1, -0x1

    .line 506
    :goto_7
    if-ltz v3, :cond_12

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    if-eq v7, v10, :cond_12

    .line 507
    add-int/lit8 v3, v3, -0x1

    goto :goto_7

    .line 411
    :pswitch_1
    add-int/lit8 v0, v6, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_2

    add-int/lit8 v0, v6, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v9, :cond_3

    goto :goto_2

    .line 434
    :pswitch_2
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    if-eq v6, v9, :cond_6

    .line 436
    if-lez v3, :cond_16

    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_16

    .line 438
    if-ltz v1, :cond_5

    move v6, v1

    .line 439
    :goto_8
    if-lez v6, :cond_19

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-ne v2, v7, :cond_19

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_19

    .line 440
    add-int/lit8 v6, v6, 0x1

    move v12, v3

    move v3, v6

    move v6, v12

    goto :goto_5

    :cond_5
    move v6, v4

    .line 438
    goto :goto_8

    .line 445
    :cond_6
    if-gez v1, :cond_7

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-le v6, v11, :cond_7

    const/4 v6, 0x1

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    if-ne v6, v10, :cond_7

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    if-ne v6, v10, :cond_7

    move v6, v3

    move v3, v7

    .line 446
    goto :goto_5

    .line 448
    :cond_7
    if-gez v2, :cond_8

    move v2, v0

    .line 451
    :cond_8
    if-ltz v1, :cond_9

    if-nez v1, :cond_a

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    if-ne v6, v10, :cond_a

    .line 453
    :cond_9
    add-int/lit8 v6, v1, 0x1

    .line 454
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-ge v2, v7, :cond_19

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_19

    .line 455
    add-int/lit8 v2, v2, 0x1

    move v12, v3

    move v3, v6

    move v6, v12

    goto/16 :goto_5

    .line 458
    :cond_a
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-ne v0, v6, :cond_1b

    .line 459
    add-int/lit8 v0, v1, 0x1

    .line 461
    :goto_9
    add-int/lit8 v6, v1, -0x1

    .line 462
    :goto_a
    if-ltz v6, :cond_1a

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    if-eq v7, v10, :cond_1a

    .line 463
    add-int/lit8 v6, v6, -0x1

    goto :goto_a

    .line 467
    :pswitch_3
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_b

    add-int/lit8 v6, v1, 0x2

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    if-eq v6, v9, :cond_d

    .line 469
    :cond_b
    if-lez v3, :cond_16

    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_16

    .line 470
    if-ltz v1, :cond_c

    move v6, v1

    .line 471
    :goto_b
    if-lez v6, :cond_19

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-ne v2, v7, :cond_19

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_19

    .line 472
    add-int/lit8 v6, v6, 0x1

    move v12, v3

    move v3, v6

    move v6, v12

    goto/16 :goto_5

    :cond_c
    move v6, v4

    .line 470
    goto :goto_b

    .line 478
    :cond_d
    if-gez v2, :cond_18

    .line 481
    :goto_c
    add-int/lit8 v3, v3, 0x1

    .line 482
    add-int/lit8 v2, v1, -0x1

    .line 483
    :goto_d
    if-ltz v2, :cond_17

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    if-eq v6, v10, :cond_17

    .line 484
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    :cond_e
    move v3, v4

    .line 490
    goto/16 :goto_4

    .line 511
    :cond_f
    if-lez v3, :cond_10

    .line 512
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 515
    :cond_10
    if-ltz v2, :cond_11

    .line 516
    invoke-virtual {v8, v7, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 518
    :cond_11
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_12
    move v7, v2

    move v2, v0

    move v0, v1

    move v1, v3

    move v3, v6

    goto/16 :goto_3

    :cond_13
    move v0, v5

    move v2, v5

    goto/16 :goto_6

    :cond_14
    move v0, v2

    move v2, v3

    goto/16 :goto_6

    :cond_15
    move v3, v7

    goto/16 :goto_5

    :cond_16
    move v6, v3

    move v3, v7

    goto/16 :goto_5

    :cond_17
    move v7, v1

    move v12, v0

    move v0, v1

    move v1, v2

    move v2, v12

    goto/16 :goto_3

    :cond_18
    move v0, v2

    goto :goto_c

    :cond_19
    move v12, v3

    move v3, v6

    move v6, v12

    goto/16 :goto_5

    :cond_1a
    move v7, v0

    move v0, v1

    move v1, v6

    goto/16 :goto_3

    :cond_1b
    move v0, v1

    goto/16 :goto_9

    .line 404
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 431
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static compactPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    .line 529
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 582
    :cond_0
    :goto_0
    :sswitch_0
    return-object p0

    .line 533
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    move v2, v1

    move v0, v1

    .line 537
    :goto_1
    if-ge v2, v4, :cond_3

    .line 539
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 540
    sparse-switch v3, :sswitch_data_0

    move v0, v1

    .line 552
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 553
    goto :goto_1

    .line 545
    :sswitch_1
    add-int/lit8 v0, v0, 0x1

    .line 546
    if-ne v0, v5, :cond_2

    .line 555
    :cond_3
    if-lt v0, v5, :cond_0

    .line 558
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 559
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 560
    invoke-virtual {v5, v6, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move v3, v0

    .line 563
    :goto_2
    if-ge v2, v4, :cond_5

    .line 565
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 566
    sparse-switch v7, :sswitch_data_1

    .line 577
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    .line 579
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    .line 580
    goto :goto_2

    .line 569
    :sswitch_2
    sub-int v0, v4, v2

    invoke-virtual {v5, v6, v2, v0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 582
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 572
    :sswitch_3
    add-int/lit8 v0, v3, 0x1

    if-nez v3, :cond_4

    .line 573
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 540
    :sswitch_data_0
    .sparse-switch
        0x2f -> :sswitch_1
        0x3f -> :sswitch_0
    .end sparse-switch

    .line 566
    :sswitch_data_1
    .sparse-switch
        0x2f -> :sswitch_3
        0x3f -> :sswitch_2
    .end sparse-switch
.end method

.method public static decodePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 192
    if-nez p0, :cond_1

    move-object p0, v0

    .line 260
    :cond_0
    :goto_0
    return-object p0

    .line 199
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    move v2, v6

    move v4, v6

    move v5, v6

    move-object v1, v0

    .line 201
    :goto_1
    if-ge v2, v7, :cond_5

    .line 203
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 205
    const/16 v3, 0x25

    if-ne v8, v3, :cond_3

    add-int/lit8 v3, v2, 0x2

    if-ge v3, v7, :cond_3

    .line 207
    if-nez v1, :cond_2

    .line 209
    new-array v1, v7, [C

    .line 210
    new-array v0, v7, [B

    .line 211
    invoke-virtual {p0, v6, v2, v1, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 213
    :cond_2
    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v8, v2, 0x1

    const/4 v9, 0x2

    const/16 v10, 0x10

    invoke-static {p0, v8, v9, v10}, Lorg/mortbay/util/TypeUtil;->parseInt(Ljava/lang/String;III)I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v4

    .line 214
    add-int/lit8 v2, v2, 0x2

    move-object v4, v1

    move v1, v3

    move v3, v5

    move-object v11, v0

    move v0, v2

    move-object v2, v11

    .line 201
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v5, v3

    move v11, v1

    move-object v1, v4

    move v4, v11

    move v12, v0

    move-object v0, v2

    move v2, v12

    goto :goto_1

    .line 217
    :cond_3
    if-nez v0, :cond_4

    .line 219
    add-int/lit8 v3, v5, 0x1

    move v11, v2

    move-object v2, v0

    move v0, v11

    move v12, v4

    move-object v4, v1

    move v1, v12

    .line 220
    goto :goto_2

    .line 223
    :cond_4
    if-lez v4, :cond_7

    .line 228
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const/4 v9, 0x0

    sget-object v10, Lorg/mortbay/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-direct {v3, v0, v9, v4, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v6, v4, v1, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 235
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v5, v3

    move v3, v6

    .line 239
    :goto_4
    add-int/lit8 v4, v5, 0x1

    aput-char v8, v1, v5

    move v11, v2

    move-object v2, v0

    move v0, v11

    move v12, v3

    move v3, v4

    move-object v4, v1

    move v1, v12

    goto :goto_2

    .line 230
    :catch_0
    move-exception v3

    .line 232
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v6, v4}, Ljava/lang/String;-><init>([BII)V

    goto :goto_3

    .line 242
    :cond_5
    if-eqz v1, :cond_0

    .line 245
    if-lez v4, :cond_6

    .line 250
    :try_start_1
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v7, Lorg/mortbay/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-direct {v2, v0, v3, v4, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v2

    .line 256
    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v6, v2, v1, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 257
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v5, v0

    .line 260
    :cond_6
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v6, v5}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_0

    .line 252
    :catch_1
    move-exception v2

    .line 254
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v6, v4}, Ljava/lang/String;-><init>([BII)V

    move-object v0, v2

    goto :goto_5

    :cond_7
    move v3, v4

    goto :goto_4
.end method

.method public static decodePath([BII)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 270
    const/4 v0, 0x0

    move v1, v4

    move v5, v4

    .line 273
    :goto_0
    if-ge v1, p2, :cond_2

    .line 275
    add-int v2, v1, p1

    aget-byte v2, p0, v2

    .line 277
    const/16 v3, 0x25

    if-ne v2, v3, :cond_0

    add-int/lit8 v3, v1, 0x2

    if-ge v3, p2, :cond_0

    .line 279
    add-int v2, v1, p1

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x2

    const/16 v6, 0x10

    invoke-static {p0, v2, v3, v6}, Lorg/mortbay/util/TypeUtil;->parseInt([BIII)I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 280
    add-int/lit8 v1, v1, 0x2

    move v3, v2

    .line 288
    :goto_1
    if-nez v0, :cond_1

    .line 290
    new-array v0, p2, [B

    move v2, v4

    .line 291
    :goto_2
    if-ge v2, v5, :cond_1

    .line 292
    add-int v6, v2, p1

    aget-byte v6, p0, v6

    aput-byte v6, v0, v2

    .line 291
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 282
    :cond_0
    if-nez v0, :cond_4

    .line 284
    add-int/lit8 v2, v5, 0x1

    move v7, v1

    move v1, v2

    move-object v2, v0

    move v0, v7

    .line 273
    :goto_3
    add-int/lit8 v0, v0, 0x1

    move v5, v1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    .line 295
    :cond_1
    add-int/lit8 v2, v5, 0x1

    aput-byte v3, v0, v5

    move v7, v1

    move v1, v2

    move-object v2, v0

    move v0, v7

    goto :goto_3

    .line 298
    :cond_2
    if-nez v0, :cond_3

    .line 299
    sget-object v0, Lorg/mortbay/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Lorg/mortbay/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    :goto_4
    return-object v0

    :cond_3
    sget-object v1, Lorg/mortbay/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-static {v0, v4, v5, v1}, Lorg/mortbay/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_4
    move v3, v2

    goto :goto_1
.end method

.method public static encodePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-object p0

    .line 59
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lorg/mortbay/util/URIUtil;->encodePath(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static encodePath(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 71
    if-nez p0, :cond_1

    move v0, v1

    .line 74
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 77
    sparse-switch v2, :sswitch_data_0

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :sswitch_0
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 92
    :cond_0
    if-nez p0, :cond_1

    .line 93
    const/4 p0, 0x0

    .line 137
    :goto_1
    return-object p0

    .line 96
    :cond_1
    monitor-enter p0

    .line 98
    :goto_2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 100
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 101
    sparse-switch v0, :sswitch_data_1

    .line 131
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 98
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 104
    :sswitch_1
    const-string/jumbo v0, "%25"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 107
    :sswitch_2
    :try_start_1
    const-string/jumbo v0, "%3F"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 110
    :sswitch_3
    const-string/jumbo v0, "%3B"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 113
    :sswitch_4
    const-string/jumbo v0, "%23"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 116
    :sswitch_5
    const-string/jumbo v0, "%22"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 119
    :sswitch_6
    const-string/jumbo v0, "%27"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 122
    :sswitch_7
    const-string/jumbo v0, "%3C"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 125
    :sswitch_8
    const-string/jumbo v0, "%3E"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 128
    :sswitch_9
    const-string/jumbo v0, "%20"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 135
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 77
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x22 -> :sswitch_0
        0x23 -> :sswitch_0
        0x25 -> :sswitch_0
        0x27 -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
    .end sparse-switch

    .line 101
    :sswitch_data_1
    .sparse-switch
        0x20 -> :sswitch_9
        0x22 -> :sswitch_5
        0x23 -> :sswitch_4
        0x25 -> :sswitch_1
        0x27 -> :sswitch_6
        0x3b -> :sswitch_3
        0x3c -> :sswitch_7
        0x3e -> :sswitch_8
        0x3f -> :sswitch_2
    .end sparse-switch
.end method

.method public static encodeString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x25

    .line 151
    if-nez p0, :cond_3

    move v0, v1

    .line 154
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 156
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 157
    if-eq v2, v3, :cond_0

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_2

    .line 159
    :cond_0
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 163
    :cond_1
    if-nez p0, :cond_3

    .line 164
    const/4 p0, 0x0

    .line 182
    :goto_1
    return-object p0

    .line 154
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_3
    monitor-enter p0

    .line 169
    :goto_2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 171
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 172
    if-eq v0, v3, :cond_4

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_5

    .line 174
    :cond_4
    const/16 v2, 0x25

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 175
    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/16 v2, 0x10

    invoke-static {p0, v0, v2}, Lorg/mortbay/util/StringUtil;->append(Ljava/lang/StringBuffer;BI)V

    .line 169
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 178
    :cond_5
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public static hasScheme(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 592
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 594
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 595
    const/16 v3, 0x3a

    if-ne v2, v3, :cond_1

    .line 596
    const/4 v1, 0x1

    .line 606
    :cond_0
    return v1

    .line 597
    :cond_1
    const/16 v3, 0x61

    if-lt v2, v3, :cond_2

    const/16 v3, 0x7a

    if-le v2, v3, :cond_5

    :cond_2
    const/16 v3, 0x41

    if-lt v2, v3, :cond_3

    const/16 v3, 0x5a

    if-le v2, v3, :cond_5

    :cond_3
    if-lez v0, :cond_0

    const/16 v3, 0x30

    if-lt v2, v3, :cond_4

    const/16 v3, 0x39

    if-le v2, v3, :cond_5

    :cond_4
    const/16 v3, 0x2e

    if-eq v2, v3, :cond_5

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_5

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_0

    .line 592
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static parentPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 364
    if-eqz p0, :cond_0

    const-string/jumbo v1, "/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-object v0

    .line 366
    :cond_1
    const/16 v1, 0x2f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .line 367
    if-ltz v1, :cond_0

    .line 368
    const/4 v0, 0x0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static stripPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 378
    if-nez p0, :cond_1

    .line 379
    const/4 p0, 0x0

    .line 383
    :cond_0
    :goto_0
    return-object p0

    .line 380
    :cond_1
    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 381
    if-ltz v0, :cond_0

    .line 383
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
