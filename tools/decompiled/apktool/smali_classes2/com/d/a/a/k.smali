.class public abstract Lcom/d/a/a/k;
.super Ljava/lang/Object;
.source "JsonParser.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field protected a:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/d/a/a/k;->a:I

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Lcom/d/a/a/j;
    .locals 1

    .prologue
    .line 1586
    new-instance v0, Lcom/d/a/a/j;

    invoke-direct {v0, p0, p1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    return-object v0
.end method

.method public abstract a()Lcom/d/a/a/o;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation
.end method

.method public a(Lcom/d/a/a/l;)Z
    .locals 1

    .prologue
    .line 515
    iget v0, p0, Lcom/d/a/a/k;->a:I

    invoke-virtual {p1, v0}, Lcom/d/a/a/l;->a(I)Z

    move-result v0

    return v0
.end method

.method public abstract a(Lcom/d/a/a/a;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b()Lcom/d/a/a/k;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation
.end method

.method public abstract c()Lcom/d/a/a/o;
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract d()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract e()Lcom/d/a/a/i;
.end method

.method public abstract f()Lcom/d/a/a/i;
.end method

.method public abstract g()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract h()[C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract i()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract j()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public k()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1048
    invoke-virtual {p0}, Lcom/d/a/a/k;->m()I

    move-result v0

    .line 1052
    const/16 v1, -0x80

    if-lt v0, v1, :cond_0

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 1053
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Numeric value ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/d/a/a/k;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") out of range of Java byte"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/k;->a(Ljava/lang/String;)Lcom/d/a/a/j;

    move-result-object v0

    throw v0

    .line 1055
    :cond_1
    int-to-byte v0, v0

    return v0
.end method

.method public l()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1073
    invoke-virtual {p0}, Lcom/d/a/a/k;->m()I

    move-result v0

    .line 1074
    const/16 v1, -0x8000

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7fff

    if-le v0, v1, :cond_1

    .line 1075
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Numeric value ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/d/a/a/k;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") out of range of Java short"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/k;->a(Ljava/lang/String;)Lcom/d/a/a/j;

    move-result-object v0

    throw v0

    .line 1077
    :cond_1
    int-to-short v0, v0

    return v0
.end method

.method public abstract m()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract n()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract o()Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract p()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract q()D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract r()Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public s()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1176
    invoke-virtual {p0}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v2

    .line 1177
    sget-object v3, Lcom/d/a/a/o;->k:Lcom/d/a/a/o;

    if-ne v2, v3, :cond_0

    .line 1178
    :goto_0
    return v0

    :cond_0
    sget-object v3, Lcom/d/a/a/o;->l:Lcom/d/a/a/o;

    if-ne v2, v3, :cond_1

    move v0, v1

    goto :goto_0

    .line 1179
    :cond_1
    new-instance v3, Lcom/d/a/a/j;

    const-string/jumbo v4, "Current token (%s) not of boolean type"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    .line 1180
    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, p0, v0}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v3
.end method

.method public t()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1230
    invoke-static {}, Lcom/d/a/a/b;->a()Lcom/d/a/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/k;->a(Lcom/d/a/a/a;)[B

    move-result-object v0

    return-object v0
.end method
