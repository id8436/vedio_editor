.class public Lcom/d/a/a/c/h;
.super Lcom/d/a/a/a/b;
.source "UTF8StreamJsonParser.java"


# static fields
.field protected static final L:[I

.field private static final W:[I


# instance fields
.field protected M:Lcom/d/a/a/p;

.field protected final N:Lcom/d/a/a/d/a;

.field protected O:[I

.field protected P:Z

.field protected Q:I

.field protected R:I

.field protected S:I

.field protected T:Ljava/io/InputStream;

.field protected U:[B

.field protected V:Z

.field private X:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/d/a/a/b/a;->b()[I

    move-result-object v0

    sput-object v0, Lcom/d/a/a/c/h;->W:[I

    .line 31
    invoke-static {}, Lcom/d/a/a/b/a;->a()[I

    move-result-object v0

    sput-object v0, Lcom/d/a/a/c/h;->L:[I

    return-void
.end method

.method public constructor <init>(Lcom/d/a/a/b/c;ILjava/io/InputStream;Lcom/d/a/a/p;Lcom/d/a/a/d/a;[BIIZ)V
    .locals 2

    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Lcom/d/a/a/a/b;-><init>(Lcom/d/a/a/b/c;I)V

    .line 60
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/d/a/a/c/h;->O:[I

    .line 136
    iput-object p3, p0, Lcom/d/a/a/c/h;->T:Ljava/io/InputStream;

    .line 137
    iput-object p4, p0, Lcom/d/a/a/c/h;->M:Lcom/d/a/a/p;

    .line 138
    iput-object p5, p0, Lcom/d/a/a/c/h;->N:Lcom/d/a/a/d/a;

    .line 139
    iput-object p6, p0, Lcom/d/a/a/c/h;->U:[B

    .line 140
    iput p7, p0, Lcom/d/a/a/c/h;->d:I

    .line 141
    iput p8, p0, Lcom/d/a/a/c/h;->e:I

    .line 142
    iput p7, p0, Lcom/d/a/a/c/h;->h:I

    .line 144
    neg-int v0, p7

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/d/a/a/c/h;->f:J

    .line 145
    iput-boolean p9, p0, Lcom/d/a/a/c/h;->V:Z

    .line 146
    return-void
.end method

.method private final Y()Lcom/d/a/a/o;
    .locals 4

    .prologue
    .line 859
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/d/a/a/c/h;->p:Z

    .line 860
    iget-object v0, p0, Lcom/d/a/a/c/h;->m:Lcom/d/a/a/o;

    .line 861
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/d/a/a/c/h;->m:Lcom/d/a/a/o;

    .line 866
    sget-object v1, Lcom/d/a/a/o;->d:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_1

    .line 867
    iget-object v1, p0, Lcom/d/a/a/c/h;->l:Lcom/d/a/a/c/d;

    iget v2, p0, Lcom/d/a/a/c/h;->j:I

    iget v3, p0, Lcom/d/a/a/c/h;->k:I

    invoke-virtual {v1, v2, v3}, Lcom/d/a/a/c/d;->a(II)Lcom/d/a/a/c/d;

    move-result-object v1

    iput-object v1, p0, Lcom/d/a/a/c/h;->l:Lcom/d/a/a/c/d;

    .line 871
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/d/a/a/c/h;->K:Lcom/d/a/a/o;

    return-object v0

    .line 868
    :cond_1
    sget-object v1, Lcom/d/a/a/o;->b:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 869
    iget-object v1, p0, Lcom/d/a/a/c/h;->l:Lcom/d/a/a/c/d;

    iget v2, p0, Lcom/d/a/a/c/h;->j:I

    iget v3, p0, Lcom/d/a/a/c/h;->k:I

    invoke-virtual {v1, v2, v3}, Lcom/d/a/a/c/d;->b(II)Lcom/d/a/a/c/d;

    move-result-object v1

    iput-object v1, p0, Lcom/d/a/a/c/h;->l:Lcom/d/a/a/c/d;

    goto :goto_0
.end method

.method private final Z()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x39

    const/16 v1, 0x30

    .line 1507
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    iget v2, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/d/a/a/c/h;->y()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 1533
    :cond_0
    :goto_0
    return v0

    .line 1510
    :cond_1
    iget-object v0, p0, Lcom/d/a/a/c/h;->U:[B

    iget v2, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 1512
    if-lt v0, v1, :cond_2

    if-le v0, v4, :cond_3

    :cond_2
    move v0, v1

    .line 1513
    goto :goto_0

    .line 1516
    :cond_3
    sget-object v2, Lcom/d/a/a/l;->h:Lcom/d/a/a/l;

    invoke-virtual {p0, v2}, Lcom/d/a/a/c/h;->a(Lcom/d/a/a/l;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1517
    const-string/jumbo v2, "Leading zeroes not allowed"

    invoke-virtual {p0, v2}, Lcom/d/a/a/c/h;->b(Ljava/lang/String;)V

    .line 1520
    :cond_4
    iget v2, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/d/a/a/c/h;->d:I

    .line 1521
    if-ne v0, v1, :cond_0

    .line 1522
    :cond_5
    iget v2, p0, Lcom/d/a/a/c/h;->d:I

    iget v3, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v2, v3, :cond_6

    invoke-virtual {p0}, Lcom/d/a/a/c/h;->y()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1523
    :cond_6
    iget-object v0, p0, Lcom/d/a/a/c/h;->U:[B

    iget v2, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 1524
    if-lt v0, v1, :cond_7

    if-le v0, v4, :cond_8

    :cond_7
    move v0, v1

    .line 1525
    goto :goto_0

    .line 1527
    :cond_8
    iget v2, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/d/a/a/c/h;->d:I

    .line 1528
    if-eq v0, v1, :cond_5

    goto :goto_0
.end method

.method private final a(Z)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x20

    .line 3004
    :cond_0
    :goto_0
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    iget v1, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/d/a/a/c/h;->y()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3005
    :cond_1
    iget-object v0, p0, Lcom/d/a/a/c/h;->U:[B

    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 3007
    if-le v0, v3, :cond_7

    .line 3008
    const/16 v1, 0x2f

    if-ne v0, v1, :cond_2

    .line 3009
    invoke-direct {p0}, Lcom/d/a/a/c/h;->af()V

    goto :goto_0

    .line 3012
    :cond_2
    const/16 v1, 0x23

    if-ne v0, v1, :cond_3

    .line 3013
    invoke-direct {p0}, Lcom/d/a/a/c/h;->ah()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3017
    :cond_3
    if-eqz p1, :cond_4

    .line 3018
    return v0

    .line 3020
    :cond_4
    const/16 v1, 0x3a

    if-eq v0, v1, :cond_6

    .line 3021
    if-ge v0, v3, :cond_5

    .line 3022
    invoke-virtual {p0, v0}, Lcom/d/a/a/c/h;->c(I)V

    .line 3024
    :cond_5
    const-string/jumbo v1, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, v0, v1}, Lcom/d/a/a/c/h;->b(ILjava/lang/String;)V

    .line 3026
    :cond_6
    const/4 p1, 0x1

    goto :goto_0

    .line 3027
    :cond_7
    if-eq v0, v3, :cond_0

    .line 3028
    const/16 v1, 0xa

    if-ne v0, v1, :cond_8

    .line 3029
    iget v0, p0, Lcom/d/a/a/c/h;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/d/a/a/c/h;->g:I

    .line 3030
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    iput v0, p0, Lcom/d/a/a/c/h;->h:I

    goto :goto_0

    .line 3031
    :cond_8
    const/16 v1, 0xd

    if-ne v0, v1, :cond_9

    .line 3032
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->X()V

    goto :goto_0

    .line 3033
    :cond_9
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 3034
    invoke-virtual {p0, v0}, Lcom/d/a/a/c/h;->c(I)V

    goto :goto_0

    .line 3038
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unexpected end-of-input within/between "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/d/a/a/c/h;->l:Lcom/d/a/a/c/d;

    invoke-virtual {v1}, Lcom/d/a/a/c/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/h;->a(Ljava/lang/String;)Lcom/d/a/a/j;

    move-result-object v0

    throw v0
.end method

.method private final a([CIIZI)Lcom/d/a/a/o;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1539
    const/4 v0, 0x0

    .line 1540
    const/4 v4, 0x0

    .line 1543
    const/16 v1, 0x2e

    if-ne p3, v1, :cond_12

    .line 1544
    add-int/lit8 v1, p2, 0x1

    int-to-char v2, p3

    aput-char v2, p1, p2

    .line 1548
    :goto_0
    iget v2, p0, Lcom/d/a/a/c/h;->d:I

    iget v3, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v2, v3, :cond_9

    invoke-virtual {p0}, Lcom/d/a/a/c/h;->y()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1549
    const/4 v4, 0x1

    move v5, p3

    .line 1564
    :goto_1
    if-nez v0, :cond_0

    .line 1565
    const-string/jumbo v2, "Decimal point not followed by a digit"

    invoke-virtual {p0, v5, v2}, Lcom/d/a/a/c/h;->a(ILjava/lang/String;)V

    :cond_0
    move v7, v0

    move v0, v1

    move-object v1, p1

    .line 1569
    :goto_2
    const/4 v3, 0x0

    .line 1570
    const/16 v2, 0x65

    if-eq v5, v2, :cond_1

    const/16 v2, 0x45

    if-ne v5, v2, :cond_f

    .line 1571
    :cond_1
    array-length v2, v1

    if-lt v0, v2, :cond_2

    .line 1572
    iget-object v0, p0, Lcom/d/a/a/c/h;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0}, Lcom/d/a/a/e/i;->m()[C

    move-result-object v1

    .line 1573
    const/4 v0, 0x0

    .line 1575
    :cond_2
    add-int/lit8 v2, v0, 0x1

    int-to-char v5, v5

    aput-char v5, v1, v0

    .line 1577
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    iget v5, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v0, v5, :cond_3

    .line 1578
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->x()V

    .line 1580
    :cond_3
    iget-object v0, p0, Lcom/d/a/a/c/h;->U:[B

    iget v5, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v0, v5

    and-int/lit16 v5, v0, 0xff

    .line 1582
    const/16 v0, 0x2d

    if-eq v5, v0, :cond_4

    const/16 v0, 0x2b

    if-ne v5, v0, :cond_e

    .line 1583
    :cond_4
    array-length v0, v1

    if-lt v2, v0, :cond_d

    .line 1584
    iget-object v0, p0, Lcom/d/a/a/c/h;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0}, Lcom/d/a/a/e/i;->m()[C

    move-result-object v1

    .line 1585
    const/4 v0, 0x0

    .line 1587
    :goto_3
    add-int/lit8 v6, v0, 0x1

    int-to-char v2, v5

    aput-char v2, v1, v0

    .line 1589
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    iget v2, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v0, v2, :cond_5

    .line 1590
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->x()V

    .line 1592
    :cond_5
    iget-object v0, p0, Lcom/d/a/a/c/h;->U:[B

    iget v2, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v0, v2

    and-int/lit16 v2, v0, 0xff

    move v0, v6

    .line 1596
    :goto_4
    const/16 v5, 0x39

    if-gt v2, v5, :cond_c

    const/16 v5, 0x30

    if-lt v2, v5, :cond_c

    .line 1597
    add-int/lit8 v3, v3, 0x1

    .line 1598
    array-length v5, v1

    if-lt v0, v5, :cond_6

    .line 1599
    iget-object v0, p0, Lcom/d/a/a/c/h;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0}, Lcom/d/a/a/e/i;->m()[C

    move-result-object v1

    .line 1600
    const/4 v0, 0x0

    .line 1602
    :cond_6
    add-int/lit8 v5, v0, 0x1

    int-to-char v6, v2

    aput-char v6, v1, v0

    .line 1603
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    iget v6, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v0, v6, :cond_b

    invoke-virtual {p0}, Lcom/d/a/a/c/h;->y()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1604
    const/4 v4, 0x1

    move v0, v3

    move v1, v4

    move v3, v5

    .line 1610
    :goto_5
    if-nez v0, :cond_7

    .line 1611
    const-string/jumbo v4, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, v2, v4}, Lcom/d/a/a/c/h;->a(ILjava/lang/String;)V

    .line 1616
    :cond_7
    :goto_6
    if-nez v1, :cond_8

    .line 1617
    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/d/a/a/c/h;->d:I

    .line 1619
    iget-object v1, p0, Lcom/d/a/a/c/h;->l:Lcom/d/a/a/c/d;

    invoke-virtual {v1}, Lcom/d/a/a/c/d;->b()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1620
    invoke-direct {p0, v2}, Lcom/d/a/a/c/h;->o(I)V

    .line 1623
    :cond_8
    iget-object v1, p0, Lcom/d/a/a/c/h;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v1, v3}, Lcom/d/a/a/e/i;->a(I)V

    .line 1626
    invoke-virtual {p0, p4, p5, v7, v0}, Lcom/d/a/a/c/h;->b(ZIII)Lcom/d/a/a/o;

    move-result-object v0

    return-object v0

    .line 1552
    :cond_9
    iget-object v2, p0, Lcom/d/a/a/c/h;->U:[B

    iget v3, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v2, v2, v3

    and-int/lit16 p3, v2, 0xff

    .line 1553
    const/16 v2, 0x30

    if-lt p3, v2, :cond_11

    const/16 v2, 0x39

    if-le p3, v2, :cond_a

    move v5, p3

    .line 1554
    goto/16 :goto_1

    .line 1556
    :cond_a
    add-int/lit8 v0, v0, 0x1

    .line 1557
    array-length v2, p1

    if-lt v1, v2, :cond_10

    .line 1558
    iget-object v1, p0, Lcom/d/a/a/c/h;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v1}, Lcom/d/a/a/e/i;->m()[C

    move-result-object p1

    .line 1559
    const/4 v1, 0x0

    move v2, v1

    .line 1561
    :goto_7
    add-int/lit8 v1, v2, 0x1

    int-to-char v3, p3

    aput-char v3, p1, v2

    goto/16 :goto_0

    .line 1607
    :cond_b
    iget-object v0, p0, Lcom/d/a/a/c/h;->U:[B

    iget v2, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v6, v2, 0x1

    iput v6, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v0, v2

    and-int/lit16 v2, v0, 0xff

    move v0, v5

    goto/16 :goto_4

    :cond_c
    move v1, v4

    move v8, v3

    move v3, v0

    move v0, v8

    goto :goto_5

    :cond_d
    move v0, v2

    goto/16 :goto_3

    :cond_e
    move v0, v2

    move v2, v5

    goto/16 :goto_4

    :cond_f
    move v1, v4

    move v2, v5

    move v8, v3

    move v3, v0

    move v0, v8

    goto :goto_6

    :cond_10
    move v2, v1

    goto :goto_7

    :cond_11
    move v5, p3

    goto/16 :goto_1

    :cond_12
    move v7, v0

    move v5, p3

    move-object v1, p1

    move v0, p2

    goto/16 :goto_2
.end method

.method private final a([CIZI)Lcom/d/a/a/o;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1470
    move v5, p4

    move v2, p2

    move-object v1, p1

    :goto_0
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    iget v3, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/d/a/a/c/h;->y()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1471
    iget-object v0, p0, Lcom/d/a/a/c/h;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0, v2}, Lcom/d/a/a/e/i;->a(I)V

    .line 1472
    invoke-virtual {p0, p3, v5}, Lcom/d/a/a/c/h;->a(ZI)Lcom/d/a/a/o;

    move-result-object v0

    .line 1496
    :goto_1
    return-object v0

    .line 1474
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/h;->U:[B

    iget v3, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v0, v3

    and-int/lit16 v3, v0, 0xff

    .line 1475
    const/16 v0, 0x39

    if-gt v3, v0, :cond_1

    const/16 v0, 0x30

    if-ge v3, v0, :cond_3

    .line 1476
    :cond_1
    const/16 v0, 0x2e

    if-eq v3, v0, :cond_2

    const/16 v0, 0x65

    if-eq v3, v0, :cond_2

    const/16 v0, 0x45

    if-ne v3, v0, :cond_4

    :cond_2
    move-object v0, p0

    move v4, p3

    .line 1477
    invoke-direct/range {v0 .. v5}, Lcom/d/a/a/c/h;->a([CIIZI)Lcom/d/a/a/o;

    move-result-object v0

    goto :goto_1

    .line 1481
    :cond_3
    array-length v0, v1

    if-lt v2, v0, :cond_6

    .line 1482
    iget-object v0, p0, Lcom/d/a/a/c/h;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0}, Lcom/d/a/a/e/i;->m()[C

    move-result-object v1

    .line 1483
    const/4 v2, 0x0

    move v0, v2

    .line 1485
    :goto_2
    add-int/lit8 v2, v0, 0x1

    int-to-char v3, v3

    aput-char v3, v1, v0

    .line 1486
    add-int/lit8 v5, v5, 0x1

    .line 1487
    goto :goto_0

    .line 1488
    :cond_4
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/d/a/a/c/h;->d:I

    .line 1489
    iget-object v0, p0, Lcom/d/a/a/c/h;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0, v2}, Lcom/d/a/a/e/i;->a(I)V

    .line 1491
    iget-object v0, p0, Lcom/d/a/a/c/h;->l:Lcom/d/a/a/c/d;

    invoke-virtual {v0}, Lcom/d/a/a/c/d;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1492
    iget-object v0, p0, Lcom/d/a/a/c/h;->U:[B

    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/d/a/a/c/h;->o(I)V

    .line 1496
    :cond_5
    invoke-virtual {p0, p3, v5}, Lcom/d/a/a/c/h;->a(ZI)Lcom/d/a/a/o;

    move-result-object v0

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_2
.end method

.method private final a(IIII)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1893
    iget-object v0, p0, Lcom/d/a/a/c/h;->O:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1894
    iget-object v1, p0, Lcom/d/a/a/c/h;->O:[I

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/d/a/a/c/h;->a([IIIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final a(IIIII)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1898
    iget-object v0, p0, Lcom/d/a/a/c/h;->O:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1899
    iget-object v0, p0, Lcom/d/a/a/c/h;->O:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 1900
    iget-object v1, p0, Lcom/d/a/a/c/h;->O:[I

    const/4 v2, 0x2

    move-object v0, p0

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/d/a/a/c/h;->a([IIIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final a([III)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 2260
    shl-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, -0x4

    add-int v6, v0, p3

    .line 2269
    const/4 v0, 0x4

    if-ge p3, v0, :cond_7

    .line 2270
    add-int/lit8 v0, p2, -0x1

    aget v0, p1, v0

    .line 2272
    add-int/lit8 v1, p2, -0x1

    rsub-int/lit8 v2, p3, 0x4

    shl-int/lit8 v2, v2, 0x3

    shl-int v2, v0, v2

    aput v2, p1, v1

    .line 2278
    :goto_0
    iget-object v1, p0, Lcom/d/a/a/c/h;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v1}, Lcom/d/a/a/e/i;->k()[C

    move-result-object v1

    .line 2279
    const/4 v5, 0x0

    .line 2281
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v6, :cond_b

    .line 2282
    shr-int/lit8 v2, v3, 0x2

    aget v2, p1, v2

    .line 2283
    and-int/lit8 v4, v3, 0x3

    .line 2284
    rsub-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x3

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    .line 2285
    add-int/lit8 v3, v3, 0x1

    .line 2287
    const/16 v4, 0x7f

    if-le v2, v4, :cond_d

    .line 2289
    and-int/lit16 v4, v2, 0xe0

    const/16 v7, 0xc0

    if-ne v4, v7, :cond_8

    .line 2290
    and-int/lit8 v4, v2, 0x1f

    .line 2291
    const/4 v2, 0x1

    move v10, v2

    move v2, v4

    move v4, v10

    .line 2302
    :goto_2
    add-int v7, v3, v4

    if-le v7, v6, :cond_0

    .line 2303
    const-string/jumbo v7, " in field name"

    invoke-virtual {p0, v7}, Lcom/d/a/a/c/h;->c(Ljava/lang/String;)V

    .line 2307
    :cond_0
    shr-int/lit8 v7, v3, 0x2

    aget v7, p1, v7

    .line 2308
    and-int/lit8 v8, v3, 0x3

    .line 2309
    rsub-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x3

    shr-int/2addr v7, v8

    .line 2310
    add-int/lit8 v3, v3, 0x1

    .line 2312
    and-int/lit16 v8, v7, 0xc0

    const/16 v9, 0x80

    if-eq v8, v9, :cond_1

    .line 2313
    invoke-virtual {p0, v7}, Lcom/d/a/a/c/h;->m(I)V

    .line 2315
    :cond_1
    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v2, v7

    .line 2316
    const/4 v7, 0x1

    if-le v4, v7, :cond_4

    .line 2317
    shr-int/lit8 v7, v3, 0x2

    aget v7, p1, v7

    .line 2318
    and-int/lit8 v8, v3, 0x3

    .line 2319
    rsub-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x3

    shr-int/2addr v7, v8

    .line 2320
    add-int/lit8 v3, v3, 0x1

    .line 2322
    and-int/lit16 v8, v7, 0xc0

    const/16 v9, 0x80

    if-eq v8, v9, :cond_2

    .line 2323
    invoke-virtual {p0, v7}, Lcom/d/a/a/c/h;->m(I)V

    .line 2325
    :cond_2
    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v2, v7

    .line 2326
    const/4 v7, 0x2

    if-le v4, v7, :cond_4

    .line 2327
    shr-int/lit8 v7, v3, 0x2

    aget v7, p1, v7

    .line 2328
    and-int/lit8 v8, v3, 0x3

    .line 2329
    rsub-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x3

    shr-int/2addr v7, v8

    .line 2330
    add-int/lit8 v3, v3, 0x1

    .line 2331
    and-int/lit16 v8, v7, 0xc0

    const/16 v9, 0x80

    if-eq v8, v9, :cond_3

    .line 2332
    and-int/lit16 v8, v7, 0xff

    invoke-virtual {p0, v8}, Lcom/d/a/a/c/h;->m(I)V

    .line 2334
    :cond_3
    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v2, v7

    .line 2337
    :cond_4
    const/4 v7, 0x2

    if-le v4, v7, :cond_d

    .line 2338
    const/high16 v4, 0x10000

    sub-int/2addr v2, v4

    .line 2339
    array-length v4, v1

    if-lt v5, v4, :cond_5

    .line 2340
    iget-object v1, p0, Lcom/d/a/a/c/h;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v1}, Lcom/d/a/a/e/i;->n()[C

    move-result-object v1

    .line 2342
    :cond_5
    add-int/lit8 v4, v5, 0x1

    const v7, 0xd800

    shr-int/lit8 v8, v2, 0xa

    add-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v1, v5

    .line 2343
    const v5, 0xdc00

    and-int/lit16 v2, v2, 0x3ff

    or-int/2addr v2, v5

    move v10, v2

    move v2, v3

    move v3, v4

    move-object v4, v1

    move v1, v10

    .line 2346
    :goto_3
    array-length v5, v4

    if-lt v3, v5, :cond_6

    .line 2347
    iget-object v4, p0, Lcom/d/a/a/c/h;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v4}, Lcom/d/a/a/e/i;->n()[C

    move-result-object v4

    .line 2349
    :cond_6
    add-int/lit8 v5, v3, 0x1

    int-to-char v1, v1

    aput-char v1, v4, v3

    move v3, v2

    move-object v1, v4

    .line 2350
    goto/16 :goto_1

    .line 2274
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2292
    :cond_8
    and-int/lit16 v4, v2, 0xf0

    const/16 v7, 0xe0

    if-ne v4, v7, :cond_9

    .line 2293
    and-int/lit8 v4, v2, 0xf

    .line 2294
    const/4 v2, 0x2

    move v10, v2

    move v2, v4

    move v4, v10

    goto/16 :goto_2

    .line 2295
    :cond_9
    and-int/lit16 v4, v2, 0xf8

    const/16 v7, 0xf0

    if-ne v4, v7, :cond_a

    .line 2296
    and-int/lit8 v4, v2, 0x7

    .line 2297
    const/4 v2, 0x3

    move v10, v2

    move v2, v4

    move v4, v10

    goto/16 :goto_2

    .line 2299
    :cond_a
    invoke-virtual {p0, v2}, Lcom/d/a/a/c/h;->l(I)V

    .line 2300
    const/4 v2, 0x1

    move v4, v2

    goto/16 :goto_2

    .line 2353
    :cond_b
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v5}, Ljava/lang/String;-><init>([CII)V

    .line 2355
    const/4 v1, 0x4

    if-ge p3, v1, :cond_c

    .line 2356
    add-int/lit8 v1, p2, -0x1

    aput v0, p1, v1

    .line 2358
    :cond_c
    iget-object v0, p0, Lcom/d/a/a/c/h;->N:Lcom/d/a/a/d/a;

    invoke-virtual {v0, v2, p1, p2}, Lcom/d/a/a/d/a;->a(Ljava/lang/String;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    move-object v4, v1

    move v1, v2

    move v2, v3

    move v3, v5

    goto :goto_3
.end method

.method private final a([IIII)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 2236
    array-length v0, p1

    if-lt p2, v0, :cond_0

    .line 2237
    array-length v0, p1

    invoke-static {p1, v0}, Lcom/d/a/a/c/h;->a([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/d/a/a/c/h;->O:[I

    .line 2239
    :cond_0
    add-int/lit8 v1, p2, 0x1

    invoke-static {p3, p4}, Lcom/d/a/a/c/h;->d(II)I

    move-result v0

    aput v0, p1, p2

    .line 2240
    iget-object v0, p0, Lcom/d/a/a/c/h;->N:Lcom/d/a/a/d/a;

    invoke-virtual {v0, p1, v1}, Lcom/d/a/a/d/a;->a([II)Ljava/lang/String;

    move-result-object v0

    .line 2241
    if-nez v0, :cond_1

    .line 2242
    invoke-direct {p0, p1, v1, p4}, Lcom/d/a/a/c/h;->a([III)Ljava/lang/String;

    move-result-object v0

    .line 2244
    :cond_1
    return-object v0
.end method

.method private final a(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2799
    invoke-virtual {p0, p3}, Lcom/d/a/a/c/h;->j(I)I

    move-result v0

    int-to-char v0, v0

    .line 2800
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2801
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/h;->e(Ljava/lang/String;)V

    .line 2803
    :cond_0
    return-void
.end method

.method private final a([CI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2439
    sget-object v4, Lcom/d/a/a/c/h;->W:[I

    .line 2440
    iget-object v5, p0, Lcom/d/a/a/c/h;->U:[B

    .line 2447
    :goto_0
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    .line 2448
    iget v2, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v0, v2, :cond_0

    .line 2449
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->x()V

    .line 2450
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    .line 2452
    :cond_0
    array-length v2, p1

    if-lt p2, v2, :cond_1

    .line 2453
    iget-object v2, p0, Lcom/d/a/a/c/h;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v2}, Lcom/d/a/a/e/i;->m()[C

    move-result-object p1

    move p2, v1

    .line 2456
    :cond_1
    iget v2, p0, Lcom/d/a/a/c/h;->e:I

    array-length v3, p1

    sub-int/2addr v3, p2

    add-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 2457
    :goto_1
    if-ge v0, v6, :cond_3

    .line 2458
    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v5, v0

    and-int/lit16 v0, v0, 0xff

    .line 2459
    aget v3, v4, v0

    if-eqz v3, :cond_2

    .line 2460
    iput v2, p0, Lcom/d/a/a/c/h;->d:I

    .line 2468
    const/16 v2, 0x22

    if-ne v0, v2, :cond_4

    .line 2514
    iget-object v0, p0, Lcom/d/a/a/c/h;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0, p2}, Lcom/d/a/a/e/i;->a(I)V

    .line 2515
    return-void

    .line 2463
    :cond_2
    add-int/lit8 v3, p2, 0x1

    int-to-char v0, v0

    aput-char v0, p1, p2

    move v0, v2

    move p2, v3

    goto :goto_1

    .line 2465
    :cond_3
    iput v0, p0, Lcom/d/a/a/c/h;->d:I

    goto :goto_0

    .line 2472
    :cond_4
    aget v2, v4, v0

    packed-switch v2, :pswitch_data_0

    .line 2498
    const/16 v2, 0x20

    if-ge v0, v2, :cond_7

    .line 2500
    const-string/jumbo v2, "string value"

    invoke-virtual {p0, v0, v2}, Lcom/d/a/a/c/h;->c(ILjava/lang/String;)V

    .line 2507
    :goto_2
    array-length v2, p1

    if-lt p2, v2, :cond_8

    .line 2508
    iget-object v2, p0, Lcom/d/a/a/c/h;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v2}, Lcom/d/a/a/e/i;->m()[C

    move-result-object p1

    move v2, v1

    .line 2512
    :goto_3
    add-int/lit8 p2, v2, 0x1

    int-to-char v0, v0

    aput-char v0, p1, v2

    goto :goto_0

    .line 2474
    :pswitch_0
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->N()C

    move-result v0

    goto :goto_2

    .line 2477
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/d/a/a/c/h;->p(I)I

    move-result v0

    goto :goto_2

    .line 2480
    :pswitch_2
    iget v2, p0, Lcom/d/a/a/c/h;->e:I

    iget v3, p0, Lcom/d/a/a/c/h;->d:I

    sub-int/2addr v2, v3

    const/4 v3, 0x2

    if-lt v2, v3, :cond_5

    .line 2481
    invoke-direct {p0, v0}, Lcom/d/a/a/c/h;->r(I)I

    move-result v0

    goto :goto_2

    .line 2483
    :cond_5
    invoke-direct {p0, v0}, Lcom/d/a/a/c/h;->q(I)I

    move-result v0

    goto :goto_2

    .line 2487
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/d/a/a/c/h;->s(I)I

    move-result v2

    .line 2489
    add-int/lit8 v0, p2, 0x1

    const v3, 0xd800

    shr-int/lit8 v6, v2, 0xa

    or-int/2addr v3, v6

    int-to-char v3, v3

    aput-char v3, p1, p2

    .line 2490
    array-length v3, p1

    if-lt v0, v3, :cond_6

    .line 2491
    iget-object v0, p0, Lcom/d/a/a/c/h;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0}, Lcom/d/a/a/e/i;->m()[C

    move-result-object p1

    move v0, v1

    .line 2494
    :cond_6
    const v3, 0xdc00

    and-int/lit16 v2, v2, 0x3ff

    or-int/2addr v2, v3

    move p2, v0

    move v0, v2

    .line 2496
    goto :goto_2

    .line 2503
    :cond_7
    invoke-virtual {p0, v0}, Lcom/d/a/a/c/h;->k(I)V

    goto :goto_2

    :cond_8
    move v2, p2

    goto :goto_3

    .line 2472
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a([II)[I
    .locals 1

    .prologue
    .line 3500
    if-nez p0, :cond_0

    .line 3501
    new-array v0, p1, [I

    .line 3503
    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    add-int/2addr v0, p1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    goto :goto_0
.end method

.method private final aa()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x20

    .line 2813
    :cond_0
    :goto_0
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    iget v1, p0, Lcom/d/a/a/c/h;->e:I

    if-ge v0, v1, :cond_6

    .line 2814
    iget-object v0, p0, Lcom/d/a/a/c/h;->U:[B

    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 2815
    if-le v0, v3, :cond_3

    .line 2816
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1

    const/16 v1, 0x23

    if-ne v0, v1, :cond_2

    .line 2817
    :cond_1
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/d/a/a/c/h;->d:I

    .line 2818
    invoke-direct {p0}, Lcom/d/a/a/c/h;->ab()I

    move-result v0

    .line 2833
    :cond_2
    :goto_1
    return v0

    .line 2822
    :cond_3
    if-eq v0, v3, :cond_0

    .line 2823
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 2824
    iget v0, p0, Lcom/d/a/a/c/h;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/d/a/a/c/h;->g:I

    .line 2825
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    iput v0, p0, Lcom/d/a/a/c/h;->h:I

    goto :goto_0

    .line 2826
    :cond_4
    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    .line 2827
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->X()V

    goto :goto_0

    .line 2828
    :cond_5
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 2829
    invoke-virtual {p0, v0}, Lcom/d/a/a/c/h;->c(I)V

    goto :goto_0

    .line 2833
    :cond_6
    invoke-direct {p0}, Lcom/d/a/a/c/h;->ab()I

    move-result v0

    goto :goto_1
.end method

.method private final ab()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x20

    .line 2838
    :cond_0
    :goto_0
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    iget v1, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/d/a/a/c/h;->y()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2839
    :cond_1
    iget-object v0, p0, Lcom/d/a/a/c/h;->U:[B

    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 2840
    if-le v0, v3, :cond_4

    .line 2841
    const/16 v1, 0x2f

    if-ne v0, v1, :cond_2

    .line 2842
    invoke-direct {p0}, Lcom/d/a/a/c/h;->af()V

    goto :goto_0

    .line 2845
    :cond_2
    const/16 v1, 0x23

    if-ne v0, v1, :cond_3

    .line 2846
    invoke-direct {p0}, Lcom/d/a/a/c/h;->ah()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2850
    :cond_3
    return v0

    .line 2852
    :cond_4
    if-eq v0, v3, :cond_0

    .line 2853
    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 2854
    iget v0, p0, Lcom/d/a/a/c/h;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/d/a/a/c/h;->g:I

    .line 2855
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    iput v0, p0, Lcom/d/a/a/c/h;->h:I

    goto :goto_0

    .line 2856
    :cond_5
    const/16 v1, 0xd

    if-ne v0, v1, :cond_6

    .line 2857
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->X()V

    goto :goto_0

    .line 2858
    :cond_6
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 2859
    invoke-virtual {p0, v0}, Lcom/d/a/a/c/h;->c(I)V

    goto :goto_0

    .line 2863
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unexpected end-of-input within/between "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/d/a/a/c/h;->l:Lcom/d/a/a/c/d;

    invoke-virtual {v1}, Lcom/d/a/a/c/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/h;->a(Ljava/lang/String;)Lcom/d/a/a/j;

    move-result-object v0

    throw v0
.end method

.method private final ac()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x23

    const/16 v6, 0xd

    const/16 v5, 0xa

    const/16 v4, 0x9

    const/16 v3, 0x20

    .line 2870
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    iget v1, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v0, v1, :cond_1

    .line 2871
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->y()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2872
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->D()I

    move-result v0

    .line 2914
    :cond_0
    :goto_0
    return v0

    .line 2875
    :cond_1
    iget-object v0, p0, Lcom/d/a/a/c/h;->U:[B

    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 2876
    if-le v0, v3, :cond_3

    .line 2877
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    if-ne v0, v7, :cond_0

    .line 2878
    :cond_2
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/d/a/a/c/h;->d:I

    .line 2879
    invoke-direct {p0}, Lcom/d/a/a/c/h;->ad()I

    move-result v0

    goto :goto_0

    .line 2883
    :cond_3
    if-eq v0, v3, :cond_4

    .line 2884
    if-ne v0, v5, :cond_6

    .line 2885
    iget v0, p0, Lcom/d/a/a/c/h;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/d/a/a/c/h;->g:I

    .line 2886
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    iput v0, p0, Lcom/d/a/a/c/h;->h:I

    .line 2894
    :cond_4
    :goto_1
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    iget v1, p0, Lcom/d/a/a/c/h;->e:I

    if-ge v0, v1, :cond_b

    .line 2895
    iget-object v0, p0, Lcom/d/a/a/c/h;->U:[B

    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 2896
    if-le v0, v3, :cond_8

    .line 2897
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_5

    if-ne v0, v7, :cond_0

    .line 2898
    :cond_5
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/d/a/a/c/h;->d:I

    .line 2899
    invoke-direct {p0}, Lcom/d/a/a/c/h;->ad()I

    move-result v0

    goto :goto_0

    .line 2887
    :cond_6
    if-ne v0, v6, :cond_7

    .line 2888
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->X()V

    goto :goto_1

    .line 2889
    :cond_7
    if-eq v0, v4, :cond_4

    .line 2890
    invoke-virtual {p0, v0}, Lcom/d/a/a/c/h;->c(I)V

    goto :goto_1

    .line 2903
    :cond_8
    if-eq v0, v3, :cond_4

    .line 2904
    if-ne v0, v5, :cond_9

    .line 2905
    iget v0, p0, Lcom/d/a/a/c/h;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/d/a/a/c/h;->g:I

    .line 2906
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    iput v0, p0, Lcom/d/a/a/c/h;->h:I

    goto :goto_1

    .line 2907
    :cond_9
    if-ne v0, v6, :cond_a

    .line 2908
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->X()V

    goto :goto_1

    .line 2909
    :cond_a
    if-eq v0, v4, :cond_4

    .line 2910
    invoke-virtual {p0, v0}, Lcom/d/a/a/c/h;->c(I)V

    goto :goto_1

    .line 2914
    :cond_b
    invoke-direct {p0}, Lcom/d/a/a/c/h;->ad()I

    move-result v0

    goto :goto_0
.end method

.method private final ad()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x20

    .line 2919
    :cond_0
    :goto_0
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    iget v1, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/d/a/a/c/h;->y()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2920
    :cond_1
    iget-object v0, p0, Lcom/d/a/a/c/h;->U:[B

    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 2921
    if-le v0, v3, :cond_4

    .line 2922
    const/16 v1, 0x2f

    if-ne v0, v1, :cond_2

    .line 2923
    invoke-direct {p0}, Lcom/d/a/a/c/h;->af()V

    goto :goto_0

    .line 2926
    :cond_2
    const/16 v1, 0x23

    if-ne v0, v1, :cond_3

    .line 2927
    invoke-direct {p0}, Lcom/d/a/a/c/h;->ah()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2944
    :cond_3
    :goto_1
    return v0

    .line 2932
    :cond_4
    if-eq v0, v3, :cond_0

    .line 2933
    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 2934
    iget v0, p0, Lcom/d/a/a/c/h;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/d/a/a/c/h;->g:I

    .line 2935
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    iput v0, p0, Lcom/d/a/a/c/h;->h:I

    goto :goto_0

    .line 2936
    :cond_5
    const/16 v1, 0xd

    if-ne v0, v1, :cond_6

    .line 2937
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->X()V

    goto :goto_0

    .line 2938
    :cond_6
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 2939
    invoke-virtual {p0, v0}, Lcom/d/a/a/c/h;->c(I)V

    goto :goto_0

    .line 2944
    :cond_7
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->D()I

    move-result v0

    goto :goto_1
.end method

.method private final ae()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x9

    const/16 v5, 0x2f

    const/16 v4, 0x23

    const/4 v3, 0x1

    const/16 v2, 0x20

    .line 2949
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v0, v1, :cond_0

    .line 2950
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/d/a/a/c/h;->a(Z)I

    move-result v0

    .line 2999
    :goto_0
    return v0

    .line 2953
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/h;->U:[B

    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v0, v1

    .line 2954
    const/16 v1, 0x3a

    if-ne v0, v1, :cond_8

    .line 2955
    iget-object v0, p0, Lcom/d/a/a/c/h;->U:[B

    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v0, v1

    .line 2956
    if-le v0, v2, :cond_3

    .line 2957
    if-eq v0, v5, :cond_1

    if-ne v0, v4, :cond_2

    .line 2958
    :cond_1
    invoke-direct {p0, v3}, Lcom/d/a/a/c/h;->a(Z)I

    move-result v0

    goto :goto_0

    .line 2960
    :cond_2
    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/d/a/a/c/h;->d:I

    goto :goto_0

    .line 2963
    :cond_3
    if-eq v0, v2, :cond_4

    if-ne v0, v6, :cond_7

    .line 2964
    :cond_4
    iget-object v0, p0, Lcom/d/a/a/c/h;->U:[B

    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v0, v1

    .line 2965
    if-le v0, v2, :cond_7

    .line 2966
    if-eq v0, v5, :cond_5

    if-ne v0, v4, :cond_6

    .line 2967
    :cond_5
    invoke-direct {p0, v3}, Lcom/d/a/a/c/h;->a(Z)I

    move-result v0

    goto :goto_0

    .line 2969
    :cond_6
    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/d/a/a/c/h;->d:I

    goto :goto_0

    .line 2973
    :cond_7
    invoke-direct {p0, v3}, Lcom/d/a/a/c/h;->a(Z)I

    move-result v0

    goto :goto_0

    .line 2975
    :cond_8
    if-eq v0, v2, :cond_9

    if-ne v0, v6, :cond_a

    .line 2976
    :cond_9
    iget-object v0, p0, Lcom/d/a/a/c/h;->U:[B

    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v0, v1

    .line 2978
    :cond_a
    const/16 v1, 0x3a

    if-ne v0, v1, :cond_12

    .line 2979
    iget-object v0, p0, Lcom/d/a/a/c/h;->U:[B

    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v0, v1

    .line 2980
    if-le v0, v2, :cond_d

    .line 2981
    if-eq v0, v5, :cond_b

    if-ne v0, v4, :cond_c

    .line 2982
    :cond_b
    invoke-direct {p0, v3}, Lcom/d/a/a/c/h;->a(Z)I

    move-result v0

    goto :goto_0

    .line 2984
    :cond_c
    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/d/a/a/c/h;->d:I

    goto :goto_0

    .line 2987
    :cond_d
    if-eq v0, v2, :cond_e

    if-ne v0, v6, :cond_11

    .line 2988
    :cond_e
    iget-object v0, p0, Lcom/d/a/a/c/h;->U:[B

    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v0, v1

    .line 2989
    if-le v0, v2, :cond_11

    .line 2990
    if-eq v0, v5, :cond_f

    if-ne v0, v4, :cond_10

    .line 2991
    :cond_f
    invoke-direct {p0, v3}, Lcom/d/a/a/c/h;->a(Z)I

    move-result v0

    goto/16 :goto_0

    .line 2993
    :cond_10
    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/d/a/a/c/h;->d:I

    goto/16 :goto_0

    .line 2997
    :cond_11
    invoke-direct {p0, v3}, Lcom/d/a/a/c/h;->a(Z)I

    move-result v0

    goto/16 :goto_0

    .line 2999
    :cond_12
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/d/a/a/c/h;->a(Z)I

    move-result v0

    goto/16 :goto_0
.end method

.method private final af()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x2f

    .line 3043
    sget-object v0, Lcom/d/a/a/l;->b:Lcom/d/a/a/l;

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/h;->a(Lcom/d/a/a/l;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3044
    const-string/jumbo v0, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    invoke-virtual {p0, v3, v0}, Lcom/d/a/a/c/h;->b(ILjava/lang/String;)V

    .line 3047
    :cond_0
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    iget v1, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/d/a/a/c/h;->y()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3048
    const-string/jumbo v0, " in a comment"

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/h;->c(Ljava/lang/String;)V

    .line 3050
    :cond_1
    iget-object v0, p0, Lcom/d/a/a/c/h;->U:[B

    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 3051
    if-ne v0, v3, :cond_2

    .line 3052
    invoke-direct {p0}, Lcom/d/a/a/c/h;->ai()V

    .line 3058
    :goto_0
    return-void

    .line 3053
    :cond_2
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_3

    .line 3054
    invoke-direct {p0}, Lcom/d/a/a/c/h;->ag()V

    goto :goto_0

    .line 3056
    :cond_3
    const-string/jumbo v1, "was expecting either \'*\' or \'/\' for a comment"

    invoke-virtual {p0, v0, v1}, Lcom/d/a/a/c/h;->b(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private final ag()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3063
    invoke-static {}, Lcom/d/a/a/b/a;->e()[I

    move-result-object v0

    .line 3067
    :cond_0
    :goto_0
    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    iget v2, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/d/a/a/c/h;->y()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3068
    :cond_1
    iget-object v1, p0, Lcom/d/a/a/c/h;->U:[B

    iget v2, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 3069
    aget v2, v0, v1

    .line 3070
    if-eqz v2, :cond_0

    .line 3071
    sparse-switch v2, :sswitch_data_0

    .line 3099
    invoke-virtual {p0, v1}, Lcom/d/a/a/c/h;->k(I)V

    goto :goto_0

    .line 3073
    :sswitch_0
    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    iget v2, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/d/a/a/c/h;->y()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3103
    :cond_2
    const-string/jumbo v0, " in a comment"

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/h;->c(Ljava/lang/String;)V

    .line 3104
    :goto_1
    return-void

    .line 3076
    :cond_3
    iget-object v1, p0, Lcom/d/a/a/c/h;->U:[B

    iget v2, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v1, v1, v2

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_0

    .line 3077
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/d/a/a/c/h;->d:I

    goto :goto_1

    .line 3082
    :sswitch_1
    iget v1, p0, Lcom/d/a/a/c/h;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/d/a/a/c/h;->g:I

    .line 3083
    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    iput v1, p0, Lcom/d/a/a/c/h;->h:I

    goto :goto_0

    .line 3086
    :sswitch_2
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->X()V

    goto :goto_0

    .line 3089
    :sswitch_3
    invoke-direct {p0, v1}, Lcom/d/a/a/c/h;->t(I)V

    goto :goto_0

    .line 3092
    :sswitch_4
    invoke-direct {p0, v1}, Lcom/d/a/a/c/h;->u(I)V

    goto :goto_0

    .line 3095
    :sswitch_5
    invoke-direct {p0, v1}, Lcom/d/a/a/c/h;->v(I)V

    goto :goto_0

    .line 3071
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0xa -> :sswitch_1
        0xd -> :sswitch_2
        0x2a -> :sswitch_0
    .end sparse-switch
.end method

.method private final ah()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3108
    sget-object v0, Lcom/d/a/a/l;->c:Lcom/d/a/a/l;

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/h;->a(Lcom/d/a/a/l;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3109
    const/4 v0, 0x0

    .line 3112
    :goto_0
    return v0

    .line 3111
    :cond_0
    invoke-direct {p0}, Lcom/d/a/a/c/h;->ai()V

    .line 3112
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private final ai()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3122
    invoke-static {}, Lcom/d/a/a/b/a;->e()[I

    move-result-object v0

    .line 3123
    :cond_0
    :goto_0
    :sswitch_0
    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    iget v2, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/d/a/a/c/h;->y()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3124
    :cond_1
    iget-object v1, p0, Lcom/d/a/a/c/h;->U:[B

    iget v2, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 3125
    aget v2, v0, v1

    .line 3126
    if-eqz v2, :cond_0

    .line 3127
    sparse-switch v2, :sswitch_data_0

    .line 3147
    if-gez v2, :cond_0

    .line 3149
    invoke-virtual {p0, v1}, Lcom/d/a/a/c/h;->k(I)V

    goto :goto_0

    .line 3129
    :sswitch_1
    iget v0, p0, Lcom/d/a/a/c/h;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/d/a/a/c/h;->g:I

    .line 3130
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    iput v0, p0, Lcom/d/a/a/c/h;->h:I

    .line 3154
    :cond_2
    :goto_1
    return-void

    .line 3133
    :sswitch_2
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->X()V

    goto :goto_1

    .line 3138
    :sswitch_3
    invoke-direct {p0, v1}, Lcom/d/a/a/c/h;->t(I)V

    goto :goto_0

    .line 3141
    :sswitch_4
    invoke-direct {p0, v1}, Lcom/d/a/a/c/h;->u(I)V

    goto :goto_0

    .line 3144
    :sswitch_5
    invoke-direct {p0, v1}, Lcom/d/a/a/c/h;->v(I)V

    goto :goto_0

    .line 3127
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0xa -> :sswitch_1
        0xd -> :sswitch_2
        0x2a -> :sswitch_0
    .end sparse-switch
.end method

.method private aj()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3430
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    iget v1, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v0, v1, :cond_0

    .line 3431
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->x()V

    .line 3433
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/h;->U:[B

    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private final ak()V
    .locals 6

    .prologue
    .line 3657
    iget v0, p0, Lcom/d/a/a/c/h;->g:I

    iput v0, p0, Lcom/d/a/a/c/h;->j:I

    .line 3658
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    .line 3659
    iget-wide v2, p0, Lcom/d/a/a/c/h;->f:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/d/a/a/c/h;->i:J

    .line 3660
    iget v1, p0, Lcom/d/a/a/c/h;->h:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/d/a/a/c/h;->k:I

    .line 3661
    return-void
.end method

.method private final al()V
    .locals 2

    .prologue
    .line 3666
    iget v0, p0, Lcom/d/a/a/c/h;->g:I

    iput v0, p0, Lcom/d/a/a/c/h;->R:I

    .line 3667
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    .line 3668
    iput v0, p0, Lcom/d/a/a/c/h;->Q:I

    .line 3669
    iget v1, p0, Lcom/d/a/a/c/h;->h:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/d/a/a/c/h;->S:I

    .line 3670
    return-void
.end method

.method private final b(III)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1889
    iget-object v1, p0, Lcom/d/a/a/c/h;->O:[I

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/d/a/a/c/h;->a([IIIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final b(IIII)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 2222
    invoke-static {p3, p4}, Lcom/d/a/a/c/h;->d(II)I

    move-result v1

    .line 2223
    iget-object v0, p0, Lcom/d/a/a/c/h;->N:Lcom/d/a/a/d/a;

    invoke-virtual {v0, p1, p2, v1}, Lcom/d/a/a/d/a;->a(III)Ljava/lang/String;

    move-result-object v0

    .line 2224
    if-eqz v0, :cond_0

    .line 2231
    :goto_0
    return-object v0

    .line 2227
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/h;->O:[I

    .line 2228
    const/4 v2, 0x0

    aput p1, v0, v2

    .line 2229
    const/4 v2, 0x1

    aput p2, v0, v2

    .line 2230
    const/4 v2, 0x2

    invoke-static {v1, p4}, Lcom/d/a/a/c/h;->d(II)I

    move-result v1

    aput v1, v0, v2

    .line 2231
    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, p4}, Lcom/d/a/a/c/h;->a([III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final b(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2778
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2780
    :cond_0
    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    iget v2, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/d/a/a/c/h;->y()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/d/a/a/c/h;->U:[B

    iget v2, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v1, v1, v2

    .line 2781
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_3

    .line 2782
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/d/a/a/c/h;->e(Ljava/lang/String;)V

    .line 2784
    :cond_3
    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/d/a/a/c/h;->d:I

    .line 2785
    add-int/lit8 p2, p2, 0x1

    if-lt p2, v0, :cond_0

    .line 2788
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    iget v1, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/d/a/a/c/h;->y()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2795
    :cond_4
    :goto_0
    return-void

    .line 2791
    :cond_5
    iget-object v0, p0, Lcom/d/a/a/c/h;->U:[B

    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 2792
    const/16 v1, 0x30

    if-lt v0, v1, :cond_4

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_4

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_4

    .line 2793
    invoke-direct {p0, p1, p2, v0}, Lcom/d/a/a/c/h;->a(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private final c(II)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 2195
    invoke-static {p1, p2}, Lcom/d/a/a/c/h;->d(II)I

    move-result v1

    .line 2197
    iget-object v0, p0, Lcom/d/a/a/c/h;->N:Lcom/d/a/a/d/a;

    invoke-virtual {v0, v1}, Lcom/d/a/a/d/a;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 2198
    if-eqz v0, :cond_0

    .line 2203
    :goto_0
    return-object v0

    .line 2202
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/h;->O:[I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 2203
    iget-object v0, p0, Lcom/d/a/a/c/h;->O:[I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2}, Lcom/d/a/a/c/h;->a([III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final c(III)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 2208
    invoke-static {p2, p3}, Lcom/d/a/a/c/h;->d(II)I

    move-result v1

    .line 2210
    iget-object v0, p0, Lcom/d/a/a/c/h;->N:Lcom/d/a/a/d/a;

    invoke-virtual {v0, p1, v1}, Lcom/d/a/a/d/a;->a(II)Ljava/lang/String;

    move-result-object v0

    .line 2211
    if-eqz v0, :cond_0

    .line 2217
    :goto_0
    return-object v0

    .line 2215
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/h;->O:[I

    const/4 v2, 0x0

    aput p1, v0, v2

    .line 2216
    iget-object v0, p0, Lcom/d/a/a/c/h;->O:[I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 2217
    iget-object v0, p0, Lcom/d/a/a/c/h;->O:[I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p3}, Lcom/d/a/a/c/h;->a([III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static final d(II)I
    .locals 2

    .prologue
    .line 3682
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    :goto_0
    return p0

    :cond_0
    const/4 v0, -0x1

    shl-int/lit8 v1, p1, 0x3

    shl-int/2addr v0, v1

    or-int/2addr p0, v0

    goto :goto_0
.end method

.method private final n(I)Lcom/d/a/a/o;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 816
    const/16 v0, 0x22

    if-ne p1, v0, :cond_0

    .line 817
    iput-boolean v1, p0, Lcom/d/a/a/c/h;->P:Z

    .line 818
    sget-object v0, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    iput-object v0, p0, Lcom/d/a/a/c/h;->K:Lcom/d/a/a/o;

    .line 854
    :goto_0
    return-object v0

    .line 820
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 854
    invoke-virtual {p0, p1}, Lcom/d/a/a/c/h;->i(I)Lcom/d/a/a/o;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/c/h;->K:Lcom/d/a/a/o;

    goto :goto_0

    .line 822
    :sswitch_0
    iget-object v0, p0, Lcom/d/a/a/c/h;->l:Lcom/d/a/a/c/d;

    iget v1, p0, Lcom/d/a/a/c/h;->j:I

    iget v2, p0, Lcom/d/a/a/c/h;->k:I

    invoke-virtual {v0, v1, v2}, Lcom/d/a/a/c/d;->a(II)Lcom/d/a/a/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/c/h;->l:Lcom/d/a/a/c/d;

    .line 823
    sget-object v0, Lcom/d/a/a/o;->d:Lcom/d/a/a/o;

    iput-object v0, p0, Lcom/d/a/a/c/h;->K:Lcom/d/a/a/o;

    goto :goto_0

    .line 825
    :sswitch_1
    iget-object v0, p0, Lcom/d/a/a/c/h;->l:Lcom/d/a/a/c/d;

    iget v1, p0, Lcom/d/a/a/c/h;->j:I

    iget v2, p0, Lcom/d/a/a/c/h;->k:I

    invoke-virtual {v0, v1, v2}, Lcom/d/a/a/c/d;->b(II)Lcom/d/a/a/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/c/h;->l:Lcom/d/a/a/c/d;

    .line 826
    sget-object v0, Lcom/d/a/a/o;->b:Lcom/d/a/a/o;

    iput-object v0, p0, Lcom/d/a/a/c/h;->K:Lcom/d/a/a/o;

    goto :goto_0

    .line 828
    :sswitch_2
    const-string/jumbo v0, "true"

    invoke-virtual {p0, v0, v1}, Lcom/d/a/a/c/h;->a(Ljava/lang/String;I)V

    .line 829
    sget-object v0, Lcom/d/a/a/o;->k:Lcom/d/a/a/o;

    iput-object v0, p0, Lcom/d/a/a/c/h;->K:Lcom/d/a/a/o;

    goto :goto_0

    .line 831
    :sswitch_3
    const-string/jumbo v0, "false"

    invoke-virtual {p0, v0, v1}, Lcom/d/a/a/c/h;->a(Ljava/lang/String;I)V

    .line 832
    sget-object v0, Lcom/d/a/a/o;->l:Lcom/d/a/a/o;

    iput-object v0, p0, Lcom/d/a/a/c/h;->K:Lcom/d/a/a/o;

    goto :goto_0

    .line 834
    :sswitch_4
    const-string/jumbo v0, "null"

    invoke-virtual {p0, v0, v1}, Lcom/d/a/a/c/h;->a(Ljava/lang/String;I)V

    .line 835
    sget-object v0, Lcom/d/a/a/o;->m:Lcom/d/a/a/o;

    iput-object v0, p0, Lcom/d/a/a/c/h;->K:Lcom/d/a/a/o;

    goto :goto_0

    .line 837
    :sswitch_5
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->R()Lcom/d/a/a/o;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/c/h;->K:Lcom/d/a/a/o;

    goto :goto_0

    .line 852
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/d/a/a/c/h;->e(I)Lcom/d/a/a/o;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/c/h;->K:Lcom/d/a/a/o;

    goto :goto_0

    .line 820
    nop

    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_5
        0x30 -> :sswitch_6
        0x31 -> :sswitch_6
        0x32 -> :sswitch_6
        0x33 -> :sswitch_6
        0x34 -> :sswitch_6
        0x35 -> :sswitch_6
        0x36 -> :sswitch_6
        0x37 -> :sswitch_6
        0x38 -> :sswitch_6
        0x39 -> :sswitch_6
        0x5b -> :sswitch_0
        0x66 -> :sswitch_3
        0x6e -> :sswitch_4
        0x74 -> :sswitch_2
        0x7b -> :sswitch_1
    .end sparse-switch
.end method

.method private final o(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1639
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/d/a/a/c/h;->d:I

    .line 1641
    sparse-switch p1, :sswitch_data_0

    .line 1653
    invoke-virtual {p0, p1}, Lcom/d/a/a/c/h;->b(I)V

    .line 1654
    :goto_0
    :sswitch_0
    return-void

    .line 1646
    :sswitch_1
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->X()V

    goto :goto_0

    .line 1649
    :sswitch_2
    iget v0, p0, Lcom/d/a/a/c/h;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/d/a/a/c/h;->g:I

    .line 1650
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    iput v0, p0, Lcom/d/a/a/c/h;->h:I

    goto :goto_0

    .line 1641
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_2
        0xd -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private final p(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3264
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    iget v1, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v0, v1, :cond_0

    .line 3265
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->x()V

    .line 3267
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/h;->U:[B

    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v0, v1

    .line 3268
    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_1

    .line 3269
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lcom/d/a/a/c/h;->d:I

    invoke-virtual {p0, v1, v2}, Lcom/d/a/a/c/h;->b(II)V

    .line 3271
    :cond_1
    and-int/lit8 v1, p1, 0x1f

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    return v0
.end method

.method private final q(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x80

    .line 3276
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    iget v1, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v0, v1, :cond_0

    .line 3277
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->x()V

    .line 3279
    :cond_0
    and-int/lit8 v0, p1, 0xf

    .line 3280
    iget-object v1, p0, Lcom/d/a/a/c/h;->U:[B

    iget v2, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v1, v1, v2

    .line 3281
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_1

    .line 3282
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/d/a/a/c/h;->d:I

    invoke-virtual {p0, v2, v3}, Lcom/d/a/a/c/h;->b(II)V

    .line 3284
    :cond_1
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 3285
    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    iget v2, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v1, v2, :cond_2

    .line 3286
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->x()V

    .line 3288
    :cond_2
    iget-object v1, p0, Lcom/d/a/a/c/h;->U:[B

    iget v2, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v1, v1, v2

    .line 3289
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_3

    .line 3290
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/d/a/a/c/h;->d:I

    invoke-virtual {p0, v2, v3}, Lcom/d/a/a/c/h;->b(II)V

    .line 3292
    :cond_3
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 3293
    return v0
.end method

.method private final r(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x80

    .line 3298
    and-int/lit8 v0, p1, 0xf

    .line 3299
    iget-object v1, p0, Lcom/d/a/a/c/h;->U:[B

    iget v2, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v1, v1, v2

    .line 3300
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_0

    .line 3301
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/d/a/a/c/h;->d:I

    invoke-virtual {p0, v2, v3}, Lcom/d/a/a/c/h;->b(II)V

    .line 3303
    :cond_0
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 3304
    iget-object v1, p0, Lcom/d/a/a/c/h;->U:[B

    iget v2, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v1, v1, v2

    .line 3305
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_1

    .line 3306
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/d/a/a/c/h;->d:I

    invoke-virtual {p0, v2, v3}, Lcom/d/a/a/c/h;->b(II)V

    .line 3308
    :cond_1
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 3309
    return v0
.end method

.method private final s(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x80

    .line 3318
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    iget v1, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v0, v1, :cond_0

    .line 3319
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->x()V

    .line 3321
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/h;->U:[B

    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v0, v1

    .line 3322
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v4, :cond_1

    .line 3323
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lcom/d/a/a/c/h;->d:I

    invoke-virtual {p0, v1, v2}, Lcom/d/a/a/c/h;->b(II)V

    .line 3325
    :cond_1
    and-int/lit8 v1, p1, 0x7

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    .line 3327
    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    iget v2, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v1, v2, :cond_2

    .line 3328
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->x()V

    .line 3330
    :cond_2
    iget-object v1, p0, Lcom/d/a/a/c/h;->U:[B

    iget v2, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v1, v1, v2

    .line 3331
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_3

    .line 3332
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/d/a/a/c/h;->d:I

    invoke-virtual {p0, v2, v3}, Lcom/d/a/a/c/h;->b(II)V

    .line 3334
    :cond_3
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 3335
    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    iget v2, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v1, v2, :cond_4

    .line 3336
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->x()V

    .line 3338
    :cond_4
    iget-object v1, p0, Lcom/d/a/a/c/h;->U:[B

    iget v2, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v1, v1, v2

    .line 3339
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_5

    .line 3340
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/d/a/a/c/h;->d:I

    invoke-virtual {p0, v2, v3}, Lcom/d/a/a/c/h;->b(II)V

    .line 3346
    :cond_5
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    const/high16 v1, 0x10000

    sub-int/2addr v0, v1

    return v0
.end method

.method private final t(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3351
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    iget v1, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v0, v1, :cond_0

    .line 3352
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->x()V

    .line 3354
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/h;->U:[B

    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v0, v1

    .line 3355
    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_1

    .line 3356
    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    invoke-virtual {p0, v0, v1}, Lcom/d/a/a/c/h;->b(II)V

    .line 3358
    :cond_1
    return-void
.end method

.method private final u(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x80

    .line 3365
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    iget v1, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v0, v1, :cond_0

    .line 3366
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->x()V

    .line 3369
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/h;->U:[B

    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v0, v1

    .line 3370
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_1

    .line 3371
    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    invoke-virtual {p0, v0, v1}, Lcom/d/a/a/c/h;->b(II)V

    .line 3373
    :cond_1
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    iget v1, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v0, v1, :cond_2

    .line 3374
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->x()V

    .line 3376
    :cond_2
    iget-object v0, p0, Lcom/d/a/a/c/h;->U:[B

    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v0, v1

    .line 3377
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_3

    .line 3378
    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    invoke-virtual {p0, v0, v1}, Lcom/d/a/a/c/h;->b(II)V

    .line 3380
    :cond_3
    return-void
.end method

.method private final v(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x80

    .line 3384
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    iget v1, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v0, v1, :cond_0

    .line 3385
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->x()V

    .line 3387
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/h;->U:[B

    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v0, v1

    .line 3388
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_1

    .line 3389
    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    invoke-virtual {p0, v0, v1}, Lcom/d/a/a/c/h;->b(II)V

    .line 3391
    :cond_1
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    iget v1, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v0, v1, :cond_2

    .line 3392
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->x()V

    .line 3394
    :cond_2
    iget-object v0, p0, Lcom/d/a/a/c/h;->U:[B

    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v0, v1

    .line 3395
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_3

    .line 3396
    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    invoke-virtual {p0, v0, v1}, Lcom/d/a/a/c/h;->b(II)V

    .line 3398
    :cond_3
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    iget v1, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v0, v1, :cond_4

    .line 3399
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->x()V

    .line 3401
    :cond_4
    iget-object v0, p0, Lcom/d/a/a/c/h;->U:[B

    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v0, v1

    .line 3402
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_5

    .line 3403
    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    invoke-virtual {p0, v0, v1}, Lcom/d/a/a/c/h;->b(II)V

    .line 3405
    :cond_5
    return-void
.end method


# virtual methods
.method protected A()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lcom/d/a/a/c/h;->T:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/d/a/a/c/h;->b:Lcom/d/a/a/b/c;

    invoke-virtual {v0}, Lcom/d/a/a/b/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/d/a/a/l;->a:Lcom/d/a/a/l;

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/h;->a(Lcom/d/a/a/l;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/h;->T:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 277
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/d/a/a/c/h;->T:Ljava/io/InputStream;

    .line 279
    :cond_2
    return-void
.end method

.method protected B()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    invoke-super {p0}, Lcom/d/a/a/a/b;->B()V

    .line 292
    iget-object v0, p0, Lcom/d/a/a/c/h;->N:Lcom/d/a/a/d/a;

    invoke-virtual {v0}, Lcom/d/a/a/d/a;->b()V

    .line 293
    iget-boolean v0, p0, Lcom/d/a/a/c/h;->V:Z

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/d/a/a/c/h;->U:[B

    .line 295
    if-eqz v0, :cond_0

    .line 300
    sget-object v1, Lcom/d/a/a/e/b;->a:[B

    iput-object v1, p0, Lcom/d/a/a/c/h;->U:[B

    .line 301
    iget-object v1, p0, Lcom/d/a/a/c/h;->b:Lcom/d/a/a/b/c;

    invoke-virtual {v1, v0}, Lcom/d/a/a/b/c;->a([B)V

    .line 304
    :cond_0
    return-void
.end method

.method protected N()C
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3159
    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    iget v2, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v1, v2, :cond_0

    .line 3160
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->y()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3161
    const-string/jumbo v1, " in character escape sequence"

    invoke-virtual {p0, v1}, Lcom/d/a/a/c/h;->c(Ljava/lang/String;)V

    .line 3164
    :cond_0
    iget-object v1, p0, Lcom/d/a/a/c/h;->U:[B

    iget v2, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v1, v1, v2

    .line 3166
    sparse-switch v1, :sswitch_data_0

    .line 3189
    invoke-virtual {p0, v1}, Lcom/d/a/a/c/h;->j(I)I

    move-result v0

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/h;->a(C)C

    move-result v0

    .line 3207
    :goto_0
    return v0

    .line 3169
    :sswitch_0
    const/16 v0, 0x8

    goto :goto_0

    .line 3171
    :sswitch_1
    const/16 v0, 0x9

    goto :goto_0

    .line 3173
    :sswitch_2
    const/16 v0, 0xa

    goto :goto_0

    .line 3175
    :sswitch_3
    const/16 v0, 0xc

    goto :goto_0

    .line 3177
    :sswitch_4
    const/16 v0, 0xd

    goto :goto_0

    .line 3183
    :sswitch_5
    int-to-char v0, v1

    goto :goto_0

    :sswitch_6
    move v1, v0

    .line 3194
    :goto_1
    const/4 v2, 0x4

    if-ge v0, v2, :cond_3

    .line 3195
    iget v2, p0, Lcom/d/a/a/c/h;->d:I

    iget v3, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v2, v3, :cond_1

    .line 3196
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->y()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3197
    const-string/jumbo v2, " in character escape sequence"

    invoke-virtual {p0, v2}, Lcom/d/a/a/c/h;->c(Ljava/lang/String;)V

    .line 3200
    :cond_1
    iget-object v2, p0, Lcom/d/a/a/c/h;->U:[B

    iget v3, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v2, v2, v3

    .line 3201
    invoke-static {v2}, Lcom/d/a/a/b/a;->a(I)I

    move-result v3

    .line 3202
    if-gez v3, :cond_2

    .line 3203
    const-string/jumbo v4, "expected a hex-digit for character escape sequence"

    invoke-virtual {p0, v2, v4}, Lcom/d/a/a/c/h;->b(ILjava/lang/String;)V

    .line 3205
    :cond_2
    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v3

    .line 3194
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3207
    :cond_3
    int-to-char v0, v1

    goto :goto_0

    .line 3166
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_5
        0x2f -> :sswitch_5
        0x5c -> :sswitch_5
        0x62 -> :sswitch_0
        0x66 -> :sswitch_3
        0x6e -> :sswitch_2
        0x72 -> :sswitch_4
        0x74 -> :sswitch_1
        0x75 -> :sswitch_6
    .end sparse-switch
.end method

.method protected R()Lcom/d/a/a/o;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x39

    const/16 v8, 0x30

    const/4 v4, 0x1

    .line 1402
    iget-object v0, p0, Lcom/d/a/a/c/h;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0}, Lcom/d/a/a/e/i;->k()[C

    move-result-object v1

    .line 1403
    const/4 v0, 0x0

    .line 1406
    const/16 v2, 0x2d

    aput-char v2, v1, v0

    .line 1408
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    iget v2, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v0, v2, :cond_0

    .line 1409
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->x()V

    .line 1411
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/h;->U:[B

    iget v2, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 1413
    if-lt v0, v8, :cond_1

    if-le v0, v9, :cond_2

    .line 1414
    :cond_1
    invoke-virtual {p0, v0, v4}, Lcom/d/a/a/c/h;->a(IZ)Lcom/d/a/a/o;

    move-result-object v0

    .line 1458
    :goto_0
    return-object v0

    .line 1418
    :cond_2
    if-ne v0, v8, :cond_3

    .line 1419
    invoke-direct {p0}, Lcom/d/a/a/c/h;->Z()I

    move-result v0

    .line 1423
    :cond_3
    const/4 v2, 0x2

    int-to-char v0, v0

    aput-char v0, v1, v4

    .line 1428
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    array-length v3, v1

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x2

    .line 1429
    iget v3, p0, Lcom/d/a/a/c/h;->e:I

    if-le v0, v3, :cond_a

    .line 1430
    iget v0, p0, Lcom/d/a/a/c/h;->e:I

    move v5, v4

    .line 1435
    :goto_1
    iget v3, p0, Lcom/d/a/a/c/h;->d:I

    if-lt v3, v0, :cond_4

    .line 1437
    invoke-direct {p0, v1, v2, v4, v5}, Lcom/d/a/a/c/h;->a([CIZI)Lcom/d/a/a/o;

    move-result-object v0

    goto :goto_0

    .line 1439
    :cond_4
    iget-object v3, p0, Lcom/d/a/a/c/h;->U:[B

    iget v6, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    .line 1440
    if-lt v3, v8, :cond_5

    if-le v3, v9, :cond_7

    .line 1446
    :cond_5
    const/16 v0, 0x2e

    if-eq v3, v0, :cond_6

    const/16 v0, 0x65

    if-eq v3, v0, :cond_6

    const/16 v0, 0x45

    if-ne v3, v0, :cond_8

    :cond_6
    move-object v0, p0

    .line 1447
    invoke-direct/range {v0 .. v5}, Lcom/d/a/a/c/h;->a([CIIZI)Lcom/d/a/a/o;

    move-result-object v0

    goto :goto_0

    .line 1443
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 1444
    add-int/lit8 v6, v2, 0x1

    int-to-char v3, v3

    aput-char v3, v1, v2

    move v2, v6

    goto :goto_1

    .line 1450
    :cond_8
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/d/a/a/c/h;->d:I

    .line 1451
    iget-object v0, p0, Lcom/d/a/a/c/h;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0, v2}, Lcom/d/a/a/e/i;->a(I)V

    .line 1453
    iget-object v0, p0, Lcom/d/a/a/c/h;->l:Lcom/d/a/a/c/d;

    invoke-virtual {v0}, Lcom/d/a/a/c/d;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1454
    invoke-direct {p0, v3}, Lcom/d/a/a/c/h;->o(I)V

    .line 1458
    :cond_9
    invoke-virtual {p0, v4, v5}, Lcom/d/a/a/c/h;->a(ZI)Lcom/d/a/a/o;

    move-result-object v0

    goto :goto_0

    :cond_a
    move v5, v4

    goto :goto_1
.end method

.method protected S()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1876
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    iget v1, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v0, v1, :cond_0

    .line 1877
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->y()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1878
    const-string/jumbo v0, ": was expecting closing \'\"\' for name"

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/h;->c(Ljava/lang/String;)V

    .line 1881
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/h;->U:[B

    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v4, v0, 0xff

    .line 1882
    const/16 v0, 0x22

    if-ne v4, v0, :cond_1

    .line 1883
    const-string/jumbo v0, ""

    .line 1885
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/d/a/a/c/h;->O:[I

    move-object v0, p0

    move v3, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/d/a/a/c/h;->a([IIIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected T()Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x27

    const/4 v9, 0x4

    const/4 v1, 0x0

    .line 2084
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    iget v2, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v0, v2, :cond_0

    .line 2085
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->y()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2086
    const-string/jumbo v0, ": was expecting closing \'\'\' for name"

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/h;->c(Ljava/lang/String;)V

    .line 2089
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/h;->U:[B

    iget v2, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v0, v2

    and-int/lit16 v5, v0, 0xff

    .line 2090
    if-ne v5, v10, :cond_1

    .line 2091
    const-string/jumbo v0, ""

    .line 2184
    :goto_0
    return-object v0

    .line 2093
    :cond_1
    iget-object v0, p0, Lcom/d/a/a/c/h;->O:[I

    .line 2100
    sget-object v7, Lcom/d/a/a/c/h;->L:[I

    move v3, v1

    move v4, v1

    move v2, v1

    .line 2103
    :goto_1
    if-ne v5, v10, :cond_3

    .line 2174
    if-lez v3, :cond_c

    .line 2175
    array-length v1, v0

    if-lt v2, v1, :cond_2

    .line 2176
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/d/a/a/c/h;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/c/h;->O:[I

    .line 2178
    :cond_2
    add-int/lit8 v1, v2, 0x1

    invoke-static {v4, v3}, Lcom/d/a/a/c/h;->d(II)I

    move-result v4

    aput v4, v0, v2

    move v11, v1

    move-object v1, v0

    move v0, v11

    .line 2180
    :goto_2
    iget-object v2, p0, Lcom/d/a/a/c/h;->N:Lcom/d/a/a/d/a;

    invoke-virtual {v2, v1, v0}, Lcom/d/a/a/d/a;->a([II)Ljava/lang/String;

    move-result-object v2

    .line 2181
    if-nez v2, :cond_b

    .line 2182
    invoke-direct {p0, v1, v0, v3}, Lcom/d/a/a/c/h;->a([III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2107
    :cond_3
    const/16 v6, 0x22

    if-eq v5, v6, :cond_f

    aget v6, v7, v5

    if-eqz v6, :cond_f

    .line 2108
    const/16 v6, 0x5c

    if-eq v5, v6, :cond_6

    .line 2111
    const-string/jumbo v6, "name"

    invoke-virtual {p0, v5, v6}, Lcom/d/a/a/c/h;->c(ILjava/lang/String;)V

    .line 2121
    :goto_3
    const/16 v6, 0x7f

    if-le v5, v6, :cond_f

    .line 2123
    if-lt v3, v9, :cond_e

    .line 2124
    array-length v3, v0

    if-lt v2, v3, :cond_4

    .line 2125
    array-length v3, v0

    invoke-static {v0, v3}, Lcom/d/a/a/c/h;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/c/h;->O:[I

    .line 2127
    :cond_4
    add-int/lit8 v3, v2, 0x1

    aput v4, v0, v2

    move v2, v1

    move v4, v3

    move v3, v1

    .line 2131
    :goto_4
    const/16 v6, 0x800

    if-ge v5, v6, :cond_7

    .line 2132
    shl-int/lit8 v3, v3, 0x8

    shr-int/lit8 v6, v5, 0x6

    or-int/lit16 v6, v6, 0xc0

    or-int/2addr v3, v6

    .line 2133
    add-int/lit8 v2, v2, 0x1

    move v11, v2

    move v2, v3

    move-object v3, v0

    move v0, v11

    .line 2151
    :goto_5
    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    move v6, v2

    move v2, v0

    move-object v0, v3

    move v3, v5

    .line 2155
    :goto_6
    if-ge v2, v9, :cond_9

    .line 2156
    add-int/lit8 v2, v2, 0x1

    .line 2157
    shl-int/lit8 v5, v6, 0x8

    or-int/2addr v3, v5

    move v11, v2

    move v2, v3

    move v3, v4

    move-object v4, v0

    move v0, v11

    .line 2166
    :goto_7
    iget v5, p0, Lcom/d/a/a/c/h;->d:I

    iget v6, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v5, v6, :cond_5

    .line 2167
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->y()Z

    move-result v5

    if-nez v5, :cond_5

    .line 2168
    const-string/jumbo v5, " in field name"

    invoke-virtual {p0, v5}, Lcom/d/a/a/c/h;->c(Ljava/lang/String;)V

    .line 2171
    :cond_5
    iget-object v5, p0, Lcom/d/a/a/c/h;->U:[B

    iget v6, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v8, v6, 0x1

    iput v8, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    move v11, v0

    move-object v0, v4

    move v4, v2

    move v2, v3

    move v3, v11

    goto/16 :goto_1

    .line 2114
    :cond_6
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->N()C

    move-result v5

    goto :goto_3

    .line 2136
    :cond_7
    shl-int/lit8 v3, v3, 0x8

    shr-int/lit8 v6, v5, 0xc

    or-int/lit16 v6, v6, 0xe0

    or-int/2addr v3, v6

    .line 2137
    add-int/lit8 v2, v2, 0x1

    .line 2139
    if-lt v2, v9, :cond_d

    .line 2140
    array-length v2, v0

    if-lt v4, v2, :cond_8

    .line 2141
    array-length v2, v0

    invoke-static {v0, v2}, Lcom/d/a/a/c/h;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/c/h;->O:[I

    .line 2143
    :cond_8
    add-int/lit8 v2, v4, 0x1

    aput v3, v0, v4

    move v3, v2

    move-object v4, v0

    move v0, v1

    move v2, v1

    .line 2147
    :goto_8
    shl-int/lit8 v2, v2, 0x8

    shr-int/lit8 v6, v5, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    or-int/2addr v2, v6

    .line 2148
    add-int/lit8 v0, v0, 0x1

    move v11, v3

    move-object v3, v4

    move v4, v11

    goto :goto_5

    .line 2159
    :cond_9
    array-length v2, v0

    if-lt v4, v2, :cond_a

    .line 2160
    array-length v2, v0

    invoke-static {v0, v2}, Lcom/d/a/a/c/h;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/c/h;->O:[I

    .line 2162
    :cond_a
    add-int/lit8 v5, v4, 0x1

    aput v6, v0, v4

    .line 2164
    const/4 v2, 0x1

    move-object v4, v0

    move v0, v2

    move v2, v3

    move v3, v5

    goto :goto_7

    :cond_b
    move-object v0, v2

    goto/16 :goto_0

    :cond_c
    move-object v1, v0

    move v0, v2

    goto/16 :goto_2

    :cond_d
    move v11, v2

    move v2, v3

    move v3, v4

    move-object v4, v0

    move v0, v11

    goto :goto_8

    :cond_e
    move v11, v3

    move v3, v4

    move v4, v2

    move v2, v11

    goto/16 :goto_4

    :cond_f
    move v6, v4

    move v4, v2

    move v2, v3

    move v3, v5

    goto/16 :goto_6
.end method

.method protected U()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2405
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    .line 2406
    iget v1, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v0, v1, :cond_0

    .line 2407
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->x()V

    .line 2408
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    .line 2410
    :cond_0
    const/4 v1, 0x0

    .line 2411
    iget-object v2, p0, Lcom/d/a/a/c/h;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v2}, Lcom/d/a/a/e/i;->k()[C

    move-result-object v3

    .line 2412
    sget-object v4, Lcom/d/a/a/c/h;->W:[I

    .line 2414
    iget v2, p0, Lcom/d/a/a/c/h;->e:I

    array-length v5, v3

    add-int/2addr v5, v0

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2415
    iget-object v6, p0, Lcom/d/a/a/c/h;->U:[B

    move v8, v1

    move v1, v0

    move v0, v8

    .line 2416
    :goto_0
    if-ge v1, v5, :cond_2

    .line 2417
    aget-byte v2, v6, v1

    and-int/lit16 v7, v2, 0xff

    .line 2418
    aget v2, v4, v7

    if-eqz v2, :cond_1

    .line 2419
    const/16 v2, 0x22

    if-ne v7, v2, :cond_2

    .line 2420
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/d/a/a/c/h;->d:I

    .line 2421
    iget-object v1, p0, Lcom/d/a/a/c/h;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v1, v0}, Lcom/d/a/a/e/i;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 2430
    :goto_1
    return-object v0

    .line 2425
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 2426
    add-int/lit8 v1, v0, 0x1

    int-to-char v7, v7

    aput-char v7, v3, v0

    move v0, v1

    move v1, v2

    .line 2427
    goto :goto_0

    .line 2428
    :cond_2
    iput v1, p0, Lcom/d/a/a/c/h;->d:I

    .line 2429
    invoke-direct {p0, v3, v0}, Lcom/d/a/a/c/h;->a([CI)V

    .line 2430
    iget-object v0, p0, Lcom/d/a/a/c/h;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0}, Lcom/d/a/a/e/i;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected V()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2524
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/d/a/a/c/h;->P:Z

    .line 2527
    sget-object v3, Lcom/d/a/a/c/h;->W:[I

    .line 2528
    iget-object v4, p0, Lcom/d/a/a/c/h;->U:[B

    .line 2536
    :goto_0
    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    .line 2537
    iget v0, p0, Lcom/d/a/a/c/h;->e:I

    .line 2538
    if-lt v1, v0, :cond_0

    .line 2539
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->x()V

    .line 2540
    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    .line 2541
    iget v0, p0, Lcom/d/a/a/c/h;->e:I

    .line 2543
    :cond_0
    :goto_1
    if-ge v1, v0, :cond_1

    .line 2544
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    .line 2545
    aget v5, v3, v1

    if-eqz v5, :cond_4

    .line 2546
    iput v2, p0, Lcom/d/a/a/c/h;->d:I

    .line 2553
    const/16 v0, 0x22

    if-ne v1, v0, :cond_2

    .line 2580
    return-void

    .line 2550
    :cond_1
    iput v1, p0, Lcom/d/a/a/c/h;->d:I

    goto :goto_0

    .line 2557
    :cond_2
    aget v0, v3, v1

    packed-switch v0, :pswitch_data_0

    .line 2571
    const/16 v0, 0x20

    if-ge v1, v0, :cond_3

    .line 2573
    const-string/jumbo v0, "string value"

    invoke-virtual {p0, v1, v0}, Lcom/d/a/a/c/h;->c(ILjava/lang/String;)V

    goto :goto_0

    .line 2559
    :pswitch_0
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->N()C

    goto :goto_0

    .line 2562
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/d/a/a/c/h;->t(I)V

    goto :goto_0

    .line 2565
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/d/a/a/c/h;->u(I)V

    goto :goto_0

    .line 2568
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/d/a/a/c/h;->v(I)V

    goto :goto_0

    .line 2576
    :cond_3
    invoke-virtual {p0, v1}, Lcom/d/a/a/c/h;->k(I)V

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    .line 2557
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected W()Lcom/d/a/a/o;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x27

    const/4 v2, 0x0

    .line 2635
    .line 2638
    iget-object v0, p0, Lcom/d/a/a/c/h;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0}, Lcom/d/a/a/e/i;->k()[C

    move-result-object v0

    .line 2641
    sget-object v6, Lcom/d/a/a/c/h;->W:[I

    .line 2642
    iget-object v7, p0, Lcom/d/a/a/c/h;->U:[B

    move v1, v2

    .line 2649
    :cond_0
    :goto_0
    iget v3, p0, Lcom/d/a/a/c/h;->d:I

    iget v4, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v3, v4, :cond_1

    .line 2650
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->x()V

    .line 2652
    :cond_1
    array-length v3, v0

    if-lt v1, v3, :cond_2

    .line 2653
    iget-object v0, p0, Lcom/d/a/a/c/h;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0}, Lcom/d/a/a/e/i;->m()[C

    move-result-object v0

    move v1, v2

    .line 2656
    :cond_2
    iget v4, p0, Lcom/d/a/a/c/h;->e:I

    .line 2658
    iget v3, p0, Lcom/d/a/a/c/h;->d:I

    array-length v5, v0

    sub-int/2addr v5, v1

    add-int/2addr v3, v5

    .line 2659
    if-ge v3, v4, :cond_b

    .line 2663
    :goto_1
    iget v4, p0, Lcom/d/a/a/c/h;->d:I

    if-ge v4, v3, :cond_0

    .line 2664
    iget v4, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v4, v7, v4

    and-int/lit16 v5, v4, 0xff

    .line 2665
    if-eq v5, v9, :cond_3

    aget v4, v6, v5

    if-eqz v4, :cond_4

    .line 2673
    :cond_3
    if-ne v5, v9, :cond_5

    .line 2719
    iget-object v0, p0, Lcom/d/a/a/c/h;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0, v1}, Lcom/d/a/a/e/i;->a(I)V

    .line 2721
    sget-object v0, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    return-object v0

    .line 2668
    :cond_4
    add-int/lit8 v4, v1, 0x1

    int-to-char v5, v5

    aput-char v5, v0, v1

    move v1, v4

    goto :goto_1

    .line 2677
    :cond_5
    aget v3, v6, v5

    packed-switch v3, :pswitch_data_0

    .line 2705
    const/16 v3, 0x20

    if-ge v5, v3, :cond_6

    .line 2706
    const-string/jumbo v3, "string value"

    invoke-virtual {p0, v5, v3}, Lcom/d/a/a/c/h;->c(ILjava/lang/String;)V

    .line 2709
    :cond_6
    invoke-virtual {p0, v5}, Lcom/d/a/a/c/h;->k(I)V

    :cond_7
    move v3, v5

    .line 2712
    :goto_2
    array-length v4, v0

    if-lt v1, v4, :cond_9

    .line 2713
    iget-object v0, p0, Lcom/d/a/a/c/h;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0}, Lcom/d/a/a/e/i;->m()[C

    move-result-object v0

    move v4, v2

    .line 2717
    :goto_3
    add-int/lit8 v1, v4, 0x1

    int-to-char v3, v3

    aput-char v3, v0, v4

    goto :goto_0

    .line 2679
    :pswitch_0
    if-eq v5, v9, :cond_7

    .line 2680
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->N()C

    move-result v3

    goto :goto_2

    .line 2684
    :pswitch_1
    invoke-direct {p0, v5}, Lcom/d/a/a/c/h;->p(I)I

    move-result v3

    goto :goto_2

    .line 2687
    :pswitch_2
    iget v3, p0, Lcom/d/a/a/c/h;->e:I

    iget v4, p0, Lcom/d/a/a/c/h;->d:I

    sub-int/2addr v3, v4

    const/4 v4, 0x2

    if-lt v3, v4, :cond_8

    .line 2688
    invoke-direct {p0, v5}, Lcom/d/a/a/c/h;->r(I)I

    move-result v3

    goto :goto_2

    .line 2690
    :cond_8
    invoke-direct {p0, v5}, Lcom/d/a/a/c/h;->q(I)I

    move-result v3

    goto :goto_2

    .line 2694
    :pswitch_3
    invoke-direct {p0, v5}, Lcom/d/a/a/c/h;->s(I)I

    move-result v4

    .line 2696
    add-int/lit8 v3, v1, 0x1

    const v5, 0xd800

    shr-int/lit8 v8, v4, 0xa

    or-int/2addr v5, v8

    int-to-char v5, v5

    aput-char v5, v0, v1

    .line 2697
    array-length v1, v0

    if-lt v3, v1, :cond_a

    .line 2698
    iget-object v0, p0, Lcom/d/a/a/c/h;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0}, Lcom/d/a/a/e/i;->m()[C

    move-result-object v0

    move v1, v2

    .line 2701
    :goto_4
    const v3, 0xdc00

    and-int/lit16 v4, v4, 0x3ff

    or-int/2addr v3, v4

    .line 2703
    goto :goto_2

    :cond_9
    move v4, v1

    goto :goto_3

    :cond_a
    move v1, v3

    goto :goto_4

    :cond_b
    move v3, v4

    goto/16 :goto_1

    .line 2677
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected final X()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3419
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    iget v1, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/d/a/a/c/h;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3420
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/h;->U:[B

    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 3421
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/d/a/a/c/h;->d:I

    .line 3424
    :cond_1
    iget v0, p0, Lcom/d/a/a/c/h;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/d/a/a/c/h;->g:I

    .line 3425
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    iput v0, p0, Lcom/d/a/a/c/h;->h:I

    .line 3426
    return-void
.end method

.method public a()Lcom/d/a/a/o;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0x7d

    const/16 v4, 0x5d

    const/4 v3, 0x1

    .line 698
    iget-object v0, p0, Lcom/d/a/a/c/h;->K:Lcom/d/a/a/o;

    sget-object v2, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v2, :cond_0

    .line 699
    invoke-direct {p0}, Lcom/d/a/a/c/h;->Y()Lcom/d/a/a/o;

    move-result-object v0

    .line 811
    :goto_0
    return-object v0

    .line 703
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/d/a/a/c/h;->A:I

    .line 704
    iget-boolean v0, p0, Lcom/d/a/a/c/h;->P:Z

    if-eqz v0, :cond_1

    .line 705
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->V()V

    .line 707
    :cond_1
    invoke-direct {p0}, Lcom/d/a/a/c/h;->ac()I

    move-result v0

    .line 708
    if-gez v0, :cond_2

    .line 710
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->close()V

    .line 711
    iput-object v1, p0, Lcom/d/a/a/c/h;->K:Lcom/d/a/a/o;

    move-object v0, v1

    goto :goto_0

    .line 714
    :cond_2
    iput-object v1, p0, Lcom/d/a/a/c/h;->r:[B

    .line 717
    if-ne v0, v4, :cond_4

    .line 718
    invoke-direct {p0}, Lcom/d/a/a/c/h;->ak()V

    .line 719
    iget-object v1, p0, Lcom/d/a/a/c/h;->l:Lcom/d/a/a/c/d;

    invoke-virtual {v1}, Lcom/d/a/a/c/d;->a()Z

    move-result v1

    if-nez v1, :cond_3

    .line 720
    invoke-virtual {p0, v0, v5}, Lcom/d/a/a/c/h;->a(IC)V

    .line 722
    :cond_3
    iget-object v0, p0, Lcom/d/a/a/c/h;->l:Lcom/d/a/a/c/d;

    invoke-virtual {v0}, Lcom/d/a/a/c/d;->i()Lcom/d/a/a/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/c/h;->l:Lcom/d/a/a/c/d;

    .line 723
    sget-object v0, Lcom/d/a/a/o;->e:Lcom/d/a/a/o;

    iput-object v0, p0, Lcom/d/a/a/c/h;->K:Lcom/d/a/a/o;

    goto :goto_0

    .line 725
    :cond_4
    if-ne v0, v5, :cond_6

    .line 726
    invoke-direct {p0}, Lcom/d/a/a/c/h;->ak()V

    .line 727
    iget-object v1, p0, Lcom/d/a/a/c/h;->l:Lcom/d/a/a/c/d;

    invoke-virtual {v1}, Lcom/d/a/a/c/d;->c()Z

    move-result v1

    if-nez v1, :cond_5

    .line 728
    invoke-virtual {p0, v0, v4}, Lcom/d/a/a/c/h;->a(IC)V

    .line 730
    :cond_5
    iget-object v0, p0, Lcom/d/a/a/c/h;->l:Lcom/d/a/a/c/d;

    invoke-virtual {v0}, Lcom/d/a/a/c/d;->i()Lcom/d/a/a/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/c/h;->l:Lcom/d/a/a/c/d;

    .line 731
    sget-object v0, Lcom/d/a/a/o;->c:Lcom/d/a/a/o;

    iput-object v0, p0, Lcom/d/a/a/c/h;->K:Lcom/d/a/a/o;

    goto :goto_0

    .line 735
    :cond_6
    iget-object v1, p0, Lcom/d/a/a/c/h;->l:Lcom/d/a/a/c/d;

    invoke-virtual {v1}, Lcom/d/a/a/c/d;->j()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 736
    const/16 v1, 0x2c

    if-eq v0, v1, :cond_7

    .line 737
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "was expecting comma to separate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/d/a/a/c/h;->l:Lcom/d/a/a/c/d;

    invoke-virtual {v2}, Lcom/d/a/a/c/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " entries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/d/a/a/c/h;->b(ILjava/lang/String;)V

    .line 739
    :cond_7
    invoke-direct {p0}, Lcom/d/a/a/c/h;->aa()I

    move-result v0

    .line 746
    :cond_8
    iget-object v1, p0, Lcom/d/a/a/c/h;->l:Lcom/d/a/a/c/d;

    invoke-virtual {v1}, Lcom/d/a/a/c/d;->c()Z

    move-result v1

    if-nez v1, :cond_9

    .line 747
    invoke-direct {p0}, Lcom/d/a/a/c/h;->ak()V

    .line 748
    invoke-direct {p0, v0}, Lcom/d/a/a/c/h;->n(I)Lcom/d/a/a/o;

    move-result-object v0

    goto/16 :goto_0

    .line 751
    :cond_9
    invoke-direct {p0}, Lcom/d/a/a/c/h;->al()V

    .line 752
    invoke-virtual {p0, v0}, Lcom/d/a/a/c/h;->f(I)Ljava/lang/String;

    move-result-object v0

    .line 753
    iget-object v1, p0, Lcom/d/a/a/c/h;->l:Lcom/d/a/a/c/d;

    invoke-virtual {v1, v0}, Lcom/d/a/a/c/d;->a(Ljava/lang/String;)V

    .line 754
    sget-object v0, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    iput-object v0, p0, Lcom/d/a/a/c/h;->K:Lcom/d/a/a/o;

    .line 756
    invoke-direct {p0}, Lcom/d/a/a/c/h;->ae()I

    move-result v0

    .line 757
    invoke-direct {p0}, Lcom/d/a/a/c/h;->ak()V

    .line 760
    const/16 v1, 0x22

    if-ne v0, v1, :cond_a

    .line 761
    iput-boolean v3, p0, Lcom/d/a/a/c/h;->P:Z

    .line 762
    sget-object v0, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    iput-object v0, p0, Lcom/d/a/a/c/h;->m:Lcom/d/a/a/o;

    .line 763
    iget-object v0, p0, Lcom/d/a/a/c/h;->K:Lcom/d/a/a/o;

    goto/16 :goto_0

    .line 767
    :cond_a
    sparse-switch v0, :sswitch_data_0

    .line 808
    invoke-virtual {p0, v0}, Lcom/d/a/a/c/h;->i(I)Lcom/d/a/a/o;

    move-result-object v0

    .line 810
    :goto_1
    iput-object v0, p0, Lcom/d/a/a/c/h;->m:Lcom/d/a/a/o;

    .line 811
    iget-object v0, p0, Lcom/d/a/a/c/h;->K:Lcom/d/a/a/o;

    goto/16 :goto_0

    .line 769
    :sswitch_0
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->R()Lcom/d/a/a/o;

    move-result-object v0

    goto :goto_1

    .line 786
    :sswitch_1
    invoke-virtual {p0, v0}, Lcom/d/a/a/c/h;->e(I)Lcom/d/a/a/o;

    move-result-object v0

    goto :goto_1

    .line 789
    :sswitch_2
    const-string/jumbo v0, "false"

    invoke-virtual {p0, v0, v3}, Lcom/d/a/a/c/h;->a(Ljava/lang/String;I)V

    .line 790
    sget-object v0, Lcom/d/a/a/o;->l:Lcom/d/a/a/o;

    goto :goto_1

    .line 793
    :sswitch_3
    const-string/jumbo v0, "null"

    invoke-virtual {p0, v0, v3}, Lcom/d/a/a/c/h;->a(Ljava/lang/String;I)V

    .line 794
    sget-object v0, Lcom/d/a/a/o;->m:Lcom/d/a/a/o;

    goto :goto_1

    .line 797
    :sswitch_4
    const-string/jumbo v0, "true"

    invoke-virtual {p0, v0, v3}, Lcom/d/a/a/c/h;->a(Ljava/lang/String;I)V

    .line 798
    sget-object v0, Lcom/d/a/a/o;->k:Lcom/d/a/a/o;

    goto :goto_1

    .line 801
    :sswitch_5
    sget-object v0, Lcom/d/a/a/o;->d:Lcom/d/a/a/o;

    goto :goto_1

    .line 804
    :sswitch_6
    sget-object v0, Lcom/d/a/a/o;->b:Lcom/d/a/a/o;

    goto :goto_1

    .line 767
    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_0
        0x30 -> :sswitch_1
        0x31 -> :sswitch_1
        0x32 -> :sswitch_1
        0x33 -> :sswitch_1
        0x34 -> :sswitch_1
        0x35 -> :sswitch_1
        0x36 -> :sswitch_1
        0x37 -> :sswitch_1
        0x38 -> :sswitch_1
        0x39 -> :sswitch_1
        0x5b -> :sswitch_5
        0x66 -> :sswitch_2
        0x6e -> :sswitch_3
        0x74 -> :sswitch_4
        0x7b -> :sswitch_6
    .end sparse-switch
.end method

.method protected a(IZ)Lcom/d/a/a/o;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2731
    move v0, p1

    :goto_0
    const/16 v1, 0x49

    if-ne v0, v1, :cond_7

    .line 2732
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    iget v1, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v0, v1, :cond_0

    .line 2733
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->y()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2734
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->P()V

    .line 2737
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/h;->U:[B

    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v1, v0, v1

    .line 2739
    const/16 v0, 0x4e

    if-ne v1, v0, :cond_2

    .line 2740
    if-eqz p2, :cond_1

    const-string/jumbo v0, "-INF"

    .line 2746
    :goto_1
    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/d/a/a/c/h;->a(Ljava/lang/String;I)V

    .line 2747
    sget-object v2, Lcom/d/a/a/l;->i:Lcom/d/a/a/l;

    invoke-virtual {p0, v2}, Lcom/d/a/a/c/h;->a(Lcom/d/a/a/l;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2748
    if-eqz p2, :cond_4

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    :goto_2
    invoke-virtual {p0, v0, v2, v3}, Lcom/d/a/a/c/h;->a(Ljava/lang/String;D)Lcom/d/a/a/o;

    move-result-object v0

    .line 2753
    :goto_3
    return-object v0

    .line 2740
    :cond_1
    const-string/jumbo v0, "+INF"

    goto :goto_1

    .line 2741
    :cond_2
    const/16 v0, 0x6e

    if-ne v1, v0, :cond_6

    .line 2742
    if-eqz p2, :cond_3

    const-string/jumbo v0, "-Infinity"

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "+Infinity"

    goto :goto_1

    .line 2748
    :cond_4
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_2

    .line 2750
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Non-standard token \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/h;->d(Ljava/lang/String;)V

    move v0, v1

    .line 2751
    goto :goto_0

    :cond_6
    move v0, v1

    .line 2752
    :cond_7
    const-string/jumbo v1, "expected digit (0-9) to follow minus sign, for valid numeric value"

    invoke-virtual {p0, v0, v1}, Lcom/d/a/a/c/h;->a(ILjava/lang/String;)V

    .line 2753
    const/4 v0, 0x0

    goto :goto_3
.end method

.method protected final a(II)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/16 v6, 0x22

    .line 1769
    iget-object v0, p0, Lcom/d/a/a/c/h;->U:[B

    .line 1770
    sget-object v1, Lcom/d/a/a/c/h;->L:[I

    .line 1773
    iget v2, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v2, v0, v2

    and-int/lit16 v4, v2, 0xff

    .line 1774
    aget v2, v1, v4

    if-eqz v2, :cond_1

    .line 1775
    if-ne v4, v6, :cond_0

    .line 1776
    iget v0, p0, Lcom/d/a/a/c/h;->X:I

    invoke-direct {p0, v0, p2, p1, v5}, Lcom/d/a/a/c/h;->b(IIII)Ljava/lang/String;

    move-result-object v0

    .line 1804
    :goto_0
    return-object v0

    .line 1778
    :cond_0
    iget v1, p0, Lcom/d/a/a/c/h;->X:I

    move-object v0, p0

    move v2, p2

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/d/a/a/c/h;->a(IIIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1780
    :cond_1
    shl-int/lit8 v2, p1, 0x8

    or-int v3, v2, v4

    .line 1781
    iget v2, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v2, v0, v2

    and-int/lit16 v4, v2, 0xff

    .line 1782
    aget v2, v1, v4

    if-eqz v2, :cond_3

    .line 1783
    if-ne v4, v6, :cond_2

    .line 1784
    iget v0, p0, Lcom/d/a/a/c/h;->X:I

    invoke-direct {p0, v0, p2, v3, v7}, Lcom/d/a/a/c/h;->b(IIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1786
    :cond_2
    iget v1, p0, Lcom/d/a/a/c/h;->X:I

    move-object v0, p0

    move v2, p2

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/d/a/a/c/h;->a(IIIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1788
    :cond_3
    shl-int/lit8 v2, v3, 0x8

    or-int v3, v2, v4

    .line 1789
    iget v2, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v2, v0, v2

    and-int/lit16 v4, v2, 0xff

    .line 1790
    aget v2, v1, v4

    if-eqz v2, :cond_5

    .line 1791
    if-ne v4, v6, :cond_4

    .line 1792
    iget v0, p0, Lcom/d/a/a/c/h;->X:I

    invoke-direct {p0, v0, p2, v3, v8}, Lcom/d/a/a/c/h;->b(IIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1794
    :cond_4
    iget v1, p0, Lcom/d/a/a/c/h;->X:I

    move-object v0, p0

    move v2, p2

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/d/a/a/c/h;->a(IIIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1796
    :cond_5
    shl-int/lit8 v2, v3, 0x8

    or-int v3, v2, v4

    .line 1797
    iget v2, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v0, v2

    and-int/lit16 v4, v0, 0xff

    .line 1798
    aget v0, v1, v4

    if-eqz v0, :cond_7

    .line 1799
    if-ne v4, v6, :cond_6

    .line 1800
    iget v0, p0, Lcom/d/a/a/c/h;->X:I

    invoke-direct {p0, v0, p2, v3, v9}, Lcom/d/a/a/c/h;->b(IIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1802
    :cond_6
    iget v1, p0, Lcom/d/a/a/c/h;->X:I

    move-object v0, p0

    move v2, p2

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/d/a/a/c/h;->a(IIIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1804
    :cond_7
    invoke-virtual {p0, v4, p2, v3}, Lcom/d/a/a/c/h;->a(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final a(III)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v11, 0x2

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/16 v10, 0x22

    .line 1809
    iget-object v0, p0, Lcom/d/a/a/c/h;->O:[I

    iget v1, p0, Lcom/d/a/a/c/h;->X:I

    aput v1, v0, v7

    .line 1810
    iget-object v0, p0, Lcom/d/a/a/c/h;->O:[I

    aput p2, v0, v5

    .line 1811
    iget-object v0, p0, Lcom/d/a/a/c/h;->O:[I

    aput p3, v0, v11

    .line 1814
    iget-object v1, p0, Lcom/d/a/a/c/h;->U:[B

    .line 1815
    sget-object v8, Lcom/d/a/a/c/h;->L:[I

    move v2, v6

    move v3, p1

    .line 1818
    :goto_0
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v0, v0, 0x4

    iget v4, p0, Lcom/d/a/a/c/h;->e:I

    if-gt v0, v4, :cond_9

    .line 1819
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v1, v0

    and-int/lit16 v4, v0, 0xff

    .line 1820
    aget v0, v8, v4

    if-eqz v0, :cond_1

    .line 1821
    if-ne v4, v10, :cond_0

    .line 1822
    iget-object v0, p0, Lcom/d/a/a/c/h;->O:[I

    invoke-direct {p0, v0, v2, v3, v5}, Lcom/d/a/a/c/h;->a([IIII)Ljava/lang/String;

    move-result-object v0

    .line 1866
    :goto_1
    return-object v0

    .line 1824
    :cond_0
    iget-object v1, p0, Lcom/d/a/a/c/h;->O:[I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/d/a/a/c/h;->a([IIIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1827
    :cond_1
    shl-int/lit8 v0, v3, 0x8

    or-int v3, v0, v4

    .line 1828
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v1, v0

    and-int/lit16 v4, v0, 0xff

    .line 1829
    aget v0, v8, v4

    if-eqz v0, :cond_3

    .line 1830
    if-ne v4, v10, :cond_2

    .line 1831
    iget-object v0, p0, Lcom/d/a/a/c/h;->O:[I

    invoke-direct {p0, v0, v2, v3, v11}, Lcom/d/a/a/c/h;->a([IIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1833
    :cond_2
    iget-object v1, p0, Lcom/d/a/a/c/h;->O:[I

    move-object v0, p0

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/d/a/a/c/h;->a([IIIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1836
    :cond_3
    shl-int/lit8 v0, v3, 0x8

    or-int v3, v0, v4

    .line 1837
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v1, v0

    and-int/lit16 v4, v0, 0xff

    .line 1838
    aget v0, v8, v4

    if-eqz v0, :cond_5

    .line 1839
    if-ne v4, v10, :cond_4

    .line 1840
    iget-object v0, p0, Lcom/d/a/a/c/h;->O:[I

    invoke-direct {p0, v0, v2, v3, v6}, Lcom/d/a/a/c/h;->a([IIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1842
    :cond_4
    iget-object v1, p0, Lcom/d/a/a/c/h;->O:[I

    move-object v0, p0

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/d/a/a/c/h;->a([IIIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1845
    :cond_5
    shl-int/lit8 v0, v3, 0x8

    or-int v3, v0, v4

    .line 1846
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v1, v0

    and-int/lit16 v4, v0, 0xff

    .line 1847
    aget v0, v8, v4

    if-eqz v0, :cond_7

    .line 1848
    if-ne v4, v10, :cond_6

    .line 1849
    iget-object v0, p0, Lcom/d/a/a/c/h;->O:[I

    const/4 v1, 0x4

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/d/a/a/c/h;->a([IIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1851
    :cond_6
    iget-object v1, p0, Lcom/d/a/a/c/h;->O:[I

    const/4 v5, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/d/a/a/c/h;->a([IIIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1855
    :cond_7
    iget-object v0, p0, Lcom/d/a/a/c/h;->O:[I

    array-length v0, v0

    if-lt v2, v0, :cond_8

    .line 1856
    iget-object v0, p0, Lcom/d/a/a/c/h;->O:[I

    invoke-static {v0, v2}, Lcom/d/a/a/c/h;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/c/h;->O:[I

    .line 1858
    :cond_8
    iget-object v9, p0, Lcom/d/a/a/c/h;->O:[I

    add-int/lit8 v0, v2, 0x1

    aput v3, v9, v2

    move v2, v0

    move v3, v4

    .line 1860
    goto/16 :goto_0

    .line 1866
    :cond_9
    iget-object v5, p0, Lcom/d/a/a/c/h;->O:[I

    move-object v4, p0

    move v6, v2

    move v8, v3

    move v9, v7

    invoke-virtual/range {v4 .. v9}, Lcom/d/a/a/c/h;->a([IIIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method protected final a(Lcom/d/a/a/o;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    if-nez p1, :cond_0

    .line 404
    const/4 v0, 0x0

    .line 416
    :goto_0
    return-object v0

    .line 406
    :cond_0
    invoke-virtual {p1}, Lcom/d/a/a/o;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 416
    invoke-virtual {p1}, Lcom/d/a/a/o;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 408
    :pswitch_0
    iget-object v0, p0, Lcom/d/a/a/c/h;->l:Lcom/d/a/a/c/d;

    invoke-virtual {v0}, Lcom/d/a/a/c/d;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 414
    :pswitch_1
    iget-object v0, p0, Lcom/d/a/a/c/h;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0}, Lcom/d/a/a/e/i;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 406
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected final a([IIIII)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v1, 0x0

    .line 1917
    sget-object v5, Lcom/d/a/a/c/h;->L:[I

    .line 1920
    :goto_0
    aget v0, v5, p4

    if-eqz v0, :cond_d

    .line 1921
    const/16 v0, 0x22

    if-ne p4, v0, :cond_3

    .line 1990
    if-lez p5, :cond_1

    .line 1991
    array-length v0, p1

    if-lt p2, v0, :cond_0

    .line 1992
    array-length v0, p1

    invoke-static {p1, v0}, Lcom/d/a/a/c/h;->a([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/d/a/a/c/h;->O:[I

    .line 1994
    :cond_0
    add-int/lit8 v0, p2, 0x1

    invoke-static {p3, p5}, Lcom/d/a/a/c/h;->d(II)I

    move-result v1

    aput v1, p1, p2

    move p2, v0

    .line 1996
    :cond_1
    iget-object v0, p0, Lcom/d/a/a/c/h;->N:Lcom/d/a/a/d/a;

    invoke-virtual {v0, p1, p2}, Lcom/d/a/a/d/a;->a([II)Ljava/lang/String;

    move-result-object v0

    .line 1997
    if-nez v0, :cond_2

    .line 1998
    invoke-direct {p0, p1, p2, p5}, Lcom/d/a/a/c/h;->a([III)Ljava/lang/String;

    move-result-object v0

    .line 2000
    :cond_2
    return-object v0

    .line 1925
    :cond_3
    const/16 v0, 0x5c

    if-eq p4, v0, :cond_6

    .line 1927
    const-string/jumbo v0, "name"

    invoke-virtual {p0, p4, v0}, Lcom/d/a/a/c/h;->c(ILjava/lang/String;)V

    .line 1937
    :goto_1
    const/16 v0, 0x7f

    if-le p4, v0, :cond_d

    .line 1939
    if-lt p5, v7, :cond_c

    .line 1940
    array-length v0, p1

    if-lt p2, v0, :cond_4

    .line 1941
    array-length v0, p1

    invoke-static {p1, v0}, Lcom/d/a/a/c/h;->a([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/d/a/a/c/h;->O:[I

    .line 1943
    :cond_4
    add-int/lit8 v4, p2, 0x1

    aput p3, p1, p2

    move p5, v1

    move p3, v1

    move-object v0, p1

    .line 1947
    :goto_2
    const/16 v2, 0x800

    if-ge p4, v2, :cond_7

    .line 1948
    shl-int/lit8 v2, p3, 0x8

    shr-int/lit8 v3, p4, 0x6

    or-int/lit16 v3, v3, 0xc0

    or-int/2addr v3, v2

    .line 1949
    add-int/lit8 v2, p5, 0x1

    move v8, v2

    move v2, v3

    move-object v3, v0

    move v0, v8

    .line 1967
    :goto_3
    and-int/lit8 v6, p4, 0x3f

    or-int/lit16 p3, v6, 0x80

    move p5, v0

    move p2, v4

    move-object v0, v3

    move v3, v2

    .line 1971
    :goto_4
    if-ge p5, v7, :cond_9

    .line 1972
    add-int/lit8 p5, p5, 0x1

    .line 1973
    shl-int/lit8 v2, v3, 0x8

    or-int/2addr p3, v2

    move-object p1, v0

    .line 1982
    :goto_5
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    iget v2, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v0, v2, :cond_5

    .line 1983
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->y()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1984
    const-string/jumbo v0, " in field name"

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/h;->c(Ljava/lang/String;)V

    .line 1987
    :cond_5
    iget-object v0, p0, Lcom/d/a/a/c/h;->U:[B

    iget v2, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v0, v2

    and-int/lit16 p4, v0, 0xff

    goto/16 :goto_0

    .line 1930
    :cond_6
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->N()C

    move-result p4

    goto :goto_1

    .line 1952
    :cond_7
    shl-int/lit8 v2, p3, 0x8

    shr-int/lit8 v3, p4, 0xc

    or-int/lit16 v3, v3, 0xe0

    or-int/2addr v3, v2

    .line 1953
    add-int/lit8 v2, p5, 0x1

    .line 1955
    if-lt v2, v7, :cond_b

    .line 1956
    array-length v2, v0

    if-lt v4, v2, :cond_8

    .line 1957
    array-length v2, v0

    invoke-static {v0, v2}, Lcom/d/a/a/c/h;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/c/h;->O:[I

    .line 1959
    :cond_8
    add-int/lit8 v2, v4, 0x1

    aput v3, v0, v4

    move v3, v2

    move-object v4, v0

    move v0, v1

    move v2, v1

    .line 1963
    :goto_6
    shl-int/lit8 v2, v2, 0x8

    shr-int/lit8 v6, p4, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    or-int/2addr v2, v6

    .line 1964
    add-int/lit8 v0, v0, 0x1

    move v8, v3

    move-object v3, v4

    move v4, v8

    goto :goto_3

    .line 1975
    :cond_9
    array-length v2, v0

    if-lt p2, v2, :cond_a

    .line 1976
    array-length v2, v0

    invoke-static {v0, v2}, Lcom/d/a/a/c/h;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/c/h;->O:[I

    .line 1978
    :cond_a
    add-int/lit8 v2, p2, 0x1

    aput v3, v0, p2

    .line 1980
    const/4 p5, 0x1

    move p2, v2

    move-object p1, v0

    goto :goto_5

    :cond_b
    move v8, v2

    move v2, v3

    move v3, v4

    move-object v4, v0

    move v0, v8

    goto :goto_6

    :cond_c
    move v4, p2

    move-object v0, p1

    goto/16 :goto_2

    :cond_d
    move v3, p3

    move-object v0, p1

    move p3, p4

    goto :goto_4
.end method

.method protected final a(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2758
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2759
    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v1, v2, :cond_1

    .line 2760
    invoke-direct {p0, p1, p2}, Lcom/d/a/a/c/h;->b(Ljava/lang/String;I)V

    .line 2774
    :cond_0
    :goto_0
    return-void

    .line 2764
    :cond_1
    iget-object v1, p0, Lcom/d/a/a/c/h;->U:[B

    iget v2, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v1, v1, v2

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_2

    .line 2765
    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/d/a/a/c/h;->e(Ljava/lang/String;)V

    .line 2767
    :cond_2
    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/d/a/a/c/h;->d:I

    .line 2768
    add-int/lit8 p2, p2, 0x1

    if-lt p2, v0, :cond_1

    .line 2770
    iget-object v0, p0, Lcom/d/a/a/c/h;->U:[B

    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 2771
    const/16 v1, 0x30

    if-lt v0, v1, :cond_0

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_0

    .line 2772
    invoke-direct {p0, p1, p2, v0}, Lcom/d/a/a/c/h;->a(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3456
    :goto_0
    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    iget v2, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/d/a/a/c/h;->y()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3466
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized token \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\': was expecting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/h;->d(Ljava/lang/String;)V

    .line 3467
    return-void

    .line 3459
    :cond_1
    iget-object v1, p0, Lcom/d/a/a/c/h;->U:[B

    iget v2, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v1, v1, v2

    .line 3460
    invoke-virtual {p0, v1}, Lcom/d/a/a/c/h;->j(I)I

    move-result v1

    int-to-char v1, v1

    .line 3461
    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3464
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public a(Lcom/d/a/a/a;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 508
    iget-object v0, p0, Lcom/d/a/a/c/h;->K:Lcom/d/a/a/o;

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/d/a/a/c/h;->K:Lcom/d/a/a/o;

    sget-object v1, Lcom/d/a/a/o;->g:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/d/a/a/c/h;->r:[B

    if-nez v0, :cond_1

    .line 510
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Current token ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/d/a/a/c/h;->K:Lcom/d/a/a/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/h;->d(Ljava/lang/String;)V

    .line 515
    :cond_1
    iget-boolean v0, p0, Lcom/d/a/a/c/h;->P:Z

    if-eqz v0, :cond_3

    .line 517
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/d/a/a/c/h;->b(Lcom/d/a/a/a;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/c/h;->r:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/d/a/a/c/h;->P:Z

    .line 533
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/d/a/a/c/h;->r:[B

    return-object v0

    .line 518
    :catch_0
    move-exception v0

    .line 519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to decode VALUE_STRING as base64 ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/h;->a(Ljava/lang/String;)Lcom/d/a/a/j;

    move-result-object v0

    throw v0

    .line 526
    :cond_3
    iget-object v0, p0, Lcom/d/a/a/c/h;->r:[B

    if-nez v0, :cond_2

    .line 528
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->E()Lcom/d/a/a/e/b;

    move-result-object v0

    .line 529
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Lcom/d/a/a/c/h;->a(Ljava/lang/String;Lcom/d/a/a/e/b;Lcom/d/a/a/a;)V

    .line 530
    invoke-virtual {v0}, Lcom/d/a/a/e/b;->b()[B

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/c/h;->r:[B

    goto :goto_0
.end method

.method protected b(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 3494
    iput p2, p0, Lcom/d/a/a/c/h;->d:I

    .line 3495
    invoke-virtual {p0, p1}, Lcom/d/a/a/c/h;->m(I)V

    .line 3496
    return-void
.end method

.method protected final b(Lcom/d/a/a/a;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/16 v6, 0x22

    const/4 v5, -0x2

    .line 3519
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->E()Lcom/d/a/a/e/b;

    move-result-object v2

    .line 3526
    :cond_0
    :goto_0
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    iget v1, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v0, v1, :cond_1

    .line 3527
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->x()V

    .line 3529
    :cond_1
    iget-object v0, p0, Lcom/d/a/a/c/h;->U:[B

    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xff

    .line 3530
    const/16 v0, 0x20

    if-le v1, v0, :cond_0

    .line 3531
    invoke-virtual {p1, v1}, Lcom/d/a/a/a;->b(I)I

    move-result v0

    .line 3532
    if-gez v0, :cond_3

    .line 3533
    if-ne v1, v6, :cond_2

    .line 3534
    invoke-virtual {v2}, Lcom/d/a/a/e/b;->b()[B

    move-result-object v0

    .line 3602
    :goto_1
    return-object v0

    .line 3536
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/d/a/a/c/h;->a(Lcom/d/a/a/a;II)I

    move-result v0

    .line 3537
    if-ltz v0, :cond_0

    .line 3545
    :cond_3
    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    iget v3, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v1, v3, :cond_4

    .line 3546
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->x()V

    .line 3548
    :cond_4
    iget-object v1, p0, Lcom/d/a/a/c/h;->U:[B

    iget v3, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v1, v1, v3

    and-int/lit16 v3, v1, 0xff

    .line 3549
    invoke-virtual {p1, v3}, Lcom/d/a/a/a;->b(I)I

    move-result v1

    .line 3550
    if-gez v1, :cond_5

    .line 3551
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v3, v1}, Lcom/d/a/a/c/h;->a(Lcom/d/a/a/a;II)I

    move-result v1

    .line 3553
    :cond_5
    shl-int/lit8 v0, v0, 0x6

    or-int/2addr v1, v0

    .line 3556
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    iget v3, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v0, v3, :cond_6

    .line 3557
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->x()V

    .line 3559
    :cond_6
    iget-object v0, p0, Lcom/d/a/a/c/h;->U:[B

    iget v3, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v0, v3

    and-int/lit16 v3, v0, 0xff

    .line 3560
    invoke-virtual {p1, v3}, Lcom/d/a/a/a;->b(I)I

    move-result v0

    .line 3563
    if-gez v0, :cond_b

    .line 3564
    if-eq v0, v5, :cond_8

    .line 3566
    if-ne v3, v6, :cond_7

    invoke-virtual {p1}, Lcom/d/a/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3567
    shr-int/lit8 v0, v1, 0x4

    .line 3568
    invoke-virtual {v2, v0}, Lcom/d/a/a/e/b;->a(I)V

    .line 3569
    invoke-virtual {v2}, Lcom/d/a/a/e/b;->b()[B

    move-result-object v0

    goto :goto_1

    .line 3571
    :cond_7
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v3, v0}, Lcom/d/a/a/c/h;->a(Lcom/d/a/a/a;II)I

    move-result v0

    .line 3573
    :cond_8
    if-ne v0, v5, :cond_b

    .line 3575
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    iget v3, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v0, v3, :cond_9

    .line 3576
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->x()V

    .line 3578
    :cond_9
    iget-object v0, p0, Lcom/d/a/a/c/h;->U:[B

    iget v3, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    .line 3579
    invoke-virtual {p1, v0}, Lcom/d/a/a/a;->a(I)Z

    move-result v3

    if-nez v3, :cond_a

    .line 3580
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "expected padding character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/d/a/a/a;->b()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v7, v1}, Lcom/d/a/a/c/h;->a(Lcom/d/a/a/a;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 3583
    :cond_a
    shr-int/lit8 v0, v1, 0x4

    .line 3584
    invoke-virtual {v2, v0}, Lcom/d/a/a/e/b;->a(I)V

    goto/16 :goto_0

    .line 3589
    :cond_b
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v0

    .line 3591
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    iget v3, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v0, v3, :cond_c

    .line 3592
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->x()V

    .line 3594
    :cond_c
    iget-object v0, p0, Lcom/d/a/a/c/h;->U:[B

    iget v3, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v0, v3

    and-int/lit16 v3, v0, 0xff

    .line 3595
    invoke-virtual {p1, v3}, Lcom/d/a/a/a;->b(I)I

    move-result v0

    .line 3596
    if-gez v0, :cond_f

    .line 3597
    if-eq v0, v5, :cond_e

    .line 3599
    if-ne v3, v6, :cond_d

    invoke-virtual {p1}, Lcom/d/a/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_d

    .line 3600
    shr-int/lit8 v0, v1, 0x2

    .line 3601
    invoke-virtual {v2, v0}, Lcom/d/a/a/e/b;->b(I)V

    .line 3602
    invoke-virtual {v2}, Lcom/d/a/a/e/b;->b()[B

    move-result-object v0

    goto/16 :goto_1

    .line 3604
    :cond_d
    invoke-virtual {p0, p1, v3, v7}, Lcom/d/a/a/c/h;->a(Lcom/d/a/a/a;II)I

    move-result v0

    .line 3606
    :cond_e
    if-ne v0, v5, :cond_f

    .line 3613
    shr-int/lit8 v0, v1, 0x2

    .line 3614
    invoke-virtual {v2, v0}, Lcom/d/a/a/e/b;->b(I)V

    goto/16 :goto_0

    .line 3619
    :cond_f
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v1

    .line 3620
    invoke-virtual {v2, v0}, Lcom/d/a/a/e/b;->c(I)V

    goto/16 :goto_0
.end method

.method public e()Lcom/d/a/a/i;
    .locals 8

    .prologue
    const-wide/16 v4, -0x1

    .line 3634
    iget-object v0, p0, Lcom/d/a/a/c/h;->b:Lcom/d/a/a/b/c;

    invoke-virtual {v0}, Lcom/d/a/a/b/c;->a()Ljava/lang/Object;

    move-result-object v1

    .line 3635
    iget-object v0, p0, Lcom/d/a/a/c/h;->K:Lcom/d/a/a/o;

    sget-object v2, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v2, :cond_0

    .line 3636
    iget-wide v2, p0, Lcom/d/a/a/c/h;->f:J

    iget v0, p0, Lcom/d/a/a/c/h;->Q:I

    add-int/lit8 v0, v0, -0x1

    int-to-long v6, v0

    add-long/2addr v2, v6

    .line 3637
    new-instance v0, Lcom/d/a/a/i;

    iget v6, p0, Lcom/d/a/a/c/h;->R:I

    iget v7, p0, Lcom/d/a/a/c/h;->S:I

    invoke-direct/range {v0 .. v7}, Lcom/d/a/a/i;-><init>(Ljava/lang/Object;JJII)V

    .line 3640
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/d/a/a/i;

    iget-wide v2, p0, Lcom/d/a/a/c/h;->i:J

    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    iget v6, p0, Lcom/d/a/a/c/h;->j:I

    iget v7, p0, Lcom/d/a/a/c/h;->k:I

    invoke-direct/range {v0 .. v7}, Lcom/d/a/a/i;-><init>(Ljava/lang/Object;JJII)V

    goto :goto_0
.end method

.method protected e(I)Lcom/d/a/a/o;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x30

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1360
    iget-object v0, p0, Lcom/d/a/a/c/h;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0}, Lcom/d/a/a/e/i;->k()[C

    move-result-object v1

    .line 1362
    if-ne p1, v8, :cond_0

    .line 1363
    invoke-direct {p0}, Lcom/d/a/a/c/h;->Z()I

    move-result p1

    .line 1366
    :cond_0
    int-to-char v0, p1

    aput-char v0, v1, v4

    .line 1371
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    array-length v3, v1

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    .line 1372
    iget v3, p0, Lcom/d/a/a/c/h;->e:I

    if-le v0, v3, :cond_7

    .line 1373
    iget v0, p0, Lcom/d/a/a/c/h;->e:I

    move v5, v2

    .line 1377
    :goto_0
    iget v3, p0, Lcom/d/a/a/c/h;->d:I

    if-lt v3, v0, :cond_1

    .line 1378
    invoke-direct {p0, v1, v2, v4, v5}, Lcom/d/a/a/c/h;->a([CIZI)Lcom/d/a/a/o;

    move-result-object v0

    .line 1397
    :goto_1
    return-object v0

    .line 1380
    :cond_1
    iget-object v3, p0, Lcom/d/a/a/c/h;->U:[B

    iget v6, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    .line 1381
    if-lt v3, v8, :cond_2

    const/16 v6, 0x39

    if-le v3, v6, :cond_4

    .line 1387
    :cond_2
    const/16 v0, 0x2e

    if-eq v3, v0, :cond_3

    const/16 v0, 0x65

    if-eq v3, v0, :cond_3

    const/16 v0, 0x45

    if-ne v3, v0, :cond_5

    :cond_3
    move-object v0, p0

    .line 1388
    invoke-direct/range {v0 .. v5}, Lcom/d/a/a/c/h;->a([CIIZI)Lcom/d/a/a/o;

    move-result-object v0

    goto :goto_1

    .line 1384
    :cond_4
    add-int/lit8 v6, v5, 0x1

    .line 1385
    add-int/lit8 v5, v2, 0x1

    int-to-char v3, v3

    aput-char v3, v1, v2

    move v2, v5

    move v5, v6

    goto :goto_0

    .line 1390
    :cond_5
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/d/a/a/c/h;->d:I

    .line 1391
    iget-object v0, p0, Lcom/d/a/a/c/h;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0, v2}, Lcom/d/a/a/e/i;->a(I)V

    .line 1393
    iget-object v0, p0, Lcom/d/a/a/c/h;->l:Lcom/d/a/a/c/d;

    invoke-virtual {v0}, Lcom/d/a/a/c/d;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1394
    invoke-direct {p0, v3}, Lcom/d/a/a/c/h;->o(I)V

    .line 1397
    :cond_6
    invoke-virtual {p0, v4, v5}, Lcom/d/a/a/c/h;->a(ZI)Lcom/d/a/a/o;

    move-result-object v0

    goto :goto_1

    :cond_7
    move v5, v2

    goto :goto_0
.end method

.method protected e(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3444
    const-string/jumbo v0, "\'null\', \'true\', \'false\' or NaN"

    invoke-virtual {p0, p1, v0}, Lcom/d/a/a/c/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3445
    return-void
.end method

.method public f()Lcom/d/a/a/i;
    .locals 8

    .prologue
    .line 3648
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    iget v1, p0, Lcom/d/a/a/c/h;->h:I

    sub-int/2addr v0, v1

    add-int/lit8 v7, v0, 0x1

    .line 3649
    new-instance v0, Lcom/d/a/a/i;

    iget-object v1, p0, Lcom/d/a/a/c/h;->b:Lcom/d/a/a/b/c;

    invoke-virtual {v1}, Lcom/d/a/a/b/c;->a()Ljava/lang/Object;

    move-result-object v1

    iget-wide v2, p0, Lcom/d/a/a/c/h;->f:J

    iget v4, p0, Lcom/d/a/a/c/h;->d:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    const-wide/16 v4, -0x1

    iget v6, p0, Lcom/d/a/a/c/h;->g:I

    invoke-direct/range {v0 .. v7}, Lcom/d/a/a/i;-><init>(Ljava/lang/Object;JJII)V

    return-object v0
.end method

.method protected final f(I)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x22

    .line 1664
    if-eq p1, v5, :cond_0

    .line 1665
    invoke-virtual {p0, p1}, Lcom/d/a/a/c/h;->h(I)Ljava/lang/String;

    move-result-object v0

    .line 1721
    :goto_0
    return-object v0

    .line 1668
    :cond_0
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v0, v0, 0xd

    iget v1, p0, Lcom/d/a/a/c/h;->e:I

    if-le v0, v1, :cond_1

    .line 1669
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->S()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1678
    :cond_1
    iget-object v0, p0, Lcom/d/a/a/c/h;->U:[B

    .line 1679
    sget-object v1, Lcom/d/a/a/c/h;->L:[I

    .line 1681
    iget v2, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    .line 1683
    aget v3, v1, v2

    if-nez v3, :cond_a

    .line 1684
    iget v3, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    .line 1685
    aget v4, v1, v3

    if-nez v4, :cond_8

    .line 1686
    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    .line 1687
    iget v3, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    .line 1688
    aget v4, v1, v3

    if-nez v4, :cond_6

    .line 1689
    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    .line 1690
    iget v3, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    .line 1691
    aget v4, v1, v3

    if-nez v4, :cond_4

    .line 1692
    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    .line 1693
    iget v3, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    .line 1694
    aget v1, v1, v0

    if-nez v1, :cond_2

    .line 1695
    iput v2, p0, Lcom/d/a/a/c/h;->X:I

    .line 1696
    invoke-virtual {p0, v0}, Lcom/d/a/a/c/h;->g(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1698
    :cond_2
    if-ne v0, v5, :cond_3

    .line 1699
    const/4 v0, 0x4

    invoke-direct {p0, v2, v0}, Lcom/d/a/a/c/h;->c(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1701
    :cond_3
    const/4 v1, 0x4

    invoke-direct {p0, v2, v0, v1}, Lcom/d/a/a/c/h;->b(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1703
    :cond_4
    if-ne v3, v5, :cond_5

    .line 1704
    invoke-direct {p0, v2, v8}, Lcom/d/a/a/c/h;->c(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1706
    :cond_5
    invoke-direct {p0, v2, v3, v8}, Lcom/d/a/a/c/h;->b(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1708
    :cond_6
    if-ne v3, v5, :cond_7

    .line 1709
    invoke-direct {p0, v2, v7}, Lcom/d/a/a/c/h;->c(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1711
    :cond_7
    invoke-direct {p0, v2, v3, v7}, Lcom/d/a/a/c/h;->b(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1713
    :cond_8
    if-ne v3, v5, :cond_9

    .line 1714
    invoke-direct {p0, v2, v6}, Lcom/d/a/a/c/h;->c(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1716
    :cond_9
    invoke-direct {p0, v2, v3, v6}, Lcom/d/a/a/c/h;->b(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1718
    :cond_a
    if-ne v2, v5, :cond_b

    .line 1719
    const-string/jumbo v0, ""

    goto/16 :goto_0

    .line 1721
    :cond_b
    invoke-direct {p0, v4, v2, v4}, Lcom/d/a/a/c/h;->b(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lcom/d/a/a/c/h;->K:Lcom/d/a/a/o;

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_1

    .line 316
    iget-boolean v0, p0, Lcom/d/a/a/c/h;->P:Z

    if-eqz v0, :cond_0

    .line 317
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/d/a/a/c/h;->P:Z

    .line 318
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->U()Ljava/lang/String;

    move-result-object v0

    .line 322
    :goto_0
    return-object v0

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/h;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0}, Lcom/d/a/a/e/i;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/d/a/a/c/h;->K:Lcom/d/a/a/o;

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/h;->a(Lcom/d/a/a/o;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final g(I)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/16 v5, 0x22

    .line 1726
    iget-object v0, p0, Lcom/d/a/a/c/h;->U:[B

    .line 1727
    sget-object v1, Lcom/d/a/a/c/h;->L:[I

    .line 1730
    iget v2, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    .line 1731
    aget v3, v1, v2

    if-eqz v3, :cond_1

    .line 1732
    if-ne v2, v5, :cond_0

    .line 1733
    iget v0, p0, Lcom/d/a/a/c/h;->X:I

    invoke-direct {p0, v0, p1, v4}, Lcom/d/a/a/c/h;->c(III)Ljava/lang/String;

    move-result-object v0

    .line 1761
    :goto_0
    return-object v0

    .line 1735
    :cond_0
    iget v0, p0, Lcom/d/a/a/c/h;->X:I

    invoke-direct {p0, v0, p1, v2, v4}, Lcom/d/a/a/c/h;->a(IIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1737
    :cond_1
    shl-int/lit8 v3, p1, 0x8

    or-int/2addr v2, v3

    .line 1738
    iget v3, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    .line 1739
    aget v4, v1, v3

    if-eqz v4, :cond_3

    .line 1740
    if-ne v3, v5, :cond_2

    .line 1741
    iget v0, p0, Lcom/d/a/a/c/h;->X:I

    invoke-direct {p0, v0, v2, v6}, Lcom/d/a/a/c/h;->c(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1743
    :cond_2
    iget v0, p0, Lcom/d/a/a/c/h;->X:I

    invoke-direct {p0, v0, v2, v3, v6}, Lcom/d/a/a/c/h;->a(IIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1745
    :cond_3
    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    .line 1746
    iget v3, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    .line 1747
    aget v4, v1, v3

    if-eqz v4, :cond_5

    .line 1748
    if-ne v3, v5, :cond_4

    .line 1749
    iget v0, p0, Lcom/d/a/a/c/h;->X:I

    invoke-direct {p0, v0, v2, v7}, Lcom/d/a/a/c/h;->c(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1751
    :cond_4
    iget v0, p0, Lcom/d/a/a/c/h;->X:I

    invoke-direct {p0, v0, v2, v3, v7}, Lcom/d/a/a/c/h;->a(IIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1753
    :cond_5
    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    .line 1754
    iget v3, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    .line 1755
    aget v1, v1, v0

    if-eqz v1, :cond_7

    .line 1756
    if-ne v0, v5, :cond_6

    .line 1757
    iget v0, p0, Lcom/d/a/a/c/h;->X:I

    invoke-direct {p0, v0, v2, v8}, Lcom/d/a/a/c/h;->c(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1759
    :cond_6
    iget v1, p0, Lcom/d/a/a/c/h;->X:I

    invoke-direct {p0, v1, v2, v0, v8}, Lcom/d/a/a/c/h;->a(IIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1761
    :cond_7
    invoke-virtual {p0, v0, v2}, Lcom/d/a/a/c/h;->a(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected h(I)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2012
    const/16 v1, 0x27

    if-ne p1, v1, :cond_0

    sget-object v1, Lcom/d/a/a/l;->e:Lcom/d/a/a/l;

    invoke-virtual {p0, v1}, Lcom/d/a/a/c/h;->a(Lcom/d/a/a/l;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2013
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->T()Ljava/lang/String;

    move-result-object v0

    .line 2074
    :goto_0
    return-object v0

    .line 2016
    :cond_0
    sget-object v1, Lcom/d/a/a/l;->d:Lcom/d/a/a/l;

    invoke-virtual {p0, v1}, Lcom/d/a/a/c/h;->a(Lcom/d/a/a/l;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2017
    invoke-virtual {p0, p1}, Lcom/d/a/a/c/h;->j(I)I

    move-result v1

    int-to-char v1, v1

    .line 2018
    const-string/jumbo v2, "was expecting double-quote to start field name"

    invoke-virtual {p0, v1, v2}, Lcom/d/a/a/c/h;->b(ILjava/lang/String;)V

    .line 2024
    :cond_1
    invoke-static {}, Lcom/d/a/a/b/a;->d()[I

    move-result-object v6

    .line 2026
    aget v1, v6, p1

    if-eqz v1, :cond_2

    .line 2027
    const-string/jumbo v1, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    invoke-virtual {p0, p1, v1}, Lcom/d/a/a/c/h;->b(ILjava/lang/String;)V

    .line 2034
    :cond_2
    iget-object v3, p0, Lcom/d/a/a/c/h;->O:[I

    move v1, v0

    move v5, v0

    move v2, p1

    move-object v7, v3

    move v3, v0

    move-object v0, v7

    .line 2041
    :goto_1
    const/4 v4, 0x4

    if-ge v1, v4, :cond_6

    .line 2042
    add-int/lit8 v1, v1, 0x1

    .line 2043
    shl-int/lit8 v4, v5, 0x8

    or-int/2addr v2, v4

    move v7, v1

    move v1, v2

    move v2, v3

    move-object v3, v0

    move v0, v7

    .line 2052
    :goto_2
    iget v4, p0, Lcom/d/a/a/c/h;->d:I

    iget v5, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v4, v5, :cond_3

    .line 2053
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->y()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2054
    const-string/jumbo v4, " in field name"

    invoke-virtual {p0, v4}, Lcom/d/a/a/c/h;->c(Ljava/lang/String;)V

    .line 2057
    :cond_3
    iget-object v4, p0, Lcom/d/a/a/c/h;->U:[B

    iget v5, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v4, v4, v5

    and-int/lit16 p1, v4, 0xff

    .line 2058
    aget v4, v6, p1

    if-eqz v4, :cond_8

    .line 2064
    if-lez v0, :cond_5

    .line 2065
    array-length v4, v3

    if-lt v2, v4, :cond_4

    .line 2066
    array-length v4, v3

    invoke-static {v3, v4}, Lcom/d/a/a/c/h;->a([II)[I

    move-result-object v3

    iput-object v3, p0, Lcom/d/a/a/c/h;->O:[I

    .line 2068
    :cond_4
    add-int/lit8 v4, v2, 0x1

    aput v1, v3, v2

    move v2, v4

    .line 2070
    :cond_5
    iget-object v1, p0, Lcom/d/a/a/c/h;->N:Lcom/d/a/a/d/a;

    invoke-virtual {v1, v3, v2}, Lcom/d/a/a/d/a;->a([II)Ljava/lang/String;

    move-result-object v1

    .line 2071
    if-nez v1, :cond_9

    .line 2072
    invoke-direct {p0, v3, v2, v0}, Lcom/d/a/a/c/h;->a([III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2045
    :cond_6
    array-length v1, v0

    if-lt v3, v1, :cond_7

    .line 2046
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/d/a/a/c/h;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/c/h;->O:[I

    .line 2048
    :cond_7
    add-int/lit8 v4, v3, 0x1

    aput v5, v0, v3

    .line 2050
    const/4 v1, 0x1

    move-object v3, v0

    move v0, v1

    move v1, v2

    move v2, v4

    goto :goto_2

    .line 2061
    :cond_8
    iget v4, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/d/a/a/c/h;->d:I

    move v5, v1

    move v1, v0

    move-object v0, v3

    move v3, v2

    move v2, p1

    goto :goto_1

    :cond_9
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public h()[C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 423
    iget-object v0, p0, Lcom/d/a/a/c/h;->K:Lcom/d/a/a/o;

    if-eqz v0, :cond_4

    .line 424
    iget-object v0, p0, Lcom/d/a/a/c/h;->K:Lcom/d/a/a/o;

    invoke-virtual {v0}, Lcom/d/a/a/o;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 451
    iget-object v0, p0, Lcom/d/a/a/c/h;->K:Lcom/d/a/a/o;

    invoke-virtual {v0}, Lcom/d/a/a/o;->c()[C

    move-result-object v0

    .line 454
    :goto_0
    return-object v0

    .line 427
    :pswitch_0
    iget-boolean v0, p0, Lcom/d/a/a/c/h;->p:Z

    if-nez v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/d/a/a/c/h;->l:Lcom/d/a/a/c/d;

    invoke-virtual {v0}, Lcom/d/a/a/c/d;->g()Ljava/lang/String;

    move-result-object v0

    .line 429
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 430
    iget-object v2, p0, Lcom/d/a/a/c/h;->o:[C

    if-nez v2, :cond_2

    .line 431
    iget-object v2, p0, Lcom/d/a/a/c/h;->b:Lcom/d/a/a/b/c;

    invoke-virtual {v2, v1}, Lcom/d/a/a/b/c;->b(I)[C

    move-result-object v2

    iput-object v2, p0, Lcom/d/a/a/c/h;->o:[C

    .line 435
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/d/a/a/c/h;->o:[C

    invoke-virtual {v0, v3, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 436
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/d/a/a/c/h;->p:Z

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/d/a/a/c/h;->o:[C

    goto :goto_0

    .line 432
    :cond_2
    iget-object v2, p0, Lcom/d/a/a/c/h;->o:[C

    array-length v2, v2

    if-ge v2, v1, :cond_0

    .line 433
    new-array v2, v1, [C

    iput-object v2, p0, Lcom/d/a/a/c/h;->o:[C

    goto :goto_1

    .line 441
    :pswitch_1
    iget-boolean v0, p0, Lcom/d/a/a/c/h;->P:Z

    if-eqz v0, :cond_3

    .line 442
    iput-boolean v3, p0, Lcom/d/a/a/c/h;->P:Z

    .line 443
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->z()V

    .line 448
    :cond_3
    :pswitch_2
    iget-object v0, p0, Lcom/d/a/a/c/h;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0}, Lcom/d/a/a/e/i;->e()[C

    move-result-object v0

    goto :goto_0

    .line 454
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 424
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public i()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 460
    iget-object v1, p0, Lcom/d/a/a/c/h;->K:Lcom/d/a/a/o;

    if-eqz v1, :cond_0

    .line 461
    iget-object v1, p0, Lcom/d/a/a/c/h;->K:Lcom/d/a/a/o;

    invoke-virtual {v1}, Lcom/d/a/a/o;->a()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 476
    iget-object v0, p0, Lcom/d/a/a/c/h;->K:Lcom/d/a/a/o;

    invoke-virtual {v0}, Lcom/d/a/a/o;->c()[C

    move-result-object v0

    array-length v0, v0

    .line 479
    :cond_0
    :goto_0
    return v0

    .line 464
    :pswitch_0
    iget-object v0, p0, Lcom/d/a/a/c/h;->l:Lcom/d/a/a/c/d;

    invoke-virtual {v0}, Lcom/d/a/a/c/d;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 466
    :pswitch_1
    iget-boolean v1, p0, Lcom/d/a/a/c/h;->P:Z

    if-eqz v1, :cond_1

    .line 467
    iput-boolean v0, p0, Lcom/d/a/a/c/h;->P:Z

    .line 468
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->z()V

    .line 473
    :cond_1
    :pswitch_2
    iget-object v0, p0, Lcom/d/a/a/c/h;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0}, Lcom/d/a/a/e/i;->c()I

    move-result v0

    goto :goto_0

    .line 461
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected i(I)Lcom/d/a/a/o;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 2590
    sparse-switch p1, :sswitch_data_0

    .line 2624
    :cond_0
    :goto_0
    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "(\'true\', \'false\' or \'null\')"

    invoke-virtual {p0, v0, v1}, Lcom/d/a/a/c/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2628
    :cond_1
    const-string/jumbo v0, "expected a valid value (number, String, array, object, \'true\', \'false\' or \'null\')"

    invoke-virtual {p0, p1, v0}, Lcom/d/a/a/c/h;->b(ILjava/lang/String;)V

    .line 2629
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 2595
    :sswitch_0
    const-string/jumbo v0, "expected a value"

    invoke-virtual {p0, p1, v0}, Lcom/d/a/a/c/h;->b(ILjava/lang/String;)V

    .line 2597
    :sswitch_1
    sget-object v0, Lcom/d/a/a/l;->e:Lcom/d/a/a/l;

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/h;->a(Lcom/d/a/a/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2598
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->W()Lcom/d/a/a/o;

    move-result-object v0

    goto :goto_1

    .line 2602
    :sswitch_2
    const-string/jumbo v0, "NaN"

    invoke-virtual {p0, v0, v1}, Lcom/d/a/a/c/h;->a(Ljava/lang/String;I)V

    .line 2603
    sget-object v0, Lcom/d/a/a/l;->i:Lcom/d/a/a/l;

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/h;->a(Lcom/d/a/a/l;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2604
    const-string/jumbo v0, "NaN"

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p0, v0, v2, v3}, Lcom/d/a/a/c/h;->a(Ljava/lang/String;D)Lcom/d/a/a/o;

    move-result-object v0

    goto :goto_1

    .line 2606
    :cond_2
    const-string/jumbo v0, "Non-standard token \'NaN\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/h;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 2609
    :sswitch_3
    const-string/jumbo v0, "Infinity"

    invoke-virtual {p0, v0, v1}, Lcom/d/a/a/c/h;->a(Ljava/lang/String;I)V

    .line 2610
    sget-object v0, Lcom/d/a/a/l;->i:Lcom/d/a/a/l;

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/h;->a(Lcom/d/a/a/l;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2611
    const-string/jumbo v0, "Infinity"

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-virtual {p0, v0, v2, v3}, Lcom/d/a/a/c/h;->a(Ljava/lang/String;D)Lcom/d/a/a/o;

    move-result-object v0

    goto :goto_1

    .line 2613
    :cond_3
    const-string/jumbo v0, "Non-standard token \'Infinity\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/h;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 2616
    :sswitch_4
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    iget v1, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v0, v1, :cond_4

    .line 2617
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->y()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2618
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->P()V

    .line 2621
    :cond_4
    iget-object v0, p0, Lcom/d/a/a/c/h;->U:[B

    iget v1, p0, Lcom/d/a/a/c/h;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/h;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/d/a/a/c/h;->a(IZ)Lcom/d/a/a/o;

    move-result-object v0

    goto :goto_1

    .line 2590
    nop

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_1
        0x2b -> :sswitch_4
        0x49 -> :sswitch_3
        0x4e -> :sswitch_2
        0x5d -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method public j()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 486
    iget-object v1, p0, Lcom/d/a/a/c/h;->K:Lcom/d/a/a/o;

    if-eqz v1, :cond_0

    .line 487
    iget-object v1, p0, Lcom/d/a/a/c/h;->K:Lcom/d/a/a/o;

    invoke-virtual {v1}, Lcom/d/a/a/o;->a()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 502
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 491
    :pswitch_1
    iget-boolean v1, p0, Lcom/d/a/a/c/h;->P:Z

    if-eqz v1, :cond_1

    .line 492
    iput-boolean v0, p0, Lcom/d/a/a/c/h;->P:Z

    .line 493
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->z()V

    .line 498
    :cond_1
    :pswitch_2
    iget-object v0, p0, Lcom/d/a/a/c/h;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0}, Lcom/d/a/a/e/i;->d()I

    move-result v0

    goto :goto_0

    .line 487
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected j(I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/16 v6, 0x80

    const/4 v1, 0x1

    .line 3212
    and-int/lit16 v0, p1, 0xff

    .line 3213
    const/16 v3, 0x7f

    if-le v0, v3, :cond_3

    .line 3217
    and-int/lit16 v3, v0, 0xe0

    const/16 v4, 0xc0

    if-ne v3, v4, :cond_4

    .line 3218
    and-int/lit8 v0, v0, 0x1f

    move v3, v0

    move v0, v1

    .line 3232
    :goto_0
    invoke-direct {p0}, Lcom/d/a/a/c/h;->aj()I

    move-result v4

    .line 3233
    and-int/lit16 v5, v4, 0xc0

    if-eq v5, v6, :cond_0

    .line 3234
    and-int/lit16 v5, v4, 0xff

    invoke-virtual {p0, v5}, Lcom/d/a/a/c/h;->m(I)V

    .line 3236
    :cond_0
    shl-int/lit8 v3, v3, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v3, v4

    .line 3238
    if-le v0, v1, :cond_8

    .line 3239
    invoke-direct {p0}, Lcom/d/a/a/c/h;->aj()I

    move-result v1

    .line 3240
    and-int/lit16 v4, v1, 0xc0

    if-eq v4, v6, :cond_1

    .line 3241
    and-int/lit16 v4, v1, 0xff

    invoke-virtual {p0, v4}, Lcom/d/a/a/c/h;->m(I)V

    .line 3243
    :cond_1
    shl-int/lit8 v3, v3, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v3

    .line 3244
    if-le v0, v2, :cond_7

    .line 3245
    invoke-direct {p0}, Lcom/d/a/a/c/h;->aj()I

    move-result v0

    .line 3246
    and-int/lit16 v2, v0, 0xc0

    if-eq v2, v6, :cond_2

    .line 3247
    and-int/lit16 v2, v0, 0xff

    invoke-virtual {p0, v2}, Lcom/d/a/a/c/h;->m(I)V

    .line 3249
    :cond_2
    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    .line 3253
    :cond_3
    :goto_1
    return v0

    .line 3220
    :cond_4
    and-int/lit16 v3, v0, 0xf0

    const/16 v4, 0xe0

    if-ne v3, v4, :cond_5

    .line 3221
    and-int/lit8 v0, v0, 0xf

    move v3, v0

    move v0, v2

    .line 3222
    goto :goto_0

    .line 3223
    :cond_5
    and-int/lit16 v3, v0, 0xf8

    const/16 v4, 0xf0

    if-ne v3, v4, :cond_6

    .line 3225
    and-int/lit8 v3, v0, 0x7

    .line 3226
    const/4 v0, 0x3

    goto :goto_0

    .line 3228
    :cond_6
    and-int/lit16 v3, v0, 0xff

    invoke-virtual {p0, v3}, Lcom/d/a/a/c/h;->l(I)V

    move v3, v0

    move v0, v1

    .line 3229
    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_1

    :cond_8
    move v0, v3

    goto :goto_1
.end method

.method protected k(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 3473
    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    .line 3474
    invoke-virtual {p0, p1}, Lcom/d/a/a/c/h;->c(I)V

    .line 3476
    :cond_0
    invoke-virtual {p0, p1}, Lcom/d/a/a/c/h;->l(I)V

    .line 3477
    return-void
.end method

.method protected l(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 3482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Invalid UTF-8 start byte 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/h;->d(Ljava/lang/String;)V

    .line 3483
    return-void
.end method

.method protected m(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 3488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Invalid UTF-8 middle byte 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/h;->d(Ljava/lang/String;)V

    .line 3489
    return-void
.end method

.method protected final y()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 191
    iget v1, p0, Lcom/d/a/a/c/h;->e:I

    .line 193
    iget-wide v2, p0, Lcom/d/a/a/c/h;->f:J

    iget v4, p0, Lcom/d/a/a/c/h;->e:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/d/a/a/c/h;->f:J

    .line 194
    iget v2, p0, Lcom/d/a/a/c/h;->h:I

    iget v3, p0, Lcom/d/a/a/c/h;->e:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/d/a/a/c/h;->h:I

    .line 199
    iget v2, p0, Lcom/d/a/a/c/h;->Q:I

    sub-int v1, v2, v1

    iput v1, p0, Lcom/d/a/a/c/h;->Q:I

    .line 201
    iget-object v1, p0, Lcom/d/a/a/c/h;->T:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/d/a/a/c/h;->U:[B

    array-length v1, v1

    .line 203
    if-nez v1, :cond_1

    .line 220
    :cond_0
    :goto_0
    return v0

    .line 207
    :cond_1
    iget-object v2, p0, Lcom/d/a/a/c/h;->T:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/d/a/a/c/h;->U:[B

    invoke-virtual {v2, v3, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 208
    if-lez v1, :cond_2

    .line 209
    iput v0, p0, Lcom/d/a/a/c/h;->d:I

    .line 210
    iput v1, p0, Lcom/d/a/a/c/h;->e:I

    .line 211
    const/4 v0, 0x1

    goto :goto_0

    .line 214
    :cond_2
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->A()V

    .line 216
    if-nez v1, :cond_0

    .line 217
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "InputStream.read() returned 0 characters when trying to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/d/a/a/c/h;->U:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected z()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2371
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    .line 2372
    iget v1, p0, Lcom/d/a/a/c/h;->e:I

    if-lt v0, v1, :cond_0

    .line 2373
    invoke-virtual {p0}, Lcom/d/a/a/c/h;->x()V

    .line 2374
    iget v0, p0, Lcom/d/a/a/c/h;->d:I

    .line 2376
    :cond_0
    const/4 v1, 0x0

    .line 2377
    iget-object v2, p0, Lcom/d/a/a/c/h;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v2}, Lcom/d/a/a/e/i;->k()[C

    move-result-object v3

    .line 2378
    sget-object v4, Lcom/d/a/a/c/h;->W:[I

    .line 2380
    iget v2, p0, Lcom/d/a/a/c/h;->e:I

    array-length v5, v3

    add-int/2addr v5, v0

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2381
    iget-object v6, p0, Lcom/d/a/a/c/h;->U:[B

    move v8, v1

    move v1, v0

    move v0, v8

    .line 2382
    :goto_0
    if-ge v1, v5, :cond_2

    .line 2383
    aget-byte v2, v6, v1

    and-int/lit16 v7, v2, 0xff

    .line 2384
    aget v2, v4, v7

    if-eqz v2, :cond_1

    .line 2385
    const/16 v2, 0x22

    if-ne v7, v2, :cond_2

    .line 2386
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/d/a/a/c/h;->d:I

    .line 2387
    iget-object v1, p0, Lcom/d/a/a/c/h;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v1, v0}, Lcom/d/a/a/e/i;->a(I)V

    .line 2397
    :goto_1
    return-void

    .line 2392
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 2393
    add-int/lit8 v1, v0, 0x1

    int-to-char v7, v7

    aput-char v7, v3, v0

    move v0, v1

    move v1, v2

    .line 2394
    goto :goto_0

    .line 2395
    :cond_2
    iput v1, p0, Lcom/d/a/a/c/h;->d:I

    .line 2396
    invoke-direct {p0, v3, v0}, Lcom/d/a/a/c/h;->a([CI)V

    goto :goto_1
.end method
