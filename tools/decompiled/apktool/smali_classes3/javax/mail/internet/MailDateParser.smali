.class Ljavax/mail/internet/MailDateParser;
.super Ljava/lang/Object;
.source "MailDateFormat.java"


# instance fields
.field index:I

.field orig:[C


# direct methods
.method public constructor <init>([C)V
    .locals 1

    .prologue
    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    const/4 v0, 0x0

    iput v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    .line 445
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    .line 448
    iput-object p1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    .line 449
    return-void
.end method


# virtual methods
.method getIndex()I
    .locals 1

    .prologue
    .line 886
    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    return v0
.end method

.method public parseAlphaTimeZone()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/16 v6, 0x74

    const/16 v5, 0x54

    const/4 v1, 0x1

    .line 806
    .line 811
    :try_start_0
    iget-object v2, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    .line 858
    new-instance v0, Ljava/text/ParseException;

    const-string/jumbo v1, "Bad Alpha TimeZone"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 860
    :catch_0
    move-exception v0

    .line 861
    new-instance v0, Ljava/text/ParseException;

    const-string/jumbo v1, "Bad Alpha TimeZone"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 814
    :sswitch_0
    :try_start_1
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 815
    if-eq v1, v5, :cond_0

    if-ne v1, v6, :cond_2

    :cond_0
    move v1, v0

    .line 864
    :goto_0
    if-eqz v0, :cond_9

    .line 865
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v2

    .line 866
    const/16 v2, 0x53

    if-eq v0, v2, :cond_1

    const/16 v2, 0x73

    if-ne v0, v2, :cond_6

    .line 867
    :cond_1
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v2

    .line 868
    if-eq v0, v5, :cond_9

    if-eq v0, v6, :cond_9

    .line 869
    new-instance v0, Ljava/text/ParseException;

    const-string/jumbo v1, "Bad Alpha TimeZone"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 819
    :cond_2
    :try_start_2
    new-instance v0, Ljava/text/ParseException;

    const-string/jumbo v1, "Bad Alpha TimeZone"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 823
    :sswitch_1
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    .line 824
    const/16 v2, 0x4d

    if-eq v1, v2, :cond_3

    const/16 v2, 0x6d

    if-ne v1, v2, :cond_5

    .line 825
    :cond_3
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    .line 826
    if-eq v1, v5, :cond_4

    if-ne v1, v6, :cond_5

    :cond_4
    move v1, v0

    .line 828
    goto :goto_0

    .line 831
    :cond_5
    new-instance v0, Ljava/text/ParseException;

    const-string/jumbo v1, "Bad Alpha TimeZone"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 835
    :sswitch_2
    const/16 v0, 0x12c

    move v7, v1

    move v1, v0

    move v0, v7

    .line 837
    goto :goto_0

    .line 841
    :sswitch_3
    const/16 v0, 0x168

    move v7, v1

    move v1, v0

    move v0, v7

    .line 843
    goto :goto_0

    .line 847
    :sswitch_4
    const/16 v0, 0x1a4

    move v7, v1

    move v1, v0

    move v0, v7

    .line 849
    goto :goto_0

    .line 853
    :sswitch_5
    const/16 v0, 0x1e0

    move v7, v1

    move v1, v0

    move v0, v7

    .line 855
    goto :goto_0

    .line 871
    :cond_6
    const/16 v2, 0x44

    if-eq v0, v2, :cond_7

    const/16 v2, 0x64

    if-ne v0, v2, :cond_9

    .line 872
    :cond_7
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v2

    .line 873
    if-eq v0, v5, :cond_8

    if-eq v0, v6, :cond_a

    .line 875
    :cond_8
    add-int/lit8 v1, v1, -0x3c

    .line 882
    :cond_9
    return v1

    .line 877
    :cond_a
    new-instance v0, Ljava/text/ParseException;

    const-string/jumbo v1, "Bad Alpha TimeZone"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 811
    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_3
        0x45 -> :sswitch_2
        0x47 -> :sswitch_1
        0x4d -> :sswitch_4
        0x50 -> :sswitch_5
        0x55 -> :sswitch_0
        0x63 -> :sswitch_3
        0x65 -> :sswitch_2
        0x67 -> :sswitch_1
        0x6d -> :sswitch_4
        0x70 -> :sswitch_5
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method public parseMonth()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x50

    const/16 v6, 0x4e

    const/16 v5, 0x43

    const/16 v4, 0x65

    const/16 v3, 0x45

    .line 639
    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    sparse-switch v0, :sswitch_data_0

    .line 751
    :cond_0
    :goto_0
    new-instance v0, Ljava/text/ParseException;

    const-string/jumbo v1, "Bad Month"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 643
    :sswitch_0
    :try_start_1
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 646
    :sswitch_1
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    .line 647
    if-eq v0, v6, :cond_1

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_0

    .line 648
    :cond_1
    const/4 v0, 0x0

    .line 743
    :goto_1
    return v0

    .line 654
    :sswitch_2
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    .line 655
    if-eq v0, v6, :cond_2

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_3

    .line 656
    :cond_2
    const/4 v0, 0x5

    goto :goto_1

    .line 657
    :cond_3
    const/16 v1, 0x4c

    if-eq v0, v1, :cond_4

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_0

    .line 658
    :cond_4
    const/4 v0, 0x6

    goto :goto_1

    .line 666
    :sswitch_3
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    .line 667
    if-eq v0, v3, :cond_5

    if-ne v0, v4, :cond_0

    .line 668
    :cond_5
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    .line 669
    const/16 v1, 0x42

    if-eq v0, v1, :cond_6

    const/16 v1, 0x62

    if-ne v0, v1, :cond_0

    .line 670
    :cond_6
    const/4 v0, 0x1

    goto :goto_1

    .line 677
    :sswitch_4
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    .line 678
    const/16 v1, 0x41

    if-eq v0, v1, :cond_7

    const/16 v1, 0x61

    if-ne v0, v1, :cond_0

    .line 679
    :cond_7
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    .line 680
    const/16 v1, 0x52

    if-eq v0, v1, :cond_8

    const/16 v1, 0x72

    if-ne v0, v1, :cond_9

    .line 681
    :cond_8
    const/4 v0, 0x2

    goto :goto_1

    .line 682
    :cond_9
    const/16 v1, 0x59

    if-eq v0, v1, :cond_a

    const/16 v1, 0x79

    if-ne v0, v1, :cond_0

    .line 683
    :cond_a
    const/4 v0, 0x4

    goto :goto_1

    .line 690
    :sswitch_5
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    .line 691
    if-eq v0, v7, :cond_b

    const/16 v1, 0x70

    if-ne v0, v1, :cond_d

    .line 692
    :cond_b
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    .line 693
    const/16 v1, 0x52

    if-eq v0, v1, :cond_c

    const/16 v1, 0x72

    if-ne v0, v1, :cond_0

    .line 694
    :cond_c
    const/4 v0, 0x3

    goto/16 :goto_1

    .line 696
    :cond_d
    const/16 v1, 0x55

    if-eq v0, v1, :cond_e

    const/16 v1, 0x75

    if-ne v0, v1, :cond_0

    .line 697
    :cond_e
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    .line 698
    const/16 v1, 0x47

    if-eq v0, v1, :cond_f

    const/16 v1, 0x67

    if-ne v0, v1, :cond_0

    .line 699
    :cond_f
    const/4 v0, 0x7

    goto/16 :goto_1

    .line 706
    :sswitch_6
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    .line 707
    if-eq v0, v3, :cond_10

    if-ne v0, v4, :cond_0

    .line 708
    :cond_10
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    .line 709
    if-eq v0, v7, :cond_11

    const/16 v1, 0x70

    if-ne v0, v1, :cond_0

    .line 710
    :cond_11
    const/16 v0, 0x8

    goto/16 :goto_1

    .line 717
    :sswitch_7
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    .line 718
    if-eq v0, v5, :cond_12

    const/16 v1, 0x63

    if-ne v0, v1, :cond_0

    .line 719
    :cond_12
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    .line 720
    const/16 v1, 0x54

    if-eq v0, v1, :cond_13

    const/16 v1, 0x74

    if-ne v0, v1, :cond_0

    .line 721
    :cond_13
    const/16 v0, 0x9

    goto/16 :goto_1

    .line 728
    :sswitch_8
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    .line 729
    const/16 v1, 0x4f

    if-eq v0, v1, :cond_14

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_0

    .line 730
    :cond_14
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    .line 731
    const/16 v1, 0x56

    if-eq v0, v1, :cond_15

    const/16 v1, 0x76

    if-ne v0, v1, :cond_0

    .line 732
    :cond_15
    const/16 v0, 0xa

    goto/16 :goto_1

    .line 739
    :sswitch_9
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    .line 740
    if-eq v0, v3, :cond_16

    if-ne v0, v4, :cond_0

    .line 741
    :cond_16
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 742
    if-eq v0, v5, :cond_17

    const/16 v1, 0x63

    if-ne v0, v1, :cond_0

    .line 743
    :cond_17
    const/16 v0, 0xb

    goto/16 :goto_1

    .line 748
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 639
    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_5
        0x44 -> :sswitch_9
        0x46 -> :sswitch_3
        0x4a -> :sswitch_0
        0x4d -> :sswitch_4
        0x4e -> :sswitch_8
        0x4f -> :sswitch_7
        0x53 -> :sswitch_6
        0x61 -> :sswitch_5
        0x64 -> :sswitch_9
        0x66 -> :sswitch_3
        0x6a -> :sswitch_0
        0x6d -> :sswitch_4
        0x6e -> :sswitch_8
        0x6f -> :sswitch_7
        0x73 -> :sswitch_6
    .end sparse-switch

    .line 643
    :sswitch_data_1
    .sparse-switch
        0x41 -> :sswitch_1
        0x55 -> :sswitch_2
        0x61 -> :sswitch_1
        0x75 -> :sswitch_2
    .end sparse-switch
.end method

.method public parseNumber()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 555
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v3, v1

    move v1, v0

    .line 559
    :goto_0
    iget v4, p0, Ljavax/mail/internet/MailDateParser;->index:I

    if-ge v4, v3, :cond_2

    .line 560
    iget-object v4, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 612
    if-eqz v1, :cond_1

    .line 623
    :cond_0
    return v0

    .line 562
    :pswitch_0
    mul-int/lit8 v0, v0, 0xa

    .line 618
    :goto_1
    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    move v1, v2

    .line 619
    goto :goto_0

    .line 567
    :pswitch_1
    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x1

    .line 569
    goto :goto_1

    .line 572
    :pswitch_2
    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x2

    .line 574
    goto :goto_1

    .line 577
    :pswitch_3
    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x3

    .line 579
    goto :goto_1

    .line 582
    :pswitch_4
    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x4

    .line 584
    goto :goto_1

    .line 587
    :pswitch_5
    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x5

    .line 589
    goto :goto_1

    .line 592
    :pswitch_6
    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x6

    .line 594
    goto :goto_1

    .line 597
    :pswitch_7
    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x7

    .line 599
    goto :goto_1

    .line 602
    :pswitch_8
    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x8

    .line 604
    goto :goto_1

    .line 607
    :pswitch_9
    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x9

    .line 609
    goto :goto_1

    .line 615
    :cond_1
    new-instance v0, Ljava/text/ParseException;

    const-string/jumbo v1, "No Number found"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 622
    :cond_2
    if-nez v1, :cond_0

    .line 626
    new-instance v0, Ljava/text/ParseException;

    const-string/jumbo v1, "No Number found"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 560
    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public parseNumericTimeZone()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 783
    const/4 v0, 0x0

    .line 784
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    .line 785
    const/16 v2, 0x2b

    if-ne v1, v2, :cond_1

    .line 786
    const/4 v0, 0x1

    .line 791
    :cond_0
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateParser;->parseNumber()I

    move-result v1

    .line 792
    div-int/lit8 v2, v1, 0x64

    mul-int/lit8 v2, v2, 0x3c

    rem-int/lit8 v1, v1, 0x64

    add-int/2addr v1, v2

    .line 793
    if-eqz v0, :cond_2

    .line 794
    neg-int v0, v1

    .line 796
    :goto_0
    return v0

    .line 787
    :cond_1
    const/16 v2, 0x2d

    if-eq v1, v2, :cond_0

    .line 788
    new-instance v0, Ljava/text/ParseException;

    const-string/jumbo v1, "Bad Numeric TimeZone"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    move v0, v1

    .line 796
    goto :goto_0
.end method

.method public parseTimeZone()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 760
    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 761
    new-instance v0, Ljava/text/ParseException;

    const-string/jumbo v1, "No more characters"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 763
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    .line 764
    const/16 v1, 0x2b

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_2

    .line 765
    :cond_1
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateParser;->parseNumericTimeZone()I

    move-result v0

    .line 767
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateParser;->parseAlphaTimeZone()I

    move-result v0

    goto :goto_0
.end method

.method public peekChar()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 509
    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 510
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    return v0

    .line 512
    :cond_0
    new-instance v0, Ljava/text/ParseException;

    const-string/jumbo v1, "No more characters"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public skipChar(C)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 520
    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 521
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    if-ne v0, p1, :cond_0

    .line 522
    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    .line 529
    return-void

    .line 524
    :cond_0
    new-instance v0, Ljava/text/ParseException;

    const-string/jumbo v1, "Wrong char"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 527
    :cond_1
    new-instance v0, Ljava/text/ParseException;

    const-string/jumbo v1, "No more characters"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public skipIfChar(C)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 536
    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 537
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    if-ne v0, p1, :cond_0

    .line 538
    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    .line 539
    const/4 v0, 0x1

    .line 541
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 544
    :cond_1
    new-instance v0, Ljava/text/ParseException;

    const-string/jumbo v1, "No more characters"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public skipUntilNumber()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 460
    :goto_0
    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 474
    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/mail/internet/MailDateParser;->index:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 478
    :catch_0
    move-exception v0

    .line 479
    new-instance v0, Ljava/text/ParseException;

    const-string/jumbo v1, "No Number Found"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 471
    :pswitch_0
    return-void

    .line 460
    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public skipWhiteSpace()V
    .locals 3

    .prologue
    .line 487
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v0, v0

    .line 488
    :goto_0
    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    if-ge v1, v0, :cond_0

    .line 489
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 501
    :cond_0
    return-void

    .line 494
    :sswitch_0
    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    goto :goto_0

    .line 489
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method
