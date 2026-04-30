.class public abstract Lcom/d/a/a/a/a;
.super Lcom/d/a/a/g;
.source "GeneratorBase.java"


# static fields
.field protected static final b:I


# instance fields
.field protected final c:Ljava/lang/String;

.field protected final d:Ljava/lang/String;

.field protected final e:Ljava/lang/String;

.field protected final f:Ljava/lang/String;

.field protected final g:Ljava/lang/String;

.field protected final h:Ljava/lang/String;

.field protected i:Lcom/d/a/a/p;

.field protected j:I

.field protected k:Z

.field protected l:Lcom/d/a/a/c/e;

.field protected m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lcom/d/a/a/h;->f:Lcom/d/a/a/h;

    .line 30
    invoke-virtual {v0}, Lcom/d/a/a/h;->c()I

    move-result v0

    sget-object v1, Lcom/d/a/a/h;->h:Lcom/d/a/a/h;

    .line 31
    invoke-virtual {v1}, Lcom/d/a/a/h;->c()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/d/a/a/h;->i:Lcom/d/a/a/h;

    .line 32
    invoke-virtual {v1}, Lcom/d/a/a/h;->c()I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/d/a/a/a/a;->b:I

    .line 29
    return-void
.end method

.method protected constructor <init>(ILcom/d/a/a/p;)V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/d/a/a/g;-><init>()V

    .line 37
    const-string/jumbo v0, "write a binary value"

    iput-object v0, p0, Lcom/d/a/a/a/a;->c:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "write a boolean value"

    iput-object v0, p0, Lcom/d/a/a/a/a;->d:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "write a null"

    iput-object v0, p0, Lcom/d/a/a/a/a;->e:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "write a number"

    iput-object v0, p0, Lcom/d/a/a/a/a;->f:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, "write a raw (unencoded) value"

    iput-object v0, p0, Lcom/d/a/a/a/a;->g:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, "write a string"

    iput-object v0, p0, Lcom/d/a/a/a/a;->h:Ljava/lang/String;

    .line 93
    iput p1, p0, Lcom/d/a/a/a/a;->j:I

    .line 94
    iput-object p2, p0, Lcom/d/a/a/a/a;->i:Lcom/d/a/a/p;

    .line 95
    sget-object v0, Lcom/d/a/a/h;->i:Lcom/d/a/a/h;

    invoke-virtual {v0, p1}, Lcom/d/a/a/h;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-static {p0}, Lcom/d/a/a/c/b;->a(Lcom/d/a/a/g;)Lcom/d/a/a/c/b;

    move-result-object v0

    .line 97
    :goto_0
    invoke-static {v0}, Lcom/d/a/a/c/e;->a(Lcom/d/a/a/c/b;)Lcom/d/a/a/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/a/a;->l:Lcom/d/a/a/c/e;

    .line 98
    sget-object v0, Lcom/d/a/a/h;->f:Lcom/d/a/a/h;

    invoke-virtual {v0, p1}, Lcom/d/a/a/h;->a(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/d/a/a/a/a;->k:Z

    .line 99
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v2, 0xdc00

    .line 429
    if-lt p2, v2, :cond_0

    const v0, 0xdfff

    if-le p2, v0, :cond_1

    .line 430
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Incomplete surrogate pair: first char 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", second 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    invoke-virtual {p0, v0}, Lcom/d/a/a/a/a;->e(Ljava/lang/String;)V

    .line 433
    :cond_1
    const/high16 v0, 0x10000

    const v1, 0xd800

    sub-int v1, p1, v1

    shl-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    sub-int v1, p2, v2

    add-int/2addr v0, v1

    .line 434
    return v0
.end method

.method public final a(Lcom/d/a/a/h;)Z
    .locals 2

    .prologue
    .line 136
    iget v0, p0, Lcom/d/a/a/a/a;->j:I

    invoke-virtual {p1}, Lcom/d/a/a/h;->c()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lcom/d/a/a/g;
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/d/a/a/a/a;->a()Lcom/d/a/a/q;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/d/a/a/a/a;->k()Lcom/d/a/a/q;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/a/a;->a(Lcom/d/a/a/q;)Lcom/d/a/a/g;

    move-result-object p0

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/d/a/a/a/a;->m:Z

    return-void
.end method

.method protected abstract f(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public i()Lcom/d/a/a/c/e;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/d/a/a/a/a;->l:Lcom/d/a/a/c/e;

    return-object v0
.end method

.method protected abstract j()V
.end method

.method protected k()Lcom/d/a/a/q;
    .locals 1

    .prologue
    .line 414
    new-instance v0, Lcom/d/a/a/e/d;

    invoke-direct {v0}, Lcom/d/a/a/e/d;-><init>()V

    return-object v0
.end method
