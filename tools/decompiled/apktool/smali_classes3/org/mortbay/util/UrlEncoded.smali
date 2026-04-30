.class public Lorg/mortbay/util/UrlEncoded;
.super Lorg/mortbay/util/MultiMap;
.source "UrlEncoded.java"


# static fields
.field public static final ENCODING:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const-string/jumbo v0, "org.mortbay.util.UrlEncoding.charset"

    const-string/jumbo v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/mortbay/util/MultiMap;-><init>(I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/mortbay/util/MultiMap;-><init>(I)V

    .line 63
    sget-object v0, Lorg/mortbay/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/mortbay/util/UrlEncoded;->decode(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/mortbay/util/MultiMap;-><init>(I)V

    .line 70
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/util/UrlEncoded;->decode(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/mortbay/util/UrlEncoded;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/mortbay/util/MultiMap;-><init>(Ljava/util/Map;)V

    .line 51
    return-void
.end method

.method public static decode88591To(Ljava/io/InputStream;Lorg/mortbay/util/MultiMap;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 328
    monitor-enter p1

    .line 330
    :try_start_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move v1, v0

    move-object v2, v3

    .line 338
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_6

    .line 340
    int-to-char v5, v0

    sparse-switch v5, :sswitch_data_0

    .line 379
    int-to-char v0, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 382
    :cond_1
    :goto_1
    if-ltz p2, :cond_0

    add-int/lit8 v0, v1, 0x1

    if-le v0, p2, :cond_a

    .line 383
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Form too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 343
    :sswitch_0
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    .line 344
    :goto_2
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 345
    if-eqz v2, :cond_4

    .line 347
    invoke-virtual {p1, v2, v0}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_3
    move-object v2, v3

    .line 355
    goto :goto_1

    .line 343
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 349
    :cond_4
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 351
    const-string/jumbo v2, ""

    invoke-virtual {p1, v0, v2}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 358
    :sswitch_1
    if-eqz v2, :cond_5

    .line 360
    int-to-char v0, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 363
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 364
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_1

    .line 368
    :sswitch_2
    const/16 v0, 0x20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 372
    :sswitch_3
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 373
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 374
    if-ltz v0, :cond_1

    if-ltz v5, :cond_1

    .line 376
    int-to-byte v0, v0

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    int-to-byte v5, v5

    invoke-static {v5}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v5

    add-int/2addr v0, v5

    int-to-char v0, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 386
    :cond_6
    if-eqz v2, :cond_9

    .line 388
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, ""

    .line 389
    :goto_4
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 390
    invoke-virtual {p1, v2, v0}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 396
    :cond_7
    :goto_5
    monitor-exit p1

    .line 397
    return-void

    .line 388
    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 392
    :cond_9
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 394
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :cond_a
    move v1, v0

    goto/16 :goto_0

    .line 340
    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_3
        0x26 -> :sswitch_0
        0x2b -> :sswitch_2
        0x3d -> :sswitch_1
    .end sparse-switch
.end method

.method public static decodeString(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 610
    if-eqz p3, :cond_0

    invoke-static {p3}, Lorg/mortbay/util/StringUtil;->isUTF8(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 612
    :cond_0
    const/4 v0, 0x0

    .line 614
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_c

    .line 616
    add-int v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 617
    if-ltz v2, :cond_1

    const/16 v3, 0xff

    if-le v2, v3, :cond_3

    .line 619
    :cond_1
    if-nez v0, :cond_2

    .line 621
    new-instance v0, Lorg/mortbay/util/Utf8StringBuffer;

    invoke-direct {v0, p2}, Lorg/mortbay/util/Utf8StringBuffer;-><init>(I)V

    .line 622
    invoke-virtual {v0}, Lorg/mortbay/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    add-int v3, p1, v1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, p1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v8, v1

    move-object v1, v0

    move v0, v8

    .line 614
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v8, v0

    move-object v0, v1

    move v1, v8

    goto :goto_0

    .line 625
    :cond_2
    invoke-virtual {v0}, Lorg/mortbay/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v8, v1

    move-object v1, v0

    move v0, v8

    goto :goto_1

    .line 627
    :cond_3
    const/16 v3, 0x2b

    if-ne v2, v3, :cond_5

    .line 629
    if-nez v0, :cond_4

    .line 631
    new-instance v0, Lorg/mortbay/util/Utf8StringBuffer;

    invoke-direct {v0, p2}, Lorg/mortbay/util/Utf8StringBuffer;-><init>(I)V

    .line 632
    invoke-virtual {v0}, Lorg/mortbay/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    add-int v3, p1, v1

    invoke-virtual {p0, p1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 635
    :cond_4
    invoke-virtual {v0}, Lorg/mortbay/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v8, v1

    move-object v1, v0

    move v0, v8

    goto :goto_1

    .line 637
    :cond_5
    const/16 v3, 0x25

    if-ne v2, v3, :cond_a

    add-int/lit8 v3, v1, 0x2

    if-ge v3, p2, :cond_a

    .line 639
    if-nez v0, :cond_23

    .line 641
    new-instance v0, Lorg/mortbay/util/Utf8StringBuffer;

    invoke-direct {v0, p2}, Lorg/mortbay/util/Utf8StringBuffer;-><init>(I)V

    .line 642
    invoke-virtual {v0}, Lorg/mortbay/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v3

    add-int v4, p1, v1

    invoke-virtual {p0, p1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v3, v2

    move-object v2, v0

    move v0, v1

    .line 645
    :cond_6
    :goto_2
    const/16 v1, 0x25

    if-ne v3, v1, :cond_9

    add-int/lit8 v1, v0, 0x2

    if-ge v1, p2, :cond_9

    .line 649
    add-int v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x2

    const/16 v5, 0x10

    :try_start_0
    invoke-static {p0, v1, v4, v5}, Lorg/mortbay/util/TypeUtil;->parseInt(Ljava/lang/String;III)I

    move-result v1

    int-to-byte v1, v1

    .line 650
    invoke-virtual {v2, v1}, Lorg/mortbay/util/Utf8StringBuffer;->append(B)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    add-int/lit8 v0, v0, 0x3

    .line 660
    :cond_7
    if-ge v0, p2, :cond_6

    .line 661
    add-int v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v3, v1

    goto :goto_2

    .line 653
    :catch_0
    move-exception v1

    .line 655
    invoke-virtual {v2}, Lorg/mortbay/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v4, 0x25

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 656
    :goto_3
    add-int/lit8 v0, v0, 0x1

    add-int v1, v0, p1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x25

    if-eq v1, v4, :cond_7

    .line 657
    invoke-virtual {v2}, Lorg/mortbay/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v4

    const/16 v5, 0x2b

    if-ne v1, v5, :cond_8

    const/16 v1, 0x20

    :cond_8
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 663
    :cond_9
    add-int/lit8 v0, v0, -0x1

    move-object v1, v2

    goto/16 :goto_1

    .line 665
    :cond_a
    if-eqz v0, :cond_b

    .line 666
    invoke-virtual {v0}, Lorg/mortbay/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_b
    move v8, v1

    move-object v1, v0

    move v0, v8

    goto/16 :goto_1

    .line 669
    :cond_c
    if-nez v0, :cond_f

    .line 671
    if-nez p1, :cond_e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, p2, :cond_e

    .line 772
    :cond_d
    :goto_4
    return-object p0

    .line 673
    :cond_e
    add-int v0, p1, p2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    .line 676
    :cond_f
    invoke-virtual {v0}, Lorg/mortbay/util/Utf8StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    .line 680
    :cond_10
    const/4 v1, 0x0

    .line 684
    const/4 v0, 0x0

    :goto_5
    if-ge v0, p2, :cond_1f

    .line 686
    add-int v2, p1, v0

    :try_start_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 687
    if-ltz v3, :cond_11

    const/16 v2, 0xff

    if-le v3, v2, :cond_14

    .line 689
    :cond_11
    if-nez v1, :cond_13

    .line 691
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 692
    add-int v2, p1, v0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 684
    :cond_12
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 695
    :cond_13
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    .line 774
    :catch_1
    move-exception v0

    .line 776
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 697
    :cond_14
    const/16 v2, 0x2b

    if-ne v3, v2, :cond_16

    .line 699
    if-nez v1, :cond_15

    .line 701
    :try_start_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 702
    add-int v2, p1, v0

    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 705
    :cond_15
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 707
    :cond_16
    const/16 v2, 0x25

    if-ne v3, v2, :cond_1e

    add-int/lit8 v2, v0, 0x2

    if-ge v2, p2, :cond_1e

    .line 709
    if-nez v1, :cond_17

    .line 711
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 712
    add-int v2, p1, v0

    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 715
    :cond_17
    new-array v5, p2, [B
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 716
    const/4 v2, 0x0

    move v4, v3

    move v8, v2

    move v2, v0

    move v0, v8

    .line 717
    :goto_7
    if-ltz v4, :cond_22

    const/16 v3, 0xff

    if-gt v4, v3, :cond_22

    .line 719
    const/16 v3, 0x25

    if-ne v4, v3, :cond_1b

    .line 721
    add-int/lit8 v3, v2, 0x2

    if-ge v3, p2, :cond_1a

    .line 725
    add-int/lit8 v3, v0, 0x1

    add-int v4, p1, v2

    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x2

    const/16 v7, 0x10

    :try_start_3
    invoke-static {p0, v4, v6, v7}, Lorg/mortbay/util/TypeUtil;->parseInt(Ljava/lang/String;III)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v5, v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1

    .line 726
    add-int/lit8 v2, v2, 0x3

    move v0, v3

    .line 752
    :cond_18
    :goto_8
    if-lt v2, p2, :cond_1d

    move v8, v0

    move v0, v2

    move v2, v8

    .line 757
    :goto_9
    add-int/lit8 v0, v0, -0x1

    .line 758
    :try_start_4
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v5, v4, v2, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 728
    :catch_2
    move-exception v0

    .line 730
    add-int/lit8 v0, v3, -0x1

    const/16 v4, 0x25

    aput-byte v4, v5, v0

    move v0, v3

    .line 731
    :goto_a
    add-int/lit8 v2, v2, 0x1

    add-int v3, v2, p1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x25

    if-eq v3, v4, :cond_18

    .line 732
    add-int/lit8 v4, v0, 0x1

    const/16 v6, 0x2b

    if-ne v3, v6, :cond_19

    const/16 v3, 0x20

    :cond_19
    int-to-byte v3, v3

    aput-byte v3, v5, v0

    move v0, v4

    goto :goto_a

    .line 737
    :cond_1a
    add-int/lit8 v3, v0, 0x1

    const/16 v4, 0x25

    aput-byte v4, v5, v0

    .line 738
    add-int/lit8 v2, v2, 0x1

    move v0, v3

    goto :goto_8

    .line 741
    :cond_1b
    const/16 v3, 0x2b

    if-ne v4, v3, :cond_1c

    .line 743
    add-int/lit8 v3, v0, 0x1

    const/16 v4, 0x20

    aput-byte v4, v5, v0

    .line 744
    add-int/lit8 v2, v2, 0x1

    move v0, v3

    goto :goto_8

    .line 748
    :cond_1c
    add-int/lit8 v3, v0, 0x1

    int-to-byte v4, v4

    aput-byte v4, v5, v0

    .line 749
    add-int/lit8 v2, v2, 0x1

    move v0, v3

    goto :goto_8

    .line 754
    :cond_1d
    add-int v3, p1, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v4, v3

    goto :goto_7

    .line 761
    :cond_1e
    if-eqz v1, :cond_12

    .line 762
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_6

    .line 765
    :cond_1f
    if-nez v1, :cond_21

    .line 767
    if-nez p1, :cond_20

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, p2, :cond_d

    .line 769
    :cond_20
    add-int v0, p1, p2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    .line 772
    :cond_21
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object p0

    goto/16 :goto_4

    :cond_22
    move v8, v0

    move v0, v2

    move v2, v8

    goto :goto_9

    :cond_23
    move v3, v2

    move-object v2, v0

    move v0, v1

    goto/16 :goto_2
.end method

.method public static decodeTo(Ljava/io/InputStream;Lorg/mortbay/util/MultiMap;Ljava/lang/String;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 502
    if-eqz p2, :cond_0

    const-string/jumbo v0, "UTF-8"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 504
    :cond_0
    invoke-static {p0, p1, p3}, Lorg/mortbay/util/UrlEncoded;->decodeUtf8To(Ljava/io/InputStream;Lorg/mortbay/util/MultiMap;I)V

    .line 601
    :goto_0
    return-void

    .line 508
    :cond_1
    sget-object v0, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 510
    invoke-static {p0, p1, p3}, Lorg/mortbay/util/UrlEncoded;->decode88591To(Ljava/io/InputStream;Lorg/mortbay/util/MultiMap;I)V

    goto :goto_0

    .line 514
    :cond_2
    const-string/jumbo v0, "UTF-16"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 516
    invoke-static {p0, p1, p3}, Lorg/mortbay/util/UrlEncoded;->decodeUtf16To(Ljava/io/InputStream;Lorg/mortbay/util/MultiMap;I)V

    goto :goto_0

    .line 521
    :cond_3
    monitor-enter p1

    .line 531
    :try_start_0
    new-instance v9, Lorg/mortbay/util/ByteArrayOutputStream2;

    invoke-direct {v9}, Lorg/mortbay/util/ByteArrayOutputStream2;-><init>()V

    move v1, v2

    move v3, v2

    move v4, v2

    move-object v5, v6

    .line 535
    :goto_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-lez v0, :cond_b

    .line 537
    int-to-char v10, v0

    sparse-switch v10, :sswitch_data_0

    .line 571
    if-ne v3, v7, :cond_9

    .line 573
    int-to-byte v0, v0

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v4

    move v3, v8

    .line 586
    :goto_2
    add-int/lit8 v0, v1, 0x1

    .line 587
    if-ltz p3, :cond_f

    if-le v0, p3, :cond_f

    .line 588
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Form too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 600
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 540
    :sswitch_0
    :try_start_1
    invoke-virtual {v9}, Lorg/mortbay/util/ByteArrayOutputStream2;->size()I

    move-result v0

    .line 541
    if-nez v0, :cond_5

    const-string/jumbo v0, ""

    .line 542
    :goto_3
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lorg/mortbay/util/ByteArrayOutputStream2;->setCount(I)V

    .line 543
    if-eqz v5, :cond_6

    .line 545
    invoke-virtual {p1, v5, v0}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    :goto_4
    move-object v5, v6

    .line 553
    goto :goto_2

    .line 541
    :cond_5
    invoke-virtual {v9, p2}, Lorg/mortbay/util/ByteArrayOutputStream2;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 547
    :cond_6
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 549
    const-string/jumbo v5, ""

    invoke-virtual {p1, v0, v5}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 555
    :sswitch_1
    if-eqz v5, :cond_7

    .line 557
    invoke-virtual {v9, v0}, Lorg/mortbay/util/ByteArrayOutputStream2;->write(I)V

    goto :goto_2

    .line 560
    :cond_7
    invoke-virtual {v9}, Lorg/mortbay/util/ByteArrayOutputStream2;->size()I

    move-result v0

    .line 561
    if-nez v0, :cond_8

    const-string/jumbo v0, ""

    .line 562
    :goto_5
    const/4 v5, 0x0

    invoke-virtual {v9, v5}, Lorg/mortbay/util/ByteArrayOutputStream2;->setCount(I)V

    move-object v5, v0

    .line 563
    goto :goto_2

    .line 561
    :cond_8
    invoke-virtual {v9, p2}, Lorg/mortbay/util/ByteArrayOutputStream2;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 565
    :sswitch_2
    const/16 v0, 0x20

    invoke-virtual {v9, v0}, Lorg/mortbay/util/ByteArrayOutputStream2;->write(I)V

    goto :goto_2

    :sswitch_3
    move v3, v7

    .line 569
    goto :goto_2

    .line 576
    :cond_9
    if-ne v3, v8, :cond_a

    .line 578
    shl-int/lit8 v3, v4, 0x4

    int-to-byte v0, v0

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {v9, v0}, Lorg/mortbay/util/ByteArrayOutputStream2;->write(I)V

    move v3, v2

    .line 579
    goto :goto_2

    .line 582
    :cond_a
    invoke-virtual {v9, v0}, Lorg/mortbay/util/ByteArrayOutputStream2;->write(I)V

    goto :goto_2

    .line 591
    :cond_b
    invoke-virtual {v9}, Lorg/mortbay/util/ByteArrayOutputStream2;->size()I

    move-result v0

    .line 592
    if-eqz v5, :cond_e

    .line 594
    if-nez v0, :cond_d

    const-string/jumbo v0, ""

    .line 595
    :goto_6
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lorg/mortbay/util/ByteArrayOutputStream2;->setCount(I)V

    .line 596
    invoke-virtual {p1, v5, v0}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 600
    :cond_c
    :goto_7
    monitor-exit p1

    goto/16 :goto_0

    .line 594
    :cond_d
    invoke-virtual {v9, p2}, Lorg/mortbay/util/ByteArrayOutputStream2;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 598
    :cond_e
    if-lez v0, :cond_c

    .line 599
    invoke-virtual {v9, p2}, Lorg/mortbay/util/ByteArrayOutputStream2;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :cond_f
    move v1, v0

    goto/16 :goto_1

    .line 537
    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_3
        0x26 -> :sswitch_0
        0x2b -> :sswitch_2
        0x3d -> :sswitch_1
    .end sparse-switch
.end method

.method public static decodeTo(Ljava/lang/String;Lorg/mortbay/util/MultiMap;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 177
    if-nez p2, :cond_0

    .line 178
    sget-object p2, Lorg/mortbay/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    .line 180
    :cond_0
    monitor-enter p1

    .line 184
    const/4 v3, -0x1

    move v4, v1

    move v0, v1

    move-object v5, v6

    .line 186
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_7

    .line 188
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 189
    sparse-switch v7, :sswitch_data_0

    .line 186
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 192
    :sswitch_0
    sub-int v7, v4, v3

    add-int/lit8 v7, v7, -0x1

    .line 193
    if-nez v7, :cond_3

    const-string/jumbo v0, ""

    .line 197
    :goto_2
    if-eqz v5, :cond_5

    .line 199
    invoke-virtual {p1, v5, v0}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_3
    move v0, v1

    move v3, v4

    move-object v5, v6

    .line 207
    goto :goto_1

    .line 193
    :cond_3
    if-eqz v0, :cond_4

    add-int/lit8 v0, v3, 0x1

    invoke-static {p0, v0, v7, p2}, Lorg/mortbay/util/UrlEncoded;->decodeString(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 201
    :cond_5
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 203
    const-string/jumbo v3, ""

    invoke-virtual {p1, v0, v3}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 209
    :sswitch_1
    if-nez v5, :cond_1

    .line 211
    if-eqz v0, :cond_6

    add-int/lit8 v0, v3, 0x1

    sub-int v3, v4, v3

    add-int/lit8 v3, v3, -0x1

    :try_start_1
    invoke-static {p0, v0, v3, p2}, Lorg/mortbay/util/UrlEncoded;->decodeString(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    move v3, v4

    move-object v5, v0

    move v0, v1

    .line 214
    goto :goto_1

    .line 211
    :cond_6
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :sswitch_2
    move v0, v2

    .line 217
    goto :goto_1

    :sswitch_3
    move v0, v2

    .line 219
    goto :goto_1

    .line 224
    :cond_7
    if-eqz v5, :cond_b

    .line 226
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    .line 227
    if-nez v1, :cond_9

    const-string/jumbo v0, ""

    .line 228
    :goto_5
    invoke-virtual {p1, v5, v0}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 237
    :cond_8
    :goto_6
    monitor-exit p1

    .line 238
    return-void

    .line 227
    :cond_9
    if-eqz v0, :cond_a

    add-int/lit8 v0, v3, 0x1

    invoke-static {p0, v0, v1, p2}, Lorg/mortbay/util/UrlEncoded;->decodeString(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_a
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 230
    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v3, v1, :cond_8

    .line 232
    if-eqz v0, :cond_c

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, v1, p2}, Lorg/mortbay/util/UrlEncoded;->decodeString(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    :goto_7
    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    .line 232
    :cond_c
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_7

    .line 189
    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_3
        0x26 -> :sswitch_0
        0x2b -> :sswitch_2
        0x3d -> :sswitch_1
    .end sparse-switch
.end method

.method public static decodeUtf16To(Ljava/io/InputStream;Lorg/mortbay/util/MultiMap;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 482
    new-instance v2, Ljava/io/InputStreamReader;

    const-string/jumbo v0, "UTF-16"

    invoke-direct {v2, p0, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 483
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 486
    const/4 v0, 0x0

    .line 487
    if-gez p2, :cond_0

    .line 488
    const p2, 0x7fffffff

    .line 489
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->read()I

    move-result v4

    if-lez v4, :cond_1

    add-int/lit8 v1, v0, 0x1

    if-ge v0, p2, :cond_1

    .line 490
    int-to-char v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    goto :goto_0

    .line 491
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mortbay/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lorg/mortbay/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/mortbay/util/MultiMap;Ljava/lang/String;)V

    .line 492
    return-void
.end method

.method public static decodeUtf8To(Ljava/io/InputStream;Lorg/mortbay/util/MultiMap;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 408
    monitor-enter p1

    .line 410
    :try_start_0
    new-instance v4, Lorg/mortbay/util/Utf8StringBuffer;

    invoke-direct {v4}, Lorg/mortbay/util/Utf8StringBuffer;-><init>()V

    .line 417
    const/4 v0, 0x0

    move v1, v0

    move-object v2, v3

    .line 418
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_6

    .line 420
    int-to-char v5, v0

    sparse-switch v5, :sswitch_data_0

    .line 459
    int-to-byte v0, v0

    invoke-virtual {v4, v0}, Lorg/mortbay/util/Utf8StringBuffer;->append(B)V

    .line 462
    :cond_1
    :goto_1
    if-ltz p2, :cond_0

    add-int/lit8 v0, v1, 0x1

    if-le v0, p2, :cond_a

    .line 463
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Form too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 423
    :sswitch_0
    :try_start_1
    invoke-virtual {v4}, Lorg/mortbay/util/Utf8StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    .line 424
    :goto_2
    invoke-virtual {v4}, Lorg/mortbay/util/Utf8StringBuffer;->reset()V

    .line 425
    if-eqz v2, :cond_4

    .line 427
    invoke-virtual {p1, v2, v0}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_3
    move-object v2, v3

    .line 435
    goto :goto_1

    .line 423
    :cond_3
    invoke-virtual {v4}, Lorg/mortbay/util/Utf8StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 429
    :cond_4
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 431
    const-string/jumbo v2, ""

    invoke-virtual {p1, v0, v2}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 438
    :sswitch_1
    if-eqz v2, :cond_5

    .line 440
    int-to-byte v0, v0

    invoke-virtual {v4, v0}, Lorg/mortbay/util/Utf8StringBuffer;->append(B)V

    goto :goto_1

    .line 443
    :cond_5
    invoke-virtual {v4}, Lorg/mortbay/util/Utf8StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 444
    invoke-virtual {v4}, Lorg/mortbay/util/Utf8StringBuffer;->reset()V

    goto :goto_1

    .line 448
    :sswitch_2
    const/16 v0, 0x20

    invoke-virtual {v4, v0}, Lorg/mortbay/util/Utf8StringBuffer;->append(B)V

    goto :goto_1

    .line 452
    :sswitch_3
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 453
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 454
    if-ltz v0, :cond_1

    if-ltz v5, :cond_1

    .line 456
    int-to-byte v0, v0

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    int-to-byte v5, v5

    invoke-static {v5}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v5

    add-int/2addr v0, v5

    int-to-byte v0, v0

    invoke-virtual {v4, v0}, Lorg/mortbay/util/Utf8StringBuffer;->append(B)V

    goto :goto_1

    .line 466
    :cond_6
    if-eqz v2, :cond_9

    .line 468
    invoke-virtual {v4}, Lorg/mortbay/util/Utf8StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, ""

    .line 469
    :goto_4
    invoke-virtual {v4}, Lorg/mortbay/util/Utf8StringBuffer;->reset()V

    .line 470
    invoke-virtual {p1, v2, v0}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 476
    :cond_7
    :goto_5
    monitor-exit p1

    .line 477
    return-void

    .line 468
    :cond_8
    invoke-virtual {v4}, Lorg/mortbay/util/Utf8StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 472
    :cond_9
    invoke-virtual {v4}, Lorg/mortbay/util/Utf8StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 474
    invoke-virtual {v4}, Lorg/mortbay/util/Utf8StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :cond_a
    move v1, v0

    goto/16 :goto_0

    .line 420
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_3
        0x26 -> :sswitch_0
        0x2b -> :sswitch_2
        0x3d -> :sswitch_1
    .end sparse-switch
.end method

.method public static decodeUtf8To([BIILorg/mortbay/util/MultiMap;)V
    .locals 1

    .prologue
    .line 246
    new-instance v0, Lorg/mortbay/util/Utf8StringBuffer;

    invoke-direct {v0}, Lorg/mortbay/util/Utf8StringBuffer;-><init>()V

    invoke-static {p0, p1, p2, p3, v0}, Lorg/mortbay/util/UrlEncoded;->decodeUtf8To([BIILorg/mortbay/util/MultiMap;Lorg/mortbay/util/Utf8StringBuffer;)V

    .line 247
    return-void
.end method

.method public static decodeUtf8To([BIILorg/mortbay/util/MultiMap;Lorg/mortbay/util/Utf8StringBuffer;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 255
    monitor-enter p3

    .line 261
    add-int v4, p1, p2

    move v0, p1

    move-object v1, v2

    .line 262
    :goto_0
    if-ge v0, v4, :cond_5

    .line 264
    :try_start_0
    aget-byte v3, p0, v0

    .line 265
    and-int/lit16 v5, v3, 0xff

    int-to-char v5, v5

    sparse-switch v5, :sswitch_data_0

    .line 301
    invoke-virtual {p4, v3}, Lorg/mortbay/util/Utf8StringBuffer;->append(B)V

    .line 262
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    :sswitch_0
    invoke-virtual {p4}, Lorg/mortbay/util/Utf8StringBuffer;->length()I

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, ""

    .line 269
    :goto_2
    invoke-virtual {p4}, Lorg/mortbay/util/Utf8StringBuffer;->reset()V

    .line 270
    if-eqz v1, :cond_3

    .line 272
    invoke-virtual {p3, v1, v3}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_3
    move-object v1, v2

    .line 280
    goto :goto_1

    .line 268
    :cond_2
    invoke-virtual {p4}, Lorg/mortbay/util/Utf8StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 274
    :cond_3
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 276
    const-string/jumbo v1, ""

    invoke-virtual {p3, v3, v1}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 283
    :sswitch_1
    if-eqz v1, :cond_4

    .line 285
    :try_start_1
    invoke-virtual {p4, v3}, Lorg/mortbay/util/Utf8StringBuffer;->append(B)V

    goto :goto_1

    .line 288
    :cond_4
    invoke-virtual {p4}, Lorg/mortbay/util/Utf8StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 289
    invoke-virtual {p4}, Lorg/mortbay/util/Utf8StringBuffer;->reset()V

    goto :goto_1

    .line 293
    :sswitch_2
    const/16 v3, 0x20

    invoke-virtual {p4, v3}, Lorg/mortbay/util/Utf8StringBuffer;->append(B)V

    goto :goto_1

    .line 297
    :sswitch_3
    add-int/lit8 v3, v0, 0x2

    if-ge v3, v4, :cond_0

    .line 298
    add-int/lit8 v0, v0, 0x1

    aget-byte v3, p0, v0

    invoke-static {v3}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v0, v0, 0x1

    aget-byte v5, p0, v0

    invoke-static {v5}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v5

    add-int/2addr v3, v5

    int-to-byte v3, v3

    invoke-virtual {p4, v3}, Lorg/mortbay/util/Utf8StringBuffer;->append(B)V

    goto :goto_1

    .line 306
    :cond_5
    if-eqz v1, :cond_8

    .line 308
    invoke-virtual {p4}, Lorg/mortbay/util/Utf8StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, ""

    .line 309
    :goto_4
    invoke-virtual {p4}, Lorg/mortbay/util/Utf8StringBuffer;->reset()V

    .line 310
    invoke-virtual {p3, v1, v0}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 316
    :cond_6
    :goto_5
    monitor-exit p3

    .line 317
    return-void

    .line 308
    :cond_7
    invoke-virtual {p4}, Lorg/mortbay/util/Utf8StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 312
    :cond_8
    invoke-virtual {p4}, Lorg/mortbay/util/Utf8StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 314
    invoke-virtual {p4}, Lorg/mortbay/util/Utf8StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {p3, v0, v1}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 265
    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_3
        0x26 -> :sswitch_0
        0x2b -> :sswitch_2
        0x3d -> :sswitch_1
    .end sparse-switch
.end method

.method public static encode(Lorg/mortbay/util/MultiMap;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8

    .prologue
    .line 118
    if-nez p1, :cond_0

    .line 119
    sget-object p1, Lorg/mortbay/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    .line 121
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 122
    monitor-enter v1

    .line 124
    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/util/MultiMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 125
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 127
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 129
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 130
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 131
    invoke-static {v4}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v5

    .line 133
    if-nez v5, :cond_3

    .line 135
    invoke-static {v3, p1}, Lorg/mortbay/util/UrlEncoded;->encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    if-eqz p2, :cond_2

    .line 137
    const/16 v0, 0x3d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 163
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    const/16 v0, 0x26

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 141
    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_2

    .line 143
    if-lez v0, :cond_4

    .line 144
    const/16 v6, 0x26

    :try_start_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 145
    :cond_4
    invoke-static {v4, v0}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    .line 146
    invoke-static {v3, p1}, Lorg/mortbay/util/UrlEncoded;->encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    if-eqz v6, :cond_7

    .line 150
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 151
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6

    .line 153
    const/16 v7, 0x3d

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 154
    invoke-static {v6, p1}, Lorg/mortbay/util/UrlEncoded;->encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 156
    :cond_6
    if-eqz p2, :cond_5

    .line 157
    const/16 v6, 0x3d

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 159
    :cond_7
    if-eqz p2, :cond_5

    .line 160
    const/16 v6, 0x3d

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 166
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public static encodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 789
    sget-object v0, Lorg/mortbay/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/mortbay/util/UrlEncoded;->encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v9, 0xa

    const/4 v2, 0x0

    .line 799
    if-nez p1, :cond_0

    .line 800
    sget-object p1, Lorg/mortbay/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    .line 804
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 812
    :goto_0
    array-length v6, v0

    .line 813
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x3

    new-array v7, v1, [B

    .line 815
    const/4 v1, 0x1

    move v4, v2

    move v5, v2

    .line 817
    :goto_1
    if-ge v4, v6, :cond_8

    .line 819
    aget-byte v8, v0, v4

    .line 821
    const/16 v3, 0x20

    if-ne v8, v3, :cond_1

    .line 824
    add-int/lit8 v1, v5, 0x1

    const/16 v3, 0x2b

    aput-byte v3, v7, v5

    move v3, v1

    move v1, v2

    .line 817
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v5, v3

    goto :goto_1

    .line 806
    :catch_0
    move-exception v0

    .line 809
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    .line 826
    :cond_1
    const/16 v3, 0x61

    if-lt v8, v3, :cond_2

    const/16 v3, 0x7a

    if-le v8, v3, :cond_4

    :cond_2
    const/16 v3, 0x41

    if-lt v8, v3, :cond_3

    const/16 v3, 0x5a

    if-le v8, v3, :cond_4

    :cond_3
    const/16 v3, 0x30

    if-lt v8, v3, :cond_5

    const/16 v3, 0x39

    if-gt v8, v3, :cond_5

    .line 830
    :cond_4
    add-int/lit8 v3, v5, 0x1

    aput-byte v8, v7, v5

    goto :goto_2

    .line 835
    :cond_5
    add-int/lit8 v3, v5, 0x1

    const/16 v1, 0x25

    aput-byte v1, v7, v5

    .line 836
    and-int/lit16 v1, v8, 0xf0

    shr-int/lit8 v1, v1, 0x4

    int-to-byte v5, v1

    .line 837
    if-lt v5, v9, :cond_6

    .line 838
    add-int/lit8 v1, v3, 0x1

    add-int/lit8 v5, v5, 0x41

    add-int/lit8 v5, v5, -0xa

    int-to-byte v5, v5

    aput-byte v5, v7, v3

    move v3, v1

    .line 841
    :goto_3
    and-int/lit8 v1, v8, 0xf

    int-to-byte v5, v1

    .line 842
    if-lt v5, v9, :cond_7

    .line 843
    add-int/lit8 v1, v3, 0x1

    add-int/lit8 v5, v5, 0x41

    add-int/lit8 v5, v5, -0xa

    int-to-byte v5, v5

    aput-byte v5, v7, v3

    move v3, v1

    move v1, v2

    goto :goto_2

    .line 840
    :cond_6
    add-int/lit8 v1, v3, 0x1

    add-int/lit8 v5, v5, 0x30

    int-to-byte v5, v5

    aput-byte v5, v7, v3

    move v3, v1

    goto :goto_3

    .line 845
    :cond_7
    add-int/lit8 v1, v3, 0x1

    add-int/lit8 v5, v5, 0x30

    int-to-byte v5, v5

    aput-byte v5, v7, v3

    move v3, v1

    move v1, v2

    goto :goto_2

    .line 849
    :cond_8
    if-eqz v1, :cond_9

    .line 859
    :goto_4
    return-object p0

    .line 854
    :cond_9
    :try_start_1
    new-instance p0, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v7, v0, v5, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 856
    :catch_1
    move-exception v0

    .line 859
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v7, v2, v5}, Ljava/lang/String;-><init>([BII)V

    goto :goto_4
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 869
    new-instance v0, Lorg/mortbay/util/UrlEncoded;

    invoke-direct {v0, p0}, Lorg/mortbay/util/UrlEncoded;-><init>(Lorg/mortbay/util/UrlEncoded;)V

    return-object v0
.end method

.method public decode(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lorg/mortbay/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    invoke-static {p1, p0, v0}, Lorg/mortbay/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/mortbay/util/MultiMap;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public decode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    invoke-static {p1, p0, p2}, Lorg/mortbay/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/mortbay/util/MultiMap;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public encode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    sget-object v0, Lorg/mortbay/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/mortbay/util/UrlEncoded;->encode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mortbay/util/UrlEncoded;->encode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized encode(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/mortbay/util/UrlEncoded;->encode(Lorg/mortbay/util/MultiMap;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
