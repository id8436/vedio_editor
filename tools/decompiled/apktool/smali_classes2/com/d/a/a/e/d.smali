.class public Lcom/d/a/a/e/d;
.super Ljava/lang/Object;
.source "DefaultPrettyPrinter.java"

# interfaces
.implements Lcom/d/a/a/q;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/d/a/a/q;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final a:Lcom/d/a/a/b/j;


# instance fields
.field protected b:Lcom/d/a/a/e/f;

.field protected c:Lcom/d/a/a/e/f;

.field protected final d:Lcom/d/a/a/r;

.field protected e:Z

.field protected transient f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/d/a/a/b/j;

    const-string/jumbo v1, " "

    invoke-direct {v0, v1}, Lcom/d/a/a/b/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/d/a/a/e/d;->a:Lcom/d/a/a/b/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/d/a/a/e/d;->a:Lcom/d/a/a/b/j;

    invoke-direct {p0, v0}, Lcom/d/a/a/e/d;-><init>(Lcom/d/a/a/r;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Lcom/d/a/a/r;)V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Lcom/d/a/a/e/e;->a:Lcom/d/a/a/e/e;

    iput-object v0, p0, Lcom/d/a/a/e/d;->b:Lcom/d/a/a/e/f;

    .line 60
    sget-object v0, Lcom/d/a/a/e/c;->b:Lcom/d/a/a/e/c;

    iput-object v0, p0, Lcom/d/a/a/e/d;->c:Lcom/d/a/a/e/f;

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/d/a/a/e/d;->e:Z

    .line 118
    iput-object p1, p0, Lcom/d/a/a/e/d;->d:Lcom/d/a/a/r;

    .line 119
    return-void
.end method


# virtual methods
.method public a(Lcom/d/a/a/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/d/a/a/e/d;->d:Lcom/d/a/a/r;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/d/a/a/e/d;->d:Lcom/d/a/a/r;

    invoke-virtual {p1, v0}, Lcom/d/a/a/g;->b(Lcom/d/a/a/r;)V

    .line 253
    :cond_0
    return-void
.end method

.method public a(Lcom/d/a/a/g;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lcom/d/a/a/e/d;->c:Lcom/d/a/a/e/f;

    invoke-interface {v0}, Lcom/d/a/a/e/f;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    iget v0, p0, Lcom/d/a/a/e/d;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/d/a/a/e/d;->f:I

    .line 311
    :cond_0
    if-lez p2, :cond_1

    .line 312
    iget-object v0, p0, Lcom/d/a/a/e/d;->c:Lcom/d/a/a/e/f;

    iget v1, p0, Lcom/d/a/a/e/d;->f:I

    invoke-interface {v0, p1, v1}, Lcom/d/a/a/e/f;->a(Lcom/d/a/a/g;I)V

    .line 316
    :goto_0
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Lcom/d/a/a/g;->a(C)V

    .line 317
    return-void

    .line 314
    :cond_1
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/d/a/a/g;->a(C)V

    goto :goto_0
.end method

.method public b(Lcom/d/a/a/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Lcom/d/a/a/g;->a(C)V

    .line 259
    iget-object v0, p0, Lcom/d/a/a/e/d;->c:Lcom/d/a/a/e/f;

    invoke-interface {v0}, Lcom/d/a/a/e/f;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    iget v0, p0, Lcom/d/a/a/e/d;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/d/a/a/e/d;->f:I

    .line 262
    :cond_0
    return-void
.end method

.method public b(Lcom/d/a/a/g;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Lcom/d/a/a/e/d;->b:Lcom/d/a/a/e/f;

    invoke-interface {v0}, Lcom/d/a/a/e/f;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    iget v0, p0, Lcom/d/a/a/e/d;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/d/a/a/e/d;->f:I

    .line 355
    :cond_0
    if-lez p2, :cond_1

    .line 356
    iget-object v0, p0, Lcom/d/a/a/e/d;->b:Lcom/d/a/a/e/f;

    iget v1, p0, Lcom/d/a/a/e/d;->f:I

    invoke-interface {v0, p1, v1}, Lcom/d/a/a/e/f;->a(Lcom/d/a/a/g;I)V

    .line 360
    :goto_0
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Lcom/d/a/a/g;->a(C)V

    .line 361
    return-void

    .line 358
    :cond_1
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/d/a/a/g;->a(C)V

    goto :goto_0
.end method

.method public c(Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 301
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Lcom/d/a/a/g;->a(C)V

    .line 302
    iget-object v0, p0, Lcom/d/a/a/e/d;->c:Lcom/d/a/a/e/f;

    iget v1, p0, Lcom/d/a/a/e/d;->f:I

    invoke-interface {v0, p1, v1}, Lcom/d/a/a/e/f;->a(Lcom/d/a/a/g;I)V

    .line 303
    return-void
.end method

.method public d(Lcom/d/a/a/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/d/a/a/e/d;->e:Z

    if-eqz v0, :cond_0

    .line 283
    const-string/jumbo v0, " : "

    invoke-virtual {p1, v0}, Lcom/d/a/a/g;->c(Ljava/lang/String;)V

    .line 287
    :goto_0
    return-void

    .line 285
    :cond_0
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Lcom/d/a/a/g;->a(C)V

    goto :goto_0
.end method

.method public e(Lcom/d/a/a/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 322
    iget-object v0, p0, Lcom/d/a/a/e/d;->b:Lcom/d/a/a/e/f;

    invoke-interface {v0}, Lcom/d/a/a/e/f;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    iget v0, p0, Lcom/d/a/a/e/d;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/d/a/a/e/d;->f:I

    .line 325
    :cond_0
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Lcom/d/a/a/g;->a(C)V

    .line 326
    return-void
.end method

.method public f(Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 345
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Lcom/d/a/a/g;->a(C)V

    .line 346
    iget-object v0, p0, Lcom/d/a/a/e/d;->b:Lcom/d/a/a/e/f;

    iget v1, p0, Lcom/d/a/a/e/d;->f:I

    invoke-interface {v0, p1, v1}, Lcom/d/a/a/e/f;->a(Lcom/d/a/a/g;I)V

    .line 347
    return-void
.end method

.method public g(Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Lcom/d/a/a/e/d;->b:Lcom/d/a/a/e/f;

    iget v1, p0, Lcom/d/a/a/e/d;->f:I

    invoke-interface {v0, p1, v1}, Lcom/d/a/a/e/f;->a(Lcom/d/a/a/g;I)V

    .line 331
    return-void
.end method

.method public h(Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lcom/d/a/a/e/d;->c:Lcom/d/a/a/e/f;

    iget v1, p0, Lcom/d/a/a/e/d;->f:I

    invoke-interface {v0, p1, v1}, Lcom/d/a/a/e/f;->a(Lcom/d/a/a/g;I)V

    .line 268
    return-void
.end method
