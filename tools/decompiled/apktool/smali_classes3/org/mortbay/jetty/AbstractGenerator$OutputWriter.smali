.class public Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;
.super Ljava/io/Writer;
.source "AbstractGenerator.java"


# static fields
.field private static final WRITE_CONV:I = 0x0

.field private static final WRITE_ISO1:I = 0x1

.field private static final WRITE_UTF8:I = 0x2


# instance fields
.field _generator:Lorg/mortbay/jetty/AbstractGenerator;

.field _out:Lorg/mortbay/jetty/AbstractGenerator$Output;

.field _surrogate:I

.field _writeMode:I


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/AbstractGenerator$Output;)V
    .locals 1

    .prologue
    .line 698
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 699
    iput-object p1, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_out:Lorg/mortbay/jetty/AbstractGenerator$Output;

    .line 700
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_out:Lorg/mortbay/jetty/AbstractGenerator$Output;

    iget-object v0, v0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    iput-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    .line 702
    return-void
.end method

.method private getConverter()Ljava/io/Writer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 913
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_out:Lorg/mortbay/jetty/AbstractGenerator$Output;

    iget-object v0, v0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_converter:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 914
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_out:Lorg/mortbay/jetty/AbstractGenerator$Output;

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_out:Lorg/mortbay/jetty/AbstractGenerator$Output;

    iget-object v2, v2, Lorg/mortbay/jetty/AbstractGenerator$Output;->_bytes:Lorg/mortbay/util/ByteArrayOutputStream2;

    iget-object v3, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_out:Lorg/mortbay/jetty/AbstractGenerator$Output;

    iget-object v3, v3, Lorg/mortbay/jetty/AbstractGenerator$Output;->_characterEncoding:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_converter:Ljava/io/Writer;

    .line 915
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_out:Lorg/mortbay/jetty/AbstractGenerator$Output;

    iget-object v0, v0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_converter:Ljava/io/Writer;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 730
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_out:Lorg/mortbay/jetty/AbstractGenerator$Output;

    invoke-virtual {v0}, Lorg/mortbay/jetty/AbstractGenerator$Output;->close()V

    .line 731
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 736
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_out:Lorg/mortbay/jetty/AbstractGenerator$Output;

    invoke-virtual {v0}, Lorg/mortbay/jetty/AbstractGenerator$Output;->flush()V

    .line 737
    return-void
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 707
    if-eqz p1, :cond_0

    sget-object v0, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 709
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_writeMode:I

    .line 722
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_out:Lorg/mortbay/jetty/AbstractGenerator$Output;

    iput-object p1, v0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_characterEncoding:Ljava/lang/String;

    .line 723
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_out:Lorg/mortbay/jetty/AbstractGenerator$Output;

    iget-object v0, v0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_bytes:Lorg/mortbay/util/ByteArrayOutputStream2;

    if-nez v0, :cond_2

    .line 724
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_out:Lorg/mortbay/jetty/AbstractGenerator$Output;

    new-instance v1, Lorg/mortbay/util/ByteArrayOutputStream2;

    invoke-static {}, Lorg/mortbay/jetty/AbstractGenerator;->access$100()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/mortbay/util/ByteArrayOutputStream2;-><init>(I)V

    iput-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_bytes:Lorg/mortbay/util/ByteArrayOutputStream2;

    .line 725
    :cond_2
    return-void

    .line 711
    :cond_3
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 713
    const/4 v0, 0x2

    iput v0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_writeMode:I

    goto :goto_0

    .line 717
    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_writeMode:I

    .line 718
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_out:Lorg/mortbay/jetty/AbstractGenerator$Output;

    iget-object v0, v0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_characterEncoding:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_out:Lorg/mortbay/jetty/AbstractGenerator$Output;

    iget-object v0, v0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_characterEncoding:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 719
    :cond_5
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_out:Lorg/mortbay/jetty/AbstractGenerator$Output;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_converter:Ljava/io/Writer;

    goto :goto_0
.end method

