.class public abstract Lcom/d/a/a/a/b;
.super Lcom/d/a/a/a/c;
.source "ParserBase.java"


# static fields
.field static final s:Ljava/math/BigInteger;

.field static final t:Ljava/math/BigInteger;

.field static final u:Ljava/math/BigInteger;

.field static final v:Ljava/math/BigInteger;

.field static final w:Ljava/math/BigDecimal;

.field static final x:Ljava/math/BigDecimal;

.field static final y:Ljava/math/BigDecimal;

.field static final z:Ljava/math/BigDecimal;


# instance fields
.field protected A:I

.field protected B:I

.field protected C:J

.field protected D:D

.field protected E:Ljava/math/BigInteger;

.field protected F:Ljava/math/BigDecimal;

.field protected G:Z

.field protected H:I

.field protected I:I

.field protected J:I

.field protected final b:Lcom/d/a/a/b/c;

.field protected c:Z

.field protected d:I

.field protected e:I

.field protected f:J

.field protected g:I

.field protected h:I

.field protected i:J

.field protected j:I

.field protected k:I

.field protected l:Lcom/d/a/a/c/d;

.field protected m:Lcom/d/a/a/o;

.field protected final n:Lcom/d/a/a/e/i;

.field protected o:[C

.field protected p:Z

.field protected q:Lcom/d/a/a/e/b;

.field protected r:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 194
    const-wide/32 v0, -0x80000000

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/d/a/a/a/b;->s:Ljava/math/BigInteger;

    .line 195
    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/d/a/a/a/b;->t:Ljava/math/BigInteger;

    .line 197
    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/d/a/a/a/b;->u:Ljava/math/BigInteger;

    .line 198
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/d/a/a/a/b;->v:Ljava/math/BigInteger;

    .line 200
    new-instance v0, Ljava/math/BigDecimal;

    sget-object v1, Lcom/d/a/a/a/b;->u:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lcom/d/a/a/a/b;->w:Ljava/math/BigDecimal;

    .line 201
    new-instance v0, Ljava/math/BigDecimal;

    sget-object v1, Lcom/d/a/a/a/b;->v:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lcom/d/a/a/a/b;->x:Ljava/math/BigDecimal;

    .line 203
    new-instance v0, Ljava/math/BigDecimal;

    sget-object v1, Lcom/d/a/a/a/b;->s:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lcom/d/a/a/a/b;->y:Ljava/math/BigDecimal;

    .line 204
    new-instance v0, Ljava/math/BigDecimal;

    sget-object v1, Lcom/d/a/a/a/b;->t:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lcom/d/a/a/a/b;->z:Ljava/math/BigDecimal;

    return-void
.end method

.method protected constructor <init>(Lcom/d/a/a/b/c;I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 284
    invoke-direct {p0, p2}, Lcom/d/a/a/a/c;-><init>(I)V

    .line 76
    iput v0, p0, Lcom/d/a/a/a/b;->g:I

    .line 105
    iput v0, p0, Lcom/d/a/a/a/b;->j:I

    .line 233
    const/4 v0, 0x0

    iput v0, p0, Lcom/d/a/a/a/b;->A:I

    .line 285
    iput-object p1, p0, Lcom/d/a/a/a/b;->b:Lcom/d/a/a/b/c;

    .line 286
    invoke-virtual {p1}, Lcom/d/a/a/b/c;->d()Lcom/d/a/a/e/i;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/a/b;->n:Lcom/d/a/a/e/i;

    .line 287
    sget-object v0, Lcom/d/a/a/l;->j:Lcom/d/a/a/l;

    invoke-virtual {v0, p2}, Lcom/d/a/a/l;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    invoke-static {p0}, Lcom/d/a/a/c/b;->a(Lcom/d/a/a/k;)Lcom/d/a/a/c/b;

    move-result-object v0

    .line 289
    :goto_0
    invoke-static {v0}, Lcom/d/a/a/c/d;->a(Lcom/d/a/a/c/b;)Lcom/d/a/a/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/a/b;->l:Lcom/d/a/a/c/d;

    .line 290
    return-void

    .line 288
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(I[CII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 907
    iget-object v0, p0, Lcom/d/a/a/a/b;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0}, Lcom/d/a/a/e/i;->f()Ljava/lang/String;

    move-result-object v1

    .line 910
    :try_start_0
    iget-boolean v0, p0, Lcom/d/a/a/a/b;->G:Z

    invoke-static {p2, p3, p4, v0}, Lcom/d/a/a/b/g;->a([CIIZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 912
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/d/a/a/a/b;->C:J

    .line 913
    const/4 v0, 0x2

    iput v0, p0, Lcom/d/a/a/a/b;->A:I

    .line 923
    :goto_0
    return-void

    .line 916
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/d/a/a/a/b;->E:Ljava/math/BigInteger;

    .line 917
    const/4 v0, 0x4

    iput v0, p0, Lcom/d/a/a/a/b;->A:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 919
    :catch_0
    move-exception v0

    .line 921
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Malformed numeric value \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/d/a/a/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private e(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v0, 0x10

    .line 891
    if-ne p1, v0, :cond_0

    .line 892
    :try_start_0
    iget-object v0, p0, Lcom/d/a/a/a/b;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0}, Lcom/d/a/a/e/i;->h()Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/a/b;->F:Ljava/math/BigDecimal;

    .line 893
    const/16 v0, 0x10

    iput v0, p0, Lcom/d/a/a/a/b;->A:I

    .line 903
    :goto_0
    return-void

    .line 896
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/a/b;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0}, Lcom/d/a/a/e/i;->i()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/d/a/a/a/b;->D:D

    .line 897
    const/16 v0, 0x8

    iput v0, p0, Lcom/d/a/a/a/b;->A:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 899
    :catch_0
    move-exception v0

    .line 901
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Malformed numeric value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/d/a/a/a/b;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v2}, Lcom/d/a/a/e/i;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/d/a/a/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract A()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected B()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 533
    iget-object v0, p0, Lcom/d/a/a/a/b;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0}, Lcom/d/a/a/e/i;->a()V

    .line 534
    iget-object v0, p0, Lcom/d/a/a/a/b;->o:[C

    .line 535
    if-eqz v0, :cond_0

    .line 536
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/d/a/a/a/b;->o:[C

    .line 537
    iget-object v1, p0, Lcom/d/a/a/a/b;->b:Lcom/d/a/a/b/c;

    invoke-virtual {v1, v0}, Lcom/d/a/a/b/c;->c([C)V

    .line 539
    :cond_0
    return-void
.end method

.method protected C()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 548
    iget-object v0, p0, Lcom/d/a/a/a/b;->l:Lcom/d/a/a/c/d;

    invoke-virtual {v0}, Lcom/d/a/a/c/d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ": expected close marker for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/d/a/a/a/b;->l:Lcom/d/a/a/c/d;

    invoke-virtual {v1}, Lcom/d/a/a/c/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/d/a/a/a/b;->l:Lcom/d/a/a/c/d;

    iget-object v2, p0, Lcom/d/a/a/a/b;->b:Lcom/d/a/a/b/c;

    invoke-virtual {v2}, Lcom/d/a/a/b/c;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/d/a/a/c/d;->a(Ljava/lang/Object;)Lcom/d/a/a/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/a/b;->c(Ljava/lang/String;)V

    .line 551
    :cond_0
    return-void
.end method

.method protected final D()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/d/a/a/a/b;->C()V

    .line 558
    const/4 v0, -0x1

    return v0
.end method

.method public E()Lcom/d/a/a/e/b;
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/d/a/a/a/b;->q:Lcom/d/a/a/e/b;

    if-nez v0, :cond_0

    .line 581
    new-instance v0, Lcom/d/a/a/e/b;

    invoke-direct {v0}, Lcom/d/a/a/e/b;-><init>()V

    iput-object v0, p0, Lcom/d/a/a/a/b;->q:Lcom/d/a/a/e/b;

    .line 585
    :goto_0
    iget-object v0, p0, Lcom/d/a/a/a/b;->q:Lcom/d/a/a/e/b;

    return-object v0

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/a/b;->q:Lcom/d/a/a/e/b;

    invoke-virtual {v0}, Lcom/d/a/a/e/b;->a()V

    goto :goto_0
.end method

.method protected F()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 857
    iget-object v0, p0, Lcom/d/a/a/a/b;->K:Lcom/d/a/a/o;

    sget-object v1, Lcom/d/a/a/o;->i:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_2

    .line 858
    iget-object v0, p0, Lcom/d/a/a/a/b;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0}, Lcom/d/a/a/e/i;->e()[C

    move-result-object v1

    .line 859
    iget-object v0, p0, Lcom/d/a/a/a/b;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0}, Lcom/d/a/a/e/i;->d()I

    move-result v0

    .line 860
    iget v2, p0, Lcom/d/a/a/a/b;->H:I

    .line 861
    iget-boolean v3, p0, Lcom/d/a/a/a/b;->G:Z

    if-eqz v3, :cond_0

    .line 862
    add-int/lit8 v0, v0, 0x1

    .line 864
    :cond_0
    const/16 v3, 0x9

    if-gt v2, v3, :cond_2

    .line 865
    invoke-static {v1, v0, v2}, Lcom/d/a/a/b/g;->a([CII)I

    move-result v0

    .line 866
    iget-boolean v1, p0, Lcom/d/a/a/a/b;->G:Z

    if-eqz v1, :cond_1

    .line 867
    neg-int v0, v0

    .line 869
    :cond_1
    iput v0, p0, Lcom/d/a/a/a/b;->B:I

    .line 870
    iput v4, p0, Lcom/d/a/a/a/b;->A:I

    .line 878
    :goto_0
    return v0

    .line 874
    :cond_2
    invoke-virtual {p0, v4}, Lcom/d/a/a/a/b;->a(I)V

    .line 875
    iget v0, p0, Lcom/d/a/a/a/b;->A:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_3

    .line 876
    invoke-virtual {p0}, Lcom/d/a/a/a/b;->G()V

    .line 878
    :cond_3
    iget v0, p0, Lcom/d/a/a/a/b;->B:I

    goto :goto_0
.end method

.method protected G()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 934
    iget v0, p0, Lcom/d/a/a/a/b;->A:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 936
    iget-wide v0, p0, Lcom/d/a/a/a/b;->C:J

    long-to-int v0, v0

    .line 937
    int-to-long v2, v0

    iget-wide v4, p0, Lcom/d/a/a/a/b;->C:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 938
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Numeric value ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/d/a/a/a/b;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") out of range of int"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/d/a/a/a/b;->d(Ljava/lang/String;)V

    .line 940
    :cond_0
    iput v0, p0, Lcom/d/a/a/a/b;->B:I

    .line 962
    :goto_0
    iget v0, p0, Lcom/d/a/a/a/b;->A:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/d/a/a/a/b;->A:I

    .line 963
    return-void

    .line 941
    :cond_1
    iget v0, p0, Lcom/d/a/a/a/b;->A:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 942
    sget-object v0, Lcom/d/a/a/a/b;->s:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/d/a/a/a/b;->E:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_2

    sget-object v0, Lcom/d/a/a/a/b;->t:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/d/a/a/a/b;->E:Ljava/math/BigInteger;

    .line 943
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_3

    .line 944
    :cond_2
    invoke-virtual {p0}, Lcom/d/a/a/a/b;->L()V

    .line 946
    :cond_3
    iget-object v0, p0, Lcom/d/a/a/a/b;->E:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lcom/d/a/a/a/b;->B:I

    goto :goto_0

    .line 947
    :cond_4
    iget v0, p0, Lcom/d/a/a/a/b;->A:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_7

    .line 949
    iget-wide v0, p0, Lcom/d/a/a/a/b;->D:D

    const-wide/high16 v2, -0x3e20000000000000L    # -2.147483648E9

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_5

    iget-wide v0, p0, Lcom/d/a/a/a/b;->D:D

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v0, v0, v2

    if-lez v0, :cond_6

    .line 950
    :cond_5
    invoke-virtual {p0}, Lcom/d/a/a/a/b;->L()V

    .line 952
    :cond_6
    iget-wide v0, p0, Lcom/d/a/a/a/b;->D:D

    double-to-int v0, v0

    iput v0, p0, Lcom/d/a/a/a/b;->B:I

    goto :goto_0

    .line 953
    :cond_7
    iget v0, p0, Lcom/d/a/a/a/b;->A:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a

    .line 954
    sget-object v0, Lcom/d/a/a/a/b;->y:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/d/a/a/a/b;->F:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_8

    sget-object v0, Lcom/d/a/a/a/b;->z:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/d/a/a/a/b;->F:Ljava/math/BigDecimal;

    .line 955
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_9

    .line 956
    :cond_8
    invoke-virtual {p0}, Lcom/d/a/a/a/b;->L()V

    .line 958
    :cond_9
    iget-object v0, p0, Lcom/d/a/a/a/b;->F:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    iput v0, p0, Lcom/d/a/a/a/b;->B:I

    goto :goto_0

    .line 960
    :cond_a
    invoke-virtual {p0}, Lcom/d/a/a/a/b;->Q()V

    goto :goto_0
.end method

.method protected H()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 967
    iget v0, p0, Lcom/d/a/a/a/b;->A:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 968
    iget v0, p0, Lcom/d/a/a/a/b;->B:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/d/a/a/a/b;->C:J

    .line 990
    :goto_0
    iget v0, p0, Lcom/d/a/a/a/b;->A:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/d/a/a/a/b;->A:I

    .line 991
    return-void

    .line 969
    :cond_0
    iget v0, p0, Lcom/d/a/a/a/b;->A:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 970
    sget-object v0, Lcom/d/a/a/a/b;->u:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/d/a/a/a/b;->E:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_1

    sget-object v0, Lcom/d/a/a/a/b;->v:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/d/a/a/a/b;->E:Ljava/math/BigInteger;

    .line 971
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_2

    .line 972
    :cond_1
    invoke-virtual {p0}, Lcom/d/a/a/a/b;->M()V

    .line 974
    :cond_2
    iget-object v0, p0, Lcom/d/a/a/a/b;->E:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/d/a/a/a/b;->C:J

    goto :goto_0

    .line 975
    :cond_3
    iget v0, p0, Lcom/d/a/a/a/b;->A:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    .line 977
    iget-wide v0, p0, Lcom/d/a/a/a/b;->D:D

    const-wide/high16 v2, -0x3c20000000000000L    # -9.223372036854776E18

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_4

    iget-wide v0, p0, Lcom/d/a/a/a/b;->D:D

    const-wide/high16 v2, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double v0, v0, v2

    if-lez v0, :cond_5

    .line 978
    :cond_4
    invoke-virtual {p0}, Lcom/d/a/a/a/b;->M()V

    .line 980
    :cond_5
    iget-wide v0, p0, Lcom/d/a/a/a/b;->D:D

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/d/a/a/a/b;->C:J

    goto :goto_0

    .line 981
    :cond_6
    iget v0, p0, Lcom/d/a/a/a/b;->A:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_9

    .line 982
    sget-object v0, Lcom/d/a/a/a/b;->w:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/d/a/a/a/b;->F:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_7

    sget-object v0, Lcom/d/a/a/a/b;->x:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/d/a/a/a/b;->F:Ljava/math/BigDecimal;

    .line 983
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_8

    .line 984
    :cond_7
    invoke-virtual {p0}, Lcom/d/a/a/a/b;->M()V

    .line 986
    :cond_8
    iget-object v0, p0, Lcom/d/a/a/a/b;->F:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/d/a/a/a/b;->C:J

    goto :goto_0

    .line 988
    :cond_9
    invoke-virtual {p0}, Lcom/d/a/a/a/b;->Q()V

    goto :goto_0
.end method

.method protected I()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 995
    iget v0, p0, Lcom/d/a/a/a/b;->A:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 997
    iget-object v0, p0, Lcom/d/a/a/a/b;->F:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/a/b;->E:Ljava/math/BigInteger;

    .line 1007
    :goto_0
    iget v0, p0, Lcom/d/a/a/a/b;->A:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/d/a/a/a/b;->A:I

    .line 1008
    return-void

    .line 998
    :cond_0
    iget v0, p0, Lcom/d/a/a/a/b;->A:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 999
    iget-wide v0, p0, Lcom/d/a/a/a/b;->C:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/a/b;->E:Ljava/math/BigInteger;

    goto :goto_0

    .line 1000
    :cond_1
    iget v0, p0, Lcom/d/a/a/a/b;->A:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 1001
    iget v0, p0, Lcom/d/a/a/a/b;->B:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/a/b;->E:Ljava/math/BigInteger;

    goto :goto_0

    .line 1002
    :cond_2
    iget v0, p0, Lcom/d/a/a/a/b;->A:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 1003
    iget-wide v0, p0, Lcom/d/a/a/a/b;->D:D

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/a/b;->E:Ljava/math/BigInteger;

    goto :goto_0

    .line 1005
    :cond_3
    invoke-virtual {p0}, Lcom/d/a/a/a/b;->Q()V

    goto :goto_0
.end method

.method protected J()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1018
    iget v0, p0, Lcom/d/a/a/a/b;->A:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/d/a/a/a/b;->F:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/d/a/a/a/b;->D:D

    .line 1029
    :goto_0
    iget v0, p0, Lcom/d/a/a/a/b;->A:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/d/a/a/a/b;->A:I

    .line 1030
    return-void

    .line 1020
    :cond_0
    iget v0, p0, Lcom/d/a/a/a/b;->A:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 1021
    iget-object v0, p0, Lcom/d/a/a/a/b;->E:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/d/a/a/a/b;->D:D

    goto :goto_0

    .line 1022
    :cond_1
    iget v0, p0, Lcom/d/a/a/a/b;->A:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 1023
    iget-wide v0, p0, Lcom/d/a/a/a/b;->C:J

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/d/a/a/a/b;->D:D

    goto :goto_0

    .line 1024
    :cond_2
    iget v0, p0, Lcom/d/a/a/a/b;->A:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 1025
    iget v0, p0, Lcom/d/a/a/a/b;->B:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/d/a/a/a/b;->D:D

    goto :goto_0

    .line 1027
    :cond_3
    invoke-virtual {p0}, Lcom/d/a/a/a/b;->Q()V

    goto :goto_0
.end method

.method protected K()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1040
    iget v0, p0, Lcom/d/a/a/a/b;->A:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 1045
    invoke-virtual {p0}, Lcom/d/a/a/a/b;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/d/a/a/b/g;->b(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/a/b;->F:Ljava/math/BigDecimal;

    .line 1055
    :goto_0
    iget v0, p0, Lcom/d/a/a/a/b;->A:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/d/a/a/a/b;->A:I

    .line 1056
    return-void

    .line 1046
    :cond_0
    iget v0, p0, Lcom/d/a/a/a/b;->A:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 1047
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/d/a/a/a/b;->E:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/d/a/a/a/b;->F:Ljava/math/BigDecimal;

    goto :goto_0

    .line 1048
    :cond_1
    iget v0, p0, Lcom/d/a/a/a/b;->A:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 1049
    iget-wide v0, p0, Lcom/d/a/a/a/b;->C:J

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/a/b;->F:Ljava/math/BigDecimal;

    goto :goto_0

    .line 1050
    :cond_2
    iget v0, p0, Lcom/d/a/a/a/b;->A:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 1051
    iget v0, p0, Lcom/d/a/a/a/b;->B:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/a/b;->F:Ljava/math/BigDecimal;

    goto :goto_0

    .line 1053
    :cond_3
    invoke-virtual {p0}, Lcom/d/a/a/a/b;->Q()V

    goto :goto_0
.end method

.method protected L()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Numeric value ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/d/a/a/a/b;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") out of range of int ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/a/b;->d(Ljava/lang/String;)V

    .line 1078
    return-void
.end method

.method protected M()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Numeric value ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/d/a/a/a/b;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") out of range of long ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/high16 v2, -0x8000000000000000L

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/a/b;->d(Ljava/lang/String;)V

    .line 1082
    return-void
.end method

.method protected N()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1096
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected final a(Lcom/d/a/a/a;CI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1123
    const/16 v0, 0x5c

    if-eq p2, v0, :cond_0

    .line 1124
    invoke-virtual {p0, p1, p2, p3}, Lcom/d/a/a/a/b;->b(Lcom/d/a/a/a;II)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 1126
    :cond_0
    invoke-virtual {p0}, Lcom/d/a/a/a/b;->N()C

    move-result v1

    .line 1128
    const/16 v0, 0x20

    if-gt v1, v0, :cond_2

    .line 1129
    if-nez p3, :cond_2

    .line 1130
    const/4 v0, -0x1

    .line 1138
    :cond_1
    return v0

    .line 1134
    :cond_2
    invoke-virtual {p1, v1}, Lcom/d/a/a/a;->b(C)I

    move-result v0

    .line 1135
    if-gez v0, :cond_1

    .line 1136
    invoke-virtual {p0, p1, v1, p3}, Lcom/d/a/a/a/b;->b(Lcom/d/a/a/a;II)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method protected final a(Lcom/d/a/a/a;II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1102
    const/16 v0, 0x5c

    if-eq p2, v0, :cond_0

    .line 1103
    invoke-virtual {p0, p1, p2, p3}, Lcom/d/a/a/a/b;->b(Lcom/d/a/a/a;II)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 1105
    :cond_0
    invoke-virtual {p0}, Lcom/d/a/a/a/b;->N()C

    move-result v1

    .line 1107
    const/16 v0, 0x20

    if-gt v1, v0, :cond_2

    .line 1108
    if-nez p3, :cond_2

    .line 1109
    const/4 v0, -0x1

    .line 1117
    :cond_1
    return v0

    .line 1113
    :cond_2
    invoke-virtual {p1, v1}, Lcom/d/a/a/a;->b(I)I

    move-result v0

    .line 1114
    if-gez v0, :cond_1

    .line 1115
    invoke-virtual {p0, p1, v1, p3}, Lcom/d/a/a/a/b;->b(Lcom/d/a/a/a;II)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method protected final a(Ljava/lang/String;D)Lcom/d/a/a/o;
    .locals 2

    .prologue
    .line 626
    iget-object v0, p0, Lcom/d/a/a/a/b;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0, p1}, Lcom/d/a/a/e/i;->a(Ljava/lang/String;)V

    .line 627
    iput-wide p2, p0, Lcom/d/a/a/a/b;->D:D

    .line 628
    const/16 v0, 0x8

    iput v0, p0, Lcom/d/a/a/a/b;->A:I

    .line 629
    sget-object v0, Lcom/d/a/a/o;->j:Lcom/d/a/a/o;

    return-object v0
.end method

.method protected final a(ZI)Lcom/d/a/a/o;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 606
    iput-boolean p1, p0, Lcom/d/a/a/a/b;->G:Z

    .line 607
    iput p2, p0, Lcom/d/a/a/a/b;->H:I

    .line 608
    iput v0, p0, Lcom/d/a/a/a/b;->I:I

    .line 609
    iput v0, p0, Lcom/d/a/a/a/b;->J:I

    .line 610
    iput v0, p0, Lcom/d/a/a/a/b;->A:I

    .line 611
    sget-object v0, Lcom/d/a/a/o;->i:Lcom/d/a/a/o;

    return-object v0
.end method

.method protected final a(ZIII)Lcom/d/a/a/o;
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 598
    if-ge p3, v0, :cond_0

    if-ge p4, v0, :cond_0

    .line 599
    invoke-virtual {p0, p1, p2}, Lcom/d/a/a/a/b;->a(ZI)Lcom/d/a/a/o;

    move-result-object v0

    .line 601
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/d/a/a/a/b;->b(ZIII)Lcom/d/a/a/o;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Lcom/d/a/a/a;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1151
    const/16 v0, 0x20

    if-gt p2, v0, :cond_1

    .line 1152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Illegal white space character (code 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") as character #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " of 4-char base64 unit: can only used between units"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1161
    :goto_0
    if-eqz p4, :cond_0

    .line 1162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1164
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 1153
    :cond_1
    invoke-virtual {p1, p2}, Lcom/d/a/a/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unexpected padding character (\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/d/a/a/a;->b()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\') as character #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " of 4-char base64 unit: padding only legal as 3rd or 4th character"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1155
    :cond_2
    invoke-static {p2}, Ljava/lang/Character;->isDefined(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1157
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Illegal character (code 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") in base64 content"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1159
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Illegal character \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-char v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\' (code 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") in base64 content"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected a(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 802
    iget-object v0, p0, Lcom/d/a/a/a/b;->K:Lcom/d/a/a/o;

    sget-object v1, Lcom/d/a/a/o;->i:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_7

    .line 803
    iget-object v0, p0, Lcom/d/a/a/a/b;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0}, Lcom/d/a/a/e/i;->e()[C

    move-result-object v1

    .line 804
    iget-object v0, p0, Lcom/d/a/a/a/b;->n:Lcom/d/a/a/e/i;

    invoke-virtual {v0}, Lcom/d/a/a/e/i;->d()I

    move-result v0

    .line 805
    iget v2, p0, Lcom/d/a/a/a/b;->H:I

    .line 806
    iget-boolean v3, p0, Lcom/d/a/a/a/b;->G:Z

    if-eqz v3, :cond_0

    .line 807
    add-int/lit8 v0, v0, 0x1

    .line 809
    :cond_0
    const/16 v3, 0x9

    if-gt v2, v3, :cond_2

    .line 810
    invoke-static {v1, v0, v2}, Lcom/d/a/a/b/g;->a([CII)I

    move-result v0

    .line 811
    iget-boolean v1, p0, Lcom/d/a/a/a/b;->G:Z

    if-eqz v1, :cond_1

    neg-int v0, v0

    :cond_1
    iput v0, p0, Lcom/d/a/a/a/b;->B:I

    .line 812
    iput v4, p0, Lcom/d/a/a/a/b;->A:I

    .line 848
    :goto_0
    return-void

    .line 815
    :cond_2
    const/16 v3, 0x12

    if-gt v2, v3, :cond_6

    .line 816
    invoke-static {v1, v0, v2}, Lcom/d/a/a/b/g;->b([CII)J

    move-result-wide v0

    .line 817
    iget-boolean v3, p0, Lcom/d/a/a/a/b;->G:Z

    if-eqz v3, :cond_3

    .line 818
    neg-long v0, v0

    .line 821
    :cond_3
    const/16 v3, 0xa

    if-ne v2, v3, :cond_5

    .line 822
    iget-boolean v2, p0, Lcom/d/a/a/a/b;->G:Z

    if-eqz v2, :cond_4

    .line 823
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_5

    .line 824
    long-to-int v0, v0

    iput v0, p0, Lcom/d/a/a/a/b;->B:I

    .line 825
    iput v4, p0, Lcom/d/a/a/a/b;->A:I

    goto :goto_0

    .line 829
    :cond_4
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_5

    .line 830
    long-to-int v0, v0

    iput v0, p0, Lcom/d/a/a/a/b;->B:I

    .line 831
    iput v4, p0, Lcom/d/a/a/a/b;->A:I

    goto :goto_0

    .line 836
    :cond_5
    iput-wide v0, p0, Lcom/d/a/a/a/b;->C:J

    .line 837
    const/4 v0, 0x2

    iput v0, p0, Lcom/d/a/a/a/b;->A:I

    goto :goto_0

    .line 840
    :cond_6
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/d/a/a/a/b;->a(I[CII)V

    goto :goto_0

    .line 843
    :cond_7
    iget-object v0, p0, Lcom/d/a/a/a/b;->K:Lcom/d/a/a/o;

    sget-object v1, Lcom/d/a/a/o;->j:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_8

    .line 844
    invoke-direct {p0, p1}, Lcom/d/a/a/a/b;->e(I)V

    goto :goto_0

    .line 847
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Current token ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/d/a/a/a/b;->K:Lcom/d/a/a/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") not numeric, can not use numeric value accessors"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/a/b;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(IC)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/d/a/a/a/b;->l:Lcom/d/a/a/c/d;

    iget-object v2, p0, Lcom/d/a/a/a/b;->b:Lcom/d/a/a/b/c;

    invoke-virtual {v2}, Lcom/d/a/a/b/c;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/d/a/a/c/d;->a(Ljava/lang/Object;)Lcom/d/a/a/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected close marker \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\': expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' (for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/d/a/a/a/b;->l:Lcom/d/a/a/c/d;

    invoke-virtual {v2}, Lcom/d/a/a/c/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " starting at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/a/b;->d(Ljava/lang/String;)V

    .line 570
    return-void
.end method

.method protected a(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 1065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unexpected character ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/d/a/a/a/b;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") in numeric value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1066
    if-eqz p2, :cond_0

    .line 1067
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1069
    :cond_0
    invoke-virtual {p0, v0}, Lcom/d/a/a/a/b;->d(Ljava/lang/String;)V

    .line 1070
    return-void
.end method

.method public a(Lcom/d/a/a/a;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 475
    iget-object v0, p0, Lcom/d/a/a/a/b;->r:[B

    if-nez v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/d/a/a/a/b;->K:Lcom/d/a/a/o;

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-eq v0, v1, :cond_0

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Current token ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/d/a/a/a/b;->K:Lcom/d/a/a/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") not VALUE_STRING, can not access as binary"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/a/b;->d(Ljava/lang/String;)V

    .line 479
    :cond_0
    invoke-virtual {p0}, Lcom/d/a/a/a/b;->E()Lcom/d/a/a/e/b;

    move-result-object v0

    .line 480
    invoke-virtual {p0}, Lcom/d/a/a/a/b;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Lcom/d/a/a/a/b;->a(Ljava/lang/String;Lcom/d/a/a/e/b;Lcom/d/a/a/a;)V

    .line 481
    invoke-virtual {v0}, Lcom/d/a/a/e/b;->b()[B

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/a/b;->r:[B

    .line 483
    :cond_1
    iget-object v0, p0, Lcom/d/a/a/a/b;->r:[B

    return-object v0
.end method

.method protected final b(ZIII)Lcom/d/a/a/o;
    .locals 1

    .prologue
    .line 616
    iput-boolean p1, p0, Lcom/d/a/a/a/b;->G:Z

    .line 617
    iput p2, p0, Lcom/d/a/a/a/b;->H:I

    .line 618
    iput p3, p0, Lcom/d/a/a/a/b;->I:I

    .line 619
    iput p4, p0, Lcom/d/a/a/a/b;->J:I

    .line 620
    const/4 v0, 0x0

    iput v0, p0, Lcom/d/a/a/a/b;->A:I

    .line 621
    sget-object v0, Lcom/d/a/a/o;->j:Lcom/d/a/a/o;

    return-object v0
.end method

.method protected b(Lcom/d/a/a/a;II)Ljava/lang/IllegalArgumentException;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1142
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/d/a/a/a/b;->a(Lcom/d/a/a/a;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    return-object v0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 1073
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Invalid numeric value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/a/b;->d(Ljava/lang/String;)V

    .line 1074
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 415
    iget-boolean v0, p0, Lcom/d/a/a/a/b;->c:Z

    if-nez v0, :cond_0

    .line 416
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/d/a/a/a/b;->c:Z

    .line 418
    :try_start_0
    invoke-virtual {p0}, Lcom/d/a/a/a/b;->A()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    invoke-virtual {p0}, Lcom/d/a/a/a/b;->B()V

    .line 425
    :cond_0
    return-void

    .line 422
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/d/a/a/a/b;->B()V

    throw v0
.end method

.method public d()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 389
    iget-object v0, p0, Lcom/d/a/a/a/b;->K:Lcom/d/a/a/o;

    sget-object v1, Lcom/d/a/a/o;->b:Lcom/d/a/a/o;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/d/a/a/a/b;->K:Lcom/d/a/a/o;

    sget-object v1, Lcom/d/a/a/o;->d:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_1

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/a/b;->l:Lcom/d/a/a/c/d;

    invoke-virtual {v0}, Lcom/d/a/a/c/d;->h()Lcom/d/a/a/c/d;

    move-result-object v0

    .line 391
    if-eqz v0, :cond_1

    .line 392
    invoke-virtual {v0}, Lcom/d/a/a/c/d;->g()Ljava/lang/String;

    move-result-object v0

    .line 395
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/d/a/a/a/b;->l:Lcom/d/a/a/c/d;

    invoke-virtual {v0}, Lcom/d/a/a/c/d;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public e()Lcom/d/a/a/i;
    .locals 8

    .prologue
    .line 437
    new-instance v0, Lcom/d/a/a/i;

    iget-object v1, p0, Lcom/d/a/a/a/b;->b:Lcom/d/a/a/b/c;

    invoke-virtual {v1}, Lcom/d/a/a/b/c;->a()Ljava/lang/Object;

    move-result-object v1

    const-wide/16 v2, -0x1

    .line 438
    invoke-virtual {p0}, Lcom/d/a/a/a/b;->u()J

    move-result-wide v4

    .line 439
    invoke-virtual {p0}, Lcom/d/a/a/a/b;->v()I

    move-result v6

    .line 440
    invoke-virtual {p0}, Lcom/d/a/a/a/b;->w()I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/d/a/a/i;-><init>(Ljava/lang/Object;JJII)V

    return-object v0
.end method

.method public f()Lcom/d/a/a/i;
    .locals 10

    .prologue
    .line 449
    iget v0, p0, Lcom/d/a/a/a/b;->d:I

    iget v1, p0, Lcom/d/a/a/a/b;->h:I

    sub-int/2addr v0, v1

    add-int/lit8 v7, v0, 0x1

    .line 450
    new-instance v0, Lcom/d/a/a/i;

    iget-object v1, p0, Lcom/d/a/a/a/b;->b:Lcom/d/a/a/b/c;

    invoke-virtual {v1}, Lcom/d/a/a/b/c;->a()Ljava/lang/Object;

    move-result-object v1

    const-wide/16 v2, -0x1

    iget-wide v4, p0, Lcom/d/a/a/a/b;->f:J

    iget v6, p0, Lcom/d/a/a/a/b;->d:I

    int-to-long v8, v6

    add-long/2addr v4, v8

    iget v6, p0, Lcom/d/a/a/a/b;->g:I

    invoke-direct/range {v0 .. v7}, Lcom/d/a/a/i;-><init>(Ljava/lang/Object;JJII)V

    return-object v0
.end method

.method public m()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 702
    iget v0, p0, Lcom/d/a/a/a/b;->A:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 703
    iget v0, p0, Lcom/d/a/a/a/b;->A:I

    if-nez v0, :cond_0

    .line 704
    invoke-virtual {p0}, Lcom/d/a/a/a/b;->F()I

    move-result v0

    .line 710
    :goto_0
    return v0

    .line 706
    :cond_0
    iget v0, p0, Lcom/d/a/a/a/b;->A:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 707
    invoke-virtual {p0}, Lcom/d/a/a/a/b;->G()V

    .line 710
    :cond_1
    iget v0, p0, Lcom/d/a/a/a/b;->B:I

    goto :goto_0
.end method

.method public n()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 716
    iget v0, p0, Lcom/d/a/a/a/b;->A:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 717
    iget v0, p0, Lcom/d/a/a/a/b;->A:I

    if-nez v0, :cond_0

    .line 718
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/d/a/a/a/b;->a(I)V

    .line 720
    :cond_0
    iget v0, p0, Lcom/d/a/a/a/b;->A:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 721
    invoke-virtual {p0}, Lcom/d/a/a/a/b;->H()V

    .line 724
    :cond_1
    iget-wide v0, p0, Lcom/d/a/a/a/b;->C:J

    return-wide v0
.end method

.method public o()Ljava/math/BigInteger;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 730
    iget v0, p0, Lcom/d/a/a/a/b;->A:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    .line 731
    iget v0, p0, Lcom/d/a/a/a/b;->A:I

    if-nez v0, :cond_0

    .line 732
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/d/a/a/a/b;->a(I)V

    .line 734
    :cond_0
    iget v0, p0, Lcom/d/a/a/a/b;->A:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    .line 735
    invoke-virtual {p0}, Lcom/d/a/a/a/b;->I()V

    .line 738
    :cond_1
    iget-object v0, p0, Lcom/d/a/a/a/b;->E:Ljava/math/BigInteger;

    return-object v0
.end method

.method public p()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/d/a/a/a/b;->q()D

    move-result-wide v0

    .line 753
    double-to-float v0, v0

    return v0
.end method

.method public q()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 759
    iget v0, p0, Lcom/d/a/a/a/b;->A:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    .line 760
    iget v0, p0, Lcom/d/a/a/a/b;->A:I

    if-nez v0, :cond_0

    .line 761
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/d/a/a/a/b;->a(I)V

    .line 763
    :cond_0
    iget v0, p0, Lcom/d/a/a/a/b;->A:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    .line 764
    invoke-virtual {p0}, Lcom/d/a/a/a/b;->J()V

    .line 767
    :cond_1
    iget-wide v0, p0, Lcom/d/a/a/a/b;->D:D

    return-wide v0
.end method

.method public r()Ljava/math/BigDecimal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 773
    iget v0, p0, Lcom/d/a/a/a/b;->A:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    .line 774
    iget v0, p0, Lcom/d/a/a/a/b;->A:I

    if-nez v0, :cond_0

    .line 775
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/d/a/a/a/b;->a(I)V

    .line 777
    :cond_0
    iget v0, p0, Lcom/d/a/a/a/b;->A:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    .line 778
    invoke-virtual {p0}, Lcom/d/a/a/a/b;->K()V

    .line 781
    :cond_1
    iget-object v0, p0, Lcom/d/a/a/a/b;->F:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public u()J
    .locals 2

    .prologue
    .line 492
    iget-wide v0, p0, Lcom/d/a/a/a/b;->i:J

    return-wide v0
.end method

.method public v()I
    .locals 1

    .prologue
    .line 493
    iget v0, p0, Lcom/d/a/a/a/b;->j:I

    return v0
.end method

.method public w()I
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Lcom/d/a/a/a/b;->k:I

    .line 497
    if-gez v0, :cond_0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final x()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/d/a/a/a/b;->y()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/d/a/a/a/b;->O()V

    .line 508
    :cond_0
    return-void
.end method

.method protected abstract y()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract z()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
