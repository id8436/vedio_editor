.class public Ljavax/mail/URLName;
.super Ljava/lang/Object;
.source "URLName.java"


# static fields
.field static final caseDiff:I = 0x20

.field private static doEncode:Z

.field static dontNeedEncoding:Ljava/util/BitSet;


# instance fields
.field private file:Ljava/lang/String;

.field protected fullURL:Ljava/lang/String;

.field private hashCode:I

.field private host:Ljava/lang/String;

.field private hostAddress:Ljava/net/InetAddress;

.field private hostAddressKnown:Z

.field private password:Ljava/lang/String;

.field private port:I

.field private protocol:Ljava/lang/String;

.field private ref:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 110
    sput-boolean v0, Ljavax/mail/URLName;->doEncode:Z

    .line 114
    :try_start_0
    const-string/jumbo v1, "mail.URLName.dontencode"

    invoke-static {v1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    sput-boolean v0, Ljavax/mail/URLName;->doEncode:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    :goto_1
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    .line 512
    const/16 v0, 0x61

    :goto_2
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_1

    .line 513
    sget-object v1, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 512
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 114
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 515
    :cond_1
    const/16 v0, 0x41

    :goto_3
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_2

    .line 516
    sget-object v1, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 515
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 518
    :cond_2
    const/16 v0, 0x30

    :goto_4
    const/16 v1, 0x39

    if-gt v0, v1, :cond_3

    .line 519
    sget-object v1, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 518
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 522
    :cond_3
    sget-object v0, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 523
    sget-object v0, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 524
    sget-object v0, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 525
    sget-object v0, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 526
    sget-object v0, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 527
    return-void

    .line 115
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-boolean v1, p0, Ljavax/mail/URLName;->hostAddressKnown:Z

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Ljavax/mail/URLName;->port:I

    .line 105
    iput v1, p0, Ljavax/mail/URLName;->hashCode:I

    .line 162
    invoke-virtual {p0, p1}, Ljavax/mail/URLName;->parseString(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-boolean v1, p0, Ljavax/mail/URLName;->hostAddressKnown:Z

    .line 90
    iput v2, p0, Ljavax/mail/URLName;->port:I

    .line 105
    iput v1, p0, Ljavax/mail/URLName;->hashCode:I

    .line 135
    iput-object p1, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    .line 136
    iput-object p2, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    .line 137
    iput p3, p0, Ljavax/mail/URLName;->port:I

    .line 139
    if-eqz p4, :cond_2

    const/16 v0, 0x23

    invoke-virtual {p4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 140
    invoke-virtual {p4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    .line 141
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    .line 146
    :goto_0
    sget-boolean v0, Ljavax/mail/URLName;->doEncode:Z

    if-eqz v0, :cond_0

    invoke-static {p5}, Ljavax/mail/URLName;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    :cond_0
    iput-object p5, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    .line 147
    sget-boolean v0, Ljavax/mail/URLName;->doEncode:Z

    if-eqz v0, :cond_1

    invoke-static {p6}, Ljavax/mail/URLName;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    :cond_1
    iput-object p6, p0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    .line 148
    return-void

    .line 143
    :cond_2
    iput-object p4, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method private static _encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v9, 0x10

    const/4 v1, 0x0

    .line 548
    const/16 v0, 0xa

    .line 549
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 550
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 551
    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    move v0, v1

    .line 553
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 554
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 555
    sget-object v3, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 556
    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    .line 557
    const/16 v2, 0x2b

    .line 559
    :cond_0
    int-to-char v2, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 553
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 563
    :cond_1
    :try_start_0
    invoke-virtual {v6, v2}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 564
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    move v2, v1

    .line 570
    :goto_2
    array-length v3, v7

    if-ge v2, v3, :cond_4

    .line 571
    const/16 v3, 0x25

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 572
    aget-byte v3, v7, v2

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    .line 575
    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 576
    add-int/lit8 v3, v3, -0x20

    int-to-char v3, v3

    .line 578
    :cond_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 579
    aget-byte v3, v7, v2

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    .line 580
    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 581
    add-int/lit8 v3, v3, -0x20

    int-to-char v3, v3

    .line 583
    :cond_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 570
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 565
    :catch_0
    move-exception v2

    .line 566
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_1

    .line 585
    :cond_4
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_1

    .line 589
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 624
    if-nez p0, :cond_1

    .line 625
    const/4 p0, 0x0

    .line 658
    :cond_0
    :goto_0
    return-object p0

    .line 626
    :cond_1
    const-string/jumbo v0, "+%"

    invoke-static {p0, v0}, Ljavax/mail/URLName;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 629
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 630
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 631
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 632
    sparse-switch v2, :sswitch_data_0

    .line 646
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 630
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 634
    :sswitch_0
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 638
    :sswitch_1
    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v3, v0, 0x3

    :try_start_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    add-int/lit8 v0, v0, 0x2

    .line 644
    goto :goto_2

    .line 640
    :catch_0
    move-exception v0

    .line 641
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 651
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 653
    :try_start_1
    const-string/jumbo v0, "8859_1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 654
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    move-object p0, v0

    .line 658
    goto :goto_0

    .line 655
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_3

    .line 632
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_1
        0x2b -> :sswitch_0
    .end sparse-switch
.end method

.method static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 536
    if-nez p0, :cond_1

    .line 537
    const/4 p0, 0x0

    .line 544
    :cond_0
    :goto_0
    return-object p0

    .line 539
    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 540
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 541
    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    sget-object v2, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 542
    :cond_2
    invoke-static {p0}, Ljavax/mail/URLName;->_encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 539
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private declared-synchronized getHostAddress()Ljava/net/InetAddress;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 468
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Ljavax/mail/URLName;->hostAddressKnown:Z

    if-eqz v1, :cond_1

    .line 469
    iget-object v0, p0, Ljavax/mail/URLName;->hostAddress:Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 470
    :cond_1
    :try_start_1
    iget-object v1, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 473
    :try_start_2
    iget-object v0, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/URLName;->hostAddress:Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 477
    :goto_1
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Ljavax/mail/URLName;->hostAddressKnown:Z

    .line 478
    iget-object v0, p0, Ljavax/mail/URLName;->hostAddress:Ljava/net/InetAddress;

    goto :goto_0

    .line 474
    :catch_0
    move-exception v0

    .line 475
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/URLName;->hostAddress:Ljava/net/InetAddress;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 468
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 668
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljavax/mail/URLName;->indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 673
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v0, p2

    .line 674
    :goto_0
    if-ge v0, v2, :cond_1

    .line 675
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ltz v3, :cond_0

    .line 680
    :goto_1
    return v0

    .line 674
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 678
    goto :goto_1

    .line 679
    :catch_0
    move-exception v0

    move v0, v1

    .line 680
    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 394
    instance-of v0, p1, Ljavax/mail/URLName;

    if-nez v0, :cond_0

    move v0, v2

    .line 438
    :goto_0
    return v0

    .line 396
    :cond_0
    check-cast p1, Ljavax/mail/URLName;

    .line 399
    iget-object v0, p1, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    iget-object v1, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v2

    .line 400
    goto :goto_0

    .line 403
    :cond_2
    invoke-direct {p0}, Ljavax/mail/URLName;->getHostAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-direct {p1}, Ljavax/mail/URLName;->getHostAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 405
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 406
    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    .line 407
    goto :goto_0

    .line 409
    :cond_3
    iget-object v0, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Ljavax/mail/URLName;->host:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 410
    iget-object v0, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    iget-object v1, p1, Ljavax/mail/URLName;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    .line 411
    goto :goto_0

    .line 413
    :cond_4
    iget-object v0, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    iget-object v1, p1, Ljavax/mail/URLName;->host:Ljava/lang/String;

    if-eq v0, v1, :cond_5

    move v0, v2

    .line 414
    goto :goto_0

    .line 419
    :cond_5
    iget-object v0, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    iget-object v1, p1, Ljavax/mail/URLName;->username:Ljava/lang/String;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    iget-object v1, p1, Ljavax/mail/URLName;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    move v0, v2

    .line 421
    goto :goto_0

    .line 427
    :cond_7
    iget-object v0, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string/jumbo v0, ""

    .line 428
    :goto_1
    iget-object v1, p1, Ljavax/mail/URLName;->file:Ljava/lang/String;

    if-nez v1, :cond_9

    const-string/jumbo v1, ""

    .line 430
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v2

    .line 431
    goto :goto_0

    .line 427
    :cond_8
    iget-object v0, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    goto :goto_1

    .line 428
    :cond_9
    iget-object v1, p1, Ljavax/mail/URLName;->file:Ljava/lang/String;

    goto :goto_2

    .line 434
    :cond_a
    iget v0, p0, Ljavax/mail/URLName;->port:I

    iget v1, p1, Ljavax/mail/URLName;->port:I

    if-eq v0, v1, :cond_b

    move v0, v2

    .line 435
    goto :goto_0

    .line 438
    :cond_b
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    sget-boolean v0, Ljavax/mail/URLName;->doEncode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    invoke-static {v0}, Ljavax/mail/URLName;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Ljavax/mail/URLName;->port:I

    return v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getRef()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 369
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/mail/URLName;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljavax/mail/URLName;->getPort()I

    move-result v3

    invoke-virtual {p0}, Ljavax/mail/URLName;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    sget-boolean v0, Ljavax/mail/URLName;->doEncode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    invoke-static {v0}, Ljavax/mail/URLName;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 445
    iget v0, p0, Ljavax/mail/URLName;->hashCode:I

    if-eqz v0, :cond_0

    .line 446
    iget v0, p0, Ljavax/mail/URLName;->hashCode:I

    .line 459
    :goto_0
    return v0

    .line 447
    :cond_0
    iget-object v0, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 448
    iget v0, p0, Ljavax/mail/URLName;->hashCode:I

    iget-object v1, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Ljavax/mail/URLName;->hashCode:I

    .line 449
    :cond_1
    invoke-direct {p0}, Ljavax/mail/URLName;->getHostAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 450
    if-eqz v0, :cond_5

    .line 451
    iget v1, p0, Ljavax/mail/URLName;->hashCode:I

    invoke-virtual {v0}, Ljava/net/InetAddress;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Ljavax/mail/URLName;->hashCode:I

    .line 454
    :cond_2
    :goto_1
    iget-object v0, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 455
    iget v0, p0, Ljavax/mail/URLName;->hashCode:I

    iget-object v1, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Ljavax/mail/URLName;->hashCode:I

    .line 456
    :cond_3
    iget-object v0, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 457
    iget v0, p0, Ljavax/mail/URLName;->hashCode:I

    iget-object v1, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Ljavax/mail/URLName;->hashCode:I

    .line 458
    :cond_4
    iget v0, p0, Ljavax/mail/URLName;->hashCode:I

    iget v1, p0, Ljavax/mail/URLName;->port:I

    add-int/2addr v0, v1

    iput v0, p0, Ljavax/mail/URLName;->hashCode:I

    .line 459
    iget v0, p0, Ljavax/mail/URLName;->hashCode:I

    goto :goto_0

    .line 452
    :cond_5
    iget-object v0, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 453
    iget v0, p0, Ljavax/mail/URLName;->hashCode:I

    iget-object v1, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Ljavax/mail/URLName;->hashCode:I

    goto :goto_1
.end method

.method protected parseString(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/16 v7, 0x3a

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    iput-object v0, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    iput-object v0, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    iput-object v0, p0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    iput-object v0, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    iput-object v0, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    .line 233
    iput v5, p0, Ljavax/mail/URLName;->port:I

    .line 235
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 240
    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 241
    if-eq v0, v5, :cond_0

    .line 242
    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    .line 245
    :cond_0
    add-int/lit8 v2, v0, 0x1

    const-string/jumbo v3, "//"

    const/4 v4, 0x2

    invoke-virtual {p1, v2, v3, v6, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 248
    const/16 v2, 0x2f

    add-int/lit8 v3, v0, 0x3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 249
    if-eq v2, v5, :cond_6

    .line 250
    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 251
    add-int/lit8 v3, v2, 0x1

    if-ge v3, v1, :cond_5

    .line 252
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    .line 259
    :goto_0
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 260
    if-eq v1, v5, :cond_1

    .line 261
    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 262
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 266
    if-eq v1, v5, :cond_7

    .line 267
    invoke-virtual {v2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    .line 268
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    .line 276
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_8

    .line 278
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 282
    :goto_2
    if-eq v1, v5, :cond_9

    .line 283
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 284
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 286
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Ljavax/mail/URLName;->port:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :cond_2
    :goto_3
    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    .line 303
    :cond_3
    :goto_4
    iget-object v0, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v5, :cond_4

    .line 304
    iget-object v1, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    .line 305
    iget-object v1, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    invoke-virtual {v1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    .line 307
    :cond_4
    return-void

    .line 254
    :cond_5
    const-string/jumbo v1, ""

    iput-object v1, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    goto :goto_0

    .line 256
    :cond_6
    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 270
    :cond_7
    iput-object v2, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    goto :goto_1

    .line 280
    :cond_8
    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    goto :goto_2

    .line 287
    :catch_0
    move-exception v2

    .line 288
    iput v5, p0, Ljavax/mail/URLName;->port:I

    goto :goto_3

    .line 294
    :cond_9
    iput-object v0, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    goto :goto_4

    .line 297
    :cond_a
    add-int/lit8 v2, v0, 0x1

    if-ge v2, v1, :cond_3

    .line 298
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Ljavax/mail/URLName;->fullURL:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 171
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 172
    iget-object v1, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    :cond_0
    iget-object v1, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 179
    :cond_1
    const-string/jumbo v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    iget-object v1, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 184
    iget-object v1, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    iget-object v1, p0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 187
    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    iget-object v1, p0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    :cond_2
    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    :cond_3
    iget-object v1, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 196
    iget-object v1, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    :cond_4
    iget v1, p0, Ljavax/mail/URLName;->port:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 201
    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    iget v1, p0, Ljavax/mail/URLName;->port:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    :cond_5
    iget-object v1, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 205
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    :cond_6
    iget-object v1, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 210
    iget-object v1, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    :cond_7
    iget-object v1, p0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 215
    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    iget-object v1, p0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/URLName;->fullURL:Ljava/lang/String;

    .line 223
    :cond_9
    iget-object v0, p0, Ljavax/mail/URLName;->fullURL:Ljava/lang/String;

    return-object v0
.end method