.method public write(Ljava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 742
    :goto_0
    invoke-static {}, Lorg/mortbay/jetty/AbstractGenerator;->access$100()I

    move-result v0

    if-le p3, v0, :cond_0

    .line 744
    invoke-static {}, Lorg/mortbay/jetty/AbstractGenerator;->access$100()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->write(Ljava/lang/String;II)V

    .line 745
    invoke-static {}, Lorg/mortbay/jetty/AbstractGenerator;->access$100()I

    move-result v0

    add-int/2addr p2, v0

    .line 746
    invoke-static {}, Lorg/mortbay/jetty/AbstractGenerator;->access$100()I

    move-result v0

    sub-int/2addr p3, v0

    goto :goto_0

    .line 749
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_out:Lorg/mortbay/jetty/AbstractGenerator$Output;

    iget-object v0, v0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_chars:[C

    if-nez v0, :cond_1

    .line 751
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_out:Lorg/mortbay/jetty/AbstractGenerator$Output;

    invoke-static {}, Lorg/mortbay/jetty/AbstractGenerator;->access$100()I

    move-result v1

    new-array v1, v1, [C

    iput-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_chars:[C

    .line 753
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_out:Lorg/mortbay/jetty/AbstractGenerator$Output;

    iget-object v0, v0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_chars:[C

    .line 754
    add-int v1, p2, p3

    invoke-virtual {p1, p2, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 755
    invoke-virtual {p0, v0, v2, p3}, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->write([CII)V

    .line 756
    return-void
.end method

.method public write([CII)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x3f

    const/4 v6, 0x0

    .line 761
    iget-object v8, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_out:Lorg/mortbay/jetty/AbstractGenerator$Output;

    move v1, p3

    .line 763
    :goto_0
    if-lez v1, :cond_13

    .line 765
    iget-object v0, v8, Lorg/mortbay/jetty/AbstractGenerator$Output;->_bytes:Lorg/mortbay/util/ByteArrayOutputStream2;

    invoke-virtual {v0}, Lorg/mortbay/util/ByteArrayOutputStream2;->reset()V

    .line 766
    invoke-static {}, Lorg/mortbay/jetty/AbstractGenerator;->access$100()I

    move-result v0

    if-le v1, v0, :cond_0

    invoke-static {}, Lorg/mortbay/jetty/AbstractGenerator;->access$100()I

    move-result v0

    .line 768
    :goto_1
    iget v2, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_writeMode:I

    packed-switch v2, :pswitch_data_0

    .line 901
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    move v0, v1

    .line 766
    goto :goto_1

    .line 772
    :pswitch_0
    invoke-direct {p0}, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->getConverter()Ljava/io/Writer;

    move-result-object v2

    .line 773
    invoke-virtual {v2, p1, p2, v0}, Ljava/io/Writer;->write([CII)V

    .line 774
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    .line 904
    :cond_1
    :goto_2
    iget-object v2, v8, Lorg/mortbay/jetty/AbstractGenerator$Output;->_bytes:Lorg/mortbay/util/ByteArrayOutputStream2;

    invoke-virtual {v2, v8}, Lorg/mortbay/util/ByteArrayOutputStream2;->writeTo(Ljava/io/OutputStream;)V

    .line 905
    sub-int/2addr v1, v0

    .line 906
    add-int/2addr p2, v0

    .line 907
    goto :goto_0

    .line 780
    :pswitch_1
    iget-object v2, v8, Lorg/mortbay/jetty/AbstractGenerator$Output;->_bytes:Lorg/mortbay/util/ByteArrayOutputStream2;

    invoke-virtual {v2}, Lorg/mortbay/util/ByteArrayOutputStream2;->getBuf()[B

    move-result-object v9

    .line 781
    iget-object v2, v8, Lorg/mortbay/jetty/AbstractGenerator$Output;->_bytes:Lorg/mortbay/util/ByteArrayOutputStream2;

    invoke-virtual {v2}, Lorg/mortbay/util/ByteArrayOutputStream2;->getCount()I

    move-result v2

    .line 783
    array-length v4, v9

    sub-int/2addr v4, v2

    if-le v0, v4, :cond_2

    .line 784
    array-length v0, v9

    sub-int/2addr v0, v2

    :cond_2
    move v4, v6

    move v5, v2

    .line 786
    :goto_3
    if-ge v4, v0, :cond_4

    .line 788
    add-int v2, p2, v4

    aget-char v2, p1, v2

    .line 789
    add-int/lit8 v7, v5, 0x1

    const/16 v10, 0x100

    if-ge v2, v10, :cond_3

    :goto_4
    int-to-byte v2, v2

    aput-byte v2, v9, v5

    .line 786
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v5, v7

    goto :goto_3

    :cond_3
    move v2, v3

    .line 789
    goto :goto_4

    .line 791
    :cond_4
    if-ltz v5, :cond_1

    .line 792
    iget-object v2, v8, Lorg/mortbay/jetty/AbstractGenerator$Output;->_bytes:Lorg/mortbay/util/ByteArrayOutputStream2;

    invoke-virtual {v2, v5}, Lorg/mortbay/util/ByteArrayOutputStream2;->setCount(I)V

    goto :goto_2

    .line 799
    :pswitch_2
    iget-object v2, v8, Lorg/mortbay/jetty/AbstractGenerator$Output;->_bytes:Lorg/mortbay/util/ByteArrayOutputStream2;

    invoke-virtual {v2}, Lorg/mortbay/util/ByteArrayOutputStream2;->getBuf()[B

    move-result-object v7

    .line 800
    iget-object v2, v8, Lorg/mortbay/jetty/AbstractGenerator$Output;->_bytes:Lorg/mortbay/util/ByteArrayOutputStream2;

    invoke-virtual {v2}, Lorg/mortbay/util/ByteArrayOutputStream2;->getCount()I

    move-result v4

    .line 802
    add-int v2, v4, v0

    array-length v5, v7

    if-le v2, v5, :cond_5

    .line 803
    array-length v0, v7

    sub-int/2addr v0, v4

    :cond_5
    move v5, v6

    .line 805
    :goto_5
    if-ge v5, v0, :cond_14

    .line 807
    add-int v2, p2, v5

    aget-char v9, p1, v2

    .line 809
    and-int/lit8 v2, v9, -0x80

    if-nez v2, :cond_8

    .line 812
    add-int/lit8 v2, v4, 0x1

    array-length v10, v7

    if-le v2, v10, :cond_6

    move v2, v4

    move v0, v5

    .line 897
    :goto_6
    iget-object v4, v8, Lorg/mortbay/jetty/AbstractGenerator$Output;->_bytes:Lorg/mortbay/util/ByteArrayOutputStream2;

    invoke-virtual {v4, v2}, Lorg/mortbay/util/ByteArrayOutputStream2;->setCount(I)V

    goto :goto_2

    .line 817
    :cond_6
    add-int/lit8 v2, v4, 0x1

    int-to-byte v9, v9

    aput-byte v9, v7, v4

    .line 805
    :cond_7
    add-int/lit8 v5, v5, 0x1

    move v4, v2

    goto :goto_5

    .line 821
    :cond_8
    and-int/lit16 v2, v9, -0x800

    if-nez v2, :cond_a

    .line 824
    add-int/lit8 v2, v4, 0x2

    array-length v10, v7

    if-le v2, v10, :cond_9

    move v2, v4

    move v0, v5

    .line 827
    goto :goto_6

    .line 829
    :cond_9
    add-int/lit8 v10, v4, 0x1

    shr-int/lit8 v2, v9, 0x6

    or-int/lit16 v2, v2, 0xc0

    int-to-byte v2, v2

    aput-byte v2, v7, v4

    .line 830
    add-int/lit8 v2, v10, 0x1

    and-int/lit8 v4, v9, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v7, v10

    .line 890
    :goto_7
    array-length v4, v7

    if-ne v2, v4, :cond_7

    .line 892
    add-int/lit8 v0, v5, 0x1

    .line 893
    goto :goto_6

    .line 832
    :cond_a
    const/high16 v2, -0x10000

    and-int/2addr v2, v9

    if-nez v2, :cond_c

    .line 835
    add-int/lit8 v2, v4, 0x3

    array-length v10, v7

    if-le v2, v10, :cond_b

    move v2, v4

    move v0, v5

    .line 838
    goto :goto_6

    .line 840
    :cond_b
    add-int/lit8 v2, v4, 0x1

    shr-int/lit8 v10, v9, 0xc

    or-int/lit16 v10, v10, 0xe0

    int-to-byte v10, v10

    aput-byte v10, v7, v4

    .line 841
    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v10, v9, 0x6

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v7, v2

    .line 842
    add-int/lit8 v2, v4, 0x1

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v7, v4

    goto :goto_7

    .line 844
    :cond_c
    const/high16 v2, -0xe00000

    and-int/2addr v2, v9

    if-nez v2, :cond_e

    .line 847
    add-int/lit8 v2, v4, 0x4

    array-length v10, v7

    if-le v2, v10, :cond_d

    move v2, v4

    move v0, v5

    .line 850
    goto :goto_6

    .line 852
    :cond_d
    add-int/lit8 v2, v4, 0x1

    shr-int/lit8 v10, v9, 0x12

    or-int/lit16 v10, v10, 0xf0

    int-to-byte v10, v10

    aput-byte v10, v7, v4

    .line 853
    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v10, v9, 0xc

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v7, v2

    .line 854
    add-int/lit8 v10, v4, 0x1

    shr-int/lit8 v2, v9, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v7, v4

    .line 855
    add-int/lit8 v2, v10, 0x1

    and-int/lit8 v4, v9, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v7, v10

    goto :goto_7

    .line 857
    :cond_e
    const/high16 v2, -0xc000000

    and-int/2addr v2, v9

    if-nez v2, :cond_10

    .line 860
    add-int/lit8 v2, v4, 0x5

    array-length v10, v7

    if-le v2, v10, :cond_f

    move v2, v4

    move v0, v5

    .line 863
    goto/16 :goto_6

    .line 865
    :cond_f
    add-int/lit8 v2, v4, 0x1

    shr-int/lit8 v10, v9, 0x18

    or-int/lit16 v10, v10, 0xf8

    int-to-byte v10, v10

    aput-byte v10, v7, v4

    .line 866
    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v10, v9, 0x12

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v7, v2

    .line 867
    add-int/lit8 v2, v4, 0x1

    shr-int/lit8 v10, v9, 0xc

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v7, v4

    .line 868
    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v10, v9, 0x6

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v7, v2

    .line 869
    add-int/lit8 v2, v4, 0x1

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v7, v4

    goto/16 :goto_7

    .line 871
    :cond_10
    const/high16 v2, -0x80000000

    and-int/2addr v2, v9

    if-nez v2, :cond_12

    .line 874
    add-int/lit8 v2, v4, 0x6

    array-length v10, v7

    if-le v2, v10, :cond_11

    move v2, v4

    move v0, v5

    .line 877
    goto/16 :goto_6

    .line 879
    :cond_11
    add-int/lit8 v2, v4, 0x1

    shr-int/lit8 v10, v9, 0x1e

    or-int/lit16 v10, v10, 0xfc

    int-to-byte v10, v10

    aput-byte v10, v7, v4

    .line 880
    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v10, v9, 0x18

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v7, v2

    .line 881
    add-int/lit8 v2, v4, 0x1

    shr-int/lit8 v10, v9, 0x12

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v7, v4

    .line 882
    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v10, v9, 0xc

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v7, v2

    .line 883
    add-int/lit8 v10, v4, 0x1

    shr-int/lit8 v2, v9, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v7, v4

    .line 884
    add-int/lit8 v2, v10, 0x1

    and-int/lit8 v4, v9, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v7, v10

    goto/16 :goto_7

    .line 888
    :cond_12
    add-int/lit8 v2, v4, 0x1

    aput-byte v3, v7, v4

    goto/16 :goto_7

    .line 908
    :cond_13
    return-void

    :cond_14
    move v2, v4

    goto/16 :goto_6

    .line 768
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
