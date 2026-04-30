.class public Lcom/d/a/a/c/g;
.super Lcom/d/a/a/c/c;
.source "UTF8JsonGenerator.java"


# static fields
.field private static final C:[B

.field private static final D:[B

.field private static final E:[B

.field private static final F:[B


# instance fields
.field protected final A:I

.field protected B:Z

.field protected final u:Ljava/io/OutputStream;

.field protected v:[B

.field protected w:I

.field protected final x:I

.field protected final y:I

.field protected z:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 30
    invoke-static {}, Lcom/d/a/a/b/a;->h()[B

    move-result-object v0

    sput-object v0, Lcom/d/a/a/c/g;->C:[B

    .line 32
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/d/a/a/c/g;->D:[B

    .line 33
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/d/a/a/c/g;->E:[B

    .line 34
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/d/a/a/c/g;->F:[B

    return-void

    .line 32
    :array_0
    .array-data 1
        0x6et
        0x75t
        0x6ct
        0x6ct
    .end array-data

    .line 33
    :array_1
    .array-data 1
        0x74t
        0x72t
        0x75t
        0x65t
    .end array-data

    .line 34
    :array_2
    .array-data 1
        0x66t
        0x61t
        0x6ct
        0x73t
        0x65t
    .end array-data
.end method

.method public constructor <init>(Lcom/d/a/a/b/c;ILcom/d/a/a/p;Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/d/a/a/c/c;-><init>(Lcom/d/a/a/b/c;ILcom/d/a/a/p;)V

    .line 104
    iput-object p4, p0, Lcom/d/a/a/c/g;->u:Ljava/io/OutputStream;

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/d/a/a/c/g;->B:Z

    .line 106
    invoke-virtual {p1}, Lcom/d/a/a/b/c;->f()[B

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/c/g;->v:[B

    .line 107
    iget-object v0, p0, Lcom/d/a/a/c/g;->v:[B

    array-length v0, v0

    iput v0, p0, Lcom/d/a/a/c/g;->x:I

    .line 113
    iget v0, p0, Lcom/d/a/a/c/g;->x:I

    shr-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/d/a/a/c/g;->y:I

    .line 114
    invoke-virtual {p1}, Lcom/d/a/a/b/c;->h()[C

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/c/g;->z:[C

    .line 115
    iget-object v0, p0, Lcom/d/a/a/c/g;->z:[C

    array-length v0, v0

    iput v0, p0, Lcom/d/a/a/c/g;->A:I

    .line 118
    sget-object v0, Lcom/d/a/a/h;->h:Lcom/d/a/a/h;

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/g;->a(Lcom/d/a/a/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const/16 v0, 0x7f

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/g;->a(I)Lcom/d/a/a/g;

    .line 121
    :cond_0
    return-void
.end method

.method private final a(I[CII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1880
    const v0, 0xd800

    if-lt p1, v0, :cond_2

    .line 1881
    const v0, 0xdfff

    if-gt p1, v0, :cond_2

    .line 1883
    if-ge p3, p4, :cond_0

    if-nez p2, :cond_1

    .line 1884
    :cond_0
    const-string/jumbo v0, "Split surrogate on writeRaw() input (last character)"

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/g;->e(Ljava/lang/String;)V

    .line 1886
    :cond_1
    aget-char v0, p2, p3

    invoke-virtual {p0, p1, v0}, Lcom/d/a/a/c/g;->b(II)V

    .line 1887
    add-int/lit8 p3, p3, 0x1

    .line 1894
    :goto_0
    return p3

    .line 1890
    :cond_2
    iget-object v0, p0, Lcom/d/a/a/c/g;->v:[B

    .line 1891
    iget v1, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/g;->w:I

    shr-int/lit8 v2, p1, 0xc

    or-int/lit16 v2, v2, 0xe0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1892
    iget v1, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/g;->w:I

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1893
    iget v1, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/g;->w:I

    and-int/lit8 v2, p1, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method private final a([BII[BI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1574
    array-length v1, p4

    .line 1575
    add-int v0, p2, v1

    if-le v0, p3, :cond_2

    .line 1576
    iput p2, p0, Lcom/d/a/a/c/g;->w:I

    .line 1577
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->l()V

    .line 1578
    iget v0, p0, Lcom/d/a/a/c/g;->w:I

    .line 1579
    array-length v2, p1

    if-le v1, v2, :cond_1

    .line 1580
    iget-object v2, p0, Lcom/d/a/a/c/g;->u:Ljava/io/OutputStream;

    invoke-virtual {v2, p4, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 1591
    :cond_0
    :goto_0
    return v0

    .line 1583
    :cond_1
    invoke-static {p4, v3, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1584
    add-int/2addr v0, v1

    .line 1587
    :goto_1
    mul-int/lit8 v1, p5, 0x6

    add-int/2addr v1, v0

    if-le v1, p3, :cond_0

    .line 1588
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->l()V

    .line 1589
    iget v0, p0, Lcom/d/a/a/c/g;->w:I

    goto :goto_0

    :cond_2
    move v0, p2

    goto :goto_1
.end method

.method private final a([BILcom/d/a/a/r;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 1560
    invoke-interface {p3}, Lcom/d/a/a/r;->b()[B

    move-result-object v4

    .line 1561
    array-length v0, v4

    .line 1562
    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    .line 1563
    iget v3, p0, Lcom/d/a/a/c/g;->x:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/d/a/a/c/g;->a([BII[BI)I

    move-result v0

    .line 1567
    :goto_0
    return v0

    .line 1566
    :cond_0
    const/4 v1, 0x0

    invoke-static {v4, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1567
    add-int/2addr v0, p2

    goto :goto_0
.end method

.method private final a(Ljava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1161
    :cond_0
    iget v0, p0, Lcom/d/a/a/c/g;->y:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1162
    iget v1, p0, Lcom/d/a/a/c/g;->w:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/d/a/a/c/g;->x:I

    if-le v1, v2, :cond_1

    .line 1163
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->l()V

    .line 1165
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/d/a/a/c/g;->b(Ljava/lang/String;II)V

    .line 1166
    add-int/2addr p2, v0

    .line 1167
    sub-int/2addr p3, v0

    .line 1168
    if-gtz p3, :cond_0

    .line 1169
    return-void
.end method

.method private final a(Ljava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x22

    .line 1111
    if-eqz p2, :cond_1

    .line 1112
    iget v0, p0, Lcom/d/a/a/c/g;->w:I

    iget v1, p0, Lcom/d/a/a/c/g;->x:I

    if-lt v0, v1, :cond_0

    .line 1113
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->l()V

    .line 1115
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/g;->v:[B

    iget v1, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/g;->w:I

    aput-byte v5, v0, v1

    .line 1118
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1119
    const/4 v0, 0x0

    .line 1121
    :goto_0
    if-lez v1, :cond_3

    .line 1122
    iget v2, p0, Lcom/d/a/a/c/g;->y:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1123
    iget v3, p0, Lcom/d/a/a/c/g;->w:I

    add-int/2addr v3, v2

    iget v4, p0, Lcom/d/a/a/c/g;->x:I

    if-le v3, v4, :cond_2

    .line 1124
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->l()V

    .line 1126
    :cond_2
    invoke-direct {p0, p1, v0, v2}, Lcom/d/a/a/c/g;->b(Ljava/lang/String;II)V

    .line 1127
    add-int/2addr v0, v2

    .line 1128
    sub-int/2addr v1, v2

    .line 1129
    goto :goto_0

    .line 1131
    :cond_3
    if-eqz p2, :cond_5

    .line 1132
    iget v0, p0, Lcom/d/a/a/c/g;->w:I

    iget v1, p0, Lcom/d/a/a/c/g;->x:I

    if-lt v0, v1, :cond_4

    .line 1133
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->l()V

    .line 1135
    :cond_4
    iget-object v0, p0, Lcom/d/a/a/c/g;->v:[B

    iget v1, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/g;->w:I

    aput-byte v5, v0, v1

    .line 1137
    :cond_5
    return-void
.end method

.method private final b(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 801
    iget v0, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v0, v0, 0x17

    iget v1, p0, Lcom/d/a/a/c/g;->x:I

    if-lt v0, v1, :cond_0

    .line 802
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->l()V

    .line 804
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/g;->v:[B

    iget v1, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/g;->w:I

    aput-byte v3, v0, v1

    .line 805
    iget-object v0, p0, Lcom/d/a/a/c/g;->v:[B

    iget v1, p0, Lcom/d/a/a/c/g;->w:I

    invoke-static {p1, p2, v0, v1}, Lcom/d/a/a/b/h;->a(J[BI)I

    move-result v0

    iput v0, p0, Lcom/d/a/a/c/g;->w:I

    .line 806
    iget-object v0, p0, Lcom/d/a/a/c/g;->v:[B

    iget v1, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/g;->w:I

    aput-byte v3, v0, v1

    .line 807
    return-void
.end method

.method private final b(Ljava/lang/String;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1225
    add-int v2, p3, p2

    .line 1227
    iget v0, p0, Lcom/d/a/a/c/g;->w:I

    .line 1228
    iget-object v3, p0, Lcom/d/a/a/c/g;->v:[B

    .line 1229
    iget-object v4, p0, Lcom/d/a/a/c/g;->p:[I

    .line 1231
    :goto_0
    if-ge p2, v2, :cond_0

    .line 1232
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1234
    const/16 v1, 0x7f

    if-gt v5, v1, :cond_0

    aget v1, v4, v5

    if-eqz v1, :cond_2

    .line 1240
    :cond_0
    iput v0, p0, Lcom/d/a/a/c/g;->w:I

    .line 1241
    if-ge p2, v2, :cond_1

    .line 1242
    iget-object v0, p0, Lcom/d/a/a/c/g;->r:Lcom/d/a/a/b/b;

    if-eqz v0, :cond_3

    .line 1243
    invoke-direct {p0, p1, p2, v2}, Lcom/d/a/a/c/g;->e(Ljava/lang/String;II)V

    .line 1250
    :cond_1
    :goto_1
    return-void

    .line 1237
    :cond_2
    add-int/lit8 v1, v0, 0x1

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    .line 1238
    add-int/lit8 p2, p2, 0x1

    move v0, v1

    .line 1239
    goto :goto_0

    .line 1244
    :cond_3
    iget v0, p0, Lcom/d/a/a/c/g;->q:I

    if-nez v0, :cond_4

    .line 1245
    invoke-direct {p0, p1, p2, v2}, Lcom/d/a/a/c/g;->c(Ljava/lang/String;II)V

    goto :goto_1

    .line 1247
    :cond_4
    invoke-direct {p0, p1, p2, v2}, Lcom/d/a/a/c/g;->d(Ljava/lang/String;II)V

    goto :goto_1
.end method

.method private final b([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1069
    array-length v0, p1

    .line 1070
    iget v1, p0, Lcom/d/a/a/c/g;->w:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/d/a/a/c/g;->x:I

    if-le v1, v2, :cond_0

    .line 1071
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->l()V

    .line 1073
    const/16 v1, 0x200

    if-le v0, v1, :cond_0

    .line 1074
    iget-object v1, p0, Lcom/d/a/a/c/g;->u:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 1080
    :goto_0
    return-void

    .line 1078
    :cond_0
    iget-object v1, p0, Lcom/d/a/a/c/g;->v:[B

    iget v2, p0, Lcom/d/a/a/c/g;->w:I

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1079
    iget v1, p0, Lcom/d/a/a/c/g;->w:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/d/a/a/c/g;->w:I

    goto :goto_0
.end method

.method private final b([CII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 637
    iget v2, p0, Lcom/d/a/a/c/g;->x:I

    .line 638
    iget-object v3, p0, Lcom/d/a/a/c/g;->v:[B

    move v0, p2

    .line 641
    :goto_0
    if-ge v0, p3, :cond_4

    .line 644
    :cond_0
    aget-char v1, p1, v0

    .line 645
    const/16 v4, 0x80

    if-lt v1, v4, :cond_2

    .line 657
    iget v1, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v1, v1, 0x3

    iget v4, p0, Lcom/d/a/a/c/g;->x:I

    if-lt v1, v4, :cond_1

    .line 658
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->l()V

    .line 660
    :cond_1
    add-int/lit8 v1, v0, 0x1

    aget-char v0, p1, v0

    .line 661
    const/16 v4, 0x800

    if-ge v0, v4, :cond_5

    .line 662
    iget v4, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/d/a/a/c/g;->w:I

    shr-int/lit8 v5, v0, 0x6

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 663
    iget v4, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/d/a/a/c/g;->w:I

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    aput-byte v0, v3, v4

    move v0, v1

    goto :goto_0

    .line 649
    :cond_2
    iget v4, p0, Lcom/d/a/a/c/g;->w:I

    if-lt v4, v2, :cond_3

    .line 650
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->l()V

    .line 652
    :cond_3
    iget v4, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/d/a/a/c/g;->w:I

    int-to-byte v1, v1

    aput-byte v1, v3, v4

    .line 653
    add-int/lit8 v0, v0, 0x1

    if-lt v0, p3, :cond_0

    .line 668
    :cond_4
    return-void

    .line 665
    :cond_5
    invoke-direct {p0, v0, p1, v1, p3}, Lcom/d/a/a/c/g;->a(I[CII)I

    move-result v0

    goto :goto_0
.end method

.method private final c(II)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1921
    iget-object v1, p0, Lcom/d/a/a/c/g;->v:[B

    .line 1922
    const v0, 0xd800

    if-lt p1, v0, :cond_0

    const v0, 0xdfff

    if-gt p1, v0, :cond_0

    .line 1927
    add-int/lit8 v0, p2, 0x1

    const/16 v2, 0x5c

    aput-byte v2, v1, p2

    .line 1928
    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x75

    aput-byte v3, v1, v0

    .line 1930
    add-int/lit8 v0, v2, 0x1

    sget-object v3, Lcom/d/a/a/c/g;->C:[B

    shr-int/lit8 v4, p1, 0xc

    and-int/lit8 v4, v4, 0xf

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 1931
    add-int/lit8 v2, v0, 0x1

    sget-object v3, Lcom/d/a/a/c/g;->C:[B

    shr-int/lit8 v4, p1, 0x8

    and-int/lit8 v4, v4, 0xf

    aget-byte v3, v3, v4

    aput-byte v3, v1, v0

    .line 1932
    add-int/lit8 v3, v2, 0x1

    sget-object v0, Lcom/d/a/a/c/g;->C:[B

    shr-int/lit8 v4, p1, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-byte v0, v0, v4

    aput-byte v0, v1, v2

    .line 1933
    add-int/lit8 v0, v3, 0x1

    sget-object v2, Lcom/d/a/a/c/g;->C:[B

    and-int/lit8 v4, p1, 0xf

    aget-byte v2, v2, v4

    aput-byte v2, v1, v3

    .line 1940
    :goto_0
    return v0

    .line 1936
    :cond_0
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v2, p1, 0xc

    or-int/lit16 v2, v2, 0xe0

    int-to-byte v2, v2

    aput-byte v2, v1, p2

    .line 1937
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 1938
    add-int/lit8 v0, v2, 0x1

    and-int/lit8 v3, p1, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    goto :goto_0
.end method

.method private final c(Ljava/lang/String;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1297
    iget v0, p0, Lcom/d/a/a/c/g;->w:I

    sub-int v1, p3, p2

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    iget v1, p0, Lcom/d/a/a/c/g;->x:I

    if-le v0, v1, :cond_0

    .line 1298
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->l()V

    .line 1301
    :cond_0
    iget v0, p0, Lcom/d/a/a/c/g;->w:I

    .line 1303
    iget-object v3, p0, Lcom/d/a/a/c/g;->v:[B

    .line 1304
    iget-object v4, p0, Lcom/d/a/a/c/g;->p:[I

    .line 1306
    :goto_0
    if-ge p2, p3, :cond_5

    .line 1307
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1308
    const/16 v1, 0x7f

    if-gt v5, v1, :cond_3

    .line 1309
    aget v1, v4, v5

    if-nez v1, :cond_1

    .line 1310
    add-int/lit8 v1, v0, 0x1

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    move v0, v1

    move p2, v2

    .line 1311
    goto :goto_0

    .line 1313
    :cond_1
    aget v1, v4, v5

    .line 1314
    if-lez v1, :cond_2

    .line 1315
    add-int/lit8 v5, v0, 0x1

    const/16 v6, 0x5c

    aput-byte v6, v3, v0

    .line 1316
    add-int/lit8 v0, v5, 0x1

    int-to-byte v1, v1

    aput-byte v1, v3, v5

    move p2, v2

    goto :goto_0

    .line 1319
    :cond_2
    invoke-direct {p0, v5, v0}, Lcom/d/a/a/c/g;->d(II)I

    move-result v0

    move p2, v2

    .line 1321
    goto :goto_0

    .line 1323
    :cond_3
    const/16 v1, 0x7ff

    if-gt v5, v1, :cond_4

    .line 1324
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v6, v5, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v3, v0

    .line 1325
    add-int/lit8 v0, v1, 0x1

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, v1

    :goto_1
    move p2, v2

    .line 1329
    goto :goto_0

    .line 1327
    :cond_4
    invoke-direct {p0, v5, v0}, Lcom/d/a/a/c/g;->c(II)I

    move-result v0

    goto :goto_1

    .line 1330
    :cond_5
    iput v0, p0, Lcom/d/a/a/c/g;->w:I

    .line 1331
    return-void
.end method

.method private final c([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1148
    :cond_0
    iget v0, p0, Lcom/d/a/a/c/g;->y:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1149
    iget v1, p0, Lcom/d/a/a/c/g;->w:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/d/a/a/c/g;->x:I

    if-le v1, v2, :cond_1

    .line 1150
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->l()V

    .line 1152
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/d/a/a/c/g;->d([CII)V

    .line 1153
    add-int/2addr p2, v0

    .line 1154
    sub-int/2addr p3, v0

    .line 1155
    if-gtz p3, :cond_0

    .line 1156
    return-void
.end method

.method private d(II)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x30

    .line 1959
    iget-object v1, p0, Lcom/d/a/a/c/g;->v:[B

    .line 1960
    add-int/lit8 v0, p2, 0x1

    const/16 v2, 0x5c

    aput-byte v2, v1, p2

    .line 1961
    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x75

    aput-byte v3, v1, v0

    .line 1962
    const/16 v0, 0xff

    if-le p1, v0, :cond_0

    .line 1963
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v3, v0, 0xff

    .line 1964
    add-int/lit8 v4, v2, 0x1

    sget-object v0, Lcom/d/a/a/c/g;->C:[B

    shr-int/lit8 v5, v3, 0x4

    aget-byte v0, v0, v5

    aput-byte v0, v1, v2

    .line 1965
    add-int/lit8 v0, v4, 0x1

    sget-object v2, Lcom/d/a/a/c/g;->C:[B

    and-int/lit8 v3, v3, 0xf

    aget-byte v2, v2, v3

    aput-byte v2, v1, v4

    .line 1966
    and-int/lit16 p1, p1, 0xff

    .line 1972
    :goto_0
    add-int/lit8 v2, v0, 0x1

    sget-object v3, Lcom/d/a/a/c/g;->C:[B

    shr-int/lit8 v4, p1, 0x4

    aget-byte v3, v3, v4

    aput-byte v3, v1, v0

    .line 1973
    add-int/lit8 v0, v2, 0x1

    sget-object v3, Lcom/d/a/a/c/g;->C:[B

    and-int/lit8 v4, p1, 0xf

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 1974
    return v0

    .line 1968
    :cond_0
    add-int/lit8 v3, v2, 0x1

    aput-byte v4, v1, v2

    .line 1969
    add-int/lit8 v0, v3, 0x1

    aput-byte v4, v1, v3

    goto :goto_0
.end method

.method private final d(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 776
    iget v0, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v0, v0, 0xd

    iget v1, p0, Lcom/d/a/a/c/g;->x:I

    if-lt v0, v1, :cond_0

    .line 777
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->l()V

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/g;->v:[B

    iget v1, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/g;->w:I

    aput-byte v3, v0, v1

    .line 780
    iget-object v0, p0, Lcom/d/a/a/c/g;->v:[B

    iget v1, p0, Lcom/d/a/a/c/g;->w:I

    invoke-static {p1, v0, v1}, Lcom/d/a/a/b/h;->a(I[BI)I

    move-result v0

    iput v0, p0, Lcom/d/a/a/c/g;->w:I

    .line 781
    iget-object v0, p0, Lcom/d/a/a/c/g;->v:[B

    iget v1, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/g;->w:I

    aput-byte v3, v0, v1

    .line 782
    return-void
.end method

.method private final d(Ljava/lang/String;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1391
    iget v0, p0, Lcom/d/a/a/c/g;->w:I

    sub-int v1, p3, p2

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    iget v1, p0, Lcom/d/a/a/c/g;->x:I

    if-le v0, v1, :cond_0

    .line 1392
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->l()V

    .line 1395
    :cond_0
    iget v0, p0, Lcom/d/a/a/c/g;->w:I

    .line 1397
    iget-object v3, p0, Lcom/d/a/a/c/g;->v:[B

    .line 1398
    iget-object v4, p0, Lcom/d/a/a/c/g;->p:[I

    .line 1399
    iget v5, p0, Lcom/d/a/a/c/g;->q:I

    .line 1401
    :goto_0
    if-ge p2, p3, :cond_6

    .line 1402
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1403
    const/16 v1, 0x7f

    if-gt v6, v1, :cond_3

    .line 1404
    aget v1, v4, v6

    if-nez v1, :cond_1

    .line 1405
    add-int/lit8 v1, v0, 0x1

    int-to-byte v6, v6

    aput-byte v6, v3, v0

    move v0, v1

    move p2, v2

    .line 1406
    goto :goto_0

    .line 1408
    :cond_1
    aget v1, v4, v6

    .line 1409
    if-lez v1, :cond_2

    .line 1410
    add-int/lit8 v6, v0, 0x1

    const/16 v7, 0x5c

    aput-byte v7, v3, v0

    .line 1411
    add-int/lit8 v0, v6, 0x1

    int-to-byte v1, v1

    aput-byte v1, v3, v6

    move p2, v2

    goto :goto_0

    .line 1414
    :cond_2
    invoke-direct {p0, v6, v0}, Lcom/d/a/a/c/g;->d(II)I

    move-result v0

    move p2, v2

    .line 1416
    goto :goto_0

    .line 1418
    :cond_3
    if-le v6, v5, :cond_4

    .line 1419
    invoke-direct {p0, v6, v0}, Lcom/d/a/a/c/g;->d(II)I

    move-result v0

    move p2, v2

    .line 1420
    goto :goto_0

    .line 1422
    :cond_4
    const/16 v1, 0x7ff

    if-gt v6, v1, :cond_5

    .line 1423
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v7, v6, 0x6

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v3, v0

    .line 1424
    add-int/lit8 v0, v1, 0x1

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v3, v1

    :goto_1
    move p2, v2

    .line 1428
    goto :goto_0

    .line 1426
    :cond_5
    invoke-direct {p0, v6, v0}, Lcom/d/a/a/c/g;->c(II)I

    move-result v0

    goto :goto_1

    .line 1429
    :cond_6
    iput v0, p0, Lcom/d/a/a/c/g;->w:I

    .line 1430
    return-void
.end method

.method private final d([CII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1191
    add-int v2, p3, p2

    .line 1193
    iget v0, p0, Lcom/d/a/a/c/g;->w:I

    .line 1194
    iget-object v3, p0, Lcom/d/a/a/c/g;->v:[B

    .line 1195
    iget-object v4, p0, Lcom/d/a/a/c/g;->p:[I

    .line 1197
    :goto_0
    if-ge p2, v2, :cond_0

    .line 1198
    aget-char v5, p1, p2

    .line 1200
    const/16 v1, 0x7f

    if-gt v5, v1, :cond_0

    aget v1, v4, v5

    if-eqz v1, :cond_2

    .line 1206
    :cond_0
    iput v0, p0, Lcom/d/a/a/c/g;->w:I

    .line 1207
    if-ge p2, v2, :cond_1

    .line 1209
    iget-object v0, p0, Lcom/d/a/a/c/g;->r:Lcom/d/a/a/b/b;

    if-eqz v0, :cond_3

    .line 1210
    invoke-direct {p0, p1, p2, v2}, Lcom/d/a/a/c/g;->g([CII)V

    .line 1219
    :cond_1
    :goto_1
    return-void

    .line 1203
    :cond_2
    add-int/lit8 v1, v0, 0x1

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    .line 1204
    add-int/lit8 p2, p2, 0x1

    move v0, v1

    .line 1205
    goto :goto_0

    .line 1212
    :cond_3
    iget v0, p0, Lcom/d/a/a/c/g;->q:I

    if-nez v0, :cond_4

    .line 1213
    invoke-direct {p0, p1, p2, v2}, Lcom/d/a/a/c/g;->e([CII)V

    goto :goto_1

    .line 1215
    :cond_4
    invoke-direct {p0, p1, p2, v2}, Lcom/d/a/a/c/g;->f([CII)V

    goto :goto_1
.end method

.method private final e(Ljava/lang/String;II)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1503
    iget v0, p0, Lcom/d/a/a/c/g;->w:I

    sub-int v1, p3, p2

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    iget v1, p0, Lcom/d/a/a/c/g;->x:I

    if-le v0, v1, :cond_0

    .line 1504
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->l()V

    .line 1506
    :cond_0
    iget v1, p0, Lcom/d/a/a/c/g;->w:I

    .line 1508
    iget-object v4, p0, Lcom/d/a/a/c/g;->v:[B

    .line 1509
    iget-object v5, p0, Lcom/d/a/a/c/g;->p:[I

    .line 1511
    iget v0, p0, Lcom/d/a/a/c/g;->q:I

    if-gtz v0, :cond_1

    const v0, 0xffff

    .line 1512
    :goto_0
    iget-object v6, p0, Lcom/d/a/a/c/g;->r:Lcom/d/a/a/b/b;

    .line 1514
    :goto_1
    if-ge p2, p3, :cond_a

    .line 1515
    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1516
    const/16 v2, 0x7f

    if-gt v7, v2, :cond_6

    .line 1517
    aget v2, v5, v7

    if-nez v2, :cond_2

    .line 1518
    add-int/lit8 v2, v1, 0x1

    int-to-byte v7, v7

    aput-byte v7, v4, v1

    move v1, v2

    move p2, v3

    .line 1519
    goto :goto_1

    .line 1511
    :cond_1
    iget v0, p0, Lcom/d/a/a/c/g;->q:I

    goto :goto_0

    .line 1521
    :cond_2
    aget v2, v5, v7

    .line 1522
    if-lez v2, :cond_3

    .line 1523
    add-int/lit8 v7, v1, 0x1

    const/16 v8, 0x5c

    aput-byte v8, v4, v1

    .line 1524
    add-int/lit8 v1, v7, 0x1

    int-to-byte v2, v2

    aput-byte v2, v4, v7

    move p2, v3

    goto :goto_1

    .line 1525
    :cond_3
    const/4 v8, -0x2

    if-ne v2, v8, :cond_5

    .line 1526
    invoke-virtual {v6, v7}, Lcom/d/a/a/b/b;->a(I)Lcom/d/a/a/r;

    move-result-object v2

    .line 1527
    if-nez v2, :cond_4

    .line 1528
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Invalid custom escape definitions; custom escape not found for character code 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1529
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", although was supposed to have one"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1528
    invoke-virtual {p0, v7}, Lcom/d/a/a/c/g;->e(Ljava/lang/String;)V

    .line 1531
    :cond_4
    sub-int v7, p3, v3

    invoke-direct {p0, v4, v1, v2, v7}, Lcom/d/a/a/c/g;->a([BILcom/d/a/a/r;I)I

    move-result v1

    move p2, v3

    .line 1532
    goto :goto_1

    .line 1534
    :cond_5
    invoke-direct {p0, v7, v1}, Lcom/d/a/a/c/g;->d(II)I

    move-result v1

    move p2, v3

    .line 1536
    goto :goto_1

    .line 1538
    :cond_6
    if-le v7, v0, :cond_7

    .line 1539
    invoke-direct {p0, v7, v1}, Lcom/d/a/a/c/g;->d(II)I

    move-result v1

    move p2, v3

    .line 1540
    goto :goto_1

    .line 1542
    :cond_7
    invoke-virtual {v6, v7}, Lcom/d/a/a/b/b;->a(I)Lcom/d/a/a/r;

    move-result-object v2

    .line 1543
    if-eqz v2, :cond_8

    .line 1544
    sub-int v7, p3, v3

    invoke-direct {p0, v4, v1, v2, v7}, Lcom/d/a/a/c/g;->a([BILcom/d/a/a/r;I)I

    move-result v1

    move p2, v3

    .line 1545
    goto :goto_1

    .line 1547
    :cond_8
    const/16 v2, 0x7ff

    if-gt v7, v2, :cond_9

    .line 1548
    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v8, v7, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v4, v1

    .line 1549
    add-int/lit8 v1, v2, 0x1

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v4, v2

    :goto_2
    move p2, v3

    .line 1553
    goto/16 :goto_1

    .line 1551
    :cond_9
    invoke-direct {p0, v7, v1}, Lcom/d/a/a/c/g;->c(II)I

    move-result v1

    goto :goto_2

    .line 1554
    :cond_a
    iput v1, p0, Lcom/d/a/a/c/g;->w:I

    .line 1555
    return-void
.end method

.method private final e([CII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1259
    iget v0, p0, Lcom/d/a/a/c/g;->w:I

    sub-int v1, p3, p2

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    iget v1, p0, Lcom/d/a/a/c/g;->x:I

    if-le v0, v1, :cond_0

    .line 1260
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->l()V

    .line 1263
    :cond_0
    iget v0, p0, Lcom/d/a/a/c/g;->w:I

    .line 1265
    iget-object v3, p0, Lcom/d/a/a/c/g;->v:[B

    .line 1266
    iget-object v4, p0, Lcom/d/a/a/c/g;->p:[I

    .line 1268
    :goto_0
    if-ge p2, p3, :cond_5

    .line 1269
    add-int/lit8 v2, p2, 0x1

    aget-char v5, p1, p2

    .line 1270
    const/16 v1, 0x7f

    if-gt v5, v1, :cond_3

    .line 1271
    aget v1, v4, v5

    if-nez v1, :cond_1

    .line 1272
    add-int/lit8 v1, v0, 0x1

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    move v0, v1

    move p2, v2

    .line 1273
    goto :goto_0

    .line 1275
    :cond_1
    aget v1, v4, v5

    .line 1276
    if-lez v1, :cond_2

    .line 1277
    add-int/lit8 v5, v0, 0x1

    const/16 v6, 0x5c

    aput-byte v6, v3, v0

    .line 1278
    add-int/lit8 v0, v5, 0x1

    int-to-byte v1, v1

    aput-byte v1, v3, v5

    move p2, v2

    goto :goto_0

    .line 1281
    :cond_2
    invoke-direct {p0, v5, v0}, Lcom/d/a/a/c/g;->d(II)I

    move-result v0

    move p2, v2

    .line 1283
    goto :goto_0

    .line 1285
    :cond_3
    const/16 v1, 0x7ff

    if-gt v5, v1, :cond_4

    .line 1286
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v6, v5, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v3, v0

    .line 1287
    add-int/lit8 v0, v1, 0x1

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, v1

    :goto_1
    move p2, v2

    .line 1291
    goto :goto_0

    .line 1289
    :cond_4
    invoke-direct {p0, v5, v0}, Lcom/d/a/a/c/g;->c(II)I

    move-result v0

    goto :goto_1

    .line 1292
    :cond_5
    iput v0, p0, Lcom/d/a/a/c/g;->w:I

    .line 1293
    return-void
.end method

.method private final f([CII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1347
    iget v0, p0, Lcom/d/a/a/c/g;->w:I

    sub-int v1, p3, p2

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    iget v1, p0, Lcom/d/a/a/c/g;->x:I

    if-le v0, v1, :cond_0

    .line 1348
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->l()V

    .line 1351
    :cond_0
    iget v0, p0, Lcom/d/a/a/c/g;->w:I

    .line 1353
    iget-object v3, p0, Lcom/d/a/a/c/g;->v:[B

    .line 1354
    iget-object v4, p0, Lcom/d/a/a/c/g;->p:[I

    .line 1355
    iget v5, p0, Lcom/d/a/a/c/g;->q:I

    .line 1357
    :goto_0
    if-ge p2, p3, :cond_6

    .line 1358
    add-int/lit8 v2, p2, 0x1

    aget-char v6, p1, p2

    .line 1359
    const/16 v1, 0x7f

    if-gt v6, v1, :cond_3

    .line 1360
    aget v1, v4, v6

    if-nez v1, :cond_1

    .line 1361
    add-int/lit8 v1, v0, 0x1

    int-to-byte v6, v6

    aput-byte v6, v3, v0

    move v0, v1

    move p2, v2

    .line 1362
    goto :goto_0

    .line 1364
    :cond_1
    aget v1, v4, v6

    .line 1365
    if-lez v1, :cond_2

    .line 1366
    add-int/lit8 v6, v0, 0x1

    const/16 v7, 0x5c

    aput-byte v7, v3, v0

    .line 1367
    add-int/lit8 v0, v6, 0x1

    int-to-byte v1, v1

    aput-byte v1, v3, v6

    move p2, v2

    goto :goto_0

    .line 1370
    :cond_2
    invoke-direct {p0, v6, v0}, Lcom/d/a/a/c/g;->d(II)I

    move-result v0

    move p2, v2

    .line 1372
    goto :goto_0

    .line 1374
    :cond_3
    if-le v6, v5, :cond_4

    .line 1375
    invoke-direct {p0, v6, v0}, Lcom/d/a/a/c/g;->d(II)I

    move-result v0

    move p2, v2

    .line 1376
    goto :goto_0

    .line 1378
    :cond_4
    const/16 v1, 0x7ff

    if-gt v6, v1, :cond_5

    .line 1379
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v7, v6, 0x6

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v3, v0

    .line 1380
    add-int/lit8 v0, v1, 0x1

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v3, v1

    :goto_1
    move p2, v2

    .line 1384
    goto :goto_0

    .line 1382
    :cond_5
    invoke-direct {p0, v6, v0}, Lcom/d/a/a/c/g;->c(II)I

    move-result v0

    goto :goto_1

    .line 1385
    :cond_6
    iput v0, p0, Lcom/d/a/a/c/g;->w:I

    .line 1386
    return-void
.end method

.method private final g([CII)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1446
    iget v0, p0, Lcom/d/a/a/c/g;->w:I

    sub-int v1, p3, p2

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    iget v1, p0, Lcom/d/a/a/c/g;->x:I

    if-le v0, v1, :cond_0

    .line 1447
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->l()V

    .line 1449
    :cond_0
    iget v1, p0, Lcom/d/a/a/c/g;->w:I

    .line 1451
    iget-object v4, p0, Lcom/d/a/a/c/g;->v:[B

    .line 1452
    iget-object v5, p0, Lcom/d/a/a/c/g;->p:[I

    .line 1454
    iget v0, p0, Lcom/d/a/a/c/g;->q:I

    if-gtz v0, :cond_1

    const v0, 0xffff

    .line 1455
    :goto_0
    iget-object v6, p0, Lcom/d/a/a/c/g;->r:Lcom/d/a/a/b/b;

    .line 1457
    :goto_1
    if-ge p2, p3, :cond_a

    .line 1458
    add-int/lit8 v3, p2, 0x1

    aget-char v7, p1, p2

    .line 1459
    const/16 v2, 0x7f

    if-gt v7, v2, :cond_6

    .line 1460
    aget v2, v5, v7

    if-nez v2, :cond_2

    .line 1461
    add-int/lit8 v2, v1, 0x1

    int-to-byte v7, v7

    aput-byte v7, v4, v1

    move v1, v2

    move p2, v3

    .line 1462
    goto :goto_1

    .line 1454
    :cond_1
    iget v0, p0, Lcom/d/a/a/c/g;->q:I

    goto :goto_0

    .line 1464
    :cond_2
    aget v2, v5, v7

    .line 1465
    if-lez v2, :cond_3

    .line 1466
    add-int/lit8 v7, v1, 0x1

    const/16 v8, 0x5c

    aput-byte v8, v4, v1

    .line 1467
    add-int/lit8 v1, v7, 0x1

    int-to-byte v2, v2

    aput-byte v2, v4, v7

    move p2, v3

    goto :goto_1

    .line 1468
    :cond_3
    const/4 v8, -0x2

    if-ne v2, v8, :cond_5

    .line 1469
    invoke-virtual {v6, v7}, Lcom/d/a/a/b/b;->a(I)Lcom/d/a/a/r;

    move-result-object v2

    .line 1470
    if-nez v2, :cond_4

    .line 1471
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Invalid custom escape definitions; custom escape not found for character code 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1472
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", although was supposed to have one"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1471
    invoke-virtual {p0, v7}, Lcom/d/a/a/c/g;->e(Ljava/lang/String;)V

    .line 1474
    :cond_4
    sub-int v7, p3, v3

    invoke-direct {p0, v4, v1, v2, v7}, Lcom/d/a/a/c/g;->a([BILcom/d/a/a/r;I)I

    move-result v1

    move p2, v3

    .line 1475
    goto :goto_1

    .line 1477
    :cond_5
    invoke-direct {p0, v7, v1}, Lcom/d/a/a/c/g;->d(II)I

    move-result v1

    move p2, v3

    .line 1479
    goto :goto_1

    .line 1481
    :cond_6
    if-le v7, v0, :cond_7

    .line 1482
    invoke-direct {p0, v7, v1}, Lcom/d/a/a/c/g;->d(II)I

    move-result v1

    move p2, v3

    .line 1483
    goto :goto_1

    .line 1485
    :cond_7
    invoke-virtual {v6, v7}, Lcom/d/a/a/b/b;->a(I)Lcom/d/a/a/r;

    move-result-object v2

    .line 1486
    if-eqz v2, :cond_8

    .line 1487
    sub-int v7, p3, v3

    invoke-direct {p0, v4, v1, v2, v7}, Lcom/d/a/a/c/g;->a([BILcom/d/a/a/r;I)I

    move-result v1

    move p2, v3

    .line 1488
    goto :goto_1

    .line 1490
    :cond_8
    const/16 v2, 0x7ff

    if-gt v7, v2, :cond_9

    .line 1491
    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v8, v7, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v4, v1

    .line 1492
    add-int/lit8 v1, v2, 0x1

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v4, v2

    :goto_2
    move p2, v3

    .line 1496
    goto/16 :goto_1

    .line 1494
    :cond_9
    invoke-direct {p0, v7, v1}, Lcom/d/a/a/c/g;->c(II)I

    move-result v1

    goto :goto_2

    .line 1497
    :cond_a
    iput v1, p0, Lcom/d/a/a/c/g;->w:I

    .line 1498
    return-void
.end method

.method private final h(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 883
    iget v0, p0, Lcom/d/a/a/c/g;->w:I

    iget v1, p0, Lcom/d/a/a/c/g;->x:I

    if-lt v0, v1, :cond_0

    .line 884
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->l()V

    .line 886
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/g;->v:[B

    iget v1, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/g;->w:I

    aput-byte v3, v0, v1

    .line 887
    invoke-virtual {p0, p1}, Lcom/d/a/a/c/g;->c(Ljava/lang/String;)V

    .line 888
    iget v0, p0, Lcom/d/a/a/c/g;->w:I

    iget v1, p0, Lcom/d/a/a/c/g;->x:I

    if-lt v0, v1, :cond_1

    .line 889
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->l()V

    .line 891
    :cond_1
    iget-object v0, p0, Lcom/d/a/a/c/g;->v:[B

    iget v1, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/g;->w:I

    aput-byte v3, v0, v1

    .line 892
    return-void
.end method

.method private final m()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1945
    iget v0, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/d/a/a/c/g;->x:I

    if-lt v0, v1, :cond_0

    .line 1946
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->l()V

    .line 1948
    :cond_0
    sget-object v0, Lcom/d/a/a/c/g;->D:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/d/a/a/c/g;->v:[B

    iget v3, p0, Lcom/d/a/a/c/g;->w:I

    const/4 v4, 0x4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1949
    iget v0, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/d/a/a/c/g;->w:I

    .line 1950
    return-void
.end method


# virtual methods
.method public a(C)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 616
    iget v0, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/d/a/a/c/g;->x:I

    if-lt v0, v1, :cond_0

    .line 617
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->l()V

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/g;->v:[B

    .line 620
    const/16 v1, 0x7f

    if-gt p1, v1, :cond_1

    .line 621
    iget v1, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/g;->w:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 628
    :goto_0
    return-void

    .line 622
    :cond_1
    const/16 v1, 0x800

    if-ge p1, v1, :cond_2

    .line 623
    iget v1, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/g;->w:I

    shr-int/lit8 v2, p1, 0x6

    or-int/lit16 v2, v2, 0xc0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 624
    iget v1, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/g;->w:I

    and-int/lit8 v2, p1, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0

    .line 626
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v2, v2}, Lcom/d/a/a/c/g;->a(I[CII)I

    goto :goto_0
.end method

.method public a(D)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 826
    iget-boolean v0, p0, Lcom/d/a/a/c/g;->k:Z

    if-nez v0, :cond_1

    .line 827
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/d/a/a/h;->e:Lcom/d/a/a/h;

    iget v1, p0, Lcom/d/a/a/c/g;->j:I

    .line 828
    invoke-virtual {v0, v1}, Lcom/d/a/a/h;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 829
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/g;->b(Ljava/lang/String;)V

    .line 835
    :goto_0
    return-void

    .line 833
    :cond_2
    const-string/jumbo v0, "write a number"

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/g;->f(Ljava/lang/String;)V

    .line 834
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/g;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 840
    iget-boolean v0, p0, Lcom/d/a/a/c/g;->k:Z

    if-nez v0, :cond_1

    .line 842
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/d/a/a/h;->e:Lcom/d/a/a/h;

    iget v1, p0, Lcom/d/a/a/c/g;->j:I

    .line 843
    invoke-virtual {v0, v1}, Lcom/d/a/a/h;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 844
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/g;->b(Ljava/lang/String;)V

    .line 850
    :goto_0
    return-void

    .line 848
    :cond_2
    const-string/jumbo v0, "write a number"

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/g;->f(Ljava/lang/String;)V

    .line 849
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/g;->c(Ljava/lang/String;)V

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
    .line 787
    const-string/jumbo v0, "write a number"

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/g;->f(Ljava/lang/String;)V

    .line 788
    iget-boolean v0, p0, Lcom/d/a/a/c/g;->k:Z

    if-eqz v0, :cond_0

    .line 789
    invoke-direct {p0, p1, p2}, Lcom/d/a/a/c/g;->b(J)V

    .line 797
    :goto_0
    return-void

    .line 792
    :cond_0
    iget v0, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v0, v0, 0x15

    iget v1, p0, Lcom/d/a/a/c/g;->x:I

    if-lt v0, v1, :cond_1

    .line 794
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->l()V

    .line 796
    :cond_1
    iget-object v0, p0, Lcom/d/a/a/c/g;->v:[B

    iget v1, p0, Lcom/d/a/a/c/g;->w:I

    invoke-static {p1, p2, v0, v1}, Lcom/d/a/a/b/h;->a(J[BI)I

    move-result v0

    iput v0, p0, Lcom/d/a/a/c/g;->w:I

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

    .line 681
    const-string/jumbo v0, "write a binary value"

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/g;->f(Ljava/lang/String;)V

    .line 683
    iget v0, p0, Lcom/d/a/a/c/g;->w:I

    iget v1, p0, Lcom/d/a/a/c/g;->x:I

    if-lt v0, v1, :cond_0

    .line 684
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->l()V

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/g;->v:[B

    iget v1, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/g;->w:I

    aput-byte v3, v0, v1

    .line 687
    add-int v0, p3, p4

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/d/a/a/c/g;->b(Lcom/d/a/a/a;[BII)V

    .line 689
    iget v0, p0, Lcom/d/a/a/c/g;->w:I

    iget v1, p0, Lcom/d/a/a/c/g;->x:I

    if-lt v0, v1, :cond_1

    .line 690
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->l()V

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/d/a/a/c/g;->v:[B

    iget v1, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/g;->w:I

    aput-byte v3, v0, v1

    .line 693
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x22

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 166
    iget-object v0, p0, Lcom/d/a/a/c/g;->a:Lcom/d/a/a/q;

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0, p1}, Lcom/d/a/a/c/g;->g(Ljava/lang/String;)V

    .line 211
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/g;->l:Lcom/d/a/a/c/e;

    invoke-virtual {v0, p1}, Lcom/d/a/a/c/e;->a(Ljava/lang/String;)I

    move-result v0

    .line 171
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 172
    const-string/jumbo v1, "Can not write a field name, expecting a value"

    invoke-virtual {p0, v1}, Lcom/d/a/a/c/g;->e(Ljava/lang/String;)V

    .line 174
    :cond_1
    if-ne v0, v3, :cond_3

    .line 175
    iget v0, p0, Lcom/d/a/a/c/g;->w:I

    iget v1, p0, Lcom/d/a/a/c/g;->x:I

    if-lt v0, v1, :cond_2

    .line 176
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->l()V

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/d/a/a/c/g;->v:[B

    iget v1, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/g;->w:I

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    .line 183
    :cond_3
    iget-boolean v0, p0, Lcom/d/a/a/c/g;->t:Z

    if-eqz v0, :cond_4

    .line 184
    invoke-direct {p0, p1, v4}, Lcom/d/a/a/c/g;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 187
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 189
    iget v1, p0, Lcom/d/a/a/c/g;->A:I

    if-le v0, v1, :cond_5

    .line 190
    invoke-direct {p0, p1, v3}, Lcom/d/a/a/c/g;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 193
    :cond_5
    iget v1, p0, Lcom/d/a/a/c/g;->w:I

    iget v2, p0, Lcom/d/a/a/c/g;->x:I

    if-lt v1, v2, :cond_6

    .line 194
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->l()V

    .line 196
    :cond_6
    iget-object v1, p0, Lcom/d/a/a/c/g;->v:[B

    iget v2, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/d/a/a/c/g;->w:I

    aput-byte v5, v1, v2

    .line 198
    iget v1, p0, Lcom/d/a/a/c/g;->y:I

    if-gt v0, v1, :cond_9

    .line 199
    iget v1, p0, Lcom/d/a/a/c/g;->w:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/d/a/a/c/g;->x:I

    if-le v1, v2, :cond_7

    .line 200
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->l()V

    .line 202
    :cond_7
    invoke-direct {p0, p1, v4, v0}, Lcom/d/a/a/c/g;->b(Ljava/lang/String;II)V

    .line 207
    :goto_1
    iget v0, p0, Lcom/d/a/a/c/g;->w:I

    iget v1, p0, Lcom/d/a/a/c/g;->x:I

    if-lt v0, v1, :cond_8

    .line 208
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->l()V

    .line 210
    :cond_8
    iget-object v0, p0, Lcom/d/a/a/c/g;->v:[B

    iget v1, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/g;->w:I

    aput-byte v5, v0, v1

    goto :goto_0

    .line 204
    :cond_9
    invoke-direct {p0, p1, v4, v0}, Lcom/d/a/a/c/g;->a(Ljava/lang/String;II)V

    goto :goto_1
.end method

.method protected final a(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 962
    packed-switch p2, :pswitch_data_0

    .line 981
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->h()V

    .line 984
    :cond_0
    :goto_0
    return-void

    .line 964
    :pswitch_0
    iget-object v0, p0, Lcom/d/a/a/c/g;->a:Lcom/d/a/a/q;

    invoke-interface {v0, p0}, Lcom/d/a/a/q;->f(Lcom/d/a/a/g;)V

    goto :goto_0

    .line 967
    :pswitch_1
    iget-object v0, p0, Lcom/d/a/a/c/g;->a:Lcom/d/a/a/q;

    invoke-interface {v0, p0}, Lcom/d/a/a/q;->d(Lcom/d/a/a/g;)V

    goto :goto_0

    .line 970
    :pswitch_2
    iget-object v0, p0, Lcom/d/a/a/c/g;->a:Lcom/d/a/a/q;

    invoke-interface {v0, p0}, Lcom/d/a/a/q;->a(Lcom/d/a/a/g;)V

    goto :goto_0

    .line 974
    :pswitch_3
    iget-object v0, p0, Lcom/d/a/a/c/g;->l:Lcom/d/a/a/c/e;

    invoke-virtual {v0}, Lcom/d/a/a/c/e;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 975
    iget-object v0, p0, Lcom/d/a/a/c/g;->a:Lcom/d/a/a/q;

    invoke-interface {v0, p0}, Lcom/d/a/a/q;->g(Lcom/d/a/a/g;)V

    goto :goto_0

    .line 976
    :cond_1
    iget-object v0, p0, Lcom/d/a/a/c/g;->l:Lcom/d/a/a/c/e;

    invoke-virtual {v0}, Lcom/d/a/a/c/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Lcom/d/a/a/c/g;->a:Lcom/d/a/a/q;

    invoke-interface {v0, p0}, Lcom/d/a/a/q;->h(Lcom/d/a/a/g;)V

    goto :goto_0

    .line 962
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Ljava/math/BigDecimal;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 856
    const-string/jumbo v0, "write a number"

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/g;->f(Ljava/lang/String;)V

    .line 857
    if-nez p1, :cond_0

    .line 858
    invoke-direct {p0}, Lcom/d/a/a/c/g;->m()V

    .line 868
    :goto_0
    return-void

    .line 859
    :cond_0
    iget-boolean v0, p0, Lcom/d/a/a/c/g;->k:Z

    if-eqz v0, :cond_2

    .line 860
    sget-object v0, Lcom/d/a/a/h;->g:Lcom/d/a/a/h;

    iget v1, p0, Lcom/d/a/a/c/g;->j:I

    invoke-virtual {v0, v1}, Lcom/d/a/a/h;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 861
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    .line 862
    :goto_1
    invoke-direct {p0, v0}, Lcom/d/a/a/c/g;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 861
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 863
    :cond_2
    sget-object v0, Lcom/d/a/a/h;->g:Lcom/d/a/a/h;

    iget v1, p0, Lcom/d/a/a/c/g;->j:I

    invoke-virtual {v0, v1}, Lcom/d/a/a/h;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 864
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/g;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 866
    :cond_3
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/g;->c(Ljava/lang/String;)V

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
    .line 812
    const-string/jumbo v0, "write a number"

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/g;->f(Ljava/lang/String;)V

    .line 813
    if-nez p1, :cond_0

    .line 814
    invoke-direct {p0}, Lcom/d/a/a/c/g;->m()V

    .line 820
    :goto_0
    return-void

    .line 815
    :cond_0
    iget-boolean v0, p0, Lcom/d/a/a/c/g;->k:Z

    if-eqz v0, :cond_1

    .line 816
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/d/a/a/c/g;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 818
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/g;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 897
    const-string/jumbo v0, "write a boolean value"

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/g;->f(Ljava/lang/String;)V

    .line 898
    iget v0, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v0, v0, 0x5

    iget v1, p0, Lcom/d/a/a/c/g;->x:I

    if-lt v0, v1, :cond_0

    .line 899
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->l()V

    .line 901
    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/d/a/a/c/g;->E:[B

    .line 902
    :goto_0
    array-length v1, v0

    .line 903
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/d/a/a/c/g;->v:[B

    iget v4, p0, Lcom/d/a/a/c/g;->w:I

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 904
    iget v0, p0, Lcom/d/a/a/c/g;->w:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/d/a/a/c/g;->w:I

    .line 905
    return-void

    .line 901
    :cond_1
    sget-object v0, Lcom/d/a/a/c/g;->F:[B

    goto :goto_0
.end method

.method public final a([CII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 575
    add-int v0, p3, p3

    add-int/2addr v0, p3

    .line 576
    iget v1, p0, Lcom/d/a/a/c/g;->w:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/d/a/a/c/g;->x:I

    if-le v1, v2, :cond_2

    .line 578
    iget v1, p0, Lcom/d/a/a/c/g;->x:I

    if-ge v1, v0, :cond_1

    .line 579
    invoke-direct {p0, p1, p2, p3}, Lcom/d/a/a/c/g;->b([CII)V

    .line 610
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->l()V

    .line 586
    :cond_2
    add-int v2, p3, p2

    move v0, p2

    .line 590
    :goto_1
    if-ge v0, v2, :cond_0

    .line 593
    :cond_3
    aget-char v1, p1, v0

    .line 594
    const/16 v3, 0x7f

    if-le v1, v3, :cond_4

    .line 602
    add-int/lit8 v1, v0, 0x1

    aget-char v0, p1, v0

    .line 603
    const/16 v3, 0x800

    if-ge v0, v3, :cond_5

    .line 604
    iget-object v3, p0, Lcom/d/a/a/c/g;->v:[B

    iget v4, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/d/a/a/c/g;->w:I

    shr-int/lit8 v5, v0, 0x6

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 605
    iget-object v3, p0, Lcom/d/a/a/c/g;->v:[B

    iget v4, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/d/a/a/c/g;->w:I

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    aput-byte v0, v3, v4

    move v0, v1

    goto :goto_1

    .line 597
    :cond_4
    iget-object v3, p0, Lcom/d/a/a/c/g;->v:[B

    iget v4, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/d/a/a/c/g;->w:I

    int-to-byte v1, v1

    aput-byte v1, v3, v4

    .line 598
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v2, :cond_3

    goto :goto_0

    .line 607
    :cond_5
    invoke-direct {p0, v0, p1, v1, v2}, Lcom/d/a/a/c/g;->a(I[CII)I

    move-result v0

    goto :goto_1
.end method

.method protected final b(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1899
    invoke-virtual {p0, p1, p2}, Lcom/d/a/a/c/g;->a(II)I

    move-result v0

    .line 1900
    iget v1, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v1, v1, 0x4

    iget v2, p0, Lcom/d/a/a/c/g;->x:I

    if-le v1, v2, :cond_0

    .line 1901
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->l()V

    .line 1903
    :cond_0
    iget-object v1, p0, Lcom/d/a/a/c/g;->v:[B

    .line 1904
    iget v2, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/d/a/a/c/g;->w:I

    shr-int/lit8 v3, v0, 0x12

    or-int/lit16 v3, v3, 0xf0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1905
    iget v2, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/d/a/a/c/g;->w:I

    shr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1906
    iget v2, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/d/a/a/c/g;->w:I

    shr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1907
    iget v2, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/d/a/a/c/g;->w:I

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 1908
    return-void
.end method

.method protected final b(Lcom/d/a/a/a;[BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 1684
    add-int/lit8 v1, p4, -0x3

    .line 1686
    iget v0, p0, Lcom/d/a/a/c/g;->x:I

    add-int/lit8 v2, v0, -0x6

    .line 1687
    invoke-virtual {p1}, Lcom/d/a/a/a;->c()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    .line 1690
    :cond_0
    :goto_0
    if-gt p3, v1, :cond_2

    .line 1691
    iget v3, p0, Lcom/d/a/a/c/g;->w:I

    if-le v3, v2, :cond_1

    .line 1692
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->l()V

    .line 1695
    :cond_1
    add-int/lit8 v3, p3, 0x1

    aget-byte v4, p2, p3

    shl-int/lit8 v4, v4, 0x8

    .line 1696
    add-int/lit8 v5, v3, 0x1

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v4

    .line 1697
    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 p3, v5, 0x1

    aget-byte v4, p2, v5

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    .line 1698
    iget-object v4, p0, Lcom/d/a/a/c/g;->v:[B

    iget v5, p0, Lcom/d/a/a/c/g;->w:I

    invoke-virtual {p1, v3, v4, v5}, Lcom/d/a/a/a;->a(I[BI)I

    move-result v3

    iput v3, p0, Lcom/d/a/a/c/g;->w:I

    .line 1699
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_0

    .line 1701
    iget-object v0, p0, Lcom/d/a/a/c/g;->v:[B

    iget v3, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/d/a/a/c/g;->w:I

    const/16 v4, 0x5c

    aput-byte v4, v0, v3

    .line 1702
    iget-object v0, p0, Lcom/d/a/a/c/g;->v:[B

    iget v3, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/d/a/a/c/g;->w:I

    const/16 v4, 0x6e

    aput-byte v4, v0, v3

    .line 1703
    invoke-virtual {p1}, Lcom/d/a/a/a;->c()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 1708
    :cond_2
    sub-int v1, p4, p3

    .line 1709
    if-lez v1, :cond_5

    .line 1710
    iget v0, p0, Lcom/d/a/a/c/g;->w:I

    if-le v0, v2, :cond_3

    .line 1711
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->l()V

    .line 1713
    :cond_3
    add-int/lit8 v2, p3, 0x1

    aget-byte v0, p2, p3

    shl-int/lit8 v0, v0, 0x10

    .line 1714
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 1715
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    .line 1717
    :cond_4
    iget-object v2, p0, Lcom/d/a/a/c/g;->v:[B

    iget v3, p0, Lcom/d/a/a/c/g;->w:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/d/a/a/a;->a(II[BI)I

    move-result v0

    iput v0, p0, Lcom/d/a/a/c/g;->w:I

    .line 1719
    :cond_5
    return-void
.end method

.method public b(Lcom/d/a/a/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 552
    invoke-interface {p1}, Lcom/d/a/a/r;->b()[B

    move-result-object v0

    .line 553
    array-length v1, v0

    if-lez v1, :cond_0

    .line 554
    invoke-direct {p0, v0}, Lcom/d/a/a/c/g;->b([B)V

    .line 556
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x22

    .line 410
    const-string/jumbo v0, "write a string"

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/g;->f(Ljava/lang/String;)V

    .line 411
    if-nez p1, :cond_0

    .line 412
    invoke-direct {p0}, Lcom/d/a/a/c/g;->m()V

    .line 430
    :goto_0
    return-void

    .line 416
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 417
    iget v1, p0, Lcom/d/a/a/c/g;->y:I

    if-le v0, v1, :cond_1

    .line 418
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/d/a/a/c/g;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 421
    :cond_1
    iget v1, p0, Lcom/d/a/a/c/g;->w:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/d/a/a/c/g;->x:I

    if-lt v1, v2, :cond_2

    .line 422
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->l()V

    .line 424
    :cond_2
    iget-object v1, p0, Lcom/d/a/a/c/g;->v:[B

    iget v2, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/d/a/a/c/g;->w:I

    aput-byte v4, v1, v2

    .line 425
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/d/a/a/c/g;->b(Ljava/lang/String;II)V

    .line 426
    iget v0, p0, Lcom/d/a/a/c/g;->w:I

    iget v1, p0, Lcom/d/a/a/c/g;->x:I

    if-lt v0, v1, :cond_3

    .line 427
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->l()V

    .line 429
    :cond_3
    iget-object v0, p0, Lcom/d/a/a/c/g;->v:[B

    iget v1, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/g;->w:I

    aput-byte v4, v0, v1

    goto :goto_0
.end method

.method public final c()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    const-string/jumbo v0, "start an array"

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/g;->f(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/d/a/a/c/g;->l:Lcom/d/a/a/c/e;

    invoke-virtual {v0}, Lcom/d/a/a/c/e;->g()Lcom/d/a/a/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/c/g;->l:Lcom/d/a/a/c/e;

    .line 270
    iget-object v0, p0, Lcom/d/a/a/c/g;->a:Lcom/d/a/a/q;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/d/a/a/c/g;->a:Lcom/d/a/a/q;

    invoke-interface {v0, p0}, Lcom/d/a/a/q;->e(Lcom/d/a/a/g;)V

    .line 278
    :goto_0
    return-void

    .line 273
    :cond_0
    iget v0, p0, Lcom/d/a/a/c/g;->w:I

    iget v1, p0, Lcom/d/a/a/c/g;->x:I

    if-lt v0, v1, :cond_1

    .line 274
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->l()V

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/d/a/a/c/g;->v:[B

    iget v1, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/g;->w:I

    const/16 v2, 0x5b

    aput-byte v2, v0, v1

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
    .line 762
    const-string/jumbo v0, "write a number"

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/g;->f(Ljava/lang/String;)V

    .line 764
    iget v0, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v0, v0, 0xb

    iget v1, p0, Lcom/d/a/a/c/g;->x:I

    if-lt v0, v1, :cond_0

    .line 765
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->l()V

    .line 767
    :cond_0
    iget-boolean v0, p0, Lcom/d/a/a/c/g;->k:Z

    if-eqz v0, :cond_1

    .line 768
    invoke-direct {p0, p1}, Lcom/d/a/a/c/g;->d(I)V

    .line 772
    :goto_0
    return-void

    .line 771
    :cond_1
    iget-object v0, p0, Lcom/d/a/a/c/g;->v:[B

    iget v1, p0, Lcom/d/a/a/c/g;->w:I

    invoke-static {p1, v0, v1}, Lcom/d/a/a/b/h;->a(I[BI)I

    move-result v0

    iput v0, p0, Lcom/d/a/a/c/g;->w:I

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 521
    .line 522
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    move v2, v3

    .line 523
    :goto_0
    if-lez v1, :cond_1

    .line 524
    iget-object v4, p0, Lcom/d/a/a/c/g;->z:[C

    .line 525
    array-length v0, v4

    .line 526
    if-ge v1, v0, :cond_0

    move v0, v1

    .line 527
    :cond_0
    add-int v5, v2, v0

    invoke-virtual {p1, v2, v5, v4, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 528
    invoke-virtual {p0, v4, v3, v0}, Lcom/d/a/a/c/g;->a([CII)V

    .line 529
    add-int/2addr v2, v0

    .line 530
    sub-int/2addr v1, v0

    .line 531
    goto :goto_0

    .line 532
    :cond_1
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1006
    invoke-super {p0}, Lcom/d/a/a/c/c;->close()V

    .line 1012
    iget-object v0, p0, Lcom/d/a/a/c/g;->v:[B

    if-eqz v0, :cond_1

    sget-object v0, Lcom/d/a/a/h;->b:Lcom/d/a/a/h;

    .line 1013
    invoke-virtual {p0, v0}, Lcom/d/a/a/c/g;->a(Lcom/d/a/a/h;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1015
    :goto_0
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->i()Lcom/d/a/a/c/e;

    move-result-object v0

    .line 1016
    invoke-virtual {v0}, Lcom/d/a/a/n;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1017
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->d()V

    goto :goto_0

    .line 1018
    :cond_0
    invoke-virtual {v0}, Lcom/d/a/a/n;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1019
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->f()V

    goto :goto_0

    .line 1025
    :cond_1
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->l()V

    .line 1026
    const/4 v0, 0x0

    iput v0, p0, Lcom/d/a/a/c/g;->w:I

    .line 1034
    iget-object v0, p0, Lcom/d/a/a/c/g;->u:Ljava/io/OutputStream;

    if-eqz v0, :cond_3

    .line 1035
    iget-object v0, p0, Lcom/d/a/a/c/g;->o:Lcom/d/a/a/b/c;

    invoke-virtual {v0}, Lcom/d/a/a/b/c;->c()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/d/a/a/h;->a:Lcom/d/a/a/h;

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/g;->a(Lcom/d/a/a/h;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1036
    :cond_2
    iget-object v0, p0, Lcom/d/a/a/c/g;->u:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1043
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->j()V

    .line 1044
    return-void

    .line 1037
    :cond_4
    sget-object v0, Lcom/d/a/a/h;->c:Lcom/d/a/a/h;

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/g;->a(Lcom/d/a/a/h;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1039
    iget-object v0, p0, Lcom/d/a/a/c/g;->u:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    goto :goto_1
.end method

.method public final d()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/d/a/a/c/g;->l:Lcom/d/a/a/c/e;

    invoke-virtual {v0}, Lcom/d/a/a/c/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Current context not an ARRAY but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/d/a/a/c/g;->l:Lcom/d/a/a/c/e;

    invoke-virtual {v1}, Lcom/d/a/a/c/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/g;->e(Ljava/lang/String;)V

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/g;->a:Lcom/d/a/a/q;

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/d/a/a/c/g;->a:Lcom/d/a/a/q;

    iget-object v1, p0, Lcom/d/a/a/c/g;->l:Lcom/d/a/a/c/e;

    invoke-virtual {v1}, Lcom/d/a/a/c/e;->e()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/d/a/a/q;->b(Lcom/d/a/a/g;I)V

    .line 294
    :goto_0
    iget-object v0, p0, Lcom/d/a/a/c/g;->l:Lcom/d/a/a/c/e;

    invoke-virtual {v0}, Lcom/d/a/a/c/e;->i()Lcom/d/a/a/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/c/g;->l:Lcom/d/a/a/c/e;

    .line 295
    return-void

    .line 289
    :cond_1
    iget v0, p0, Lcom/d/a/a/c/g;->w:I

    iget v1, p0, Lcom/d/a/a/c/g;->x:I

    if-lt v0, v1, :cond_2

    .line 290
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->l()V

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/d/a/a/c/g;->v:[B

    iget v1, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/g;->w:I

    const/16 v2, 0x5d

    aput-byte v2, v0, v1

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
    .line 873
    const-string/jumbo v0, "write a number"

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/g;->f(Ljava/lang/String;)V

    .line 874
    iget-boolean v0, p0, Lcom/d/a/a/c/g;->k:Z

    if-eqz v0, :cond_0

    .line 875
    invoke-direct {p0, p1}, Lcom/d/a/a/c/g;->h(Ljava/lang/String;)V

    .line 879
    :goto_0
    return-void

    .line 877
    :cond_0
    invoke-virtual {p0, p1}, Lcom/d/a/a/c/g;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final e()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    const-string/jumbo v0, "start an object"

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/g;->f(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/d/a/a/c/g;->l:Lcom/d/a/a/c/e;

    invoke-virtual {v0}, Lcom/d/a/a/c/e;->h()Lcom/d/a/a/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/c/g;->l:Lcom/d/a/a/c/e;

    .line 302
    iget-object v0, p0, Lcom/d/a/a/c/g;->a:Lcom/d/a/a/q;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/d/a/a/c/g;->a:Lcom/d/a/a/q;

    invoke-interface {v0, p0}, Lcom/d/a/a/q;->b(Lcom/d/a/a/g;)V

    .line 310
    :goto_0
    return-void

    .line 305
    :cond_0
    iget v0, p0, Lcom/d/a/a/c/g;->w:I

    iget v1, p0, Lcom/d/a/a/c/g;->x:I

    if-lt v0, v1, :cond_1

    .line 306
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->l()V

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/d/a/a/c/g;->v:[B

    iget v1, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/g;->w:I

    const/16 v2, 0x7b

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public final f()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lcom/d/a/a/c/g;->l:Lcom/d/a/a/c/e;

    invoke-virtual {v0}, Lcom/d/a/a/c/e;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Current context not an object but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/d/a/a/c/g;->l:Lcom/d/a/a/c/e;

    invoke-virtual {v1}, Lcom/d/a/a/c/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/g;->e(Ljava/lang/String;)V

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/g;->a:Lcom/d/a/a/q;

    if-eqz v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/d/a/a/c/g;->a:Lcom/d/a/a/q;

    iget-object v1, p0, Lcom/d/a/a/c/g;->l:Lcom/d/a/a/c/e;

    invoke-virtual {v1}, Lcom/d/a/a/c/e;->e()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/d/a/a/q;->a(Lcom/d/a/a/g;I)V

    .line 326
    :goto_0
    iget-object v0, p0, Lcom/d/a/a/c/g;->l:Lcom/d/a/a/c/e;

    invoke-virtual {v0}, Lcom/d/a/a/c/e;->i()Lcom/d/a/a/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/c/g;->l:Lcom/d/a/a/c/e;

    .line 327
    return-void

    .line 321
    :cond_1
    iget v0, p0, Lcom/d/a/a/c/g;->w:I

    iget v1, p0, Lcom/d/a/a/c/g;->x:I

    if-lt v0, v1, :cond_2

    .line 322
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->l()V

    .line 324
    :cond_2
    iget-object v0, p0, Lcom/d/a/a/c/g;->v:[B

    iget v1, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/g;->w:I

    const/16 v2, 0x7d

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method protected final f(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 923
    iget-object v0, p0, Lcom/d/a/a/c/g;->l:Lcom/d/a/a/c/e;

    invoke-virtual {v0}, Lcom/d/a/a/c/e;->j()I

    move-result v0

    .line 924
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 925
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

    invoke-virtual {p0, v1}, Lcom/d/a/a/c/g;->e(Ljava/lang/String;)V

    .line 927
    :cond_0
    iget-object v1, p0, Lcom/d/a/a/c/g;->a:Lcom/d/a/a/q;

    if-nez v1, :cond_3

    .line 929
    packed-switch v0, :pswitch_data_0

    .line 957
    :cond_1
    :goto_0
    return-void

    .line 931
    :pswitch_0
    const/16 v0, 0x2c

    .line 948
    :goto_1
    iget v1, p0, Lcom/d/a/a/c/g;->w:I

    iget v2, p0, Lcom/d/a/a/c/g;->x:I

    if-lt v1, v2, :cond_2

    .line 949
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->l()V

    .line 951
    :cond_2
    iget-object v1, p0, Lcom/d/a/a/c/g;->v:[B

    iget v2, p0, Lcom/d/a/a/c/g;->w:I

    aput-byte v0, v1, v2

    .line 952
    iget v0, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/d/a/a/c/g;->w:I

    goto :goto_0

    .line 934
    :pswitch_1
    const/16 v0, 0x3a

    .line 935
    goto :goto_1

    .line 937
    :pswitch_2
    iget-object v0, p0, Lcom/d/a/a/c/g;->s:Lcom/d/a/a/r;

    if-eqz v0, :cond_1

    .line 938
    iget-object v0, p0, Lcom/d/a/a/c/g;->s:Lcom/d/a/a/r;

    invoke-interface {v0}, Lcom/d/a/a/r;->b()[B

    move-result-object v0

    .line 939
    array-length v1, v0

    if-lez v1, :cond_1

    .line 940
    invoke-direct {p0, v0}, Lcom/d/a/a/c/g;->b([B)V

    goto :goto_0

    .line 956
    :cond_3
    invoke-virtual {p0, p1, v0}, Lcom/d/a/a/c/g;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 929
    nop

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
    .line 995
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->l()V

    .line 996
    iget-object v0, p0, Lcom/d/a/a/c/g;->u:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 997
    sget-object v0, Lcom/d/a/a/h;->c:Lcom/d/a/a/h;

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/g;->a(Lcom/d/a/a/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 998
    iget-object v0, p0, Lcom/d/a/a/c/g;->u:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 1001
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
    .line 910
    const-string/jumbo v0, "write a null"

    invoke-virtual {p0, v0}, Lcom/d/a/a/c/g;->f(Ljava/lang/String;)V

    .line 911
    invoke-direct {p0}, Lcom/d/a/a/c/g;->m()V

    .line 912
    return-void
.end method

.method protected final g(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x22

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 335
    iget-object v0, p0, Lcom/d/a/a/c/g;->l:Lcom/d/a/a/c/e;

    invoke-virtual {v0, p1}, Lcom/d/a/a/c/e;->a(Ljava/lang/String;)I

    move-result v0

    .line 336
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 337
    const-string/jumbo v1, "Can not write a field name, expecting a value"

    invoke-virtual {p0, v1}, Lcom/d/a/a/c/g;->e(Ljava/lang/String;)V

    .line 339
    :cond_0
    if-ne v0, v2, :cond_1

    .line 340
    iget-object v0, p0, Lcom/d/a/a/c/g;->a:Lcom/d/a/a/q;

    invoke-interface {v0, p0}, Lcom/d/a/a/q;->c(Lcom/d/a/a/g;)V

    .line 344
    :goto_0
    iget-boolean v0, p0, Lcom/d/a/a/c/g;->t:Z

    if-eqz v0, :cond_2

    .line 345
    invoke-direct {p0, p1, v4}, Lcom/d/a/a/c/g;->a(Ljava/lang/String;Z)V

    .line 371
    :goto_1
    return-void

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/d/a/a/c/g;->a:Lcom/d/a/a/q;

    invoke-interface {v0, p0}, Lcom/d/a/a/q;->h(Lcom/d/a/a/g;)V

    goto :goto_0

    .line 348
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 349
    iget v1, p0, Lcom/d/a/a/c/g;->A:I

    if-le v0, v1, :cond_3

    .line 350
    invoke-direct {p0, p1, v2}, Lcom/d/a/a/c/g;->a(Ljava/lang/String;Z)V

    goto :goto_1

    .line 353
    :cond_3
    iget v1, p0, Lcom/d/a/a/c/g;->w:I

    iget v2, p0, Lcom/d/a/a/c/g;->x:I

    if-lt v1, v2, :cond_4

    .line 354
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->l()V

    .line 356
    :cond_4
    iget-object v1, p0, Lcom/d/a/a/c/g;->v:[B

    iget v2, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/d/a/a/c/g;->w:I

    aput-byte v5, v1, v2

    .line 357
    iget-object v1, p0, Lcom/d/a/a/c/g;->z:[C

    invoke-virtual {p1, v4, v0, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 359
    iget v1, p0, Lcom/d/a/a/c/g;->y:I

    if-gt v0, v1, :cond_7

    .line 360
    iget v1, p0, Lcom/d/a/a/c/g;->w:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/d/a/a/c/g;->x:I

    if-le v1, v2, :cond_5

    .line 361
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->l()V

    .line 363
    :cond_5
    iget-object v1, p0, Lcom/d/a/a/c/g;->z:[C

    invoke-direct {p0, v1, v4, v0}, Lcom/d/a/a/c/g;->d([CII)V

    .line 367
    :goto_2
    iget v0, p0, Lcom/d/a/a/c/g;->w:I

    iget v1, p0, Lcom/d/a/a/c/g;->x:I

    if-lt v0, v1, :cond_6

    .line 368
    invoke-virtual {p0}, Lcom/d/a/a/c/g;->l()V

    .line 370
    :cond_6
    iget-object v0, p0, Lcom/d/a/a/c/g;->v:[B

    iget v1, p0, Lcom/d/a/a/c/g;->w:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/d/a/a/c/g;->w:I

    aput-byte v5, v0, v1

    goto :goto_1

    .line 365
    :cond_7
    iget-object v1, p0, Lcom/d/a/a/c/g;->z:[C

    invoke-direct {p0, v1, v4, v0}, Lcom/d/a/a/c/g;->c([CII)V

    goto :goto_2
.end method

.method protected j()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1049
    iget-object v0, p0, Lcom/d/a/a/c/g;->v:[B

    .line 1050
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/d/a/a/c/g;->B:Z

    if-eqz v1, :cond_0

    .line 1051
    iput-object v2, p0, Lcom/d/a/a/c/g;->v:[B

    .line 1052
    iget-object v1, p0, Lcom/d/a/a/c/g;->o:Lcom/d/a/a/b/c;

    invoke-virtual {v1, v0}, Lcom/d/a/a/b/c;->b([B)V

    .line 1054
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/g;->z:[C

    .line 1055
    if-eqz v0, :cond_1

    .line 1056
    iput-object v2, p0, Lcom/d/a/a/c/g;->z:[C

    .line 1057
    iget-object v1, p0, Lcom/d/a/a/c/g;->o:Lcom/d/a/a/b/c;

    invoke-virtual {v1, v0}, Lcom/d/a/a/b/c;->b([C)V

    .line 1059
    :cond_1
    return-void
.end method

.method protected final l()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1979
    iget v0, p0, Lcom/d/a/a/c/g;->w:I

    .line 1980
    if-lez v0, :cond_0

    .line 1981
    iput v3, p0, Lcom/d/a/a/c/g;->w:I

    .line 1982
    iget-object v1, p0, Lcom/d/a/a/c/g;->u:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/d/a/a/c/g;->v:[B

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 1984
    :cond_0
    return-void
.end method
