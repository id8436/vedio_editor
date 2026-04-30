.class public Lcom/d/a/a/c/f;
.super Lcom/d/a/a/a/b;
.source "ReaderBasedJsonParser.java"


# static fields
.field protected static final L:[I


# instance fields
.field protected M:Ljava/io/Reader;

.field protected N:[C

.field protected O:Z

.field protected P:Lcom/d/a/a/p;

.field protected final Q:Lcom/d/a/a/d/c;

.field protected final R:I

.field protected S:Z

.field protected T:J

.field protected U:I

.field protected V:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/d/a/a/b/a;->a()[I

    move-result-object v0

    sput-object v0, Lcom/d/a/a/c/f;->L:[I

    return-void
.end method

.method public constructor <init>(Lcom/d/a/a/b/c;ILjava/io/Reader;Lcom/d/a/a/p;Lcom/d/a/a/d/c;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/d/a/a/a/b;-><init>(Lcom/d/a/a/b/c;I)V

    .line 135
    iput-object p3, p0, Lcom/d/a/a/c/f;->M:Ljava/io/Reader;

    .line 136
    invoke-virtual {p1}, Lcom/d/a/a/b/c;->g()[C

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/c/f;->N:[C

    .line 137
    iput v1, p0, Lcom/d/a/a/c/f;->d:I

    .line 138
    iput v1, p0, Lcom/d/a/a/c/f;->e:I

    .line 139
    iput-object p4, p0, Lcom/d/a/a/c/f;->P:Lcom/d/a/a/p;

    .line 140
    iput-object p5, p0, Lcom/d/a/a/c/f;->Q:Lcom/d/a/a/d/c;

    .line 141
    invoke-virtual {p5}, Lcom/d/a/a/d/c;->e()I

    move-result v0

    iput v0, p0, Lcom/d/a/a/c/f;->R:I

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/d/a/a/c/f;->O:Z

    .line 143
    return-void
.end method

.method public constructor <init>(Lcom/d/a/a/b/c;ILjava/io/Reader;Lcom/d/a/a/p;Lcom/d/a/a/d/c;[CIIZ)V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/d/a/a/a/b;-><init>(Lcom/d/a/a/b/c;I)V

    .line 117
    iput-object p3, p0, Lcom/d/a/a/c/f;->M:Ljava/io/Reader;

    .line 118
    iput-object p6, p0, Lcom/d/a/a/c/f;->N:[C

    .line 119
    iput p7, p0, Lcom/d/a/a/c/f;->d:I

    .line 120
    iput p8, p0, Lcom/d/a/a/c/f;->e:I

    .line 121
    iput-object p4, p0, Lcom/d/a/a/c/f;->P:Lcom/d/a/a/p;

    .line 122
    iput-object p5, p0, Lcom/d/a/a/c/f;->Q:Lcom/d/a/a/d/c;

    .line 123
    invoke-virtual {p5}, Lcom/d/a/a/d/c;->e()I

    move-result v0

    iput v0, p0, Lcom/d/a/a/c/f;->R:I

    .line 124
    iput-boolean p9, p0, Lcom/d/a/a/c/f;->O:Z

    .line 125
    return-void
.end method

.method private final Y()Lcom/d/a/a/o;
    .locals 4

    .prologue
    .line 722
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/d/a/a/c/f;->p:Z

    .line 723
    iget-object v0, p0, Lcom/d/a/a/c/f;->m:Lcom/d/a/a/o;

    .line 724
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/d/a/a/c/f;->m:Lcom/d/a/a/o;

    .line 729
    sget-object v1, Lcom/d/a/a/o;->d:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_1

    .line 730
    iget-object v1, p0, Lcom/d/a/a/c/f;->l:Lcom/d/a/a/c/d;

    iget v2, p0, Lcom/d/a/a/c/f;->j:I

    iget v3, p0, Lcom/d/a/a/c/f;->k:I

    invoke-virtual {v1, v2, v3}, Lcom/d/a/a/c/d;->a(II)Lcom/d/a/a/c/d;

    move-result-object v1

    iput-object v1, p0, Lcom/d/a/a/c/f;->l:Lcom/d/a/a/c/d;

    .line 734
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/d/a/a/c/f;->K:Lcom/d/a/a/o;

    return-object v0

    .line 731
    :cond_1
    sget-object v1, Lcom/d/a/a/o;->b:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 732
    iget-object v1, p0, Lcom/d/a/a/c/f;->l:Lcom/d/a/a/c/d;

    iget v2, p0, Lcom/d/a/a/c/f;->j:I

    iget v3, p0, Lcom/d/a/a/c/f;->k:I

    invoke-virtual {v1, v2, v3}, Lcom/d/a/a/c/d;->b(II)Lcom/d/a/a/c/d;

    move-result-object v1

    iput-object v1, p0, Lcom/d/a/a/c/f;->l:Lcom/d/a/a/c/d;

    goto :goto_0
.end method

.method private final Z()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v0, 0x30

    .line 1504
    iget v1, p0, Lcom/d/a/a/c/f;->d:I

    iget v2, p0, Lcom/d/a/a/c/f;->e:I

    if-ge v1, v2, :cond_1

    .line 1505
    iget-object v1, p0, Lcom/d/a/a/c/f;->N:[C

    iget v2, p0, Lcom/d/a/a/c/f;->d:I

    aget-char v1, v1, v2

    .line 1507
    if-lt v1, v0, :cond_0

    const/16 v2, 0x39

    if-le v1, v2, :cond_1

    .line 1512
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/d/a/a/c/f;->aa()C

    move-result v0

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

    .line 2113
    :cond_0
    :goto_0
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    iget v1, p0, Lcom/d/a/a/c/f;->e:I

    if-lt v0, v1, :cond_1

    .line 2114
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->x()V

    .line 2116
    :cond_1
    iget-object v0, p0, Lcom/d/a/a/c/f;->N:[C

    iget v1, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/f;->d:I

    aget-char v0, v0, v1

    .line 2117
    if-le v0, v3, :cond_7

    .line 2118
    const/16 v1, 0x2f

    if-ne v0, v1, :cond_2

    .line 2119
    invoke-direct {p0}, Lcom/d/a/a/c/f;->af()V

    goto :goto_0

    .line 2122
    :cond_2
    const/16 v1, 0x23

    if-ne v0, v1, :cond_3

    .line 2123
    invoke-direct {p0}, Lcom/d/a/a/c/f;->ah()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2127
    :cond_3
    if-eqz p1, :cond_4

    .line 2128
    return v0

    .line 2130
    :cond_4
    const/16 v1, 0x3a

    if-eq v0, v1, :cond_6

    .line 2131
    if-ge v0, v3, :cond_5

    .line 2132
    invoke-virtual {p0, v0}, Lcom/d/a/a/c/f;->c(I)V

    .line 2134
    :cond_5
    const-string/jumbo v1, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, v0, v1}, Lcom/d/a/a/c/f;->b(ILjava/lang/String;)V

    .line 2136
    :cond_6
    const/4 p1, 0x1

    .line 2137
    goto :goto_0

    .line 2139
    :cond_7
    if-ge v0, v3, :cond_0

    .line 2140
    const/16 v1, 0xa

    if-ne v0, v1, :cond_8

    .line 2141
    iget v0, p0, Lcom/d/a/a/c/f;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/d/a/a/c/f;->g:I

    .line 2142
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    iput v0, p0, Lcom/d/a/a/c/f;->h:I

    goto :goto_0

    .line 2143
    :cond_8
    const/16 v1, 0xd

    if-ne v0, v1, :cond_9

    .line 2144
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->X()V

    goto :goto_0

    .line 2145
    :cond_9
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 2146
    invoke-virtual {p0, v0}, Lcom/d/a/a/c/f;->c(I)V

    goto :goto_0
.end method

.method private final a(IIIZI)Lcom/d/a/a/o;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x39

    const/16 v6, 0x30

    const/4 v0, 0x0

    .line 1258
    iget v4, p0, Lcom/d/a/a/c/f;->e:I

    .line 1262
    const/16 v1, 0x2e

    if-ne p1, v1, :cond_d

    move v1, v0

    move v2, p3

    .line 1265
    :goto_0
    if-lt v2, v4, :cond_0

    .line 1266
    invoke-direct {p0, p4, p2}, Lcom/d/a/a/c/f;->b(ZI)Lcom/d/a/a/o;

    move-result-object v0

    .line 1316
    :goto_1
    return-object v0

    .line 1268
    :cond_0
    iget-object v3, p0, Lcom/d/a/a/c/f;->N:[C

    add-int/lit8 p3, v2, 0x1

    aget-char v2, v3, v2

    .line 1269
    if-lt v2, v6, :cond_1

    if-le v2, v7, :cond_4

    .line 1275
    :cond_1
    if-nez v1, :cond_2

    .line 1276
    const-string/jumbo v3, "Decimal point not followed by a digit"

    invoke-virtual {p0, v2, v3}, Lcom/d/a/a/c/f;->a(ILjava/lang/String;)V

    :cond_2
    move v3, v1

    move v1, p3

    .line 1280
    :goto_2
    const/16 v5, 0x65

    if-eq v2, v5, :cond_3

    const/16 v5, 0x45

    if-ne v2, v5, :cond_a

    .line 1281
    :cond_3
    if-lt v1, v4, :cond_5

    .line 1282
    iput p2, p0, Lcom/d/a/a/c/f;->d:I

    .line 1283
    invoke-direct {p0, p4, p2}, Lcom/d/a/a/c/f;->b(ZI)Lcom/d/a/a/o;

    move-result-object v0

    goto :goto_1

    .line 1272
    :cond_4
    add-int/lit8 v1, v1, 0x1

    move v2, p3

    goto :goto_0

    .line 1286
    :cond_5
    iget-object v5, p0, Lcom/d/a/a/c/f;->N:[C

    add-int/lit8 v2, v1, 0x1

    aget-char v1, v5, v1

    .line 1287
    const/16 v5, 0x2d

    if-eq v1, v5, :cond_6

    const/16 v5, 0x2b

    if-ne v1, v5, :cond_c

    .line 1288
    :cond_6
    if-lt v2, v4, :cond_7

    .line 1289
    iput p2, p0, Lcom/d/a/a/c/f;->d:I

    .line 1290
    invoke-direct {p0, p4, p2}, Lcom/d/a/a/c/f;->b(ZI)Lcom/d/a/a/o;

    move-result-object v0

    goto :goto_1

    .line 1292
    :cond_7
    iget-object v5, p0, Lcom/d/a/a/c/f;->N:[C

    add-int/lit8 v1, v2, 0x1

    aget-char v2, v5, v2

    .line 1294
    :goto_3
    if-gt v2, v7, :cond_9

    if-lt v2, v6, :cond_9

    .line 1295
    add-int/lit8 v0, v0, 0x1

    .line 1296
    if-lt v1, v4, :cond_8

    .line 1297
    iput p2, p0, Lcom/d/a/a/c/f;->d:I

    .line 1298
    invoke-direct {p0, p4, p2}, Lcom/d/a/a/c/f;->b(ZI)Lcom/d/a/a/o;

    move-result-object v0

    goto :goto_1

    .line 1300
    :cond_8
    iget-object v5, p0, Lcom/d/a/a/c/f;->N:[C

    add-int/lit8 v2, v1, 0x1

    aget-char v1, v5, v1

    move v8, v2

    move v2, v1

    move v1, v8

    goto :goto_3

    .line 1303
    :cond_9
    if-nez v0, :cond_a

    .line 1304
    const-string/jumbo v4, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, v2, v4}, Lcom/d/a/a/c/f;->a(ILjava/lang/String;)V

    .line 1307
    :cond_a
    add-int/lit8 v1, v1, -0x1

    .line 1308
    iput v1, p0, Lcom/d/a/a/c/f;->d:I

    .line 1310
    iget-object v4, p0, Lcom/d/a/a/c/f;->l:Lcom/d/a/a/c/d;

    invoke-virtual {v4}, Lcom/d/a/a/c/d;->b()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1311
    invoke-direct {p0, v2}, Lcom/d/a/a/c/f;->h(I)V

    .line 1313
    :cond_b
    sub-int/2addr v1, p2

    .line 1314
    iget-object v2, p0, Lcom/d/a/a/c/f;->n:Lcom/d/a/a/e/i;

    iget-object v4, p0, Lcom/d/a/a/c/f;->N:[C

    invoke-virtual {v2, v4, p2, v1}, Lcom/d/a/a/e/i;->a([CII)V

    .line 1316
    invoke-virtual {p0, p4, p5, v3, v0}, Lcom/d/a/a/c/f;->b(ZIII)Lcom/d/a/a/o;

    move-result-object v0

    goto/16 :goto_1

    :cond_c
    move v8, v2

    move v2, v1

    move v1, v8

    goto :goto_3

    :cond_d
    move v3, v0

    move v1, p3

    move v2, p1

    goto :goto_2
.end method

.method private a(III)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x5c

    .line 1635
    iget-object v0, p0, Lcom/d/a/a/c/f;->n:Lcom/d/a/a/e/i;

    iget-object v1, p0, Lcom/d/a/a/c/f;->N:[C

    iget v2, p0, Lcom/d/a/a/c/f;->d:I

    sub-int/2addr v2, p1

    invoke-virtual {v0, v1, p1, v2}, Lcom/d/a/a/e/i;->a([CII)V

    .line 1640
    iget-object v0, p0, Lcom/d/a/a/c/f;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0}, Lcom/d/a/a/e/i;->j()[C

    move-result-object v1

    .line 1641
    iget-object v0, p0, Lcom/d/a/a/c/f;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0}, Lcom/d/a/a/e/i;->l()I

    move-result v0

    .line 1644
    :goto_0
    iget v2, p0, Lcom/d/a/a/c/f;->d:I

    iget v3, p0, Lcom/d/a/a/c/f;->e:I

    if-lt v2, v3, :cond_0

    .line 1645
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->y()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1646
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ": was expecting closing \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-char v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' for name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/d/a/a/c/f;->c(Ljava/lang/String;)V

    .line 1649
    :cond_0
    iget-object v2, p0, Lcom/d/a/a/c/f;->N:[C

    iget v3, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/d/a/a/c/f;->d:I

    aget-char v2, v2, v3

    .line 1651
    if-gt v2, v5, :cond_1

    .line 1652
    if-ne v2, v5, :cond_2

    .line 1657
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->N()C

    move-result v2

    .line 1667
    :cond_1
    :goto_1
    mul-int/lit8 v3, p2, 0x21

    add-int p2, v3, v2

    .line 1669
    add-int/lit8 v3, v0, 0x1

    aput-char v2, v1, v0

    .line 1672
    array-length v0, v1

    if-lt v3, v0, :cond_4

    .line 1673
    iget-object v0, p0, Lcom/d/a/a/c/f;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0}, Lcom/d/a/a/e/i;->m()[C

    move-result-object v1

    .line 1674
    const/4 v0, 0x0

    goto :goto_0

    .line 1658
    :cond_2
    if-gt v2, p3, :cond_1

    .line 1659
    if-ne v2, p3, :cond_3

    .line 1677
    iget-object v1, p0, Lcom/d/a/a/c/f;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v1, v0}, Lcom/d/a/a/e/i;->a(I)V

    .line 1679
    iget-object v0, p0, Lcom/d/a/a/c/f;->n:Lcom/d/a/a/e/i;

    .line 1680
    invoke-virtual {v0}, Lcom/d/a/a/e/i;->e()[C

    move-result-object v1

    .line 1681
    invoke-virtual {v0}, Lcom/d/a/a/e/i;->d()I

    move-result v2

    .line 1682
    invoke-virtual {v0}, Lcom/d/a/a/e/i;->c()I

    move-result v0

    .line 1683
    iget-object v3, p0, Lcom/d/a/a/c/f;->Q:Lcom/d/a/a/d/c;

    invoke-virtual {v3, v1, v2, v0, p2}, Lcom/d/a/a/d/c;->a([CIII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1662
    :cond_3
    const/16 v3, 0x20

    if-ge v2, v3, :cond_1

    .line 1663
    const-string/jumbo v3, "name"

    invoke-virtual {p0, v2, v3}, Lcom/d/a/a/c/f;->c(ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_0
.end method

.method private a(II[I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1870
    iget-object v0, p0, Lcom/d/a/a/c/f;->n:Lcom/d/a/a/e/i;

    iget-object v1, p0, Lcom/d/a/a/c/f;->N:[C

    iget v2, p0, Lcom/d/a/a/c/f;->d:I

    sub-int/2addr v2, p1

    invoke-virtual {v0, v1, p1, v2}, Lcom/d/a/a/e/i;->a([CII)V

    .line 1871
    iget-object v0, p0, Lcom/d/a/a/c/f;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0}, Lcom/d/a/a/e/i;->j()[C

    move-result-object v1

    .line 1872
    iget-object v0, p0, Lcom/d/a/a/c/f;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0}, Lcom/d/a/a/e/i;->l()I

    move-result v0

    .line 1873
    array-length v3, p3

    .line 1876
    :goto_0
    iget v2, p0, Lcom/d/a/a/c/f;->d:I

    iget v4, p0, Lcom/d/a/a/c/f;->e:I

    if-lt v2, v4, :cond_1

    .line 1877
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->y()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1901
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/d/a/a/c/f;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v1, v0}, Lcom/d/a/a/e/i;->a(I)V

    .line 1903
    iget-object v0, p0, Lcom/d/a/a/c/f;->n:Lcom/d/a/a/e/i;

    .line 1904
    invoke-virtual {v0}, Lcom/d/a/a/e/i;->e()[C

    move-result-object v1

    .line 1905
    invoke-virtual {v0}, Lcom/d/a/a/e/i;->d()I

    move-result v2

    .line 1906
    invoke-virtual {v0}, Lcom/d/a/a/e/i;->c()I

    move-result v0

    .line 1908
    iget-object v3, p0, Lcom/d/a/a/c/f;->Q:Lcom/d/a/a/d/c;

    invoke-virtual {v3, v1, v2, v0, p2}, Lcom/d/a/a/d/c;->a([CIII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1881
    :cond_1
    iget-object v2, p0, Lcom/d/a/a/c/f;->N:[C

    iget v4, p0, Lcom/d/a/a/c/f;->d:I

    aget-char v4, v2, v4

    .line 1883
    if-gt v4, v3, :cond_3

    .line 1884
    aget v2, p3, v4

    if-nez v2, :cond_0

    .line 1890
    :cond_2
    iget v2, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/d/a/a/c/f;->d:I

    .line 1891
    mul-int/lit8 v2, p2, 0x21

    add-int p2, v2, v4

    .line 1893
    add-int/lit8 v2, v0, 0x1

    aput-char v4, v1, v0

    .line 1896
    array-length v0, v1

    if-lt v2, v0, :cond_4

    .line 1897
    iget-object v0, p0, Lcom/d/a/a/c/f;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0}, Lcom/d/a/a/e/i;->m()[C

    move-result-object v1

    .line 1898
    const/4 v0, 0x0

    goto :goto_0

    .line 1887
    :cond_3
    invoke-static {v4}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method private aa()C
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x39

    const/16 v1, 0x30

    .line 1517
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    iget v2, p0, Lcom/d/a/a/c/f;->e:I

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/d/a/a/c/f;->y()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 1541
    :cond_0
    :goto_0
    return v0

    .line 1520
    :cond_1
    iget-object v0, p0, Lcom/d/a/a/c/f;->N:[C

    iget v2, p0, Lcom/d/a/a/c/f;->d:I

    aget-char v0, v0, v2

    .line 1521
    if-lt v0, v1, :cond_2

    if-le v0, v4, :cond_3

    :cond_2
    move v0, v1

    .line 1522
    goto :goto_0

    .line 1524
    :cond_3
    sget-object v2, Lcom/d/a/a/l;->h:Lcom/d/a/a/l;

    invoke-virtual {p0, v2}, Lcom/d/a/a/c/f;->a(Lcom/d/a/a/l;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1525
    const-string/jumbo v2, "Leading zeroes not allowed"

    invoke-virtual {p0, v2}, Lcom/d/a/a/c/f;->b(Ljava/lang/String;)V

    .line 1528
    :cond_4
    iget v2, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/d/a/a/c/f;->d:I

    .line 1529
    if-ne v0, v1, :cond_0

    .line 1530
    :cond_5
    iget v2, p0, Lcom/d/a/a/c/f;->d:I

    iget v3, p0, Lcom/d/a/a/c/f;->e:I

    if-lt v2, v3, :cond_6

    invoke-virtual {p0}, Lcom/d/a/a/c/f;->y()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1531
    :cond_6
    iget-object v0, p0, Lcom/d/a/a/c/f;->N:[C

    iget v2, p0, Lcom/d/a/a/c/f;->d:I

    aget-char v0, v0, v2

    .line 1532
    if-lt v0, v1, :cond_7

    if-le v0, v4, :cond_8

    :cond_7
    move v0, v1

    .line 1533
    goto :goto_0

    .line 1535
    :cond_8
    iget v2, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/d/a/a/c/f;->d:I

    .line 1536
    if-eq v0, v1, :cond_5

    goto :goto_0
.end method

.method private final ab()I
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

    .line 2058
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/d/a/a/c/f;->e:I

    if-lt v0, v1, :cond_0

    .line 2059
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/d/a/a/c/f;->a(Z)I

    move-result v0

    .line 2107
    :goto_0
    return v0

    .line 2061
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/f;->N:[C

    iget v1, p0, Lcom/d/a/a/c/f;->d:I

    aget-char v0, v0, v1

    .line 2062
    const/16 v1, 0x3a

    if-ne v0, v1, :cond_8

    .line 2063
    iget-object v0, p0, Lcom/d/a/a/c/f;->N:[C

    iget v1, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/d/a/a/c/f;->d:I

    aget-char v0, v0, v1

    .line 2064
    if-le v0, v2, :cond_3

    .line 2065
    if-eq v0, v5, :cond_1

    if-ne v0, v4, :cond_2

    .line 2066
    :cond_1
    invoke-direct {p0, v3}, Lcom/d/a/a/c/f;->a(Z)I

    move-result v0

    goto :goto_0

    .line 2068
    :cond_2
    iget v1, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/d/a/a/c/f;->d:I

    goto :goto_0

    .line 2071
    :cond_3
    if-eq v0, v2, :cond_4

    if-ne v0, v6, :cond_7

    .line 2072
    :cond_4
    iget-object v0, p0, Lcom/d/a/a/c/f;->N:[C

    iget v1, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/d/a/a/c/f;->d:I

    aget-char v0, v0, v1

    .line 2073
    if-le v0, v2, :cond_7

    .line 2074
    if-eq v0, v5, :cond_5

    if-ne v0, v4, :cond_6

    .line 2075
    :cond_5
    invoke-direct {p0, v3}, Lcom/d/a/a/c/f;->a(Z)I

    move-result v0

    goto :goto_0

    .line 2077
    :cond_6
    iget v1, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/d/a/a/c/f;->d:I

    goto :goto_0

    .line 2081
    :cond_7
    invoke-direct {p0, v3}, Lcom/d/a/a/c/f;->a(Z)I

    move-result v0

    goto :goto_0

    .line 2083
    :cond_8
    if-eq v0, v2, :cond_9

    if-ne v0, v6, :cond_a

    .line 2084
    :cond_9
    iget-object v0, p0, Lcom/d/a/a/c/f;->N:[C

    iget v1, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/d/a/a/c/f;->d:I

    aget-char v0, v0, v1

    .line 2086
    :cond_a
    const/16 v1, 0x3a

    if-ne v0, v1, :cond_12

    .line 2087
    iget-object v0, p0, Lcom/d/a/a/c/f;->N:[C

    iget v1, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/d/a/a/c/f;->d:I

    aget-char v0, v0, v1

    .line 2088
    if-le v0, v2, :cond_d

    .line 2089
    if-eq v0, v5, :cond_b

    if-ne v0, v4, :cond_c

    .line 2090
    :cond_b
    invoke-direct {p0, v3}, Lcom/d/a/a/c/f;->a(Z)I

    move-result v0

    goto :goto_0

    .line 2092
    :cond_c
    iget v1, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/d/a/a/c/f;->d:I

    goto :goto_0

    .line 2095
    :cond_d
    if-eq v0, v2, :cond_e

    if-ne v0, v6, :cond_11

    .line 2096
    :cond_e
    iget-object v0, p0, Lcom/d/a/a/c/f;->N:[C

    iget v1, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/d/a/a/c/f;->d:I

    aget-char v0, v0, v1

    .line 2097
    if-le v0, v2, :cond_11

    .line 2098
    if-eq v0, v5, :cond_f

    if-ne v0, v4, :cond_10

    .line 2099
    :cond_f
    invoke-direct {p0, v3}, Lcom/d/a/a/c/f;->a(Z)I

    move-result v0

    goto/16 :goto_0

    .line 2101
    :cond_10
    iget v1, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/d/a/a/c/f;->d:I

    goto/16 :goto_0

    .line 2105
    :cond_11
    invoke-direct {p0, v3}, Lcom/d/a/a/c/f;->a(Z)I

    move-result v0

    goto/16 :goto_0

    .line 2107
    :cond_12
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/d/a/a/c/f;->a(Z)I

    move-result v0

    goto/16 :goto_0
.end method

.method private final ac()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x20

    .line 2231
    :cond_0
    :goto_0
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    iget v1, p0, Lcom/d/a/a/c/f;->e:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/d/a/a/c/f;->y()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2232
    :cond_1
    iget-object v0, p0, Lcom/d/a/a/c/f;->N:[C

    iget v1, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/f;->d:I

    aget-char v0, v0, v1

    .line 2233
    if-le v0, v3, :cond_4

    .line 2234
    const/16 v1, 0x2f

    if-ne v0, v1, :cond_2

    .line 2235
    invoke-direct {p0}, Lcom/d/a/a/c/f;->af()V

    goto :goto_0

    .line 2238
    :cond_2
    const/16 v1, 0x23

    if-ne v0, v1, :cond_3

    .line 2239
    invoke-direct {p0}, Lcom/d/a/a/c/f;->ah()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2243
    :cond_3
    return v0

    .line 2245
    :cond_4
    if-ge v0, v3, :cond_0

    .line 2246
    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 2247
    iget v0, p0, Lcom/d/a/a/c/f;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/d/a/a/c/f;->g:I

    .line 2248
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    iput v0, p0, Lcom/d/a/a/c/f;->h:I

    goto :goto_0

    .line 2249
    :cond_5
    const/16 v1, 0xd

    if-ne v0, v1, :cond_6

    .line 2250
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->X()V

    goto :goto_0

    .line 2251
    :cond_6
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 2252
    invoke-virtual {p0, v0}, Lcom/d/a/a/c/f;->c(I)V

    goto :goto_0

    .line 2256
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unexpected end-of-input within/between "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/d/a/a/c/f;->l:Lcom/d/a/a/c/d;

    invoke-virtual {v1}, Lcom/d/a/a/c/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/f;->a(Ljava/lang/String;)Lcom/d/a/a/j;

    move-result-object v0

    throw v0
.end method

.method private final ad()I
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

    .line 2263
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    iget v1, p0, Lcom/d/a/a/c/f;->e:I

    if-lt v0, v1, :cond_1

    .line 2264
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->y()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2265
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->D()I

    move-result v0

    .line 2307
    :cond_0
    :goto_0
    return v0

    .line 2268
    :cond_1
    iget-object v0, p0, Lcom/d/a/a/c/f;->N:[C

    iget v1, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/f;->d:I

    aget-char v0, v0, v1

    .line 2269
    if-le v0, v3, :cond_3

    .line 2270
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    if-ne v0, v7, :cond_0

    .line 2271
    :cond_2
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/d/a/a/c/f;->d:I

    .line 2272
    invoke-direct {p0}, Lcom/d/a/a/c/f;->ae()I

    move-result v0

    goto :goto_0

    .line 2276
    :cond_3
    if-eq v0, v3, :cond_4

    .line 2277
    if-ne v0, v5, :cond_6

    .line 2278
    iget v0, p0, Lcom/d/a/a/c/f;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/d/a/a/c/f;->g:I

    .line 2279
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    iput v0, p0, Lcom/d/a/a/c/f;->h:I

    .line 2287
    :cond_4
    :goto_1
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    iget v1, p0, Lcom/d/a/a/c/f;->e:I

    if-ge v0, v1, :cond_b

    .line 2288
    iget-object v0, p0, Lcom/d/a/a/c/f;->N:[C

    iget v1, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/f;->d:I

    aget-char v0, v0, v1

    .line 2289
    if-le v0, v3, :cond_8

    .line 2290
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_5

    if-ne v0, v7, :cond_0

    .line 2291
    :cond_5
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/d/a/a/c/f;->d:I

    .line 2292
    invoke-direct {p0}, Lcom/d/a/a/c/f;->ae()I

    move-result v0

    goto :goto_0

    .line 2280
    :cond_6
    if-ne v0, v6, :cond_7

    .line 2281
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->X()V

    goto :goto_1

    .line 2282
    :cond_7
    if-eq v0, v4, :cond_4

    .line 2283
    invoke-virtual {p0, v0}, Lcom/d/a/a/c/f;->c(I)V

    goto :goto_1

    .line 2296
    :cond_8
    if-eq v0, v3, :cond_4

    .line 2297
    if-ne v0, v5, :cond_9

    .line 2298
    iget v0, p0, Lcom/d/a/a/c/f;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/d/a/a/c/f;->g:I

    .line 2299
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    iput v0, p0, Lcom/d/a/a/c/f;->h:I

    goto :goto_1

    .line 2300
    :cond_9
    if-ne v0, v6, :cond_a

    .line 2301
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->X()V

    goto :goto_1

    .line 2302
    :cond_a
    if-eq v0, v4, :cond_4

    .line 2303
    invoke-virtual {p0, v0}, Lcom/d/a/a/c/f;->c(I)V

    goto :goto_1

    .line 2307
    :cond_b
    invoke-direct {p0}, Lcom/d/a/a/c/f;->ae()I

    move-result v0

    goto :goto_0
.end method

.method private ae()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x20

    .line 2313
    :cond_0
    :goto_0
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    iget v1, p0, Lcom/d/a/a/c/f;->e:I

    if-lt v0, v1, :cond_2

    .line 2314
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->y()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2315
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->D()I

    move-result v0

    .line 2329
    :cond_1
    return v0

    .line 2318
    :cond_2
    iget-object v0, p0, Lcom/d/a/a/c/f;->N:[C

    iget v1, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/f;->d:I

    aget-char v0, v0, v1

    .line 2319
    if-le v0, v3, :cond_4

    .line 2320
    const/16 v1, 0x2f

    if-ne v0, v1, :cond_3

    .line 2321
    invoke-direct {p0}, Lcom/d/a/a/c/f;->af()V

    goto :goto_0

    .line 2324
    :cond_3
    const/16 v1, 0x23

    if-ne v0, v1, :cond_1

    .line 2325
    invoke-direct {p0}, Lcom/d/a/a/c/f;->ah()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 2330
    :cond_4
    if-eq v0, v3, :cond_0

    .line 2331
    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 2332
    iget v0, p0, Lcom/d/a/a/c/f;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/d/a/a/c/f;->g:I

    .line 2333
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    iput v0, p0, Lcom/d/a/a/c/f;->h:I

    goto :goto_0

    .line 2334
    :cond_5
    const/16 v1, 0xd

    if-ne v0, v1, :cond_6

    .line 2335
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->X()V

    goto :goto_0

    .line 2336
    :cond_6
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 2337
    invoke-virtual {p0, v0}, Lcom/d/a/a/c/f;->c(I)V

    goto :goto_0
.end method

.method private af()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x2f

    .line 2345
    sget-object v0, Lcom/d/a/a/l;->b:Lcom/d/a/a/l;

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/f;->a(Lcom/d/a/a/l;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2346
    const-string/jumbo v0, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    invoke-virtual {p0, v3, v0}, Lcom/d/a/a/c/f;->b(ILjava/lang/String;)V

    .line 2349
    :cond_0
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    iget v1, p0, Lcom/d/a/a/c/f;->e:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/d/a/a/c/f;->y()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2350
    const-string/jumbo v0, " in a comment"

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/f;->c(Ljava/lang/String;)V

    .line 2352
    :cond_1
    iget-object v0, p0, Lcom/d/a/a/c/f;->N:[C

    iget v1, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/f;->d:I

    aget-char v0, v0, v1

    .line 2353
    if-ne v0, v3, :cond_2

    .line 2354
    invoke-direct {p0}, Lcom/d/a/a/c/f;->ai()V

    .line 2360
    :goto_0
    return-void

    .line 2355
    :cond_2
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_3

    .line 2356
    invoke-direct {p0}, Lcom/d/a/a/c/f;->ag()V

    goto :goto_0

    .line 2358
    :cond_3
    const-string/jumbo v1, "was expecting either \'*\' or \'/\' for a comment"

    invoke-virtual {p0, v0, v1}, Lcom/d/a/a/c/f;->b(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private ag()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x2a

    .line 2365
    :cond_0
    :goto_0
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    iget v1, p0, Lcom/d/a/a/c/f;->e:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/d/a/a/c/f;->y()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2366
    :cond_1
    iget-object v0, p0, Lcom/d/a/a/c/f;->N:[C

    iget v1, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/f;->d:I

    aget-char v0, v0, v1

    .line 2367
    if-gt v0, v3, :cond_0

    .line 2368
    if-ne v0, v3, :cond_4

    .line 2369
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    iget v1, p0, Lcom/d/a/a/c/f;->e:I

    if-lt v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/d/a/a/c/f;->y()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2390
    :cond_2
    const-string/jumbo v0, " in a comment"

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/f;->c(Ljava/lang/String;)V

    .line 2391
    :goto_1
    return-void

    .line 2372
    :cond_3
    iget-object v0, p0, Lcom/d/a/a/c/f;->N:[C

    iget v1, p0, Lcom/d/a/a/c/f;->d:I

    aget-char v0, v0, v1

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    .line 2373
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/d/a/a/c/f;->d:I

    goto :goto_1

    .line 2378
    :cond_4
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 2379
    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 2380
    iget v0, p0, Lcom/d/a/a/c/f;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/d/a/a/c/f;->g:I

    .line 2381
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    iput v0, p0, Lcom/d/a/a/c/f;->h:I

    goto :goto_0

    .line 2382
    :cond_5
    const/16 v1, 0xd

    if-ne v0, v1, :cond_6

    .line 2383
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->X()V

    goto :goto_0

    .line 2384
    :cond_6
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 2385
    invoke-virtual {p0, v0}, Lcom/d/a/a/c/f;->c(I)V

    goto :goto_0
.end method

.method private ah()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2395
    sget-object v0, Lcom/d/a/a/l;->c:Lcom/d/a/a/l;

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/f;->a(Lcom/d/a/a/l;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2396
    const/4 v0, 0x0

    .line 2399
    :goto_0
    return v0

    .line 2398
    :cond_0
    invoke-direct {p0}, Lcom/d/a/a/c/f;->ai()V

    .line 2399
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private ai()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2405
    :cond_0
    :goto_0
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    iget v1, p0, Lcom/d/a/a/c/f;->e:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/d/a/a/c/f;->y()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2406
    :cond_1
    iget-object v0, p0, Lcom/d/a/a/c/f;->N:[C

    iget v1, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/f;->d:I

    aget-char v0, v0, v1

    .line 2407
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 2408
    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 2409
    iget v0, p0, Lcom/d/a/a/c/f;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/d/a/a/c/f;->g:I

    .line 2410
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    iput v0, p0, Lcom/d/a/a/c/f;->h:I

    .line 2420
    :cond_2
    :goto_1
    return-void

    .line 2412
    :cond_3
    const/16 v1, 0xd

    if-ne v0, v1, :cond_4

    .line 2413
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->X()V

    goto :goto_1

    .line 2415
    :cond_4
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 2416
    invoke-virtual {p0, v0}, Lcom/d/a/a/c/f;->c(I)V

    goto :goto_0
.end method

.method private final aj()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2477
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    .line 2478
    add-int/lit8 v1, v0, 0x3

    iget v2, p0, Lcom/d/a/a/c/f;->e:I

    if-ge v1, v2, :cond_1

    .line 2479
    iget-object v1, p0, Lcom/d/a/a/c/f;->N:[C

    .line 2480
    aget-char v2, v1, v0

    const/16 v3, 0x72

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    aget-char v2, v1, v0

    const/16 v3, 0x75

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    aget-char v2, v1, v0

    const/16 v3, 0x65

    if-ne v2, v3, :cond_1

    .line 2481
    add-int/lit8 v0, v0, 0x1

    aget-char v1, v1, v0

    .line 2482
    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_0

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_1

    .line 2483
    :cond_0
    iput v0, p0, Lcom/d/a/a/c/f;->d:I

    .line 2490
    :goto_0
    return-void

    .line 2489
    :cond_1
    const-string/jumbo v0, "true"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/d/a/a/c/f;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private final ak()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2493
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    .line 2494
    add-int/lit8 v1, v0, 0x4

    iget v2, p0, Lcom/d/a/a/c/f;->e:I

    if-ge v1, v2, :cond_1

    .line 2495
    iget-object v1, p0, Lcom/d/a/a/c/f;->N:[C

    .line 2496
    aget-char v2, v1, v0

    const/16 v3, 0x61

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    aget-char v2, v1, v0

    const/16 v3, 0x6c

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    aget-char v2, v1, v0

    const/16 v3, 0x73

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    aget-char v2, v1, v0

    const/16 v3, 0x65

    if-ne v2, v3, :cond_1

    .line 2497
    add-int/lit8 v0, v0, 0x1

    aget-char v1, v1, v0

    .line 2498
    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_0

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_1

    .line 2499
    :cond_0
    iput v0, p0, Lcom/d/a/a/c/f;->d:I

    .line 2506
    :goto_0
    return-void

    .line 2505
    :cond_1
    const-string/jumbo v0, "false"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/d/a/a/c/f;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private final al()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x6c

    .line 2509
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    .line 2510
    add-int/lit8 v1, v0, 0x3

    iget v2, p0, Lcom/d/a/a/c/f;->e:I

    if-ge v1, v2, :cond_1

    .line 2511
    iget-object v1, p0, Lcom/d/a/a/c/f;->N:[C

    .line 2512
    aget-char v2, v1, v0

    const/16 v3, 0x75

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    aget-char v2, v1, v0

    if-ne v2, v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    aget-char v2, v1, v0

    if-ne v2, v4, :cond_1

    .line 2513
    add-int/lit8 v0, v0, 0x1

    aget-char v1, v1, v0

    .line 2514
    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_0

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_1

    .line 2515
    :cond_0
    iput v0, p0, Lcom/d/a/a/c/f;->d:I

    .line 2522
    :goto_0
    return-void

    .line 2521
    :cond_1
    const-string/jumbo v0, "null"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/d/a/a/c/f;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private final am()V
    .locals 6

    .prologue
    .line 2709
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    .line 2710
    iget-wide v2, p0, Lcom/d/a/a/c/f;->f:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/d/a/a/c/f;->i:J

    .line 2711
    iget v1, p0, Lcom/d/a/a/c/f;->g:I

    iput v1, p0, Lcom/d/a/a/c/f;->j:I

    .line 2712
    iget v1, p0, Lcom/d/a/a/c/f;->h:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/d/a/a/c/f;->k:I

    .line 2713
    return-void
.end method

.method private final an()V
    .locals 4

    .prologue
    .line 2718
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    .line 2719
    int-to-long v2, v0

    iput-wide v2, p0, Lcom/d/a/a/c/f;->T:J

    .line 2720
    iget v1, p0, Lcom/d/a/a/c/f;->g:I

    iput v1, p0, Lcom/d/a/a/c/f;->U:I

    .line 2721
    iget v1, p0, Lcom/d/a/a/c/f;->h:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/d/a/a/c/f;->V:I

    .line 2722
    return-void
.end method

.method private final b(ZI)Lcom/d/a/a/o;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1376
    if-eqz p1, :cond_0

    add-int/lit8 p2, p2, 0x1

    :cond_0
    iput p2, p0, Lcom/d/a/a/c/f;->d:I

    .line 1377
    iget-object v0, p0, Lcom/d/a/a/c/f;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0}, Lcom/d/a/a/e/i;->k()[C

    move-result-object v2

    .line 1378
    const/4 v1, 0x0

    .line 1381
    if-eqz p1, :cond_1a

    .line 1382
    const/4 v0, 0x1

    const/16 v3, 0x2d

    aput-char v3, v2, v1

    .line 1386
    :goto_0
    const/4 v3, 0x0

    .line 1387
    iget v1, p0, Lcom/d/a/a/c/f;->d:I

    iget v4, p0, Lcom/d/a/a/c/f;->e:I

    if-ge v1, v4, :cond_3

    iget-object v1, p0, Lcom/d/a/a/c/f;->N:[C

    iget v4, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/d/a/a/c/f;->d:I

    aget-char v1, v1, v4

    .line 1388
    :goto_1
    const/16 v4, 0x30

    if-ne v1, v4, :cond_1

    .line 1389
    invoke-direct {p0}, Lcom/d/a/a/c/f;->Z()C

    move-result v1

    .line 1391
    :cond_1
    const/4 v5, 0x0

    move v9, v1

    move-object v1, v2

    move v2, v9

    .line 1395
    :goto_2
    const/16 v4, 0x30

    if-lt v2, v4, :cond_19

    const/16 v4, 0x39

    if-gt v2, v4, :cond_19

    .line 1396
    add-int/lit8 v3, v3, 0x1

    .line 1397
    array-length v4, v1

    if-lt v0, v4, :cond_2

    .line 1398
    iget-object v0, p0, Lcom/d/a/a/c/f;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0}, Lcom/d/a/a/e/i;->m()[C

    move-result-object v1

    .line 1399
    const/4 v0, 0x0

    .line 1401
    :cond_2
    add-int/lit8 v4, v0, 0x1

    aput-char v2, v1, v0

    .line 1402
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    iget v2, p0, Lcom/d/a/a/c/f;->e:I

    if-lt v0, v2, :cond_4

    invoke-virtual {p0}, Lcom/d/a/a/c/f;->y()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1404
    const/4 v0, 0x0

    .line 1405
    const/4 v5, 0x1

    move v7, v3

    move-object v3, v1

    move v1, v0

    .line 1411
    :goto_3
    if-nez v7, :cond_5

    .line 1412
    invoke-virtual {p0, v1, p1}, Lcom/d/a/a/c/f;->a(IZ)Lcom/d/a/a/o;

    move-result-object v0

    .line 1494
    :goto_4
    return-object v0

    .line 1387
    :cond_3
    const-string/jumbo v1, "No digit following minus sign"

    invoke-virtual {p0, v1}, Lcom/d/a/a/c/f;->e(Ljava/lang/String;)C

    move-result v1

    goto :goto_1

    .line 1408
    :cond_4
    iget-object v0, p0, Lcom/d/a/a/c/f;->N:[C

    iget v2, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v6, v2, 0x1

    iput v6, p0, Lcom/d/a/a/c/f;->d:I

    aget-char v2, v0, v2

    move v0, v4

    goto :goto_2

    .line 1415
    :cond_5
    const/4 v0, 0x0

    .line 1417
    const/16 v2, 0x2e

    if-ne v1, v2, :cond_18

    .line 1418
    add-int/lit8 v2, v4, 0x1

    aput-char v1, v3, v4

    .line 1422
    :goto_5
    iget v4, p0, Lcom/d/a/a/c/f;->d:I

    iget v6, p0, Lcom/d/a/a/c/f;->e:I

    if-lt v4, v6, :cond_d

    invoke-virtual {p0}, Lcom/d/a/a/c/f;->y()Z

    move-result v4

    if-nez v4, :cond_d

    .line 1423
    const/4 v5, 0x1

    move v4, v5

    move v5, v1

    .line 1438
    :goto_6
    if-nez v0, :cond_6

    .line 1439
    const-string/jumbo v1, "Decimal point not followed by a digit"

    invoke-virtual {p0, v5, v1}, Lcom/d/a/a/c/f;->a(ILjava/lang/String;)V

    :cond_6
    move v6, v0

    move-object v1, v3

    move v0, v2

    .line 1443
    :goto_7
    const/4 v3, 0x0

    .line 1444
    const/16 v2, 0x65

    if-eq v5, v2, :cond_7

    const/16 v2, 0x45

    if-ne v5, v2, :cond_15

    .line 1445
    :cond_7
    array-length v2, v1

    if-lt v0, v2, :cond_8

    .line 1446
    iget-object v0, p0, Lcom/d/a/a/c/f;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0}, Lcom/d/a/a/e/i;->m()[C

    move-result-object v1

    .line 1447
    const/4 v0, 0x0

    .line 1449
    :cond_8
    add-int/lit8 v2, v0, 0x1

    aput-char v5, v1, v0

    .line 1451
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    iget v5, p0, Lcom/d/a/a/c/f;->e:I

    if-ge v0, v5, :cond_f

    iget-object v0, p0, Lcom/d/a/a/c/f;->N:[C

    iget v5, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v8, v5, 0x1

    iput v8, p0, Lcom/d/a/a/c/f;->d:I

    aget-char v5, v0, v5

    .line 1454
    :goto_8
    const/16 v0, 0x2d

    if-eq v5, v0, :cond_9

    const/16 v0, 0x2b

    if-ne v5, v0, :cond_14

    .line 1455
    :cond_9
    array-length v0, v1

    if-lt v2, v0, :cond_13

    .line 1456
    iget-object v0, p0, Lcom/d/a/a/c/f;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0}, Lcom/d/a/a/e/i;->m()[C

    move-result-object v1

    .line 1457
    const/4 v0, 0x0

    .line 1459
    :goto_9
    add-int/lit8 v2, v0, 0x1

    aput-char v5, v1, v0

    .line 1461
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    iget v5, p0, Lcom/d/a/a/c/f;->e:I

    if-ge v0, v5, :cond_10

    iget-object v0, p0, Lcom/d/a/a/c/f;->N:[C

    iget v5, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v8, v5, 0x1

    iput v8, p0, Lcom/d/a/a/c/f;->d:I

    aget-char v0, v0, v5

    :goto_a
    move v9, v0

    move v0, v2

    move v2, v9

    .line 1466
    :goto_b
    const/16 v5, 0x39

    if-gt v2, v5, :cond_12

    const/16 v5, 0x30

    if-lt v2, v5, :cond_12

    .line 1467
    add-int/lit8 v3, v3, 0x1

    .line 1468
    array-length v5, v1

    if-lt v0, v5, :cond_a

    .line 1469
    iget-object v0, p0, Lcom/d/a/a/c/f;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0}, Lcom/d/a/a/e/i;->m()[C

    move-result-object v1

    .line 1470
    const/4 v0, 0x0

    .line 1472
    :cond_a
    add-int/lit8 v5, v0, 0x1

    aput-char v2, v1, v0

    .line 1473
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    iget v8, p0, Lcom/d/a/a/c/f;->e:I

    if-lt v0, v8, :cond_11

    invoke-virtual {p0}, Lcom/d/a/a/c/f;->y()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1474
    const/4 v4, 0x1

    move v0, v3

    move v1, v4

    move v3, v5

    .line 1480
    :goto_c
    if-nez v0, :cond_b

    .line 1481
    const-string/jumbo v4, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, v2, v4}, Lcom/d/a/a/c/f;->a(ILjava/lang/String;)V

    .line 1486
    :cond_b
    :goto_d
    if-nez v1, :cond_c

    .line 1487
    iget v1, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/d/a/a/c/f;->d:I

    .line 1488
    iget-object v1, p0, Lcom/d/a/a/c/f;->l:Lcom/d/a/a/c/d;

    invoke-virtual {v1}, Lcom/d/a/a/c/d;->b()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1489
    invoke-direct {p0, v2}, Lcom/d/a/a/c/f;->h(I)V

    .line 1492
    :cond_c
    iget-object v1, p0, Lcom/d/a/a/c/f;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v1, v3}, Lcom/d/a/a/e/i;->a(I)V

    .line 1494
    invoke-virtual {p0, p1, v7, v6, v0}, Lcom/d/a/a/c/f;->a(ZIII)Lcom/d/a/a/o;

    move-result-object v0

    goto/16 :goto_4

    .line 1426
    :cond_d
    iget-object v1, p0, Lcom/d/a/a/c/f;->N:[C

    iget v4, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lcom/d/a/a/c/f;->d:I

    aget-char v1, v1, v4

    .line 1427
    const/16 v4, 0x30

    if-lt v1, v4, :cond_17

    const/16 v4, 0x39

    if-le v1, v4, :cond_e

    move v4, v5

    move v5, v1

    .line 1428
    goto/16 :goto_6

    .line 1430
    :cond_e
    add-int/lit8 v0, v0, 0x1

    .line 1431
    array-length v4, v3

    if-lt v2, v4, :cond_16

    .line 1432
    iget-object v2, p0, Lcom/d/a/a/c/f;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v2}, Lcom/d/a/a/e/i;->m()[C

    move-result-object v3

    .line 1433
    const/4 v2, 0x0

    move v4, v2

    .line 1435
    :goto_e
    add-int/lit8 v2, v4, 0x1

    aput-char v1, v3, v4

    goto/16 :goto_5

    .line 1451
    :cond_f
    const-string/jumbo v0, "expected a digit for number exponent"

    .line 1452
    invoke-virtual {p0, v0}, Lcom/d/a/a/c/f;->e(Ljava/lang/String;)C

    move-result v5

    goto/16 :goto_8

    .line 1461
    :cond_10
    const-string/jumbo v0, "expected a digit for number exponent"

    .line 1462
    invoke-virtual {p0, v0}, Lcom/d/a/a/c/f;->e(Ljava/lang/String;)C

    move-result v0

    goto/16 :goto_a

    .line 1477
    :cond_11
    iget-object v0, p0, Lcom/d/a/a/c/f;->N:[C

    iget v2, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v8, v2, 0x1

    iput v8, p0, Lcom/d/a/a/c/f;->d:I

    aget-char v2, v0, v2

    move v0, v5

    goto/16 :goto_b

    :cond_12
    move v1, v4

    move v9, v3

    move v3, v0

    move v0, v9

    goto :goto_c

    :cond_13
    move v0, v2

    goto/16 :goto_9

    :cond_14
    move v0, v2

    move v2, v5

    goto/16 :goto_b

    :cond_15
    move v1, v4

    move v2, v5

    move v9, v3

    move v3, v0

    move v0, v9

    goto :goto_d

    :cond_16
    move v4, v2

    goto :goto_e

    :cond_17
    move v4, v5

    move v5, v1

    goto/16 :goto_6

    :cond_18
    move v6, v0

    move v0, v4

    move v4, v5

    move v5, v1

    move-object v1, v3

    goto/16 :goto_7

    :cond_19
    move v7, v3

    move v4, v0

    move-object v3, v1

    move v1, v2

    goto/16 :goto_3

    :cond_1a
    move v0, v1

    goto/16 :goto_0
.end method

.method private final h(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1585
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/d/a/a/c/f;->d:I

    .line 1586
    sparse-switch p1, :sswitch_data_0

    .line 1598
    invoke-virtual {p0, p1}, Lcom/d/a/a/c/f;->b(I)V

    .line 1599
    :goto_0
    :sswitch_0
    return-void

    .line 1591
    :sswitch_1
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->X()V

    goto :goto_0

    .line 1594
    :sswitch_2
    iget v0, p0, Lcom/d/a/a/c/f;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/d/a/a/c/f;->g:I

    .line 1595
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    iput v0, p0, Lcom/d/a/a/c/f;->h:I

    goto :goto_0

    .line 1586
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_2
        0xd -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private final i(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x20

    .line 2203
    const/16 v0, 0x2c

    if-eq p1, v0, :cond_0

    .line 2204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "was expecting comma to separate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/d/a/a/c/f;->l:Lcom/d/a/a/c/d;

    invoke-virtual {v1}, Lcom/d/a/a/c/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/d/a/a/c/f;->b(ILjava/lang/String;)V

    .line 2206
    :cond_0
    :goto_0
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    iget v1, p0, Lcom/d/a/a/c/f;->e:I

    if-ge v0, v1, :cond_6

    .line 2207
    iget-object v0, p0, Lcom/d/a/a/c/f;->N:[C

    iget v1, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/f;->d:I

    aget-char v0, v0, v1

    .line 2208
    if-le v0, v3, :cond_3

    .line 2209
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1

    const/16 v1, 0x23

    if-ne v0, v1, :cond_2

    .line 2210
    :cond_1
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/d/a/a/c/f;->d:I

    .line 2211
    invoke-direct {p0}, Lcom/d/a/a/c/f;->ac()I

    move-result v0

    .line 2226
    :cond_2
    :goto_1
    return v0

    .line 2215
    :cond_3
    if-ge v0, v3, :cond_0

    .line 2216
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 2217
    iget v0, p0, Lcom/d/a/a/c/f;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/d/a/a/c/f;->g:I

    .line 2218
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    iput v0, p0, Lcom/d/a/a/c/f;->h:I

    goto :goto_0

    .line 2219
    :cond_4
    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    .line 2220
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->X()V

    goto :goto_0

    .line 2221
    :cond_5
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 2222
    invoke-virtual {p0, v0}, Lcom/d/a/a/c/f;->c(I)V

    goto :goto_0

    .line 2226
    :cond_6
    invoke-direct {p0}, Lcom/d/a/a/c/f;->ac()I

    move-result v0

    goto :goto_1
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
    .line 212
    iget-object v0, p0, Lcom/d/a/a/c/f;->M:Ljava/io/Reader;

    if-eqz v0, :cond_2

    .line 213
    iget-object v0, p0, Lcom/d/a/a/c/f;->b:Lcom/d/a/a/b/c;

    invoke-virtual {v0}, Lcom/d/a/a/b/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/d/a/a/l;->a:Lcom/d/a/a/l;

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/f;->a(Lcom/d/a/a/l;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/f;->M:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 216
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/d/a/a/c/f;->M:Ljava/io/Reader;

    .line 218
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
    .line 228
    invoke-super {p0}, Lcom/d/a/a/a/b;->B()V

    .line 230
    iget-object v0, p0, Lcom/d/a/a/c/f;->Q:Lcom/d/a/a/d/c;

    invoke-virtual {v0}, Lcom/d/a/a/d/c;->b()V

    .line 232
    iget-boolean v0, p0, Lcom/d/a/a/c/f;->O:Z

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/d/a/a/c/f;->N:[C

    .line 234
    if-eqz v0, :cond_0

    .line 235
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/d/a/a/c/f;->N:[C

    .line 236
    iget-object v1, p0, Lcom/d/a/a/c/f;->b:Lcom/d/a/a/b/c;

    invoke-virtual {v1, v0}, Lcom/d/a/a/b/c;->a([C)V

    .line 239
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
    const/4 v1, 0x0

    .line 2425
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    iget v2, p0, Lcom/d/a/a/c/f;->e:I

    if-lt v0, v2, :cond_0

    .line 2426
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->y()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2427
    const-string/jumbo v0, " in character escape sequence"

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/f;->c(Ljava/lang/String;)V

    .line 2430
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/f;->N:[C

    iget v2, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/d/a/a/c/f;->d:I

    aget-char v0, v0, v2

    .line 2432
    sparse-switch v0, :sswitch_data_0

    .line 2455
    invoke-virtual {p0, v0}, Lcom/d/a/a/c/f;->a(C)C

    move-result v0

    .line 2473
    :goto_0
    :sswitch_0
    return v0

    .line 2435
    :sswitch_1
    const/16 v0, 0x8

    goto :goto_0

    .line 2437
    :sswitch_2
    const/16 v0, 0x9

    goto :goto_0

    .line 2439
    :sswitch_3
    const/16 v0, 0xa

    goto :goto_0

    .line 2441
    :sswitch_4
    const/16 v0, 0xc

    goto :goto_0

    .line 2443
    :sswitch_5
    const/16 v0, 0xd

    goto :goto_0

    :sswitch_6
    move v0, v1

    .line 2460
    :goto_1
    const/4 v2, 0x4

    if-ge v0, v2, :cond_3

    .line 2461
    iget v2, p0, Lcom/d/a/a/c/f;->d:I

    iget v3, p0, Lcom/d/a/a/c/f;->e:I

    if-lt v2, v3, :cond_1

    .line 2462
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->y()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2463
    const-string/jumbo v2, " in character escape sequence"

    invoke-virtual {p0, v2}, Lcom/d/a/a/c/f;->c(Ljava/lang/String;)V

    .line 2466
    :cond_1
    iget-object v2, p0, Lcom/d/a/a/c/f;->N:[C

    iget v3, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/d/a/a/c/f;->d:I

    aget-char v2, v2, v3

    .line 2467
    invoke-static {v2}, Lcom/d/a/a/b/a;->a(I)I

    move-result v3

    .line 2468
    if-gez v3, :cond_2

    .line 2469
    const-string/jumbo v4, "expected a hex-digit for character escape sequence"

    invoke-virtual {p0, v2, v4}, Lcom/d/a/a/c/f;->b(ILjava/lang/String;)V

    .line 2471
    :cond_2
    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v3

    .line 2460
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2473
    :cond_3
    int-to-char v0, v1

    goto :goto_0

    .line 2432
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x2f -> :sswitch_0
        0x5c -> :sswitch_0
        0x62 -> :sswitch_1
        0x66 -> :sswitch_4
        0x6e -> :sswitch_3
        0x72 -> :sswitch_5
        0x74 -> :sswitch_2
        0x75 -> :sswitch_6
    .end sparse-switch
.end method

.method protected final R()Lcom/d/a/a/o;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x39

    const/16 v7, 0x30

    const/4 v4, 0x1

    .line 1321
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    .line 1322
    add-int/lit8 v2, v0, -0x1

    .line 1323
    iget v6, p0, Lcom/d/a/a/c/f;->e:I

    .line 1325
    if-lt v0, v6, :cond_0

    .line 1326
    invoke-direct {p0, v4, v2}, Lcom/d/a/a/c/f;->b(ZI)Lcom/d/a/a/o;

    move-result-object v0

    .line 1364
    :goto_0
    return-object v0

    .line 1328
    :cond_0
    iget-object v1, p0, Lcom/d/a/a/c/f;->N:[C

    add-int/lit8 v3, v0, 0x1

    aget-char v0, v1, v0

    .line 1330
    if-gt v0, v8, :cond_1

    if-ge v0, v7, :cond_2

    .line 1331
    :cond_1
    iput v3, p0, Lcom/d/a/a/c/f;->d:I

    .line 1332
    invoke-virtual {p0, v0, v4}, Lcom/d/a/a/c/f;->a(IZ)Lcom/d/a/a/o;

    move-result-object v0

    goto :goto_0

    .line 1335
    :cond_2
    if-ne v0, v7, :cond_3

    .line 1336
    invoke-direct {p0, v4, v2}, Lcom/d/a/a/c/f;->b(ZI)Lcom/d/a/a/o;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v5, v4

    move v0, v3

    .line 1343
    :goto_1
    if-lt v0, v6, :cond_4

    .line 1344
    invoke-direct {p0, v4, v2}, Lcom/d/a/a/c/f;->b(ZI)Lcom/d/a/a/o;

    move-result-object v0

    goto :goto_0

    .line 1346
    :cond_4
    iget-object v1, p0, Lcom/d/a/a/c/f;->N:[C

    add-int/lit8 v3, v0, 0x1

    aget-char v1, v1, v0

    .line 1347
    if-lt v1, v7, :cond_5

    if-le v1, v8, :cond_7

    .line 1353
    :cond_5
    const/16 v0, 0x2e

    if-eq v1, v0, :cond_6

    const/16 v0, 0x65

    if-eq v1, v0, :cond_6

    const/16 v0, 0x45

    if-ne v1, v0, :cond_8

    .line 1354
    :cond_6
    iput v3, p0, Lcom/d/a/a/c/f;->d:I

    move-object v0, p0

    .line 1355
    invoke-direct/range {v0 .. v5}, Lcom/d/a/a/c/f;->a(IIIZI)Lcom/d/a/a/o;

    move-result-object v0

    goto :goto_0

    .line 1350
    :cond_7
    add-int/lit8 v5, v5, 0x1

    move v0, v3

    goto :goto_1

    .line 1357
    :cond_8
    add-int/lit8 v0, v3, -0x1

    .line 1358
    iput v0, p0, Lcom/d/a/a/c/f;->d:I

    .line 1359
    iget-object v3, p0, Lcom/d/a/a/c/f;->l:Lcom/d/a/a/c/d;

    invoke-virtual {v3}, Lcom/d/a/a/c/d;->b()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1360
    invoke-direct {p0, v1}, Lcom/d/a/a/c/f;->h(I)V

    .line 1362
    :cond_9
    sub-int/2addr v0, v2

    .line 1363
    iget-object v1, p0, Lcom/d/a/a/c/f;->n:Lcom/d/a/a/e/i;

    iget-object v3, p0, Lcom/d/a/a/c/f;->N:[C

    invoke-virtual {v1, v3, v2, v0}, Lcom/d/a/a/e/i;->a([CII)V

    .line 1364
    invoke-virtual {p0, v4, v5}, Lcom/d/a/a/c/f;->a(ZI)Lcom/d/a/a/o;

    move-result-object v0

    goto :goto_0
.end method

.method protected final S()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x22

    .line 1611
    iget v1, p0, Lcom/d/a/a/c/f;->d:I

    .line 1612
    iget v0, p0, Lcom/d/a/a/c/f;->R:I

    .line 1613
    sget-object v2, Lcom/d/a/a/c/f;->L:[I

    .line 1615
    :goto_0
    iget v3, p0, Lcom/d/a/a/c/f;->e:I

    if-ge v1, v3, :cond_1

    .line 1616
    iget-object v3, p0, Lcom/d/a/a/c/f;->N:[C

    aget-char v3, v3, v1

    .line 1617
    array-length v4, v2

    if-ge v3, v4, :cond_0

    aget v4, v2, v3

    if-eqz v4, :cond_0

    .line 1618
    if-ne v3, v5, :cond_1

    .line 1619
    iget v2, p0, Lcom/d/a/a/c/f;->d:I

    .line 1620
    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/d/a/a/c/f;->d:I

    .line 1621
    iget-object v3, p0, Lcom/d/a/a/c/f;->Q:Lcom/d/a/a/d/c;

    iget-object v4, p0, Lcom/d/a/a/c/f;->N:[C

    sub-int/2addr v1, v2

    invoke-virtual {v3, v4, v2, v1, v0}, Lcom/d/a/a/d/c;->a([CIII)Ljava/lang/String;

    move-result-object v0

    .line 1630
    :goto_1
    return-object v0

    .line 1625
    :cond_0
    mul-int/lit8 v0, v0, 0x21

    add-int/2addr v0, v3

    .line 1626
    add-int/lit8 v1, v1, 0x1

    .line 1627
    goto :goto_0

    .line 1628
    :cond_1
    iget v2, p0, Lcom/d/a/a/c/f;->d:I

    .line 1629
    iput v1, p0, Lcom/d/a/a/c/f;->d:I

    .line 1630
    invoke-direct {p0, v2, v0, v5}, Lcom/d/a/a/c/f;->a(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected T()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x27

    .line 1747
    iget v1, p0, Lcom/d/a/a/c/f;->d:I

    .line 1748
    iget v0, p0, Lcom/d/a/a/c/f;->R:I

    .line 1749
    iget v2, p0, Lcom/d/a/a/c/f;->e:I

    .line 1751
    if-ge v1, v2, :cond_2

    .line 1752
    sget-object v3, Lcom/d/a/a/c/f;->L:[I

    .line 1753
    array-length v4, v3

    .line 1756
    :cond_0
    iget-object v5, p0, Lcom/d/a/a/c/f;->N:[C

    aget-char v5, v5, v1

    .line 1757
    if-ne v5, v7, :cond_1

    .line 1758
    iget v2, p0, Lcom/d/a/a/c/f;->d:I

    .line 1759
    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/d/a/a/c/f;->d:I

    .line 1760
    iget-object v3, p0, Lcom/d/a/a/c/f;->Q:Lcom/d/a/a/d/c;

    iget-object v4, p0, Lcom/d/a/a/c/f;->N:[C

    sub-int/2addr v1, v2

    invoke-virtual {v3, v4, v2, v1, v0}, Lcom/d/a/a/d/c;->a([CIII)Ljava/lang/String;

    move-result-object v0

    .line 1773
    :goto_0
    return-object v0

    .line 1762
    :cond_1
    if-ge v5, v4, :cond_3

    aget v6, v3, v5

    if-eqz v6, :cond_3

    .line 1770
    :cond_2
    :goto_1
    iget v2, p0, Lcom/d/a/a/c/f;->d:I

    .line 1771
    iput v1, p0, Lcom/d/a/a/c/f;->d:I

    .line 1773
    invoke-direct {p0, v2, v0, v7}, Lcom/d/a/a/c/f;->a(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1765
    :cond_3
    mul-int/lit8 v0, v0, 0x21

    add-int/2addr v0, v5

    .line 1766
    add-int/lit8 v1, v1, 0x1

    .line 1767
    if-lt v1, v2, :cond_0

    goto :goto_1
.end method

.method protected U()Lcom/d/a/a/o;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x5c

    const/16 v5, 0x27

    .line 1829
    iget-object v0, p0, Lcom/d/a/a/c/f;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0}, Lcom/d/a/a/e/i;->k()[C

    move-result-object v1

    .line 1830
    iget-object v0, p0, Lcom/d/a/a/c/f;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0}, Lcom/d/a/a/e/i;->l()I

    move-result v0

    .line 1833
    :goto_0
    iget v2, p0, Lcom/d/a/a/c/f;->d:I

    iget v3, p0, Lcom/d/a/a/c/f;->e:I

    if-lt v2, v3, :cond_0

    .line 1834
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->y()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1835
    const-string/jumbo v2, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v2}, Lcom/d/a/a/c/f;->c(Ljava/lang/String;)V

    .line 1838
    :cond_0
    iget-object v2, p0, Lcom/d/a/a/c/f;->N:[C

    iget v3, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/d/a/a/c/f;->d:I

    aget-char v2, v2, v3

    .line 1840
    if-gt v2, v6, :cond_1

    .line 1841
    if-ne v2, v6, :cond_2

    .line 1846
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->N()C

    move-result v2

    .line 1857
    :cond_1
    :goto_1
    array-length v3, v1

    if-lt v0, v3, :cond_4

    .line 1858
    iget-object v0, p0, Lcom/d/a/a/c/f;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0}, Lcom/d/a/a/e/i;->m()[C

    move-result-object v1

    .line 1859
    const/4 v0, 0x0

    move v3, v0

    .line 1862
    :goto_2
    add-int/lit8 v0, v3, 0x1

    aput-char v2, v1, v3

    goto :goto_0

    .line 1847
    :cond_2
    if-gt v2, v5, :cond_1

    .line 1848
    if-ne v2, v5, :cond_3

    .line 1864
    iget-object v1, p0, Lcom/d/a/a/c/f;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v1, v0}, Lcom/d/a/a/e/i;->a(I)V

    .line 1865
    sget-object v0, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    return-object v0

    .line 1851
    :cond_3
    const/16 v3, 0x20

    if-ge v2, v3, :cond_1

    .line 1852
    const-string/jumbo v3, "string value"

    invoke-virtual {p0, v2, v3}, Lcom/d/a/a/c/f;->c(ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    move v3, v0

    goto :goto_2
.end method

.method protected V()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1951
    iget-object v0, p0, Lcom/d/a/a/c/f;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0}, Lcom/d/a/a/e/i;->j()[C

    move-result-object v1

    .line 1952
    iget-object v0, p0, Lcom/d/a/a/c/f;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0}, Lcom/d/a/a/e/i;->l()I

    move-result v0

    .line 1953
    sget-object v4, Lcom/d/a/a/c/f;->L:[I

    .line 1954
    array-length v5, v4

    .line 1957
    :goto_0
    iget v2, p0, Lcom/d/a/a/c/f;->d:I

    iget v3, p0, Lcom/d/a/a/c/f;->e:I

    if-lt v2, v3, :cond_0

    .line 1958
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->y()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1959
    const-string/jumbo v2, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v2}, Lcom/d/a/a/c/f;->c(Ljava/lang/String;)V

    .line 1962
    :cond_0
    iget-object v2, p0, Lcom/d/a/a/c/f;->N:[C

    iget v3, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v6, v3, 0x1

    iput v6, p0, Lcom/d/a/a/c/f;->d:I

    aget-char v2, v2, v3

    .line 1964
    if-ge v2, v5, :cond_2

    aget v3, v4, v2

    if-eqz v3, :cond_2

    .line 1965
    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    .line 1985
    iget-object v1, p0, Lcom/d/a/a/c/f;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v1, v0}, Lcom/d/a/a/e/i;->a(I)V

    .line 1986
    return-void

    .line 1967
    :cond_1
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_3

    .line 1972
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->N()C

    move-result v2

    .line 1978
    :cond_2
    :goto_1
    array-length v3, v1

    if-lt v0, v3, :cond_4

    .line 1979
    iget-object v0, p0, Lcom/d/a/a/c/f;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0}, Lcom/d/a/a/e/i;->m()[C

    move-result-object v1

    .line 1980
    const/4 v0, 0x0

    move v3, v0

    .line 1983
    :goto_2
    add-int/lit8 v0, v3, 0x1

    aput-char v2, v1, v3

    goto :goto_0

    .line 1973
    :cond_3
    const/16 v3, 0x20

    if-ge v2, v3, :cond_2

    .line 1974
    const-string/jumbo v3, "string value"

    invoke-virtual {p0, v2, v3}, Lcom/d/a/a/c/f;->c(ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    move v3, v0

    goto :goto_2
.end method

.method protected final W()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x5c

    const/16 v5, 0x22

    .line 1995
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/d/a/a/c/f;->S:Z

    .line 1997
    iget v1, p0, Lcom/d/a/a/c/f;->d:I

    .line 1998
    iget v0, p0, Lcom/d/a/a/c/f;->e:I

    .line 1999
    iget-object v3, p0, Lcom/d/a/a/c/f;->N:[C

    .line 2002
    :goto_0
    if-lt v1, v0, :cond_1

    .line 2003
    iput v1, p0, Lcom/d/a/a/c/f;->d:I

    .line 2004
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->y()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2005
    const-string/jumbo v0, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/f;->c(Ljava/lang/String;)V

    .line 2007
    :cond_0
    iget v1, p0, Lcom/d/a/a/c/f;->d:I

    .line 2008
    iget v0, p0, Lcom/d/a/a/c/f;->e:I

    .line 2010
    :cond_1
    add-int/lit8 v2, v1, 0x1

    aget-char v1, v3, v1

    .line 2012
    if-gt v1, v6, :cond_4

    .line 2013
    if-ne v1, v6, :cond_2

    .line 2018
    iput v2, p0, Lcom/d/a/a/c/f;->d:I

    .line 2019
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->N()C

    .line 2020
    iget v1, p0, Lcom/d/a/a/c/f;->d:I

    .line 2021
    iget v0, p0, Lcom/d/a/a/c/f;->e:I

    goto :goto_0

    .line 2022
    :cond_2
    if-gt v1, v5, :cond_4

    .line 2023
    if-ne v1, v5, :cond_3

    .line 2024
    iput v2, p0, Lcom/d/a/a/c/f;->d:I

    .line 2034
    return-void

    .line 2027
    :cond_3
    const/16 v4, 0x20

    if-ge v1, v4, :cond_4

    .line 2028
    iput v2, p0, Lcom/d/a/a/c/f;->d:I

    .line 2029
    const-string/jumbo v4, "string value"

    invoke-virtual {p0, v1, v4}, Lcom/d/a/a/c/f;->c(ILjava/lang/String;)V

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method protected final X()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2047
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    iget v1, p0, Lcom/d/a/a/c/f;->e:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/d/a/a/c/f;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2048
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/f;->N:[C

    iget v1, p0, Lcom/d/a/a/c/f;->d:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 2049
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/d/a/a/c/f;->d:I

    .line 2052
    :cond_1
    iget v0, p0, Lcom/d/a/a/c/f;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/d/a/a/c/f;->g:I

    .line 2053
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    iput v0, p0, Lcom/d/a/a/c/f;->h:I

    .line 2054
    return-void
.end method

.method public final a()Lcom/d/a/a/o;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x7d

    const/16 v3, 0x5d

    .line 592
    iget-object v0, p0, Lcom/d/a/a/c/f;->K:Lcom/d/a/a/o;

    sget-object v2, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v2, :cond_0

    .line 593
    invoke-direct {p0}, Lcom/d/a/a/c/f;->Y()Lcom/d/a/a/o;

    move-result-object v0

    .line 717
    :goto_0
    return-object v0

    .line 597
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/d/a/a/c/f;->A:I

    .line 598
    iget-boolean v0, p0, Lcom/d/a/a/c/f;->S:Z

    if-eqz v0, :cond_1

    .line 599
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->W()V

    .line 601
    :cond_1
    invoke-direct {p0}, Lcom/d/a/a/c/f;->ad()I

    move-result v0

    .line 602
    if-gez v0, :cond_2

    .line 606
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->close()V

    .line 607
    iput-object v1, p0, Lcom/d/a/a/c/f;->K:Lcom/d/a/a/o;

    move-object v0, v1

    goto :goto_0

    .line 610
    :cond_2
    iput-object v1, p0, Lcom/d/a/a/c/f;->r:[B

    .line 613
    if-ne v0, v3, :cond_4

    .line 614
    invoke-direct {p0}, Lcom/d/a/a/c/f;->am()V

    .line 615
    iget-object v1, p0, Lcom/d/a/a/c/f;->l:Lcom/d/a/a/c/d;

    invoke-virtual {v1}, Lcom/d/a/a/c/d;->a()Z

    move-result v1

    if-nez v1, :cond_3

    .line 616
    invoke-virtual {p0, v0, v4}, Lcom/d/a/a/c/f;->a(IC)V

    .line 618
    :cond_3
    iget-object v0, p0, Lcom/d/a/a/c/f;->l:Lcom/d/a/a/c/d;

    invoke-virtual {v0}, Lcom/d/a/a/c/d;->i()Lcom/d/a/a/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/c/f;->l:Lcom/d/a/a/c/d;

    .line 619
    sget-object v0, Lcom/d/a/a/o;->e:Lcom/d/a/a/o;

    iput-object v0, p0, Lcom/d/a/a/c/f;->K:Lcom/d/a/a/o;

    goto :goto_0

    .line 621
    :cond_4
    if-ne v0, v4, :cond_6

    .line 622
    invoke-direct {p0}, Lcom/d/a/a/c/f;->am()V

    .line 623
    iget-object v1, p0, Lcom/d/a/a/c/f;->l:Lcom/d/a/a/c/d;

    invoke-virtual {v1}, Lcom/d/a/a/c/d;->c()Z

    move-result v1

    if-nez v1, :cond_5

    .line 624
    invoke-virtual {p0, v0, v3}, Lcom/d/a/a/c/f;->a(IC)V

    .line 626
    :cond_5
    iget-object v0, p0, Lcom/d/a/a/c/f;->l:Lcom/d/a/a/c/d;

    invoke-virtual {v0}, Lcom/d/a/a/c/d;->i()Lcom/d/a/a/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/c/f;->l:Lcom/d/a/a/c/d;

    .line 627
    sget-object v0, Lcom/d/a/a/o;->c:Lcom/d/a/a/o;

    iput-object v0, p0, Lcom/d/a/a/c/f;->K:Lcom/d/a/a/o;

    goto :goto_0

    .line 631
    :cond_6
    iget-object v1, p0, Lcom/d/a/a/c/f;->l:Lcom/d/a/a/c/d;

    invoke-virtual {v1}, Lcom/d/a/a/c/d;->j()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 632
    invoke-direct {p0, v0}, Lcom/d/a/a/c/f;->i(I)I

    move-result v0

    .line 638
    :cond_7
    iget-object v1, p0, Lcom/d/a/a/c/f;->l:Lcom/d/a/a/c/d;

    invoke-virtual {v1}, Lcom/d/a/a/c/d;->c()Z

    move-result v1

    .line 639
    if-eqz v1, :cond_8

    .line 641
    invoke-direct {p0}, Lcom/d/a/a/c/f;->an()V

    .line 642
    const/16 v2, 0x22

    if-ne v0, v2, :cond_9

    invoke-virtual {p0}, Lcom/d/a/a/c/f;->S()Ljava/lang/String;

    move-result-object v0

    .line 643
    :goto_1
    iget-object v2, p0, Lcom/d/a/a/c/f;->l:Lcom/d/a/a/c/d;

    invoke-virtual {v2, v0}, Lcom/d/a/a/c/d;->a(Ljava/lang/String;)V

    .line 644
    sget-object v0, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    iput-object v0, p0, Lcom/d/a/a/c/f;->K:Lcom/d/a/a/o;

    .line 645
    invoke-direct {p0}, Lcom/d/a/a/c/f;->ab()I

    move-result v0

    .line 647
    :cond_8
    invoke-direct {p0}, Lcom/d/a/a/c/f;->am()V

    .line 653
    sparse-switch v0, :sswitch_data_0

    .line 708
    invoke-virtual {p0, v0}, Lcom/d/a/a/c/f;->g(I)Lcom/d/a/a/o;

    move-result-object v0

    .line 712
    :goto_2
    if-eqz v1, :cond_c

    .line 713
    iput-object v0, p0, Lcom/d/a/a/c/f;->m:Lcom/d/a/a/o;

    .line 714
    iget-object v0, p0, Lcom/d/a/a/c/f;->K:Lcom/d/a/a/o;

    goto/16 :goto_0

    .line 642
    :cond_9
    invoke-virtual {p0, v0}, Lcom/d/a/a/c/f;->f(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 655
    :sswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/d/a/a/c/f;->S:Z

    .line 656
    sget-object v0, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    goto :goto_2

    .line 659
    :sswitch_1
    if-nez v1, :cond_a

    .line 660
    iget-object v0, p0, Lcom/d/a/a/c/f;->l:Lcom/d/a/a/c/d;

    iget v2, p0, Lcom/d/a/a/c/f;->j:I

    iget v3, p0, Lcom/d/a/a/c/f;->k:I

    invoke-virtual {v0, v2, v3}, Lcom/d/a/a/c/d;->a(II)Lcom/d/a/a/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/c/f;->l:Lcom/d/a/a/c/d;

    .line 662
    :cond_a
    sget-object v0, Lcom/d/a/a/o;->d:Lcom/d/a/a/o;

    goto :goto_2

    .line 665
    :sswitch_2
    if-nez v1, :cond_b

    .line 666
    iget-object v0, p0, Lcom/d/a/a/c/f;->l:Lcom/d/a/a/c/d;

    iget v2, p0, Lcom/d/a/a/c/f;->j:I

    iget v3, p0, Lcom/d/a/a/c/f;->k:I

    invoke-virtual {v0, v2, v3}, Lcom/d/a/a/c/d;->b(II)Lcom/d/a/a/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/c/f;->l:Lcom/d/a/a/c/d;

    .line 668
    :cond_b
    sget-object v0, Lcom/d/a/a/o;->b:Lcom/d/a/a/o;

    goto :goto_2

    .line 674
    :sswitch_3
    const-string/jumbo v2, "expected a value"

    invoke-virtual {p0, v0, v2}, Lcom/d/a/a/c/f;->b(ILjava/lang/String;)V

    .line 676
    :sswitch_4
    invoke-direct {p0}, Lcom/d/a/a/c/f;->aj()V

    .line 677
    sget-object v0, Lcom/d/a/a/o;->k:Lcom/d/a/a/o;

    goto :goto_2

    .line 680
    :sswitch_5
    invoke-direct {p0}, Lcom/d/a/a/c/f;->ak()V

    .line 681
    sget-object v0, Lcom/d/a/a/o;->l:Lcom/d/a/a/o;

    goto :goto_2

    .line 684
    :sswitch_6
    invoke-direct {p0}, Lcom/d/a/a/c/f;->al()V

    .line 685
    sget-object v0, Lcom/d/a/a/o;->m:Lcom/d/a/a/o;

    goto :goto_2

    .line 693
    :sswitch_7
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->R()Lcom/d/a/a/o;

    move-result-object v0

    goto :goto_2

    .line 705
    :sswitch_8
    invoke-virtual {p0, v0}, Lcom/d/a/a/c/f;->e(I)Lcom/d/a/a/o;

    move-result-object v0

    goto :goto_2

    .line 716
    :cond_c
    iput-object v0, p0, Lcom/d/a/a/c/f;->K:Lcom/d/a/a/o;

    goto/16 :goto_0

    .line 653
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x2d -> :sswitch_7
        0x30 -> :sswitch_8
        0x31 -> :sswitch_8
        0x32 -> :sswitch_8
        0x33 -> :sswitch_8
        0x34 -> :sswitch_8
        0x35 -> :sswitch_8
        0x36 -> :sswitch_8
        0x37 -> :sswitch_8
        0x38 -> :sswitch_8
        0x39 -> :sswitch_8
        0x5b -> :sswitch_1
        0x5d -> :sswitch_3
        0x66 -> :sswitch_5
        0x6e -> :sswitch_6
        0x74 -> :sswitch_4
        0x7b -> :sswitch_2
        0x7d -> :sswitch_3
    .end sparse-switch
.end method

.method protected a(IZ)Lcom/d/a/a/o;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 1550
    const/16 v0, 0x49

    if-ne p1, v0, :cond_4

    .line 1551
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    iget v1, p0, Lcom/d/a/a/c/f;->e:I

    if-lt v0, v1, :cond_0

    .line 1552
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->y()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/d/a/a/c/f;->P()V

    .line 1554
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/f;->N:[C

    iget v1, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v6, v1, 0x1

    iput v6, p0, Lcom/d/a/a/c/f;->d:I

    aget-char p1, v0, v1

    .line 1555
    const/16 v0, 0x4e

    if-ne p1, v0, :cond_5

    .line 1556
    if-eqz p2, :cond_1

    const-string/jumbo v0, "-INF"

    .line 1557
    :goto_0
    invoke-virtual {p0, v0, v7}, Lcom/d/a/a/c/f;->a(Ljava/lang/String;I)V

    .line 1558
    sget-object v1, Lcom/d/a/a/l;->i:Lcom/d/a/a/l;

    invoke-virtual {p0, v1}, Lcom/d/a/a/c/f;->a(Lcom/d/a/a/l;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1559
    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {p0, v0, v2, v3}, Lcom/d/a/a/c/f;->a(Ljava/lang/String;D)Lcom/d/a/a/o;

    move-result-object v0

    .line 1572
    :goto_2
    return-object v0

    .line 1556
    :cond_1
    const-string/jumbo v0, "+INF"

    goto :goto_0

    :cond_2
    move-wide v2, v4

    .line 1559
    goto :goto_1

    .line 1561
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Non-standard token \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/f;->d(Ljava/lang/String;)V

    .line 1571
    :cond_4
    :goto_3
    const-string/jumbo v0, "expected digit (0-9) to follow minus sign, for valid numeric value"

    invoke-virtual {p0, p1, v0}, Lcom/d/a/a/c/f;->a(ILjava/lang/String;)V

    .line 1572
    const/4 v0, 0x0

    goto :goto_2

    .line 1562
    :cond_5
    const/16 v0, 0x6e

    if-ne p1, v0, :cond_4

    .line 1563
    if-eqz p2, :cond_6

    const-string/jumbo v0, "-Infinity"

    .line 1564
    :goto_4
    invoke-virtual {p0, v0, v7}, Lcom/d/a/a/c/f;->a(Ljava/lang/String;I)V

    .line 1565
    sget-object v1, Lcom/d/a/a/l;->i:Lcom/d/a/a/l;

    invoke-virtual {p0, v1}, Lcom/d/a/a/c/f;->a(Lcom/d/a/a/l;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1566
    if-eqz p2, :cond_7

    :goto_5
    invoke-virtual {p0, v0, v2, v3}, Lcom/d/a/a/c/f;->a(Ljava/lang/String;D)Lcom/d/a/a/o;

    move-result-object v0

    goto :goto_2

    .line 1563
    :cond_6
    const-string/jumbo v0, "+Infinity"

    goto :goto_4

    :cond_7
    move-wide v2, v4

    .line 1566
    goto :goto_5

    .line 1568
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Non-standard token \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/f;->d(Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected final a(Lcom/d/a/a/o;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    if-nez p1, :cond_0

    .line 304
    const/4 v0, 0x0

    .line 316
    :goto_0
    return-object v0

    .line 306
    :cond_0
    invoke-virtual {p1}, Lcom/d/a/a/o;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 316
    invoke-virtual {p1}, Lcom/d/a/a/o;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 308
    :pswitch_0
    iget-object v0, p0, Lcom/d/a/a/c/f;->l:Lcom/d/a/a/c/d;

    invoke-virtual {v0}, Lcom/d/a/a/c/d;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 314
    :pswitch_1
    iget-object v0, p0, Lcom/d/a/a/c/f;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0}, Lcom/d/a/a/e/i;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 306
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected final a(Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2529
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2532
    :cond_0
    iget v1, p0, Lcom/d/a/a/c/f;->d:I

    iget v2, p0, Lcom/d/a/a/c/f;->e:I

    if-lt v1, v2, :cond_1

    .line 2533
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->y()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2534
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/d/a/a/c/f;->f(Ljava/lang/String;)V

    .line 2537
    :cond_1
    iget-object v1, p0, Lcom/d/a/a/c/f;->N:[C

    iget v2, p0, Lcom/d/a/a/c/f;->d:I

    aget-char v1, v1, v2

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_2

    .line 2538
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/d/a/a/c/f;->f(Ljava/lang/String;)V

    .line 2540
    :cond_2
    iget v1, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/d/a/a/c/f;->d:I

    .line 2541
    add-int/lit8 p2, p2, 0x1

    if-lt p2, v0, :cond_0

    .line 2544
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    iget v1, p0, Lcom/d/a/a/c/f;->e:I

    if-lt v0, v1, :cond_4

    .line 2545
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->y()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2557
    :cond_3
    :goto_0
    return-void

    .line 2549
    :cond_4
    iget-object v0, p0, Lcom/d/a/a/c/f;->N:[C

    iget v1, p0, Lcom/d/a/a/c/f;->d:I

    aget-char v0, v0, v1

    .line 2550
    const/16 v1, 0x30

    if-lt v0, v1, :cond_3

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_3

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_3

    .line 2554
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2555
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/f;->f(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2742
    :goto_0
    iget v1, p0, Lcom/d/a/a/c/f;->d:I

    iget v2, p0, Lcom/d/a/a/c/f;->e:I

    if-lt v1, v2, :cond_1

    .line 2743
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->y()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2754
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

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/f;->d(Ljava/lang/String;)V

    .line 2755
    return-void

    .line 2747
    :cond_1
    iget-object v1, p0, Lcom/d/a/a/c/f;->N:[C

    iget v2, p0, Lcom/d/a/a/c/f;->d:I

    aget-char v1, v1, v2

    .line 2748
    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2751
    iget v2, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/d/a/a/c/f;->d:I

    .line 2752
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
    .line 403
    iget-object v0, p0, Lcom/d/a/a/c/f;->K:Lcom/d/a/a/o;

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/d/a/a/c/f;->K:Lcom/d/a/a/o;

    sget-object v1, Lcom/d/a/a/o;->g:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/d/a/a/c/f;->r:[B

    if-nez v0, :cond_1

    .line 405
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Current token ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/d/a/a/c/f;->K:Lcom/d/a/a/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/f;->d(Ljava/lang/String;)V

    .line 410
    :cond_1
    iget-boolean v0, p0, Lcom/d/a/a/c/f;->S:Z

    if-eqz v0, :cond_3

    .line 412
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/d/a/a/c/f;->b(Lcom/d/a/a/a;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/c/f;->r:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/d/a/a/c/f;->S:Z

    .line 428
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/d/a/a/c/f;->r:[B

    return-object v0

    .line 413
    :catch_0
    move-exception v0

    .line 414
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

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/f;->a(Ljava/lang/String;)Lcom/d/a/a/j;

    move-result-object v0

    throw v0

    .line 421
    :cond_3
    iget-object v0, p0, Lcom/d/a/a/c/f;->r:[B

    if-nez v0, :cond_2

    .line 423
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->E()Lcom/d/a/a/e/b;

    move-result-object v0

    .line 424
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Lcom/d/a/a/c/f;->a(Ljava/lang/String;Lcom/d/a/a/e/b;Lcom/d/a/a/a;)V

    .line 425
    invoke-virtual {v0}, Lcom/d/a/a/e/b;->b()[B

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/c/f;->r:[B

    goto :goto_0
.end method

.method protected b(Lcom/d/a/a/a;)[B
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

    .line 2573
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->E()Lcom/d/a/a/e/b;

    move-result-object v2

    .line 2580
    :cond_0
    :goto_0
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    iget v1, p0, Lcom/d/a/a/c/f;->e:I

    if-lt v0, v1, :cond_1

    .line 2581
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->x()V

    .line 2583
    :cond_1
    iget-object v0, p0, Lcom/d/a/a/c/f;->N:[C

    iget v1, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/d/a/a/c/f;->d:I

    aget-char v1, v0, v1

    .line 2584
    const/16 v0, 0x20

    if-le v1, v0, :cond_0

    .line 2585
    invoke-virtual {p1, v1}, Lcom/d/a/a/a;->b(C)I

    move-result v0

    .line 2586
    if-gez v0, :cond_3

    .line 2587
    if-ne v1, v6, :cond_2

    .line 2588
    invoke-virtual {v2}, Lcom/d/a/a/e/b;->b()[B

    move-result-object v0

    .line 2657
    :goto_1
    return-object v0

    .line 2590
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/d/a/a/c/f;->a(Lcom/d/a/a/a;CI)I

    move-result v0

    .line 2591
    if-ltz v0, :cond_0

    .line 2599
    :cond_3
    iget v1, p0, Lcom/d/a/a/c/f;->d:I

    iget v3, p0, Lcom/d/a/a/c/f;->e:I

    if-lt v1, v3, :cond_4

    .line 2600
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->x()V

    .line 2602
    :cond_4
    iget-object v1, p0, Lcom/d/a/a/c/f;->N:[C

    iget v3, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/d/a/a/c/f;->d:I

    aget-char v3, v1, v3

    .line 2603
    invoke-virtual {p1, v3}, Lcom/d/a/a/a;->b(C)I

    move-result v1

    .line 2604
    if-gez v1, :cond_5

    .line 2605
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v3, v1}, Lcom/d/a/a/c/f;->a(Lcom/d/a/a/a;CI)I

    move-result v1

    .line 2607
    :cond_5
    shl-int/lit8 v0, v0, 0x6

    or-int/2addr v1, v0

    .line 2610
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    iget v3, p0, Lcom/d/a/a/c/f;->e:I

    if-lt v0, v3, :cond_6

    .line 2611
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->x()V

    .line 2613
    :cond_6
    iget-object v0, p0, Lcom/d/a/a/c/f;->N:[C

    iget v3, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/d/a/a/c/f;->d:I

    aget-char v3, v0, v3

    .line 2614
    invoke-virtual {p1, v3}, Lcom/d/a/a/a;->b(C)I

    move-result v0

    .line 2617
    if-gez v0, :cond_b

    .line 2618
    if-eq v0, v5, :cond_8

    .line 2620
    if-ne v3, v6, :cond_7

    invoke-virtual {p1}, Lcom/d/a/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2621
    shr-int/lit8 v0, v1, 0x4

    .line 2622
    invoke-virtual {v2, v0}, Lcom/d/a/a/e/b;->a(I)V

    .line 2623
    invoke-virtual {v2}, Lcom/d/a/a/e/b;->b()[B

    move-result-object v0

    goto :goto_1

    .line 2625
    :cond_7
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v3, v0}, Lcom/d/a/a/c/f;->a(Lcom/d/a/a/a;CI)I

    move-result v0

    .line 2627
    :cond_8
    if-ne v0, v5, :cond_b

    .line 2629
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    iget v3, p0, Lcom/d/a/a/c/f;->e:I

    if-lt v0, v3, :cond_9

    .line 2630
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->x()V

    .line 2632
    :cond_9
    iget-object v0, p0, Lcom/d/a/a/c/f;->N:[C

    iget v3, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/d/a/a/c/f;->d:I

    aget-char v0, v0, v3

    .line 2633
    invoke-virtual {p1, v0}, Lcom/d/a/a/a;->a(C)Z

    move-result v3

    if-nez v3, :cond_a

    .line 2634
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

    invoke-virtual {p0, p1, v0, v7, v1}, Lcom/d/a/a/c/f;->a(Lcom/d/a/a/a;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 2637
    :cond_a
    shr-int/lit8 v0, v1, 0x4

    .line 2638
    invoke-virtual {v2, v0}, Lcom/d/a/a/e/b;->a(I)V

    goto/16 :goto_0

    .line 2644
    :cond_b
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v0

    .line 2646
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    iget v3, p0, Lcom/d/a/a/c/f;->e:I

    if-lt v0, v3, :cond_c

    .line 2647
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->x()V

    .line 2649
    :cond_c
    iget-object v0, p0, Lcom/d/a/a/c/f;->N:[C

    iget v3, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/d/a/a/c/f;->d:I

    aget-char v3, v0, v3

    .line 2650
    invoke-virtual {p1, v3}, Lcom/d/a/a/a;->b(C)I

    move-result v0

    .line 2651
    if-gez v0, :cond_f

    .line 2652
    if-eq v0, v5, :cond_e

    .line 2654
    if-ne v3, v6, :cond_d

    invoke-virtual {p1}, Lcom/d/a/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2655
    shr-int/lit8 v0, v1, 0x2

    .line 2656
    invoke-virtual {v2, v0}, Lcom/d/a/a/e/b;->b(I)V

    .line 2657
    invoke-virtual {v2}, Lcom/d/a/a/e/b;->b()[B

    move-result-object v0

    goto/16 :goto_1

    .line 2659
    :cond_d
    invoke-virtual {p0, p1, v3, v7}, Lcom/d/a/a/c/f;->a(Lcom/d/a/a/a;CI)I

    move-result v0

    .line 2661
    :cond_e
    if-ne v0, v5, :cond_f

    .line 2667
    shr-int/lit8 v0, v1, 0x2

    .line 2668
    invoke-virtual {v2, v0}, Lcom/d/a/a/e/b;->b(I)V

    goto/16 :goto_0

    .line 2674
    :cond_f
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v1

    .line 2675
    invoke-virtual {v2, v0}, Lcom/d/a/a/e/b;->c(I)V

    goto/16 :goto_0
.end method

.method protected e(Ljava/lang/String;)C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    iget v1, p0, Lcom/d/a/a/c/f;->e:I

    if-lt v0, v1, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->y()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/d/a/a/c/f;->c(Ljava/lang/String;)V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/f;->N:[C

    iget v1, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/f;->d:I

    aget-char v0, v0, v1

    return v0
.end method

.method public e()Lcom/d/a/a/i;
    .locals 10

    .prologue
    const-wide/16 v8, 0x1

    const-wide/16 v2, -0x1

    .line 2688
    iget-object v0, p0, Lcom/d/a/a/c/f;->b:Lcom/d/a/a/b/c;

    invoke-virtual {v0}, Lcom/d/a/a/b/c;->a()Ljava/lang/Object;

    move-result-object v1

    .line 2689
    iget-object v0, p0, Lcom/d/a/a/c/f;->K:Lcom/d/a/a/o;

    sget-object v4, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v4, :cond_0

    .line 2690
    iget-wide v4, p0, Lcom/d/a/a/c/f;->f:J

    iget-wide v6, p0, Lcom/d/a/a/c/f;->T:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    .line 2691
    new-instance v0, Lcom/d/a/a/i;

    iget v6, p0, Lcom/d/a/a/c/f;->U:I

    iget v7, p0, Lcom/d/a/a/c/f;->V:I

    invoke-direct/range {v0 .. v7}, Lcom/d/a/a/i;-><init>(Ljava/lang/Object;JJII)V

    .line 2694
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/d/a/a/i;

    iget-wide v4, p0, Lcom/d/a/a/c/f;->i:J

    sub-long/2addr v4, v8

    iget v6, p0, Lcom/d/a/a/c/f;->j:I

    iget v7, p0, Lcom/d/a/a/c/f;->k:I

    invoke-direct/range {v0 .. v7}, Lcom/d/a/a/i;-><init>(Ljava/lang/Object;JJII)V

    goto :goto_0
.end method

.method protected final e(I)Lcom/d/a/a/o;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x30

    const/4 v4, 0x0

    .line 1209
    iget v3, p0, Lcom/d/a/a/c/f;->d:I

    .line 1210
    add-int/lit8 v2, v3, -0x1

    .line 1211
    iget v6, p0, Lcom/d/a/a/c/f;->e:I

    .line 1214
    if-ne p1, v7, :cond_0

    .line 1215
    invoke-direct {p0, v4, v2}, Lcom/d/a/a/c/f;->b(ZI)Lcom/d/a/a/o;

    move-result-object v0

    .line 1252
    :goto_0
    return-object v0

    .line 1224
    :cond_0
    const/4 v5, 0x1

    move v0, v3

    .line 1229
    :goto_1
    if-lt v0, v6, :cond_1

    .line 1230
    iput v2, p0, Lcom/d/a/a/c/f;->d:I

    .line 1231
    invoke-direct {p0, v4, v2}, Lcom/d/a/a/c/f;->b(ZI)Lcom/d/a/a/o;

    move-result-object v0

    goto :goto_0

    .line 1233
    :cond_1
    iget-object v1, p0, Lcom/d/a/a/c/f;->N:[C

    add-int/lit8 v3, v0, 0x1

    aget-char v1, v1, v0

    .line 1234
    if-lt v1, v7, :cond_2

    const/16 v0, 0x39

    if-le v1, v0, :cond_4

    .line 1239
    :cond_2
    const/16 v0, 0x2e

    if-eq v1, v0, :cond_3

    const/16 v0, 0x65

    if-eq v1, v0, :cond_3

    const/16 v0, 0x45

    if-ne v1, v0, :cond_5

    .line 1240
    :cond_3
    iput v3, p0, Lcom/d/a/a/c/f;->d:I

    move-object v0, p0

    .line 1241
    invoke-direct/range {v0 .. v5}, Lcom/d/a/a/c/f;->a(IIIZI)Lcom/d/a/a/o;

    move-result-object v0

    goto :goto_0

    .line 1237
    :cond_4
    add-int/lit8 v5, v5, 0x1

    move v0, v3

    goto :goto_1

    .line 1244
    :cond_5
    add-int/lit8 v0, v3, -0x1

    .line 1245
    iput v0, p0, Lcom/d/a/a/c/f;->d:I

    .line 1247
    iget-object v3, p0, Lcom/d/a/a/c/f;->l:Lcom/d/a/a/c/d;

    invoke-virtual {v3}, Lcom/d/a/a/c/d;->b()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1248
    invoke-direct {p0, v1}, Lcom/d/a/a/c/f;->h(I)V

    .line 1250
    :cond_6
    sub-int/2addr v0, v2

    .line 1251
    iget-object v1, p0, Lcom/d/a/a/c/f;->n:Lcom/d/a/a/e/i;

    iget-object v3, p0, Lcom/d/a/a/c/f;->N:[C

    invoke-virtual {v1, v3, v2, v0}, Lcom/d/a/a/e/i;->a([CII)V

    .line 1252
    invoke-virtual {p0, v4, v5}, Lcom/d/a/a/c/f;->a(ZI)Lcom/d/a/a/o;

    move-result-object v0

    goto :goto_0
.end method

.method public f()Lcom/d/a/a/i;
    .locals 10

    .prologue
    .line 2700
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    iget v1, p0, Lcom/d/a/a/c/f;->h:I

    sub-int/2addr v0, v1

    add-int/lit8 v7, v0, 0x1

    .line 2701
    new-instance v0, Lcom/d/a/a/i;

    iget-object v1, p0, Lcom/d/a/a/c/f;->b:Lcom/d/a/a/b/c;

    invoke-virtual {v1}, Lcom/d/a/a/b/c;->a()Ljava/lang/Object;

    move-result-object v1

    const-wide/16 v2, -0x1

    iget-wide v4, p0, Lcom/d/a/a/c/f;->f:J

    iget v6, p0, Lcom/d/a/a/c/f;->d:I

    int-to-long v8, v6

    add-long/2addr v4, v8

    iget v6, p0, Lcom/d/a/a/c/f;->g:I

    invoke-direct/range {v0 .. v7}, Lcom/d/a/a/i;-><init>(Ljava/lang/Object;JJII)V

    return-object v0
.end method

.method protected f(I)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1696
    const/16 v0, 0x27

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/d/a/a/l;->e:Lcom/d/a/a/l;

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/f;->a(Lcom/d/a/a/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1697
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->T()Ljava/lang/String;

    move-result-object v0

    .line 1741
    :goto_0
    return-object v0

    .line 1700
    :cond_0
    sget-object v0, Lcom/d/a/a/l;->d:Lcom/d/a/a/l;

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/f;->a(Lcom/d/a/a/l;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1701
    const-string/jumbo v0, "was expecting double-quote to start field name"

    invoke-virtual {p0, p1, v0}, Lcom/d/a/a/c/f;->b(ILjava/lang/String;)V

    .line 1703
    :cond_1
    invoke-static {}, Lcom/d/a/a/b/a;->c()[I

    move-result-object v2

    .line 1704
    array-length v3, v2

    .line 1709
    if-ge p1, v3, :cond_5

    .line 1710
    aget v0, v2, p1

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 1714
    :goto_1
    if-nez v0, :cond_2

    .line 1715
    const-string/jumbo v0, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    invoke-virtual {p0, p1, v0}, Lcom/d/a/a/c/f;->b(ILjava/lang/String;)V

    .line 1717
    :cond_2
    iget v1, p0, Lcom/d/a/a/c/f;->d:I

    .line 1718
    iget v0, p0, Lcom/d/a/a/c/f;->R:I

    .line 1719
    iget v4, p0, Lcom/d/a/a/c/f;->e:I

    .line 1721
    if-ge v1, v4, :cond_8

    .line 1723
    :cond_3
    iget-object v5, p0, Lcom/d/a/a/c/f;->N:[C

    aget-char v5, v5, v1

    .line 1724
    if-ge v5, v3, :cond_6

    .line 1725
    aget v6, v2, v5

    if-eqz v6, :cond_7

    .line 1726
    iget v2, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v2, v2, -0x1

    .line 1727
    iput v1, p0, Lcom/d/a/a/c/f;->d:I

    .line 1728
    iget-object v3, p0, Lcom/d/a/a/c/f;->Q:Lcom/d/a/a/d/c;

    iget-object v4, p0, Lcom/d/a/a/c/f;->N:[C

    sub-int/2addr v1, v2

    invoke-virtual {v3, v4, v2, v1, v0}, Lcom/d/a/a/d/c;->a([CIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1710
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 1712
    :cond_5
    int-to-char v0, p1

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    goto :goto_1

    .line 1730
    :cond_6
    int-to-char v6, v5

    invoke-static {v6}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1731
    iget v2, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v2, v2, -0x1

    .line 1732
    iput v1, p0, Lcom/d/a/a/c/f;->d:I

    .line 1733
    iget-object v3, p0, Lcom/d/a/a/c/f;->Q:Lcom/d/a/a/d/c;

    iget-object v4, p0, Lcom/d/a/a/c/f;->N:[C

    sub-int/2addr v1, v2

    invoke-virtual {v3, v4, v2, v1, v0}, Lcom/d/a/a/d/c;->a([CIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1735
    :cond_7
    mul-int/lit8 v0, v0, 0x21

    add-int/2addr v0, v5

    .line 1736
    add-int/lit8 v1, v1, 0x1

    .line 1737
    if-lt v1, v4, :cond_3

    .line 1739
    :cond_8
    iget v3, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v3, v3, -0x1

    .line 1740
    iput v1, p0, Lcom/d/a/a/c/f;->d:I

    .line 1741
    invoke-direct {p0, v3, v0, v2}, Lcom/d/a/a/c/f;->a(II[I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected f(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2731
    const-string/jumbo v0, "\'null\', \'true\', \'false\' or NaN"

    invoke-virtual {p0, p1, v0}, Lcom/d/a/a/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2732
    return-void
.end method

.method protected g(I)Lcom/d/a/a/o;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1783
    sparse-switch p1, :sswitch_data_0

    .line 1819
    :cond_0
    :goto_0
    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1820
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

    invoke-virtual {p0, v0, v1}, Lcom/d/a/a/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    :cond_1
    const-string/jumbo v0, "expected a valid value (number, String, array, object, \'true\', \'false\' or \'null\')"

    invoke-virtual {p0, p1, v0}, Lcom/d/a/a/c/f;->b(ILjava/lang/String;)V

    .line 1824
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 1792
    :sswitch_0
    sget-object v0, Lcom/d/a/a/l;->e:Lcom/d/a/a/l;

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/f;->a(Lcom/d/a/a/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1793
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->U()Lcom/d/a/a/o;

    move-result-object v0

    goto :goto_1

    .line 1797
    :sswitch_1
    const-string/jumbo v0, "NaN"

    invoke-virtual {p0, v0, v1}, Lcom/d/a/a/c/f;->a(Ljava/lang/String;I)V

    .line 1798
    sget-object v0, Lcom/d/a/a/l;->i:Lcom/d/a/a/l;

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/f;->a(Lcom/d/a/a/l;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1799
    const-string/jumbo v0, "NaN"

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p0, v0, v2, v3}, Lcom/d/a/a/c/f;->a(Ljava/lang/String;D)Lcom/d/a/a/o;

    move-result-object v0

    goto :goto_1

    .line 1801
    :cond_2
    const-string/jumbo v0, "Non-standard token \'NaN\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/f;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 1804
    :sswitch_2
    const-string/jumbo v0, "Infinity"

    invoke-virtual {p0, v0, v1}, Lcom/d/a/a/c/f;->a(Ljava/lang/String;I)V

    .line 1805
    sget-object v0, Lcom/d/a/a/l;->i:Lcom/d/a/a/l;

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/f;->a(Lcom/d/a/a/l;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1806
    const-string/jumbo v0, "Infinity"

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-virtual {p0, v0, v2, v3}, Lcom/d/a/a/c/f;->a(Ljava/lang/String;D)Lcom/d/a/a/o;

    move-result-object v0

    goto :goto_1

    .line 1808
    :cond_3
    const-string/jumbo v0, "Non-standard token \'Infinity\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/f;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 1811
    :sswitch_3
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    iget v1, p0, Lcom/d/a/a/c/f;->e:I

    if-lt v0, v1, :cond_4

    .line 1812
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->y()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1813
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->P()V

    .line 1816
    :cond_4
    iget-object v0, p0, Lcom/d/a/a/c/f;->N:[C

    iget v1, p0, Lcom/d/a/a/c/f;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/f;->d:I

    aget-char v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/d/a/a/c/f;->a(IZ)Lcom/d/a/a/o;

    move-result-object v0

    goto :goto_1

    .line 1783
    nop

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_0
        0x2b -> :sswitch_3
        0x49 -> :sswitch_2
        0x4e -> :sswitch_1
    .end sparse-switch
.end method

.method public final g()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lcom/d/a/a/c/f;->K:Lcom/d/a/a/o;

    .line 257
    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_1

    .line 258
    iget-boolean v0, p0, Lcom/d/a/a/c/f;->S:Z

    if-eqz v0, :cond_0

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/d/a/a/c/f;->S:Z

    .line 260
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->z()V

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/f;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0}, Lcom/d/a/a/e/i;->f()Ljava/lang/String;

    move-result-object v0

    .line 264
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/d/a/a/c/f;->a(Lcom/d/a/a/o;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final h()[C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 323
    iget-object v0, p0, Lcom/d/a/a/c/f;->K:Lcom/d/a/a/o;

    if-eqz v0, :cond_4

    .line 324
    iget-object v0, p0, Lcom/d/a/a/c/f;->K:Lcom/d/a/a/o;

    invoke-virtual {v0}, Lcom/d/a/a/o;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 348
    iget-object v0, p0, Lcom/d/a/a/c/f;->K:Lcom/d/a/a/o;

    invoke-virtual {v0}, Lcom/d/a/a/o;->c()[C

    move-result-object v0

    .line 351
    :goto_0
    return-object v0

    .line 326
    :pswitch_0
    iget-boolean v0, p0, Lcom/d/a/a/c/f;->p:Z

    if-nez v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/d/a/a/c/f;->l:Lcom/d/a/a/c/d;

    invoke-virtual {v0}, Lcom/d/a/a/c/d;->g()Ljava/lang/String;

    move-result-object v0

    .line 328
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 329
    iget-object v2, p0, Lcom/d/a/a/c/f;->o:[C

    if-nez v2, :cond_2

    .line 330
    iget-object v2, p0, Lcom/d/a/a/c/f;->b:Lcom/d/a/a/b/c;

    invoke-virtual {v2, v1}, Lcom/d/a/a/b/c;->b(I)[C

    move-result-object v2

    iput-object v2, p0, Lcom/d/a/a/c/f;->o:[C

    .line 334
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/d/a/a/c/f;->o:[C

    invoke-virtual {v0, v3, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/d/a/a/c/f;->p:Z

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/d/a/a/c/f;->o:[C

    goto :goto_0

    .line 331
    :cond_2
    iget-object v2, p0, Lcom/d/a/a/c/f;->o:[C

    array-length v2, v2

    if-ge v2, v1, :cond_0

    .line 332
    new-array v2, v1, [C

    iput-object v2, p0, Lcom/d/a/a/c/f;->o:[C

    goto :goto_1

    .line 339
    :pswitch_1
    iget-boolean v0, p0, Lcom/d/a/a/c/f;->S:Z

    if-eqz v0, :cond_3

    .line 340
    iput-boolean v3, p0, Lcom/d/a/a/c/f;->S:Z

    .line 341
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->z()V

    .line 346
    :cond_3
    :pswitch_2
    iget-object v0, p0, Lcom/d/a/a/c/f;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0}, Lcom/d/a/a/e/i;->e()[C

    move-result-object v0

    goto :goto_0

    .line 351
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 324
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final i()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 357
    iget-object v1, p0, Lcom/d/a/a/c/f;->K:Lcom/d/a/a/o;

    if-eqz v1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/d/a/a/c/f;->K:Lcom/d/a/a/o;

    invoke-virtual {v1}, Lcom/d/a/a/o;->a()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 371
    iget-object v0, p0, Lcom/d/a/a/c/f;->K:Lcom/d/a/a/o;

    invoke-virtual {v0}, Lcom/d/a/a/o;->c()[C

    move-result-object v0

    array-length v0, v0

    .line 374
    :cond_0
    :goto_0
    return v0

    .line 360
    :pswitch_0
    iget-object v0, p0, Lcom/d/a/a/c/f;->l:Lcom/d/a/a/c/d;

    invoke-virtual {v0}, Lcom/d/a/a/c/d;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 362
    :pswitch_1
    iget-boolean v1, p0, Lcom/d/a/a/c/f;->S:Z

    if-eqz v1, :cond_1

    .line 363
    iput-boolean v0, p0, Lcom/d/a/a/c/f;->S:Z

    .line 364
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->z()V

    .line 369
    :cond_1
    :pswitch_2
    iget-object v0, p0, Lcom/d/a/a/c/f;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0}, Lcom/d/a/a/e/i;->c()I

    move-result v0

    goto :goto_0

    .line 358
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final j()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 381
    iget-object v1, p0, Lcom/d/a/a/c/f;->K:Lcom/d/a/a/o;

    if-eqz v1, :cond_0

    .line 382
    iget-object v1, p0, Lcom/d/a/a/c/f;->K:Lcom/d/a/a/o;

    invoke-virtual {v1}, Lcom/d/a/a/o;->a()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 397
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 386
    :pswitch_1
    iget-boolean v1, p0, Lcom/d/a/a/c/f;->S:Z

    if-eqz v1, :cond_1

    .line 387
    iput-boolean v0, p0, Lcom/d/a/a/c/f;->S:Z

    .line 388
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->z()V

    .line 393
    :cond_1
    :pswitch_2
    iget-object v0, p0, Lcom/d/a/a/c/f;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0}, Lcom/d/a/a/e/i;->d()I

    move-result v0

    goto :goto_0

    .line 382
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected y()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 169
    iget v1, p0, Lcom/d/a/a/c/f;->e:I

    .line 171
    iget-wide v2, p0, Lcom/d/a/a/c/f;->f:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/d/a/a/c/f;->f:J

    .line 172
    iget v2, p0, Lcom/d/a/a/c/f;->h:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/d/a/a/c/f;->h:I

    .line 177
    iget-wide v2, p0, Lcom/d/a/a/c/f;->T:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/d/a/a/c/f;->T:J

    .line 179
    iget-object v1, p0, Lcom/d/a/a/c/f;->M:Ljava/io/Reader;

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/d/a/a/c/f;->M:Ljava/io/Reader;

    iget-object v2, p0, Lcom/d/a/a/c/f;->N:[C

    iget-object v3, p0, Lcom/d/a/a/c/f;->N:[C

    array-length v3, v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .line 181
    if-lez v1, :cond_1

    .line 182
    iput v0, p0, Lcom/d/a/a/c/f;->d:I

    .line 183
    iput v1, p0, Lcom/d/a/a/c/f;->e:I

    .line 184
    const/4 v0, 0x1

    .line 193
    :cond_0
    return v0

    .line 187
    :cond_1
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->A()V

    .line 189
    if-nez v1, :cond_0

    .line 190
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Reader returned 0 characters when trying to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/d/a/a/c/f;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final z()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1919
    iget v0, p0, Lcom/d/a/a/c/f;->d:I

    .line 1920
    iget v1, p0, Lcom/d/a/a/c/f;->e:I

    .line 1922
    if-ge v0, v1, :cond_2

    .line 1923
    sget-object v2, Lcom/d/a/a/c/f;->L:[I

    .line 1924
    array-length v3, v2

    .line 1927
    :cond_0
    iget-object v4, p0, Lcom/d/a/a/c/f;->N:[C

    aget-char v4, v4, v0

    .line 1928
    if-ge v4, v3, :cond_1

    aget v5, v2, v4

    if-eqz v5, :cond_1

    .line 1929
    const/16 v1, 0x22

    if-ne v4, v1, :cond_2

    .line 1930
    iget-object v1, p0, Lcom/d/a/a/c/f;->n:Lcom/d/a/a/e/i;

    iget-object v2, p0, Lcom/d/a/a/c/f;->N:[C

    iget v3, p0, Lcom/d/a/a/c/f;->d:I

    iget v4, p0, Lcom/d/a/a/c/f;->d:I

    sub-int v4, v0, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/d/a/a/e/i;->a([CII)V

    .line 1931
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/d/a/a/c/f;->d:I

    .line 1947
    :goto_0
    return-void

    .line 1937
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 1938
    if-lt v0, v1, :cond_0

    .line 1944
    :cond_2
    iget-object v1, p0, Lcom/d/a/a/c/f;->n:Lcom/d/a/a/e/i;

    iget-object v2, p0, Lcom/d/a/a/c/f;->N:[C

    iget v3, p0, Lcom/d/a/a/c/f;->d:I

    iget v4, p0, Lcom/d/a/a/c/f;->d:I

    sub-int v4, v0, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/d/a/a/e/i;->b([CII)V

    .line 1945
    iput v0, p0, Lcom/d/a/a/c/f;->d:I

    .line 1946
    invoke-virtual {p0}, Lcom/d/a/a/c/f;->V()V

    goto :goto_0
.end method
