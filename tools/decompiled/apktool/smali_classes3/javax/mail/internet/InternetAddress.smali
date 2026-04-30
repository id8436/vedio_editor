.class public Ljavax/mail/internet/InternetAddress;
.super Ljavax/mail/Address;
.source "InternetAddress.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final rfc822phrase:Ljava/lang/String;

.field private static final serialVersionUID:J = -0x6830565bb828acb7L

.field private static final specialsNoDot:Ljava/lang/String; = "()<>,;:\\\"[]@"

.field private static final specialsNoDotNoAt:Ljava/lang/String; = "()<>,;:\\\"[]"


# instance fields
.field protected address:Ljava/lang/String;

.field protected encodedPersonal:Ljava/lang/String;

.field protected personal:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 309
    const-string/jumbo v0, "()<>@,;:\\\"\t .[]"

    const/16 v1, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljavax/mail/internet/InternetAddress;->rfc822phrase:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljavax/mail/Address;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    invoke-direct {p0}, Ljavax/mail/Address;-><init>()V

    .line 91
    invoke-static {p1, v3}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    .line 93
    array-length v1, v0

    if-eq v1, v3, :cond_0

    .line 94
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string/jumbo v1, "Illegal address"

    invoke-direct {v0, v1, p1}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    aget-object v1, v0, v2

    iget-object v1, v1, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    iput-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    .line 103
    aget-object v1, v0, v2

    iget-object v1, v1, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    iput-object v1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    .line 104
    aget-object v0, v0, v2

    iget-object v0, v0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-direct {p0}, Ljavax/mail/Address;-><init>()V

    .line 146
    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    .line 147
    invoke-virtual {p0, p2, p3}, Ljavax/mail/internet/InternetAddress;->setPersonal(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 119
    invoke-direct {p0, p1}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    .line 120
    if-eqz p2, :cond_0

    .line 121
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-static {v0, v1, v1}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 122
    :cond_0
    return-void
.end method

.method private static checkAddress(Ljava/lang/String;ZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x40

    const/4 v0, 0x0

    .line 872
    .line 873
    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_1

    .line 935
    :cond_0
    return-void

    .line 875
    :cond_1
    if-eqz p1, :cond_3

    .line 880
    :goto_0
    const-string/jumbo v1, ",:"

    invoke-static {p0, v1, v0}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_3

    .line 882
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_2

    .line 883
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string/jumbo v1, "Illegal route-addr"

    invoke-direct {v0, v1, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 884
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3a

    if-ne v0, v2, :cond_4

    .line 886
    add-int/lit8 v0, v1, 0x1

    .line 897
    :cond_3
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ltz v2, :cond_7

    .line 898
    if-ne v2, v0, :cond_5

    .line 899
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string/jumbo v1, "Missing local name"

    invoke-direct {v0, v1, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 881
    :cond_4
    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    .line 900
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v2, v1, :cond_6

    .line 901
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string/jumbo v1, "Missing domain"

    invoke-direct {v0, v1, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 902
    :cond_6
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 903
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 925
    :goto_1
    const-string/jumbo v2, " \t\n\r"

    invoke-static {p0, v2}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_9

    .line 926
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string/jumbo v1, "Illegal whitespace in address"

    invoke-direct {v0, v1, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 914
    :cond_7
    if-eqz p2, :cond_8

    .line 915
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string/jumbo v1, "Missing final \'@domain\'"

    invoke-direct {v0, v1, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 922
    :cond_8
    const/4 v0, 0x0

    move-object v1, p0

    goto :goto_1

    .line 928
    :cond_9
    const-string/jumbo v2, "()<>,;:\\\"[]@"

    invoke-static {v1, v2}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_a

    .line 929
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string/jumbo v1, "Illegal character in local name"

    invoke-direct {v0, v1, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 931
    :cond_a
    if-eqz v0, :cond_0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 932
    const-string/jumbo v1, "()<>,;:\\\"[]@"

    invoke-static {v0, v1}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 933
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string/jumbo v1, "Illegal character in domain"

    invoke-direct {v0, v1, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public static getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 488
    .line 490
    if-nez p0, :cond_2

    .line 491
    :try_start_0
    const-string/jumbo v1, "user.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 492
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 510
    :cond_0
    :goto_0
    if-nez v1, :cond_8

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_8

    .line 512
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v3, "@"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 514
    :goto_1
    if-eqz v2, :cond_1

    .line 515
    new-instance v1, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v1, v2}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 519
    :cond_1
    :goto_2
    return-object v0

    .line 494
    :cond_2
    const-string/jumbo v1, "mail.from"

    invoke-virtual {p0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 495
    if-nez v1, :cond_9

    .line 496
    const-string/jumbo v2, "mail.user"

    invoke-virtual {p0, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 497
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 498
    :cond_3
    const-string/jumbo v2, "user.name"

    invoke-virtual {p0, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 499
    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    .line 500
    :cond_5
    const-string/jumbo v2, "user.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 501
    :cond_6
    const-string/jumbo v2, "mail.host"

    invoke-virtual {p0, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 502
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 503
    :cond_7
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v4

    .line 504
    if-eqz v4, :cond_0

    .line 505
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/mail/internet/AddressException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 518
    :catch_0
    move-exception v1

    goto :goto_2

    .line 517
    :catch_1
    move-exception v1

    goto :goto_2

    .line 516
    :catch_2
    move-exception v1

    goto :goto_2

    :cond_8
    move-object v2, v1

    goto :goto_1

    :cond_9
    move-object v2, v0

    move-object v3, v0

    goto/16 :goto_0
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 993
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 998
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v0, p2

    .line 999
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1000
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ltz v3, :cond_0

    .line 1005
    :goto_1
    return v0

    .line 999
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1003
    goto :goto_1

    .line 1004
    :catch_0
    move-exception v0

    move v0, v1

    .line 1005
    goto :goto_1
.end method

.method private isSimple()Z
    .locals 2

    .prologue
    .line 942
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    const-string/jumbo v1, "()<>,;:\\\"[]"

    invoke-static {v0, v1}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static lengthOfFirstSegment(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 455
    const-string/jumbo v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 458
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method private static lengthOfLastSegment(Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 468
    const-string/jumbo v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 469
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, -0x2

    .line 471
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    .line 532
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    .line 555
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;ZZ)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    return-object v0
.end method

.method private static parse(Ljava/lang/String;ZZ)[Ljavax/mail/internet/InternetAddress;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    .line 594
    const/4 v0, -0x1

    const/4 v3, -0x1

    .line 595
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    .line 596
    const/4 v7, 0x0

    .line 597
    const/4 v6, 0x0

    .line 598
    const/4 v5, 0x0

    .line 600
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 603
    const/4 v2, -0x1

    const/4 v1, 0x0

    move v4, v2

    :goto_0
    if-ge v1, v9, :cond_18

    .line 604
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 606
    sparse-switch v8, :sswitch_data_0

    .line 802
    const/4 v8, -0x1

    if-ne v4, v8, :cond_20

    move v4, v0

    move v0, v5

    move v5, v1

    move v12, v6

    move v6, v2

    move v2, v7

    move v7, v1

    move v1, v12

    .line 603
    :goto_1
    add-int/lit8 v5, v5, 0x1

    move v12, v0

    move v0, v4

    move v4, v7

    move v7, v2

    move v2, v6

    move v6, v1

    move v1, v5

    move v5, v12

    goto :goto_0

    .line 610
    :sswitch_0
    const/4 v5, 0x1

    .line 611
    if-ltz v4, :cond_25

    const/4 v8, -0x1

    if-ne v2, v8, :cond_25

    move v8, v1

    .line 613
    :goto_2
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 614
    add-int/lit8 v0, v1, 0x1

    .line 615
    :cond_0
    add-int/lit8 v2, v1, 0x1

    const/4 v1, 0x1

    :goto_3
    if-ge v2, v9, :cond_1

    if-lez v1, :cond_1

    .line 617
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 618
    sparse-switch v11, :sswitch_data_1

    .line 616
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 620
    :sswitch_1
    add-int/lit8 v2, v2, 0x1

    .line 621
    goto :goto_4

    .line 623
    :sswitch_2
    add-int/lit8 v1, v1, 0x1

    .line 624
    goto :goto_4

    .line 626
    :sswitch_3
    add-int/lit8 v1, v1, -0x1

    .line 627
    goto :goto_4

    .line 632
    :cond_1
    if-lez v1, :cond_2

    .line 633
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string/jumbo v1, "Missing \')\'"

    invoke-direct {v0, v1, p0, v2}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    .line 634
    :cond_2
    add-int/lit8 v1, v2, -0x1

    .line 635
    const/4 v2, -0x1

    if-ne v3, v2, :cond_24

    move v2, v7

    move v3, v1

    move v7, v4

    move v4, v0

    move v0, v5

    move v5, v1

    move v1, v6

    move v6, v8

    .line 636
    goto :goto_1

    .line 640
    :sswitch_4
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string/jumbo v2, "Missing \'(\'"

    invoke-direct {v0, v2, p0, v1}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    .line 643
    :sswitch_5
    const/4 v5, 0x1

    .line 644
    if-eqz v6, :cond_3

    .line 645
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string/jumbo v2, "Extra route-addr"

    invoke-direct {v0, v2, p0, v1}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    .line 646
    :cond_3
    if-nez v7, :cond_23

    .line 648
    if-ltz v4, :cond_22

    move v0, v1

    .line 650
    :goto_5
    add-int/lit8 v2, v1, 0x1

    move v12, v4

    move v4, v2

    move v2, v12

    .line 653
    :goto_6
    const/4 v3, 0x0

    .line 655
    add-int/lit8 v1, v1, 0x1

    move v12, v3

    move v3, v1

    move v1, v12

    :goto_7
    if-ge v3, v9, :cond_6

    .line 656
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 657
    sparse-switch v6, :sswitch_data_2

    .line 655
    :cond_4
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 659
    :sswitch_6
    add-int/lit8 v3, v3, 0x1

    .line 660
    goto :goto_8

    .line 662
    :sswitch_7
    if-nez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_8

    :cond_5
    const/4 v1, 0x0

    goto :goto_8

    .line 665
    :sswitch_8
    if-nez v1, :cond_4

    .line 672
    :cond_6
    if-lt v3, v9, :cond_8

    .line 673
    if-eqz v1, :cond_7

    .line 674
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string/jumbo v1, "Missing \'\"\'"

    invoke-direct {v0, v1, p0, v3}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    .line 676
    :cond_7
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string/jumbo v1, "Missing \'>\'"

    invoke-direct {v0, v1, p0, v3}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    .line 678
    :cond_8
    const/4 v1, 0x1

    move v6, v3

    move v12, v7

    move v7, v4

    move v4, v2

    move v2, v12

    move v13, v3

    move v3, v0

    move v0, v5

    move v5, v13

    .line 680
    goto/16 :goto_1

    .line 682
    :sswitch_9
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string/jumbo v2, "Missing \'<\'"

    invoke-direct {v0, v2, p0, v1}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    .line 685
    :sswitch_a
    const/4 v5, 0x1

    .line 686
    const/4 v8, -0x1

    if-ne v4, v8, :cond_9

    move v4, v1

    .line 689
    :cond_9
    add-int/lit8 v1, v1, 0x1

    :goto_9
    if-ge v1, v9, :cond_a

    .line 690
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 691
    sparse-switch v8, :sswitch_data_3

    .line 689
    :goto_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 693
    :sswitch_b
    add-int/lit8 v1, v1, 0x1

    .line 694
    goto :goto_a

    .line 701
    :cond_a
    :sswitch_c
    if-lt v1, v9, :cond_20

    .line 702
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string/jumbo v2, "Missing \'\"\'"

    invoke-direct {v0, v2, p0, v1}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    .line 706
    :sswitch_d
    const/4 v5, 0x1

    .line 708
    add-int/lit8 v1, v1, 0x1

    :goto_b
    if-ge v1, v9, :cond_b

    .line 709
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 710
    packed-switch v8, :pswitch_data_0

    .line 708
    :goto_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 712
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    .line 713
    goto :goto_c

    .line 720
    :cond_b
    :pswitch_1
    if-lt v1, v9, :cond_20

    .line 721
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string/jumbo v2, "Missing \']\'"

    invoke-direct {v0, v2, p0, v1}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    .line 725
    :sswitch_e
    const/4 v8, -0x1

    if-ne v4, v8, :cond_c

    .line 726
    const/4 v4, 0x0

    .line 727
    const/4 v2, 0x0

    .line 728
    const/4 v5, -0x1

    move v6, v5

    move v12, v4

    move v4, v0

    move v0, v2

    move v2, v7

    move v7, v5

    move v5, v1

    move v1, v12

    .line 729
    goto/16 :goto_1

    .line 731
    :cond_c
    if-eqz v7, :cond_d

    .line 732
    const/4 v6, 0x0

    move v12, v5

    move v5, v1

    move v1, v6

    move v6, v2

    move v2, v7

    move v7, v4

    move v4, v0

    move v0, v12

    .line 733
    goto/16 :goto_1

    .line 736
    :cond_d
    const/4 v8, -0x1

    if-ne v2, v8, :cond_e

    move v2, v1

    .line 738
    :cond_e
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 739
    if-nez v5, :cond_f

    if-nez p1, :cond_f

    if-eqz p2, :cond_14

    .line 740
    :cond_f
    if-nez p1, :cond_10

    if-nez p2, :cond_11

    .line 741
    :cond_10
    const/4 v4, 0x0

    invoke-static {v2, v6, v4}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 742
    :cond_11
    new-instance v4, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v4}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 743
    invoke-virtual {v4, v2}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 744
    if-ltz v0, :cond_12

    .line 745
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/mail/internet/InternetAddress;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 747
    const/4 v3, -0x1

    move v0, v3

    .line 749
    :cond_12
    invoke-virtual {v10, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 762
    :cond_13
    const/4 v4, 0x0

    .line 763
    const/4 v2, 0x0

    .line 764
    const/4 v5, -0x1

    move v6, v5

    move v12, v4

    move v4, v0

    move v0, v2

    move v2, v7

    move v7, v5

    move v5, v1

    move v1, v12

    .line 765
    goto/16 :goto_1

    .line 752
    :cond_14
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-direct {v4, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 753
    :goto_d
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 754
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 755
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 756
    new-instance v5, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v5}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 757
    invoke-virtual {v5, v2}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 758
    invoke-virtual {v10, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_d

    .line 768
    :sswitch_f
    const/4 v5, 0x1

    .line 769
    if-eqz v7, :cond_15

    .line 770
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string/jumbo v2, "Nested group"

    invoke-direct {v0, v2, p0, v1}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    .line 771
    :cond_15
    const/4 v7, 0x1

    .line 772
    const/4 v8, -0x1

    if-ne v4, v8, :cond_20

    move v4, v0

    move v0, v5

    move v5, v1

    move v12, v6

    move v6, v2

    move v2, v7

    move v7, v1

    move v1, v12

    .line 773
    goto/16 :goto_1

    .line 777
    :sswitch_10
    const/4 v2, -0x1

    if-ne v4, v2, :cond_21

    move v2, v1

    .line 779
    :goto_e
    if-nez v7, :cond_16

    .line 780
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string/jumbo v2, "Illegal semicolon, not in group"

    invoke-direct {v0, v2, p0, v1}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    .line 782
    :cond_16
    const/4 v4, 0x0

    .line 783
    const/4 v6, -0x1

    if-ne v2, v6, :cond_17

    move v2, v1

    .line 785
    :cond_17
    new-instance v6, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v6}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 786
    add-int/lit8 v7, v1, 0x1

    .line 787
    invoke-virtual {p0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 788
    invoke-virtual {v10, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 790
    const/4 v2, 0x0

    .line 791
    const/4 v6, -0x1

    move v7, v6

    move v12, v2

    move v2, v4

    move v4, v0

    move v0, v5

    move v5, v1

    move v1, v12

    .line 792
    goto/16 :goto_1

    :sswitch_11
    move v12, v5

    move v5, v1

    move v1, v6

    move v6, v2

    move v2, v7

    move v7, v4

    move v4, v0

    move v0, v12

    .line 799
    goto/16 :goto_1

    .line 808
    :cond_18
    if-ltz v4, :cond_1d

    .line 814
    const/4 v7, -0x1

    if-ne v2, v7, :cond_1f

    .line 816
    :goto_f
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 817
    if-nez v5, :cond_19

    if-nez p1, :cond_19

    if-eqz p2, :cond_1e

    .line 818
    :cond_19
    if-nez p1, :cond_1a

    if-nez p2, :cond_1b

    .line 819
    :cond_1a
    const/4 v2, 0x0

    invoke-static {v1, v6, v2}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 820
    :cond_1b
    new-instance v2, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v2}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 821
    invoke-virtual {v2, v1}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 822
    if-ltz v0, :cond_1c

    .line 823
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/mail/internet/InternetAddress;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 826
    :cond_1c
    invoke-virtual {v10, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 840
    :cond_1d
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/mail/internet/InternetAddress;

    .line 841
    invoke-virtual {v10, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 842
    return-object v0

    .line 829
    :cond_1e
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 830
    :goto_10
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 831
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 832
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 833
    new-instance v2, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v2}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 834
    invoke-virtual {v2, v1}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 835
    invoke-virtual {v10, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_10

    :cond_1f
    move v1, v2

    goto :goto_f

    :cond_20
    move v12, v5

    move v5, v1

    move v1, v6

    move v6, v2

    move v2, v7

    move v7, v4

    move v4, v0

    move v0, v12

    goto/16 :goto_1

    :cond_21
    move v2, v4

    goto/16 :goto_e

    :cond_22
    move v0, v3

    goto/16 :goto_5

    :cond_23
    move v2, v0

    move v0, v3

    goto/16 :goto_6

    :cond_24
    move v2, v7

    move v7, v4

    move v4, v0

    move v0, v5

    move v5, v1

    move v1, v6

    move v6, v8

    goto/16 :goto_1

    :cond_25
    move v8, v2

    goto/16 :goto_2

    .line 606
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_11
        0xa -> :sswitch_11
        0xd -> :sswitch_11
        0x20 -> :sswitch_11
        0x22 -> :sswitch_a
        0x28 -> :sswitch_0
        0x29 -> :sswitch_4
        0x2c -> :sswitch_e
        0x3a -> :sswitch_f
        0x3b -> :sswitch_10
        0x3c -> :sswitch_5
        0x3e -> :sswitch_9
        0x5b -> :sswitch_d
    .end sparse-switch

    .line 618
    :sswitch_data_1
    .sparse-switch
        0x28 -> :sswitch_2
        0x29 -> :sswitch_3
        0x5c -> :sswitch_1
    .end sparse-switch

    .line 657
    :sswitch_data_2
    .sparse-switch
        0x22 -> :sswitch_7
        0x3e -> :sswitch_8
        0x5c -> :sswitch_6
    .end sparse-switch

    .line 691
    :sswitch_data_3
    .sparse-switch
        0x22 -> :sswitch_c
        0x5c -> :sswitch_b
    .end sparse-switch

    .line 710
    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static parseHeader(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    .line 580
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;ZZ)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    return-object v0
.end method

.method private static quotePhrase(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x5c

    const/4 v1, 0x0

    const/16 v6, 0x22

    .line 313
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v2, v1

    move v0, v1

    .line 316
    :goto_0
    if-ge v2, v3, :cond_9

    .line 317
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 318
    if-eq v4, v6, :cond_0

    if-ne v4, v7, :cond_5

    .line 320
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    add-int/lit8 v0, v3, 0x3

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 321
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    .line 322
    :goto_1
    if-ge v0, v3, :cond_3

    .line 323
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 324
    if-eq v1, v6, :cond_1

    if-ne v1, v7, :cond_2

    .line 326
    :cond_1
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 327
    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 329
    :cond_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 330
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 342
    :cond_4
    :goto_2
    return-object p0

    .line 331
    :cond_5
    const/16 v5, 0x20

    if-ge v4, v5, :cond_6

    const/16 v5, 0xd

    if-eq v4, v5, :cond_6

    const/16 v5, 0xa

    if-eq v4, v5, :cond_6

    const/16 v5, 0x9

    if-ne v4, v5, :cond_7

    :cond_6
    const/16 v5, 0x7f

    if-ge v4, v5, :cond_7

    sget-object v5, Ljavax/mail/internet/InternetAddress;->rfc822phrase:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_8

    .line 334
    :cond_7
    const/4 v0, 0x1

    .line 316
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 337
    :cond_9
    if-eqz v0, :cond_4

    .line 338
    new-instance v0, Ljava/lang/StringBuffer;

    add-int/lit8 v1, v3, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 339
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 340
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2
.end method

.method public static toString([Ljavax/mail/Address;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljavax/mail/internet/InternetAddress;->toString([Ljavax/mail/Address;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString([Ljavax/mail/Address;I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 426
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 427
    :cond_0
    const/4 v0, 0x0

    .line 447
    :goto_0
    return-object v0

    .line 429
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 431
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_4

    .line 432
    if-eqz v0, :cond_2

    .line 433
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 434
    add-int/lit8 p1, p1, 0x2

    .line 437
    :cond_2
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object v2

    .line 438
    invoke-static {v2}, Ljavax/mail/internet/InternetAddress;->lengthOfFirstSegment(Ljava/lang/String;)I

    move-result v3

    .line 439
    add-int/2addr v3, p1

    const/16 v4, 0x4c

    if-le v3, v4, :cond_3

    .line 440
    const-string/jumbo v3, "\r\n\t"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 441
    const/16 p1, 0x8

    .line 443
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 444
    invoke-static {v2, p1}, Ljavax/mail/internet/InternetAddress;->lengthOfLastSegment(Ljava/lang/String;I)I

    move-result p1

    .line 431
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 447
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v4, 0x5c

    .line 346
    const-string/jumbo v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 349
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 350
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 351
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 352
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 353
    if-ne v1, v4, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_2

    .line 354
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 355
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 351
    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    .line 357
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 360
    :cond_1
    return-object p0

    :cond_2
    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 155
    const/4 v1, 0x0

    .line 157
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/internet/InternetAddress;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-object v0

    .line 158
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 367
    instance-of v2, p1, Ljavax/mail/internet/InternetAddress;

    if-nez v2, :cond_1

    .line 376
    :cond_0
    :goto_0
    return v0

    .line 370
    :cond_1
    check-cast p1, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {p1}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 371
    iget-object v3, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-ne v2, v3, :cond_2

    move v0, v1

    .line 372
    goto :goto_0

    .line 373
    :cond_2
    iget-object v3, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 374
    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getGroup(Z)[Ljavax/mail/internet/InternetAddress;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 972
    .line 973
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 975
    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 983
    :cond_0
    :goto_0
    return-object v0

    .line 977
    :cond_1
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 978
    if-ltz v2, :cond_0

    .line 981
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 983
    invoke-static {v0, p1}, Ljavax/mail/internet/InternetAddress;->parseHeader(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    goto :goto_0
.end method

.method public getPersonal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    .line 252
    :goto_0
    return-object v0

    .line 240
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 242
    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    .line 243
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    .line 248
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    goto :goto_0

    .line 252
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    const-string/jumbo v0, "rfc822"

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 384
    const/4 v0, 0x0

    .line 386
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isGroup()Z
    .locals 2

    .prologue
    .line 956
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setPersonal(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 214
    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    .line 215
    if-eqz p1, :cond_0

    .line 216
    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 219
    :goto_0
    return-void

    .line 218
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    goto :goto_0
.end method

.method public setPersonal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 194
    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    .line 195
    if-eqz p1, :cond_0

    .line 196
    invoke-static {p1, p2, v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 199
    :goto_0
    return-void

    .line 198
    :cond_0
    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 265
    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :cond_0
    :goto_0
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 269
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    invoke-static {v1}, Ljavax/mail/internet/InternetAddress;->quotePhrase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    :goto_1
    return-object v0

    .line 270
    :cond_1
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->isGroup()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Ljavax/mail/internet/InternetAddress;->isSimple()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 271
    :cond_2
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    goto :goto_1

    .line 273
    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 266
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public toUnicodeString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 284
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->getPersonal()Ljava/lang/String;

    move-result-object v0

    .line 285
    if-eqz v0, :cond_0

    .line 286
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v0}, Ljavax/mail/internet/InternetAddress;->quotePhrase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    :goto_0
    return-object v0

    .line 287
    :cond_0
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->isGroup()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Ljavax/mail/internet/InternetAddress;->isSimple()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    :cond_1
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    goto :goto_0

    .line 290
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public validate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 856
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, v1}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 857
    return-void
.end method
