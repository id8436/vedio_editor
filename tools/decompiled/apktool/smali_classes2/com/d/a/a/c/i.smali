.class public final Lcom/d/a/a/c/i;
.super Lcom/d/a/a/c/c;
.source "WriterBasedJsonGenerator.java"


# static fields
.field protected static final u:[C


# instance fields
.field protected A:[C

.field protected B:Lcom/d/a/a/r;

.field protected final v:Ljava/io/Writer;

.field protected w:[C

.field protected x:I

.field protected y:I

.field protected z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/d/a/a/b/a;->g()[C

    move-result-object v0

    sput-object v0, Lcom/d/a/a/c/i;->u:[C

    return-void
.end method

.method public constructor <init>(Lcom/d/a/a/b/c;ILcom/d/a/a/p;Ljava/io/Writer;)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/d/a/a/c/c;-><init>(Lcom/d/a/a/b/c;ILcom/d/a/a/p;)V

    .line 75
    iput-object p4, p0, Lcom/d/a/a/c/i;->v:Ljava/io/Writer;

    .line 76
    invoke-virtual {p1}, Lcom/d/a/a/b/c;->h()[C

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/c/i;->w:[C

    .line 77
    iget-object v0, p0, Lcom/d/a/a/c/i;->w:[C

    array-length v0, v0

    iput v0, p0, Lcom/d/a/a/c/i;->z:I

    .line 78
    return-void
.end method

.method private a([CIICI)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    const/16 v5, 0x30

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x6

    .line 1727
    if-ltz p5, :cond_2

    .line 1728
    if-le p2, v3, :cond_0

    if-ge p2, p3, :cond_0

    .line 1729
    add-int/lit8 p2, p2, -0x2

    .line 1730
    const/16 v0, 0x5c

    aput-char v0, p1, p2

    .line 1731
    add-int/lit8 v0, p2, 0x1

    int-to-char v1, p5

    aput-char v1, p1, v0

    .line 1797
    :goto_0
    return p2

    .line 1733
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/i;->A:[C

    .line 1734
    if-nez v0, :cond_1

    .line 1735
    invoke-direct {p0}, Lcom/d/a/a/c/i;->n()[C

    move-result-object v0

    .line 1737
    :cond_1
    int-to-char v1, p5

    aput-char v1, v0, v3

    .line 1738
    iget-object v1, p0, Lcom/d/a/a/c/i;->v:Ljava/io/Writer;

    invoke-virtual {v1, v0, v2, v4}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 1742
    :cond_2
    const/4 v0, -0x2

    if-eq p5, v0, :cond_7

    .line 1743
    const/4 v0, 0x5

    if-le p2, v0, :cond_4

    if-ge p2, p3, :cond_4

    .line 1744
    add-int/lit8 v0, p2, -0x6

    .line 1745
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x5c

    aput-char v2, p1, v0

    .line 1746
    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x75

    aput-char v2, p1, v1

    .line 1748
    const/16 v1, 0xff

    if-le p4, v1, :cond_3

    .line 1749
    shr-int/lit8 v1, p4, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 1750
    add-int/lit8 v2, v0, 0x1

    sget-object v3, Lcom/d/a/a/c/i;->u:[C

    shr-int/lit8 v4, v1, 0x4

    aget-char v3, v3, v4

    aput-char v3, p1, v0

    .line 1751
    add-int/lit8 v0, v2, 0x1

    sget-object v3, Lcom/d/a/a/c/i;->u:[C

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v3, v1

    aput-char v1, p1, v2

    .line 1752
    and-int/lit16 v1, p4, 0xff

    int-to-char p4, v1

    .line 1757
    :goto_1
    add-int/lit8 v1, v0, 0x1

    sget-object v2, Lcom/d/a/a/c/i;->u:[C

    shr-int/lit8 v3, p4, 0x4

    aget-char v2, v2, v3

    aput-char v2, p1, v0

    .line 1758
    sget-object v0, Lcom/d/a/a/c/i;->u:[C

    and-int/lit8 v2, p4, 0xf

    aget-char v0, v0, v2

    aput-char v0, p1, v1

    .line 1759
    add-int/lit8 p2, v1, -0x5

    goto :goto_0

    .line 1754
    :cond_3
    add-int/lit8 v1, v0, 0x1

    aput-char v5, p1, v0

    .line 1755
    add-int/lit8 v0, v1, 0x1

    aput-char v5, p1, v1

    goto :goto_1

    .line 1762
    :cond_4
    iget-object v0, p0, Lcom/d/a/a/c/i;->A:[C

    .line 1763
    if-nez v0, :cond_5

    .line 1764
    invoke-direct {p0}, Lcom/d/a/a/c/i;->n()[C

    move-result-object v0

    .line 1766
    :cond_5
    iget v1, p0, Lcom/d/a/a/c/i;->y:I

    iput v1, p0, Lcom/d/a/a/c/i;->x:I

    .line 1767
    const/16 v1, 0xff

    if-le p4, v1, :cond_6

    .line 1768
    shr-int/lit8 v1, p4, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 1769
    and-int/lit16 v2, p4, 0xff

    .line 1770
    const/16 v3, 0xa

    sget-object v4, Lcom/d/a/a/c/i;->u:[C

    shr-int/lit8 v5, v1, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 1771
    const/16 v3, 0xb

    sget-object v4, Lcom/d/a/a/c/i;->u:[C

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v4, v1

    aput-char v1, v0, v3

    .line 1772
    const/16 v1, 0xc

    sget-object v3, Lcom/d/a/a/c/i;->u:[C

    shr-int/lit8 v4, v2, 0x4

    aget-char v3, v3, v4

    aput-char v3, v0, v1

    .line 1773
    const/16 v1, 0xd

    sget-object v3, Lcom/d/a/a/c/i;->u:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v3, v2

    aput-char v2, v0, v1

    .line 1774
    iget-object v1, p0, Lcom/d/a/a/c/i;->v:Ljava/io/Writer;

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2, v6}, Ljava/io/Writer;->write([CII)V

    goto/16 :goto_0

    .line 1776
    :cond_6
    sget-object v1, Lcom/d/a/a/c/i;->u:[C

    shr-int/lit8 v2, p4, 0x4

    aget-char v1, v1, v2

    aput-char v1, v0, v6

    .line 1777
    const/4 v1, 0x7

    sget-object v2, Lcom/d/a/a/c/i;->u:[C

    and-int/lit8 v3, p4, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 1778
    iget-object v1, p0, Lcom/d/a/a/c/i;->v:Ljava/io/Writer;

    invoke-virtual {v1, v0, v4, v6}, Ljava/io/Writer;->write([CII)V

    goto/16 :goto_0

    .line 1784
    :cond_7
    iget-object v0, p0, Lcom/d/a/a/c/i;->B:Lcom/d/a/a/r;

    if-nez v0, :cond_8

    .line 1785
    iget-object v0, p0, Lcom/d/a/a/c/i;->r:Lcom/d/a/a/b/b;

    invoke-virtual {v0, p4}, Lcom/d/a/a/b/b;->a(I)Lcom/d/a/a/r;

    move-result-object v0

    invoke-interface {v0}, Lcom/d/a/a/r;->a()Ljava/lang/String;

    move-result-object v0

    .line 1790
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1791
    if-lt p2, v1, :cond_9

    if-ge p2, p3, :cond_9

    .line 1792
    sub-int/2addr p2, v1

    .line 1793
    invoke-virtual {v0, v2, v1, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    goto/16 :goto_0

    .line 1787
    :cond_8
    iget-object v0, p0, Lcom/d/a/a/c/i;->B:Lcom/d/a/a/r;

    invoke-interface {v0}, Lcom/d/a/a/r;->a()Ljava/lang/String;

    move-result-object v0

    .line 1788
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/d/a/a/c/i;->B:Lcom/d/a/a/r;

    goto :goto_2

    .line 1795
    :cond_9
    iget-object v1, p0, Lcom/d/a/a/c/i;->v:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private a(CI)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    const/16 v7, 0x5c

    const/16 v3, 0x30

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x6

    .line 1636
    if-ltz p2, :cond_2

    .line 1637
    iget v0, p0, Lcom/d/a/a/c/i;->y:I

    if-lt v0, v4, :cond_0

    .line 1638
    iget v0, p0, Lcom/d/a/a/c/i;->y:I

    add-int/lit8 v0, v0, -0x2

    .line 1639
    iput v0, p0, Lcom/d/a/a/c/i;->x:I

    .line 1640
    iget-object v1, p0, Lcom/d/a/a/c/i;->w:[C

    add-int/lit8 v2, v0, 0x1

    aput-char v7, v1, v0

    .line 1641
    iget-object v0, p0, Lcom/d/a/a/c/i;->w:[C

    int-to-char v1, p2

    aput-char v1, v0, v2

    .line 1714
    :goto_0
    return-void

    .line 1645
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/i;->A:[C

    .line 1646
    if-nez v0, :cond_1

    .line 1647
    invoke-direct {p0}, Lcom/d/a/a/c/i;->n()[C

    move-result-object v0

    .line 1649
    :cond_1
    iget v1, p0, Lcom/d/a/a/c/i;->y:I

    iput v1, p0, Lcom/d/a/a/c/i;->x:I

    .line 1650
    const/4 v1, 0x1

    int-to-char v2, p2

    aput-char v2, v0, v1

    .line 1651
    iget-object v1, p0, Lcom/d/a/a/c/i;->v:Ljava/io/Writer;

    invoke-virtual {v1, v0, v5, v4}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 1654
    :cond_2
    const/4 v0, -0x2

    if-eq p2, v0, :cond_7

    .line 1655
    iget v0, p0, Lcom/d/a/a/c/i;->y:I

    if-lt v0, v6, :cond_4

    .line 1656
    iget-object v1, p0, Lcom/d/a/a/c/i;->w:[C

    .line 1657
    iget v0, p0, Lcom/d/a/a/c/i;->y:I

    add-int/lit8 v0, v0, -0x6

    .line 1658
    iput v0, p0, Lcom/d/a/a/c/i;->x:I

    .line 1659
    aput-char v7, v1, v0

    .line 1660
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x75

    aput-char v2, v1, v0

    .line 1662
    const/16 v2, 0xff

    if-le p1, v2, :cond_3

    .line 1663
    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 1664
    add-int/lit8 v0, v0, 0x1

    sget-object v3, Lcom/d/a/a/c/i;->u:[C

    shr-int/lit8 v4, v2, 0x4

    aget-char v3, v3, v4

    aput-char v3, v1, v0

    .line 1665
    add-int/lit8 v0, v0, 0x1

    sget-object v3, Lcom/d/a/a/c/i;->u:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v3, v2

    aput-char v2, v1, v0

    .line 1666
    and-int/lit16 v2, p1, 0xff

    int-to-char p1, v2

    .line 1671
    :goto_1
    add-int/lit8 v0, v0, 0x1

    sget-object v2, Lcom/d/a/a/c/i;->u:[C

    shr-int/lit8 v3, p1, 0x4

    aget-char v2, v2, v3

    aput-char v2, v1, v0

    .line 1672
    add-int/lit8 v0, v0, 0x1

    sget-object v2, Lcom/d/a/a/c/i;->u:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v1, v0

    goto :goto_0

    .line 1668
    :cond_3
    add-int/lit8 v0, v0, 0x1

    aput-char v3, v1, v0

    .line 1669
    add-int/lit8 v0, v0, 0x1

    aput-char v3, v1, v0

    goto :goto_1

    .line 1676
    :cond_4
    iget-object v0, p0, Lcom/d/a/a/c/i;->A:[C

    .line 1677
    if-nez v0, :cond_5

    .line 1678
    invoke-direct {p0}, Lcom/d/a/a/c/i;->n()[C

    move-result-object v0

    .line 1680
    :cond_5
    iget v1, p0, Lcom/d/a/a/c/i;->y:I

    iput v1, p0, Lcom/d/a/a/c/i;->x:I

    .line 1681
    const/16 v1, 0xff

    if-le p1, v1, :cond_6

    .line 1682
    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 1683
    and-int/lit16 v2, p1, 0xff

    .line 1684
    const/16 v3, 0xa

    sget-object v4, Lcom/d/a/a/c/i;->u:[C

    shr-int/lit8 v5, v1, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 1685
    const/16 v3, 0xb

    sget-object v4, Lcom/d/a/a/c/i;->u:[C

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v4, v1

    aput-char v1, v0, v3

    .line 1686
    const/16 v1, 0xc

    sget-object v3, Lcom/d/a/a/c/i;->u:[C

    shr-int/lit8 v4, v2, 0x4

    aget-char v3, v3, v4

    aput-char v3, v0, v1

    .line 1687
    const/16 v1, 0xd

    sget-object v3, Lcom/d/a/a/c/i;->u:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v3, v2

    aput-char v2, v0, v1

    .line 1688
    iget-object v1, p0, Lcom/d/a/a/c/i;->v:Ljava/io/Writer;

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2, v6}, Ljava/io/Writer;->write([CII)V

    goto/16 :goto_0

    .line 1690
    :cond_6
    sget-object v1, Lcom/d/a/a/c/i;->u:[C

    shr-int/lit8 v2, p1, 0x4

    aget-char v1, v1, v2

    aput-char v1, v0, v6

    .line 1691
    const/4 v1, 0x7

    sget-object v2, Lcom/d/a/a/c/i;->u:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 1692
    iget-object v1, p0, Lcom/d/a/a/c/i;->v:Ljava/io/Writer;

    invoke-virtual {v1, v0, v4, v6}, Ljava/io/Writer;->write([CII)V

    goto/16 :goto_0

    .line 1698
    :cond_7
    iget-object v0, p0, Lcom/d/a/a/c/i;->B:Lcom/d/a/a/r;

    if-nez v0, :cond_8

    .line 1699
    iget-object v0, p0, Lcom/d/a/a/c/i;->r:Lcom/d/a/a/b/b;

    invoke-virtual {v0, p1}, Lcom/d/a/a/b/b;->a(I)Lcom/d/a/a/r;

    move-result-object v0

    invoke-interface {v0}, Lcom/d/a/a/r;->a()Ljava/lang/String;

    move-result-object v0

    .line 1704
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1705
    iget v2, p0, Lcom/d/a/a/c/i;->y:I

    if-lt v2, v1, :cond_9

    .line 1706
    iget v2, p0, Lcom/d/a/a/c/i;->y:I

    sub-int/2addr v2, v1

    .line 1707
    iput v2, p0, Lcom/d/a/a/c/i;->x:I

    .line 1708
    iget-object v3, p0, Lcom/d/a/a/c/i;->w:[C

    invoke-virtual {v0, v5, v1, v3, v2}, Ljava/lang/String;->getChars(II[CI)V

    goto/16 :goto_0

    .line 1701
    :cond_8
    iget-object v0, p0, Lcom/d/a/a/c/i;->B:Lcom/d/a/a/r;

    invoke-interface {v0}, Lcom/d/a/a/r;->a()Ljava/lang/String;

    move-result-object v0

    .line 1702
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/d/a/a/c/i;->B:Lcom/d/a/a/r;

    goto :goto_2

    .line 1712
    :cond_9
    iget v1, p0, Lcom/d/a/a/c/i;->y:I

    iput v1, p0, Lcom/d/a/a/c/i;->x:I

    .line 1713
    iget-object v1, p0, Lcom/d/a/a/c/i;->v:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private b(II)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 1117
    iget v0, p0, Lcom/d/a/a/c/i;->y:I

    add-int v1, v0, p1

    .line 1118
    iget-object v2, p0, Lcom/d/a/a/c/i;->p:[I

    .line 1119
    array-length v0, v2

    add-int/lit8 v3, p2, 0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1123
    :goto_0
    iget v0, p0, Lcom/d/a/a/c/i;->y:I

    if-ge v0, v1, :cond_4

    .line 1128
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/i;->w:[C

    iget v4, p0, Lcom/d/a/a/c/i;->y:I

    aget-char v4, v0, v4

    .line 1129
    if-ge v4, v3, :cond_2

    .line 1130
    aget v0, v2, v4

    .line 1131
    if-eqz v0, :cond_3

    .line 1142
    :goto_1
    iget v5, p0, Lcom/d/a/a/c/i;->y:I

    iget v6, p0, Lcom/d/a/a/c/i;->x:I

    sub-int/2addr v5, v6

    .line 1143
    if-lez v5, :cond_1

    .line 1144
    iget-object v6, p0, Lcom/d/a/a/c/i;->v:Ljava/io/Writer;

    iget-object v7, p0, Lcom/d/a/a/c/i;->w:[C

    iget v8, p0, Lcom/d/a/a/c/i;->x:I

    invoke-virtual {v6, v7, v8, v5}, Ljava/io/Writer;->write([CII)V

    .line 1146
    :cond_1
    iget v5, p0, Lcom/d/a/a/c/i;->y:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/d/a/a/c/i;->y:I

    .line 1147
    invoke-direct {p0, v4, v0}, Lcom/d/a/a/c/i;->a(CI)V

    goto :goto_0

    .line 1134
    :cond_2
    if-le v4, p2, :cond_3

    .line 1135
    const/4 v0, -0x1

    .line 1136
    goto :goto_1

    .line 1138
    :cond_3
    iget v0, p0, Lcom/d/a/a/c/i;->y:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/d/a/a/c/i;->y:I

    if-lt v0, v1, :cond_0

    .line 1149
    :cond_4
    return-void
.end method

.method private b(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 627
    iget v0, p0, Lcom/d/a/a/c/i;->y:I

    add-int/lit8 v0, v0, 0x17

    iget v1, p0, Lcom/d/a/a/c/i;->z:I

    if-lt v0, v1, :cond_0

    .line 628
    invoke-virtual {p0}, Lcom/d/a/a/c/i;->l()V

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/i;->w:[C

    iget v1, p0, Lcom/d/a/a/c/i;->y:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/i;->y:I

    aput-char v3, v0, v1

    .line 631
    iget-object v0, p0, Lcom/d/a/a/c/i;->w:[C

    iget v1, p0, Lcom/d/a/a/c/i;->y:I

    invoke-static {p1, p2, v0, v1}, Lcom/d/a/a/b/h;->a(J[CI)I

    move-result v0

    iput v0, p0, Lcom/d/a/a/c/i;->y:I

    .line 632
    iget-object v0, p0, Lcom/d/a/a/c/i;->w:[C

    iget v1, p0, Lcom/d/a/a/c/i;->y:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/i;->y:I

    aput-char v3, v0, v1

    .line 633
    return-void
.end method

.method private c(II)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1154
    iget-object v6, p0, Lcom/d/a/a/c/i;->p:[I

    .line 1155
    array-length v1, v6

    add-int/lit8 v2, p2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v2, v0

    move v1, v0

    .line 1162
    :goto_0
    if-ge v1, p1, :cond_1

    .line 1166
    :cond_0
    iget-object v3, p0, Lcom/d/a/a/c/i;->w:[C

    aget-char v4, v3, v1

    .line 1167
    if-ge v4, v7, :cond_2

    .line 1168
    aget v5, v6, v4

    .line 1169
    if-eqz v5, :cond_3

    .line 1180
    :goto_1
    sub-int v0, v1, v2

    .line 1181
    if-lez v0, :cond_5

    .line 1182
    iget-object v3, p0, Lcom/d/a/a/c/i;->v:Ljava/io/Writer;

    iget-object v8, p0, Lcom/d/a/a/c/i;->w:[C

    invoke-virtual {v3, v8, v2, v0}, Ljava/io/Writer;->write([CII)V

    .line 1183
    if-lt v1, p1, :cond_5

    .line 1190
    :cond_1
    return-void

    .line 1172
    :cond_2
    if-le v4, p2, :cond_4

    .line 1173
    const/4 v5, -0x1

    .line 1174
    goto :goto_1

    :cond_3
    move v0, v5

    .line 1176
    :cond_4
    add-int/lit8 v1, v1, 0x1

    if-lt v1, p1, :cond_0

    move v5, v0

    .line 1177
    goto :goto_1

    .line 1187
    :cond_5
    add-int/lit8 v2, v1, 0x1

    .line 1188
    iget-object v1, p0, Lcom/d/a/a/c/i;->w:[C

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/d/a/a/c/i;->a([CIICI)I

    move-result v0

    move v1, v2

    move v2, v0

    move v0, v5

    .line 1189
    goto :goto_0
.end method

.method private d(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 603
    iget v0, p0, Lcom/d/a/a/c/i;->y:I

    add-int/lit8 v0, v0, 0xd

    iget v1, p0, Lcom/d/a/a/c/i;->z:I

    if-lt v0, v1, :cond_0

    .line 604
    invoke-virtual {p0}, Lcom/d/a/a/c/i;->l()V

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/i;->w:[C

    iget v1, p0, Lcom/d/a/a/c/i;->y:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/i;->y:I

    aput-char v3, v0, v1

    .line 607
    iget-object v0, p0, Lcom/d/a/a/c/i;->w:[C

    iget v1, p0, Lcom/d/a/a/c/i;->y:I

    invoke-static {p1, v0, v1}, Lcom/d/a/a/b/h;->a(I[CI)I

    move-result v0

    iput v0, p0, Lcom/d/a/a/c/i;->y:I

    .line 608
    iget-object v0, p0, Lcom/d/a/a/c/i;->w:[C

    iget v1, p0, Lcom/d/a/a/c/i;->y:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/i;->y:I

    aput-char v3, v0, v1

    .line 609
    return-void
.end method

.method private e(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 933
    iget v0, p0, Lcom/d/a/a/c/i;->y:I

    add-int/2addr v0, p1

    .line 934
    iget-object v1, p0, Lcom/d/a/a/c/i;->p:[I

    .line 935
    array-length v2, v1

    .line 938
    :goto_0
    iget v3, p0, Lcom/d/a/a/c/i;->y:I

    if-ge v3, v0, :cond_3

    .line 942
    :cond_0
    iget-object v3, p0, Lcom/d/a/a/c/i;->w:[C

    iget v4, p0, Lcom/d/a/a/c/i;->y:I

    aget-char v3, v3, v4

    .line 943
    if-ge v3, v2, :cond_2

    aget v3, v1, v3

    if-eqz v3, :cond_2

    .line 955
    iget v3, p0, Lcom/d/a/a/c/i;->y:I

    iget v4, p0, Lcom/d/a/a/c/i;->x:I

    sub-int/2addr v3, v4

    .line 956
    if-lez v3, :cond_1

    .line 957
    iget-object v4, p0, Lcom/d/a/a/c/i;->v:Ljava/io/Writer;

    iget-object v5, p0, Lcom/d/a/a/c/i;->w:[C

    iget v6, p0, Lcom/d/a/a/c/i;->x:I

    invoke-virtual {v4, v5, v6, v3}, Ljava/io/Writer;->write([CII)V

    .line 962
    :cond_1
    iget-object v3, p0, Lcom/d/a/a/c/i;->w:[C

    iget v4, p0, Lcom/d/a/a/c/i;->y:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/d/a/a/c/i;->y:I

    aget-char v3, v3, v4

    .line 963
    aget v4, v1, v3

    invoke-direct {p0, v3, v4}, Lcom/d/a/a/c/i;->a(CI)V

    goto :goto_0

    .line 946
    :cond_2
    iget v3, p0, Lcom/d/a/a/c/i;->y:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/d/a/a/c/i;->y:I

    if-lt v3, v0, :cond_0

    .line 965
    :cond_3
    return-void
.end method

.method private f(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1006
    iget-object v6, p0, Lcom/d/a/a/c/i;->p:[I

    .line 1007
    array-length v7, v6

    .line 1009
    const/4 v0, 0x0

    move v1, v0

    .line 1013
    :goto_0
    if-ge v0, p1, :cond_1

    .line 1017
    :cond_0
    iget-object v2, p0, Lcom/d/a/a/c/i;->w:[C

    aget-char v4, v2, v0

    .line 1018
    if-ge v4, v7, :cond_2

    aget v2, v6, v4

    if-eqz v2, :cond_2

    .line 1030
    :goto_1
    sub-int v2, v0, v1

    .line 1031
    if-lez v2, :cond_3

    .line 1032
    iget-object v3, p0, Lcom/d/a/a/c/i;->v:Ljava/io/Writer;

    iget-object v5, p0, Lcom/d/a/a/c/i;->w:[C

    invoke-virtual {v3, v5, v1, v2}, Ljava/io/Writer;->write([CII)V

    .line 1033
    if-lt v0, p1, :cond_3

    .line 1041
    :cond_1
    return-void

    .line 1021
    :cond_2
    add-int/lit8 v0, v0, 0x1

    if-lt v0, p1, :cond_0

    goto :goto_1

    .line 1037
    :cond_3
    add-int/lit8 v2, v0, 0x1

    .line 1039
    iget-object v1, p0, Lcom/d/a/a/c/i;->w:[C

    aget v5, v6, v4

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/d/a/a/c/i;->a([CIICI)I

    move-result v0

    move v1, v0

    move v0, v2

    .line 1040
    goto :goto_0
.end method

.method private g(I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 1261
    iget v0, p0, Lcom/d/a/a/c/i;->y:I

    add-int v2, v0, p1

    .line 1262
    iget-object v3, p0, Lcom/d/a/a/c/i;->p:[I

    .line 1263
    iget v0, p0, Lcom/d/a/a/c/i;->q:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    const v0, 0xffff

    .line 1264
    :goto_0
    array-length v1, v3

    add-int/lit8 v4, v0, 0x1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1266
    iget-object v5, p0, Lcom/d/a/a/c/i;->r:Lcom/d/a/a/b/b;

    .line 1269
    :goto_1
    iget v1, p0, Lcom/d/a/a/c/i;->y:I

    if-ge v1, v2, :cond_6

    .line 1274
    :cond_0
    iget-object v1, p0, Lcom/d/a/a/c/i;->w:[C

    iget v6, p0, Lcom/d/a/a/c/i;->y:I

    aget-char v6, v1, v6

    .line 1275
    if-ge v6, v4, :cond_3

    .line 1276
    aget v1, v3, v6

    .line 1277
    if-eqz v1, :cond_5

    .line 1293
    :goto_2
    iget v7, p0, Lcom/d/a/a/c/i;->y:I

    iget v8, p0, Lcom/d/a/a/c/i;->x:I

    sub-int/2addr v7, v8

    .line 1294
    if-lez v7, :cond_1

    .line 1295
    iget-object v8, p0, Lcom/d/a/a/c/i;->v:Ljava/io/Writer;

    iget-object v9, p0, Lcom/d/a/a/c/i;->w:[C

    iget v10, p0, Lcom/d/a/a/c/i;->x:I

    invoke-virtual {v8, v9, v10, v7}, Ljava/io/Writer;->write([CII)V

    .line 1297
    :cond_1
    iget v7, p0, Lcom/d/a/a/c/i;->y:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/d/a/a/c/i;->y:I

    .line 1298
    invoke-direct {p0, v6, v1}, Lcom/d/a/a/c/i;->a(CI)V

    goto :goto_1

    .line 1263
    :cond_2
    iget v0, p0, Lcom/d/a/a/c/i;->q:I

    goto :goto_0

    .line 1280
    :cond_3
    if-le v6, v0, :cond_4

    .line 1281
    const/4 v1, -0x1

    .line 1282
    goto :goto_2

    .line 1284
    :cond_4
    invoke-virtual {v5, v6}, Lcom/d/a/a/b/b;->a(I)Lcom/d/a/a/r;

    move-result-object v1

    iput-object v1, p0, Lcom/d/a/a/c/i;->B:Lcom/d/a/a/r;

    if-eqz v1, :cond_5

    .line 1285
    const/4 v1, -0x2

    .line 1286
    goto :goto_2

    .line 1289
    :cond_5
    iget v1, p0, Lcom/d/a/a/c/i;->y:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/d/a/a/c/i;->y:I

    if-lt v1, v2, :cond_0

    .line 1300
    :cond_6
    return-void
.end method

.method private h(I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1305
    iget-object v7, p0, Lcom/d/a/a/c/i;->p:[I

    .line 1306
    iget v0, p0, Lcom/d/a/a/c/i;->q:I

    const/4 v2, 0x1

    if-ge v0, v2, :cond_2

    const v0, 0xffff

    move v6, v0

    .line 1307
    :goto_0
    array-length v0, v7

    add-int/lit8 v2, v6, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1308
    iget-object v9, p0, Lcom/d/a/a/c/i;->r:Lcom/d/a/a/b/b;

    move v2, v1

    move v0, v1

    .line 1315
    :goto_1
    if-ge v1, p1, :cond_1

    .line 1319
    :cond_0
    iget-object v3, p0, Lcom/d/a/a/c/i;->w:[C

    aget-char v4, v3, v1

    .line 1320
    if-ge v4, v8, :cond_3

    .line 1321
    aget v5, v7, v4

    .line 1322
    if-eqz v5, :cond_5

    .line 1338
    :goto_2
    sub-int v0, v1, v2

    .line 1339
    if-lez v0, :cond_7

    .line 1340
    iget-object v3, p0, Lcom/d/a/a/c/i;->v:Ljava/io/Writer;

    iget-object v10, p0, Lcom/d/a/a/c/i;->w:[C

    invoke-virtual {v3, v10, v2, v0}, Ljava/io/Writer;->write([CII)V

    .line 1341
    if-lt v1, p1, :cond_7

    .line 1348
    :cond_1
    return-void

    .line 1306
    :cond_2
    iget v0, p0, Lcom/d/a/a/c/i;->q:I

    move v6, v0

    goto :goto_0

    .line 1325
    :cond_3
    if-le v4, v6, :cond_4

    .line 1326
    const/4 v5, -0x1

    .line 1327
    goto :goto_2

    .line 1329
    :cond_4
    invoke-virtual {v9, v4}, Lcom/d/a/a/b/b;->a(I)Lcom/d/a/a/r;

    move-result-object v3

    iput-object v3, p0, Lcom/d/a/a/c/i;->B:Lcom/d/a/a/r;

    if-eqz v3, :cond_6

    .line 1330
    const/4 v5, -0x2

    .line 1331
    goto :goto_2

    :cond_5
    move v0, v5

    .line 1334
    :cond_6
    add-int/lit8 v1, v1, 0x1

    if-lt v1, p1, :cond_0

    move v5, v0

    .line 1335
    goto :goto_2

    .line 1345
    :cond_7
    add-int/lit8 v2, v1, 0x1

    .line 1346
    iget-object v1, p0, Lcom/d/a/a/c/i;->w:[C

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/d/a/a/c/i;->a([CIICI)I

    move-result v0

    move v1, v2

    move v2, v0

    move v0, v5

    .line 1347
    goto :goto_1
.end method

.method private h(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 476
    iget v0, p0, Lcom/d/a/a/c/i;->z:I

    iget v1, p0, Lcom/d/a/a/c/i;->y:I

    sub-int v1, v0, v1

    .line 478
    iget-object v0, p0, Lcom/d/a/a/c/i;->w:[C

    iget v2, p0, Lcom/d/a/a/c/i;->y:I

    invoke-virtual {p1, v5, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 479
    iget v0, p0, Lcom/d/a/a/c/i;->y:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/d/a/a/c/i;->y:I

    .line 480
    invoke-virtual {p0}, Lcom/d/a/a/c/i;->l()V

    .line 482
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    .line 484
    :goto_0
    iget v2, p0, Lcom/d/a/a/c/i;->z:I

    if-le v0, v2, :cond_0

    .line 485
    iget v2, p0, Lcom/d/a/a/c/i;->z:I

    .line 486
    add-int v3, v1, v2

    iget-object v4, p0, Lcom/d/a/a/c/i;->w:[C

    invoke-virtual {p1, v1, v3, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 487
    iput v5, p0, Lcom/d/a/a/c/i;->x:I

    .line 488
    iput v2, p0, Lcom/d/a/a/c/i;->y:I

    .line 489
    invoke-virtual {p0}, Lcom/d/a/a/c/i;->l()V

    .line 490
    add-int/2addr v1, v2

    .line 491
    sub-int/2addr v0, v2

    .line 492
    goto :goto_0

    .line 494
    :cond_0
    add-int v2, v1, v0

    iget-object v3, p0, Lcom/d/a/a/c/i;->w:[C

    invoke-virtual {p1, v1, v2, v3, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 495
    iput v5, p0, Lcom/d/a/a/c/i;->x:I

    .line 496
    iput v0, p0, Lcom/d/a/a/c/i;->y:I

    .line 497
    return-void
.end method

.method private i(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 709
    iget v0, p0, Lcom/d/a/a/c/i;->y:I

    iget v1, p0, Lcom/d/a/a/c/i;->z:I

    if-lt v0, v1, :cond_0

    .line 710
    invoke-virtual {p0}, Lcom/d/a/a/c/i;->l()V

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/i;->w:[C

    iget v1, p0, Lcom/d/a/a/c/i;->y:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/i;->y:I

    aput-char v3, v0, v1

    .line 713
    invoke-virtual {p0, p1}, Lcom/d/a/a/c/i;->c(Ljava/lang/String;)V

    .line 714
    iget v0, p0, Lcom/d/a/a/c/i;->y:I

    iget v1, p0, Lcom/d/a/a/c/i;->z:I

    if-lt v0, v1, :cond_1

    .line 715
    invoke-virtual {p0}, Lcom/d/a/a/c/i;->l()V

    .line 717
    :cond_1
    iget-object v0, p0, Lcom/d/a/a/c/i;->w:[C

    iget v1, p0, Lcom/d/a/a/c/i;->y:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/i;->y:I

    aput-char v3, v0, v1

    .line 718
    return-void
.end method

.method private j(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 908
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 909
    iget v1, p0, Lcom/d/a/a/c/i;->z:I

    if-le v0, v1, :cond_0

    .line 910
    invoke-direct {p0, p1}, Lcom/d/a/a/c/i;->k(Ljava/lang/String;)V

    .line 928
    :goto_0
    return-void

    .line 916
    :cond_0
    iget v1, p0, Lcom/d/a/a/c/i;->y:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/d/a/a/c/i;->z:I

    if-le v1, v2, :cond_1

    .line 917
    invoke-virtual {p0}, Lcom/d/a/a/c/i;->l()V

    .line 919
    :cond_1
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/d/a/a/c/i;->w:[C

    iget v3, p0, Lcom/d/a/a/c/i;->y:I

    invoke-virtual {p1, v1, v0, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 921
    iget-object v1, p0, Lcom/d/a/a/c/i;->r:Lcom/d/a/a/b/b;

    if-eqz v1, :cond_2

    .line 922
    invoke-direct {p0, v0}, Lcom/d/a/a/c/i;->g(I)V

    goto :goto_0

    .line 923
    :cond_2
    iget v1, p0, Lcom/d/a/a/c/i;->q:I

    if-eqz v1, :cond_3

    .line 924
    iget v1, p0, Lcom/d/a/a/c/i;->q:I

    invoke-direct {p0, v0, v1}, Lcom/d/a/a/c/i;->b(II)V

    goto :goto_0

    .line 926
    :cond_3
    invoke-direct {p0, v0}, Lcom/d/a/a/c/i;->e(I)V

    goto :goto_0
.end method

.method private k(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 974
    invoke-virtual {p0}, Lcom/d/a/a/c/i;->l()V

    .line 977
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move v0, v1

    .line 980
    :cond_0
    iget v2, p0, Lcom/d/a/a/c/i;->z:I

    .line 981
    add-int v4, v0, v2

    if-le v4, v3, :cond_1

    sub-int v2, v3, v0

    .line 983
    :cond_1
    add-int v4, v0, v2

    iget-object v5, p0, Lcom/d/a/a/c/i;->w:[C

    invoke-virtual {p1, v0, v4, v5, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 984
    iget-object v4, p0, Lcom/d/a/a/c/i;->r:Lcom/d/a/a/b/b;

    if-eqz v4, :cond_2

    .line 985
    invoke-direct {p0, v2}, Lcom/d/a/a/c/i;->h(I)V

    .line 991
    :goto_0
    add-int/2addr v0, v2

    .line 992
    if-lt v0, v3, :cond_0

    .line 993
    return-void

    .line 986
    :cond_2
    iget v4, p0, Lcom/d/a/a/c/i;->q:I

    if-eqz v4, :cond_3

    .line 987
    iget v4, p0, Lcom/d/a/a/c/i;->q:I

    invoke-direct {p0, v2, v4}, Lcom/d/a/a/c/i;->c(II)V

    goto :goto_0

    .line 989
    :cond_3
    invoke-direct {p0, v2}, Lcom/d/a/a/c/i;->f(I)V

    goto :goto_0
.end method

.method private final m()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x6c

    .line 1610
    iget v0, p0, Lcom/d/a/a/c/i;->y:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/d/a/a/c/i;->z:I

    if-lt v0, v1, :cond_0

    .line 1611
    invoke-virtual {p0}, Lcom/d/a/a/c/i;->l()V

    .line 1613
    :cond_0
    iget v0, p0, Lcom/d/a/a/c/i;->y:I

    .line 1614
    iget-object v1, p0, Lcom/d/a/a/c/i;->w:[C

    .line 1615
    const/16 v2, 0x6e

    aput-char v2, v1, v0

    .line 1616
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x75

    aput-char v2, v1, v0

    .line 1617
    add-int/lit8 v0, v0, 0x1

    aput-char v3, v1, v0

    .line 1618
    add-int/lit8 v0, v0, 0x1

    aput-char v3, v1, v0

    .line 1619
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/d/a/a/c/i;->y:I

    .line 1620
    return-void
.end method

.method private n()[C
    .locals 5

    .prologue
    const/16 v4, 0x75

    const/16 v3, 0x30

    const/16 v2, 0x5c

    .line 1859
    const/16 v0, 0xe

    new-array v0, v0, [C

    .line 1861
    const/4 v1, 0x0

    aput-char v2, v0, v1

    .line 1863
    const/4 v1, 0x2

    aput-char v2, v0, v1

    .line 1864
    const/4 v1, 0x3

    aput-char v4, v0, v1

    .line 1865
    const/4 v1, 0x4

    aput-char v3, v0, v1

    .line 1866
    const/4 v1, 0x5

    aput-char v3, v0, v1

    .line 1868
    const/16 v1, 0x8

    aput-char v2, v0, v1

    .line 1869
    const/16 v1, 0x9

    aput-char v4, v0, v1

    .line 1870
    iput-object v0, p0, Lcom/d/a/a/c/i;->A:[C

    .line 1871
    return-object v0
.end method


# virtual methods
.method public a(C)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 468
    iget v0, p0, Lcom/d/a/a/c/i;->y:I

    iget v1, p0, Lcom/d/a/a/c/i;->z:I

    if-lt v0, v1, :cond_0

    .line 469
    invoke-virtual {p0}, Lcom/d/a/a/c/i;->l()V

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/i;->w:[C

    iget v1, p0, Lcom/d/a/a/c/i;->y:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/i;->y:I

    aput-char p1, v0, v1

    .line 472
    return-void
.end method

.method public a(D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 654
    iget-boolean v0, p0, Lcom/d/a/a/c/i;->k:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/d/a/a/h;->e:Lcom/d/a/a/h;

    .line 656
    invoke-virtual {p0, v0}, Lcom/d/a/a/c/i;->a(Lcom/d/a/a/h;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 657
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/i;->b(Ljava/lang/String;)V

    .line 663
    :goto_0
    return-void

    .line 661
    :cond_1
    const-string/jumbo v0, "write a number"

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/i;->f(Ljava/lang/String;)V

    .line 662
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/i;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 668
    iget-boolean v0, p0, Lcom/d/a/a/c/i;->k:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/d/a/a/h;->e:Lcom/d/a/a/h;

    .line 670
    invoke-virtual {p0, v0}, Lcom/d/a/a/c/i;->a(Lcom/d/a/a/h;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 671
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/i;->b(Ljava/lang/String;)V

    .line 677
    :goto_0
    return-void

    .line 675
    :cond_1
    const-string/jumbo v0, "write a number"

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/i;->f(Ljava/lang/String;)V

    .line 676
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/i;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 614
    const-string/jumbo v0, "write a number"

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/i;->f(Ljava/lang/String;)V

    .line 615
    iget-boolean v0, p0, Lcom/d/a/a/c/i;->k:Z

    if-eqz v0, :cond_0

    .line 616
    invoke-direct {p0, p1, p2}, Lcom/d/a/a/c/i;->b(J)V

    .line 624
    :goto_0
    return-void

    .line 619
    :cond_0
    iget v0, p0, Lcom/d/a/a/c/i;->y:I

    add-int/lit8 v0, v0, 0x15

    iget v1, p0, Lcom/d/a/a/c/i;->z:I

    if-lt v0, v1, :cond_1

    .line 621
    invoke-virtual {p0}, Lcom/d/a/a/c/i;->l()V

    .line 623
    :cond_1
    iget-object v0, p0, Lcom/d/a/a/c/i;->w:[C

    iget v1, p0, Lcom/d/a/a/c/i;->y:I

    invoke-static {p1, p2, v0, v1}, Lcom/d/a/a/b/h;->a(J[CI)I

    move-result v0

    iput v0, p0, Lcom/d/a/a/c/i;->y:I

    goto :goto_0
.end method

.method public a(Lcom/d/a/a/a;[BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 509
    const-string/jumbo v0, "write a binary value"

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/i;->f(Ljava/lang/String;)V

    .line 511
    iget v0, p0, Lcom/d/a/a/c/i;->y:I

    iget v1, p0, Lcom/d/a/a/c/i;->z:I

    if-lt v0, v1, :cond_0

    .line 512
    invoke-virtual {p0}, Lcom/d/a/a/c/i;->l()V

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/i;->w:[C

    iget v1, p0, Lcom/d/a/a/c/i;->y:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/i;->y:I

    aput-char v3, v0, v1

    .line 515
    add-int v0, p3, p4

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/d/a/a/c/i;->b(Lcom/d/a/a/a;[BII)V

    .line 517
    iget v0, p0, Lcom/d/a/a/c/i;->y:I

    iget v1, p0, Lcom/d/a/a/c/i;->z:I

    if-lt v0, v1, :cond_1

    .line 518
    invoke-virtual {p0}, Lcom/d/a/a/c/i;->l()V

    .line 520
    :cond_1
    iget-object v0, p0, Lcom/d/a/a/c/i;->w:[C

    iget v1, p0, Lcom/d/a/a/c/i;->y:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/i;->y:I

    aput-char v3, v0, v1

    .line 521
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 107
    iget-object v1, p0, Lcom/d/a/a/c/i;->l:Lcom/d/a/a/c/e;

    invoke-virtual {v1, p1}, Lcom/d/a/a/c/e;->a(Ljava/lang/String;)I

    move-result v1

    .line 108
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 109
    const-string/jumbo v2, "Can not write a field name, expecting a value"

    invoke-virtual {p0, v2}, Lcom/d/a/a/c/i;->e(Ljava/lang/String;)V

    .line 111
    :cond_0
    if-ne v1, v0, :cond_1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/d/a/a/c/i;->a(Ljava/lang/String;Z)V

    .line 112
    return-void

    .line 111
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 127
    iget-object v0, p0, Lcom/d/a/a/c/i;->a:Lcom/d/a/a/q;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0, p1, p2}, Lcom/d/a/a/c/i;->b(Ljava/lang/String;Z)V

    .line 152
    :goto_0
    return-void

    .line 132
    :cond_0
    iget v0, p0, Lcom/d/a/a/c/i;->y:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/d/a/a/c/i;->z:I

    if-lt v0, v1, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/d/a/a/c/i;->l()V

    .line 135
    :cond_1
    if-eqz p2, :cond_2

    .line 136
    iget-object v0, p0, Lcom/d/a/a/c/i;->w:[C

    iget v1, p0, Lcom/d/a/a/c/i;->y:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/i;->y:I

    const/16 v2, 0x2c

    aput-char v2, v0, v1

    .line 139
    :cond_2
    iget-boolean v0, p0, Lcom/d/a/a/c/i;->t:Z

    if-eqz v0, :cond_3

    .line 140
    invoke-direct {p0, p1}, Lcom/d/a/a/c/i;->j(Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_3
    iget-object v0, p0, Lcom/d/a/a/c/i;->w:[C

    iget v1, p0, Lcom/d/a/a/c/i;->y:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/i;->y:I

    aput-char v3, v0, v1

    .line 146
    invoke-direct {p0, p1}, Lcom/d/a/a/c/i;->j(Ljava/lang/String;)V

    .line 148
    iget v0, p0, Lcom/d/a/a/c/i;->y:I

    iget v1, p0, Lcom/d/a/a/c/i;->z:I

    if-lt v0, v1, :cond_4

    .line 149
    invoke-virtual {p0}, Lcom/d/a/a/c/i;->l()V

    .line 151
    :cond_4
    iget-object v0, p0, Lcom/d/a/a/c/i;->w:[C

    iget v1, p0, Lcom/d/a/a/c/i;->y:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/i;->y:I

    aput-char v3, v0, v1

    goto :goto_0
.end method

.method public a(Ljava/math/BigDecimal;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 683
    const-string/jumbo v0, "write a number"

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/i;->f(Ljava/lang/String;)V

    .line 684
    if-nez p1, :cond_0

    .line 685
    invoke-direct {p0}, Lcom/d/a/a/c/i;->m()V

    .line 694
    :goto_0
    return-void

    .line 686
    :cond_0
    iget-boolean v0, p0, Lcom/d/a/a/c/i;->k:Z

    if-eqz v0, :cond_2

    .line 687
    sget-object v0, Lcom/d/a/a/h;->g:Lcom/d/a/a/h;

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/i;->a(Lcom/d/a/a/h;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    .line 688
    :goto_1
    invoke-direct {p0, v0}, Lcom/d/a/a/c/i;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 687
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 689
    :cond_2
    sget-object v0, Lcom/d/a/a/h;->g:Lcom/d/a/a/h;

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/i;->a(Lcom/d/a/a/h;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 690
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/i;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 692
    :cond_3
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/i;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/math/BigInteger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 640
    const-string/jumbo v0, "write a number"

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/i;->f(Ljava/lang/String;)V

    .line 641
    if-nez p1, :cond_0

    .line 642
    invoke-direct {p0}, Lcom/d/a/a/c/i;->m()V

    .line 648
    :goto_0
    return-void

    .line 643
    :cond_0
    iget-boolean v0, p0, Lcom/d/a/a/c/i;->k:Z

    if-eqz v0, :cond_1

    .line 644
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/d/a/a/c/i;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 646
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/i;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x65

    .line 723
    const-string/jumbo v0, "write a boolean value"

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/i;->f(Ljava/lang/String;)V

    .line 724
    iget v0, p0, Lcom/d/a/a/c/i;->y:I

    add-int/lit8 v0, v0, 0x5

    iget v1, p0, Lcom/d/a/a/c/i;->z:I

    if-lt v0, v1, :cond_0

    .line 725
    invoke-virtual {p0}, Lcom/d/a/a/c/i;->l()V

    .line 727
    :cond_0
    iget v0, p0, Lcom/d/a/a/c/i;->y:I

    .line 728
    iget-object v1, p0, Lcom/d/a/a/c/i;->w:[C

    .line 729
    if-eqz p1, :cond_1

    .line 730
    const/16 v2, 0x74

    aput-char v2, v1, v0

    .line 731
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x72

    aput-char v2, v1, v0

    .line 732
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x75

    aput-char v2, v1, v0

    .line 733
    add-int/lit8 v0, v0, 0x1

    aput-char v3, v1, v0

    .line 741
    :goto_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/d/a/a/c/i;->y:I

    .line 742
    return-void

    .line 735
    :cond_1
    const/16 v2, 0x66

    aput-char v2, v1, v0

    .line 736
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x61

    aput-char v2, v1, v0

    .line 737
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x6c

    aput-char v2, v1, v0

    .line 738
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x73

    aput-char v2, v1, v0

    .line 739
    add-int/lit8 v0, v0, 0x1

    aput-char v3, v1, v0

    goto :goto_0
.end method

.method public a([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 451
    const/16 v0, 0x20

    if-ge p3, v0, :cond_1

    .line 452
    iget v0, p0, Lcom/d/a/a/c/i;->z:I

    iget v1, p0, Lcom/d/a/a/c/i;->y:I

    sub-int/2addr v0, v1

    .line 453
    if-le p3, v0, :cond_0

    .line 454
    invoke-virtual {p0}, Lcom/d/a/a/c/i;->l()V

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/i;->w:[C

    iget v1, p0, Lcom/d/a/a/c/i;->y:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 457
    iget v0, p0, Lcom/d/a/a/c/i;->y:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/d/a/a/c/i;->y:I

    .line 463
    :goto_0
    return-void

    .line 461
    :cond_1
    invoke-virtual {p0}, Lcom/d/a/a/c/i;->l()V

    .line 462
    iget-object v0, p0, Lcom/d/a/a/c/i;->v:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    goto :goto_0
.end method

.method protected b(Lcom/d/a/a/a;[BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 1421
    add-int/lit8 v1, p4, -0x3

    .line 1423
    iget v0, p0, Lcom/d/a/a/c/i;->z:I

    add-int/lit8 v2, v0, -0x6

    .line 1424
    invoke-virtual {p1}, Lcom/d/a/a/a;->c()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    .line 1427
    :cond_0
    :goto_0
    if-gt p3, v1, :cond_2

    .line 1428
    iget v3, p0, Lcom/d/a/a/c/i;->y:I

    if-le v3, v2, :cond_1

    .line 1429
    invoke-virtual {p0}, Lcom/d/a/a/c/i;->l()V

    .line 1432
    :cond_1
    add-int/lit8 v3, p3, 0x1

    aget-byte v4, p2, p3

    shl-int/lit8 v4, v4, 0x8

    .line 1433
    add-int/lit8 v5, v3, 0x1

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v4

    .line 1434
    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 p3, v5, 0x1

    aget-byte v4, p2, v5

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    .line 1435
    iget-object v4, p0, Lcom/d/a/a/c/i;->w:[C

    iget v5, p0, Lcom/d/a/a/c/i;->y:I

    invoke-virtual {p1, v3, v4, v5}, Lcom/d/a/a/a;->a(I[CI)I

    move-result v3

    iput v3, p0, Lcom/d/a/a/c/i;->y:I

    .line 1436
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_0

    .line 1438
    iget-object v0, p0, Lcom/d/a/a/c/i;->w:[C

    iget v3, p0, Lcom/d/a/a/c/i;->y:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/d/a/a/c/i;->y:I

    const/16 v4, 0x5c

    aput-char v4, v0, v3

    .line 1439
    iget-object v0, p0, Lcom/d/a/a/c/i;->w:[C

    iget v3, p0, Lcom/d/a/a/c/i;->y:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/d/a/a/c/i;->y:I

    const/16 v4, 0x6e

    aput-char v4, v0, v3

    .line 1440
    invoke-virtual {p1}, Lcom/d/a/a/a;->c()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 1445
    :cond_2
    sub-int v1, p4, p3

    .line 1446
    if-lez v1, :cond_5

    .line 1447
    iget v0, p0, Lcom/d/a/a/c/i;->y:I

    if-le v0, v2, :cond_3

    .line 1448
    invoke-virtual {p0}, Lcom/d/a/a/c/i;->l()V

    .line 1450
    :cond_3
    add-int/lit8 v2, p3, 0x1

    aget-byte v0, p2, p3

    shl-int/lit8 v0, v0, 0x10

    .line 1451
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 1452
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    .line 1454
    :cond_4
    iget-object v2, p0, Lcom/d/a/a/c/i;->w:[C

    iget v3, p0, Lcom/d/a/a/c/i;->y:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/d/a/a/a;->a(II[CI)I

    move-result v0

    iput v0, p0, Lcom/d/a/a/c/i;->y:I

    .line 1456
    :cond_5
    return-void
.end method

.method public b(Lcom/d/a/a/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 444
    invoke-interface {p1}, Lcom/d/a/a/r;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/i;->c(Ljava/lang/String;)V

    .line 445
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 321
    const-string/jumbo v0, "write a string"

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/i;->f(Ljava/lang/String;)V

    .line 322
    if-nez p1, :cond_0

    .line 323
    invoke-direct {p0}, Lcom/d/a/a/c/i;->m()V

    .line 336
    :goto_0
    return-void

    .line 326
    :cond_0
    iget v0, p0, Lcom/d/a/a/c/i;->y:I

    iget v1, p0, Lcom/d/a/a/c/i;->z:I

    if-lt v0, v1, :cond_1

    .line 327
    invoke-virtual {p0}, Lcom/d/a/a/c/i;->l()V

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/d/a/a/c/i;->w:[C

    iget v1, p0, Lcom/d/a/a/c/i;->y:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/i;->y:I

    aput-char v3, v0, v1

    .line 330
    invoke-direct {p0, p1}, Lcom/d/a/a/c/i;->j(Ljava/lang/String;)V

    .line 332
    iget v0, p0, Lcom/d/a/a/c/i;->y:I

    iget v1, p0, Lcom/d/a/a/c/i;->z:I

    if-lt v0, v1, :cond_2

    .line 333
    invoke-virtual {p0}, Lcom/d/a/a/c/i;->l()V

    .line 335
    :cond_2
    iget-object v0, p0, Lcom/d/a/a/c/i;->w:[C

    iget v1, p0, Lcom/d/a/a/c/i;->y:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/i;->y:I

    aput-char v3, v0, v1

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 267
    if-eqz p2, :cond_0

    .line 268
    iget-object v0, p0, Lcom/d/a/a/c/i;->a:Lcom/d/a/a/q;

    invoke-interface {v0, p0}, Lcom/d/a/a/q;->c(Lcom/d/a/a/g;)V

    .line 273
    :goto_0
    iget-boolean v0, p0, Lcom/d/a/a/c/i;->t:Z

    if-eqz v0, :cond_1

    .line 274
    invoke-direct {p0, p1}, Lcom/d/a/a/c/i;->j(Ljava/lang/String;)V

    .line 286
    :goto_1
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/i;->a:Lcom/d/a/a/q;

    invoke-interface {v0, p0}, Lcom/d/a/a/q;->h(Lcom/d/a/a/g;)V

    goto :goto_0

    .line 276
    :cond_1
    iget v0, p0, Lcom/d/a/a/c/i;->y:I

    iget v1, p0, Lcom/d/a/a/c/i;->z:I

    if-lt v0, v1, :cond_2

    .line 277
    invoke-virtual {p0}, Lcom/d/a/a/c/i;->l()V

    .line 279
    :cond_2
    iget-object v0, p0, Lcom/d/a/a/c/i;->w:[C

    iget v1, p0, Lcom/d/a/a/c/i;->y:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/i;->y:I

    aput-char v3, v0, v1

    .line 280
    invoke-direct {p0, p1}, Lcom/d/a/a/c/i;->j(Ljava/lang/String;)V

    .line 281
    iget v0, p0, Lcom/d/a/a/c/i;->y:I

    iget v1, p0, Lcom/d/a/a/c/i;->z:I

    if-lt v0, v1, :cond_3

    .line 282
    invoke-virtual {p0}, Lcom/d/a/a/c/i;->l()V

    .line 284
    :cond_3
    iget-object v0, p0, Lcom/d/a/a/c/i;->w:[C

    iget v1, p0, Lcom/d/a/a/c/i;->y:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/i;->y:I

    aput-char v3, v0, v1

    goto :goto_1
.end method

.method public c()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 200
    const-string/jumbo v0, "start an array"

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/i;->f(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/d/a/a/c/i;->l:Lcom/d/a/a/c/e;

    invoke-virtual {v0}, Lcom/d/a/a/c/e;->g()Lcom/d/a/a/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/c/i;->l:Lcom/d/a/a/c/e;

    .line 202
    iget-object v0, p0, Lcom/d/a/a/c/i;->a:Lcom/d/a/a/q;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/d/a/a/c/i;->a:Lcom/d/a/a/q;

    invoke-interface {v0, p0}, Lcom/d/a/a/q;->e(Lcom/d/a/a/g;)V

    .line 210
    :goto_0
    return-void

    .line 205
    :cond_0
    iget v0, p0, Lcom/d/a/a/c/i;->y:I

    iget v1, p0, Lcom/d/a/a/c/i;->z:I

    if-lt v0, v1, :cond_1

    .line 206
    invoke-virtual {p0}, Lcom/d/a/a/c/i;->l()V

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/d/a/a/c/i;->w:[C

    iget v1, p0, Lcom/d/a/a/c/i;->y:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/i;->y:I

    const/16 v2, 0x5b

    aput-char v2, v0, v1

    goto :goto_0
.end method

.method public c(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 590
    const-string/jumbo v0, "write a number"

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/i;->f(Ljava/lang/String;)V

    .line 591
    iget-boolean v0, p0, Lcom/d/a/a/c/i;->k:Z

    if-eqz v0, :cond_0

    .line 592
    invoke-direct {p0, p1}, Lcom/d/a/a/c/i;->d(I)V

    .line 600
    :goto_0
    return-void

    .line 596
    :cond_0
    iget v0, p0, Lcom/d/a/a/c/i;->y:I

    add-int/lit8 v0, v0, 0xb

    iget v1, p0, Lcom/d/a/a/c/i;->z:I

    if-lt v0, v1, :cond_1

    .line 597
    invoke-virtual {p0}, Lcom/d/a/a/c/i;->l()V

    .line 599
    :cond_1
    iget-object v0, p0, Lcom/d/a/a/c/i;->w:[C

    iget v1, p0, Lcom/d/a/a/c/i;->y:I

    invoke-static {p1, v0, v1}, Lcom/d/a/a/b/h;->a(I[CI)I

    move-result v0

    iput v0, p0, Lcom/d/a/a/c/i;->y:I

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 406
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 407
    iget v0, p0, Lcom/d/a/a/c/i;->z:I

    iget v2, p0, Lcom/d/a/a/c/i;->y:I

    sub-int/2addr v0, v2

    .line 409
    if-nez v0, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/d/a/a/c/i;->l()V

    .line 411
    iget v0, p0, Lcom/d/a/a/c/i;->z:I

    iget v2, p0, Lcom/d/a/a/c/i;->y:I

    sub-int/2addr v0, v2

    .line 414
    :cond_0
    if-lt v0, v1, :cond_1

    .line 415
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/d/a/a/c/i;->w:[C

    iget v3, p0, Lcom/d/a/a/c/i;->y:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 416
    iget v0, p0, Lcom/d/a/a/c/i;->y:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/d/a/a/c/i;->y:I

    .line 420
    :goto_0
    return-void

    .line 418
    :cond_1
    invoke-direct {p0, p1}, Lcom/d/a/a/c/i;->h(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 844
    invoke-super {p0}, Lcom/d/a/a/c/c;->close()V

    .line 850
    iget-object v0, p0, Lcom/d/a/a/c/i;->w:[C

    if-eqz v0, :cond_1

    sget-object v0, Lcom/d/a/a/h;->b:Lcom/d/a/a/h;

    .line 851
    invoke-virtual {p0, v0}, Lcom/d/a/a/c/i;->a(Lcom/d/a/a/h;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 853
    :goto_0
    invoke-virtual {p0}, Lcom/d/a/a/c/i;->i()Lcom/d/a/a/c/e;

    move-result-object v0

    .line 854
    invoke-virtual {v0}, Lcom/d/a/a/n;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 855
    invoke-virtual {p0}, Lcom/d/a/a/c/i;->d()V

    goto :goto_0

    .line 856
    :cond_0
    invoke-virtual {v0}, Lcom/d/a/a/n;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 857
    invoke-virtual {p0}, Lcom/d/a/a/c/i;->f()V

    goto :goto_0

    .line 863
    :cond_1
    invoke-virtual {p0}, Lcom/d/a/a/c/i;->l()V

    .line 864
    iput v2, p0, Lcom/d/a/a/c/i;->x:I

    .line 865
    iput v2, p0, Lcom/d/a/a/c/i;->y:I

    .line 873
    iget-object v0, p0, Lcom/d/a/a/c/i;->v:Ljava/io/Writer;

    if-eqz v0, :cond_3

    .line 874
    iget-object v0, p0, Lcom/d/a/a/c/i;->o:Lcom/d/a/a/b/c;

    invoke-virtual {v0}, Lcom/d/a/a/b/c;->c()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/d/a/a/h;->a:Lcom/d/a/a/h;

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/i;->a(Lcom/d/a/a/h;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 875
    :cond_2
    iget-object v0, p0, Lcom/d/a/a/c/i;->v:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 882
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/d/a/a/c/i;->j()V

    .line 883
    return-void

    .line 876
    :cond_4
    sget-object v0, Lcom/d/a/a/h;->c:Lcom/d/a/a/h;

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/i;->a(Lcom/d/a/a/h;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 878
    iget-object v0, p0, Lcom/d/a/a/c/i;->v:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    goto :goto_1
.end method

.method public d()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/d/a/a/c/i;->l:Lcom/d/a/a/c/e;

    invoke-virtual {v0}, Lcom/d/a/a/c/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Current context not an ARRAY but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/d/a/a/c/i;->l:Lcom/d/a/a/c/e;

    invoke-virtual {v1}, Lcom/d/a/a/c/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/i;->e(Ljava/lang/String;)V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/i;->a:Lcom/d/a/a/q;

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/d/a/a/c/i;->a:Lcom/d/a/a/q;

    iget-object v1, p0, Lcom/d/a/a/c/i;->l:Lcom/d/a/a/c/e;

    invoke-virtual {v1}, Lcom/d/a/a/c/e;->e()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/d/a/a/q;->b(Lcom/d/a/a/g;I)V

    .line 226
    :goto_0
    iget-object v0, p0, Lcom/d/a/a/c/i;->l:Lcom/d/a/a/c/e;

    invoke-virtual {v0}, Lcom/d/a/a/c/e;->i()Lcom/d/a/a/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/c/i;->l:Lcom/d/a/a/c/e;

    .line 227
    return-void

    .line 221
    :cond_1
    iget v0, p0, Lcom/d/a/a/c/i;->y:I

    iget v1, p0, Lcom/d/a/a/c/i;->z:I

    if-lt v0, v1, :cond_2

    .line 222
    invoke-virtual {p0}, Lcom/d/a/a/c/i;->l()V

    .line 224
    :cond_2
    iget-object v0, p0, Lcom/d/a/a/c/i;->w:[C

    iget v1, p0, Lcom/d/a/a/c/i;->y:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/i;->y:I

    const/16 v2, 0x5d

    aput-char v2, v0, v1

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 699
    const-string/jumbo v0, "write a number"

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/i;->f(Ljava/lang/String;)V

    .line 700
    iget-boolean v0, p0, Lcom/d/a/a/c/i;->k:Z

    if-eqz v0, :cond_0

    .line 701
    invoke-direct {p0, p1}, Lcom/d/a/a/c/i;->i(Ljava/lang/String;)V

    .line 705
    :goto_0
    return-void

    .line 703
    :cond_0
    invoke-virtual {p0, p1}, Lcom/d/a/a/c/i;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public e()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 232
    const-string/jumbo v0, "start an object"

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/i;->f(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/d/a/a/c/i;->l:Lcom/d/a/a/c/e;

    invoke-virtual {v0}, Lcom/d/a/a/c/e;->h()Lcom/d/a/a/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/c/i;->l:Lcom/d/a/a/c/e;

    .line 234
    iget-object v0, p0, Lcom/d/a/a/c/i;->a:Lcom/d/a/a/q;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/d/a/a/c/i;->a:Lcom/d/a/a/q;

    invoke-interface {v0, p0}, Lcom/d/a/a/q;->b(Lcom/d/a/a/g;)V

    .line 242
    :goto_0
    return-void

    .line 237
    :cond_0
    iget v0, p0, Lcom/d/a/a/c/i;->y:I

    iget v1, p0, Lcom/d/a/a/c/i;->z:I

    if-lt v0, v1, :cond_1

    .line 238
    invoke-virtual {p0}, Lcom/d/a/a/c/i;->l()V

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/d/a/a/c/i;->w:[C

    iget v1, p0, Lcom/d/a/a/c/i;->y:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/i;->y:I

    const/16 v2, 0x7b

    aput-char v2, v0, v1

    goto :goto_0
.end method

.method public f()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lcom/d/a/a/c/i;->l:Lcom/d/a/a/c/e;

    invoke-virtual {v0}, Lcom/d/a/a/c/e;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Current context not an object but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/d/a/a/c/i;->l:Lcom/d/a/a/c/e;

    invoke-virtual {v1}, Lcom/d/a/a/c/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/i;->e(Ljava/lang/String;)V

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/i;->a:Lcom/d/a/a/q;

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/d/a/a/c/i;->a:Lcom/d/a/a/q;

    iget-object v1, p0, Lcom/d/a/a/c/i;->l:Lcom/d/a/a/c/e;

    invoke-virtual {v1}, Lcom/d/a/a/c/e;->e()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/d/a/a/q;->a(Lcom/d/a/a/g;I)V

    .line 258
    :goto_0
    iget-object v0, p0, Lcom/d/a/a/c/i;->l:Lcom/d/a/a/c/e;

    invoke-virtual {v0}, Lcom/d/a/a/c/e;->i()Lcom/d/a/a/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/c/i;->l:Lcom/d/a/a/c/e;

    .line 259
    return-void

    .line 253
    :cond_1
    iget v0, p0, Lcom/d/a/a/c/i;->y:I

    iget v1, p0, Lcom/d/a/a/c/i;->z:I

    if-lt v0, v1, :cond_2

    .line 254
    invoke-virtual {p0}, Lcom/d/a/a/c/i;->l()V

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/d/a/a/c/i;->w:[C

    iget v1, p0, Lcom/d/a/a/c/i;->y:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/i;->y:I

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    goto :goto_0
.end method

.method protected f(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 759
    iget-object v0, p0, Lcom/d/a/a/c/i;->a:Lcom/d/a/a/q;

    if-eqz v0, :cond_1

    .line 761
    invoke-virtual {p0, p1}, Lcom/d/a/a/c/i;->g(Ljava/lang/String;)V

    .line 790
    :cond_0
    :goto_0
    return-void

    .line 765
    :cond_1
    iget-object v0, p0, Lcom/d/a/a/c/i;->l:Lcom/d/a/a/c/e;

    invoke-virtual {v0}, Lcom/d/a/a/c/e;->j()I

    move-result v0

    .line 766
    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 767
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", expecting field name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/d/a/a/c/i;->e(Ljava/lang/String;)V

    .line 769
    :cond_2
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 771
    :pswitch_0
    const/16 v0, 0x2c

    .line 785
    :goto_1
    iget v1, p0, Lcom/d/a/a/c/i;->y:I

    iget v2, p0, Lcom/d/a/a/c/i;->z:I

    if-lt v1, v2, :cond_3

    .line 786
    invoke-virtual {p0}, Lcom/d/a/a/c/i;->l()V

    .line 788
    :cond_3
    iget-object v1, p0, Lcom/d/a/a/c/i;->w:[C

    iget v2, p0, Lcom/d/a/a/c/i;->y:I

    aput-char v0, v1, v2

    .line 789
    iget v0, p0, Lcom/d/a/a/c/i;->y:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/d/a/a/c/i;->y:I

    goto :goto_0

    .line 774
    :pswitch_1
    const/16 v0, 0x3a

    .line 775
    goto :goto_1

    .line 777
    :pswitch_2
    iget-object v0, p0, Lcom/d/a/a/c/i;->s:Lcom/d/a/a/r;

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/d/a/a/c/i;->s:Lcom/d/a/a/r;

    invoke-interface {v0}, Lcom/d/a/a/r;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/i;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 769
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 833
    invoke-virtual {p0}, Lcom/d/a/a/c/i;->l()V

    .line 834
    iget-object v0, p0, Lcom/d/a/a/c/i;->v:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 835
    sget-object v0, Lcom/d/a/a/h;->c:Lcom/d/a/a/h;

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/i;->a(Lcom/d/a/a/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/d/a/a/c/i;->v:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 839
    :cond_0
    return-void
.end method

.method public g()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 746
    const-string/jumbo v0, "write a null"

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/i;->f(Ljava/lang/String;)V

    .line 747
    invoke-direct {p0}, Lcom/d/a/a/c/i;->m()V

    .line 748
    return-void
.end method

.method protected g(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 794
    iget-object v0, p0, Lcom/d/a/a/c/i;->l:Lcom/d/a/a/c/e;

    invoke-virtual {v0}, Lcom/d/a/a/c/e;->j()I

    move-result v0

    .line 795
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 796
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", expecting field name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/d/a/a/c/i;->e(Ljava/lang/String;)V

    .line 800
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 819
    invoke-virtual {p0}, Lcom/d/a/a/c/i;->h()V

    .line 822
    :cond_1
    :goto_0
    return-void

    .line 802
    :pswitch_0
    iget-object v0, p0, Lcom/d/a/a/c/i;->a:Lcom/d/a/a/q;

    invoke-interface {v0, p0}, Lcom/d/a/a/q;->f(Lcom/d/a/a/g;)V

    goto :goto_0

    .line 805
    :pswitch_1
    iget-object v0, p0, Lcom/d/a/a/c/i;->a:Lcom/d/a/a/q;

    invoke-interface {v0, p0}, Lcom/d/a/a/q;->d(Lcom/d/a/a/g;)V

    goto :goto_0

    .line 808
    :pswitch_2
    iget-object v0, p0, Lcom/d/a/a/c/i;->a:Lcom/d/a/a/q;

    invoke-interface {v0, p0}, Lcom/d/a/a/q;->a(Lcom/d/a/a/g;)V

    goto :goto_0

    .line 812
    :pswitch_3
    iget-object v0, p0, Lcom/d/a/a/c/i;->l:Lcom/d/a/a/c/e;

    invoke-virtual {v0}, Lcom/d/a/a/c/e;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 813
    iget-object v0, p0, Lcom/d/a/a/c/i;->a:Lcom/d/a/a/q;

    invoke-interface {v0, p0}, Lcom/d/a/a/q;->g(Lcom/d/a/a/g;)V

    goto :goto_0

    .line 814
    :cond_2
    iget-object v0, p0, Lcom/d/a/a/c/i;->l:Lcom/d/a/a/c/e;

    invoke-virtual {v0}, Lcom/d/a/a/c/e;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 815
    iget-object v0, p0, Lcom/d/a/a/c/i;->a:Lcom/d/a/a/q;

    invoke-interface {v0, p0}, Lcom/d/a/a/q;->h(Lcom/d/a/a/g;)V

    goto :goto_0

    .line 800
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected j()V
    .locals 2

    .prologue
    .line 888
    iget-object v0, p0, Lcom/d/a/a/c/i;->w:[C

    .line 889
    if-eqz v0, :cond_0

    .line 890
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/d/a/a/c/i;->w:[C

    .line 891
    iget-object v1, p0, Lcom/d/a/a/c/i;->o:Lcom/d/a/a/b/c;

    invoke-virtual {v1, v0}, Lcom/d/a/a/b/c;->b([C)V

    .line 893
    :cond_0
    return-void
.end method

.method protected l()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1876
    iget v0, p0, Lcom/d/a/a/c/i;->y:I

    iget v1, p0, Lcom/d/a/a/c/i;->x:I

    sub-int/2addr v0, v1

    .line 1877
    if-lez v0, :cond_0

    .line 1878
    iget v1, p0, Lcom/d/a/a/c/i;->x:I

    .line 1879
    const/4 v2, 0x0

    iput v2, p0, Lcom/d/a/a/c/i;->x:I

    iput v2, p0, Lcom/d/a/a/c/i;->y:I

    .line 1880
    iget-object v2, p0, Lcom/d/a/a/c/i;->v:Ljava/io/Writer;

    iget-object v3, p0, Lcom/d/a/a/c/i;->w:[C

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/Writer;->write([CII)V

    .line 1882
    :cond_0
    return-void
.end method
