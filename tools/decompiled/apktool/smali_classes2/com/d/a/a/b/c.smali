.class public Lcom/d/a/a/b/c;
.super Ljava/lang/Object;
.source "IOContext.java"


# instance fields
.field protected final a:Ljava/lang/Object;

.field protected b:Lcom/d/a/a/c;

.field protected final c:Z

.field protected final d:Lcom/d/a/a/e/a;

.field protected e:[B

.field protected f:[B

.field protected g:[C

.field protected h:[C

.field protected i:[C


# direct methods
.method public constructor <init>(Lcom/d/a/a/e/a;Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/d/a/a/b/c;->d:Lcom/d/a/a/e/a;

    .line 104
    iput-object p2, p0, Lcom/d/a/a/b/c;->a:Ljava/lang/Object;

    .line 105
    iput-boolean p3, p0, Lcom/d/a/a/b/c;->c:Z

    .line 106
    return-void
.end method

.method private i()Ljava/lang/IllegalArgumentException;
    .locals 2

    .prologue
    .line 280
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/d/a/a/b/c;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Lcom/d/a/a/c;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/d/a/a/b/c;->b:Lcom/d/a/a/c;

    .line 110
    return-void
.end method

.method protected final a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 269
    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Trying to call same allocXxx() method second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_0
    return-void
.end method

.method public a([B)V
    .locals 2

    .prologue
    .line 207
    if-eqz p1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/d/a/a/b/c;->e:[B

    invoke-virtual {p0, p1, v0}, Lcom/d/a/a/b/c;->a([B[B)V

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/d/a/a/b/c;->e:[B

    .line 213
    iget-object v0, p0, Lcom/d/a/a/b/c;->d:Lcom/d/a/a/e/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/d/a/a/e/a;->a(I[B)V

    .line 215
    :cond_0
    return-void
.end method

.method protected final a([B[B)V
    .locals 2

    .prologue
    .line 273
    if-eq p1, p2, :cond_0

    array-length v0, p1

    array-length v1, p2

    if-gt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/d/a/a/b/c;->i()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 274
    :cond_0
    return-void
.end method

.method public a([C)V
    .locals 2

    .prologue
    .line 237
    if-eqz p1, :cond_0

    .line 238
    iget-object v0, p0, Lcom/d/a/a/b/c;->g:[C

    invoke-virtual {p0, p1, v0}, Lcom/d/a/a/b/c;->a([C[C)V

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/d/a/a/b/c;->g:[C

    .line 240
    iget-object v0, p0, Lcom/d/a/a/b/c;->d:Lcom/d/a/a/e/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/d/a/a/e/a;->a(I[C)V

    .line 242
    :cond_0
    return-void
.end method

.method protected final a([C[C)V
    .locals 2

    .prologue
    .line 277
    if-eq p1, p2, :cond_0

    array-length v0, p1

    array-length v1, p2

    if-gt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/d/a/a/b/c;->i()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 278
    :cond_0
    return-void
.end method

.method public a(I)[C
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/d/a/a/b/c;->g:[C

    invoke-virtual {p0, v0}, Lcom/d/a/a/b/c;->a(Ljava/lang/Object;)V

    .line 189
    iget-object v0, p0, Lcom/d/a/a/b/c;->d:Lcom/d/a/a/e/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/d/a/a/e/a;->b(II)[C

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/b/c;->g:[C

    return-object v0
.end method

.method public b()Lcom/d/a/a/c;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/d/a/a/b/c;->b:Lcom/d/a/a/c;

    return-object v0
.end method

.method public b([B)V
    .locals 2

    .prologue
    .line 218
    if-eqz p1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/d/a/a/b/c;->f:[B

    invoke-virtual {p0, p1, v0}, Lcom/d/a/a/b/c;->a([B[B)V

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/d/a/a/b/c;->f:[B

    .line 224
    iget-object v0, p0, Lcom/d/a/a/b/c;->d:Lcom/d/a/a/e/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/d/a/a/e/a;->a(I[B)V

    .line 226
    :cond_0
    return-void
.end method

.method public b([C)V
    .locals 2

    .prologue
    .line 245
    if-eqz p1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/d/a/a/b/c;->h:[C

    invoke-virtual {p0, p1, v0}, Lcom/d/a/a/b/c;->a([C[C)V

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/d/a/a/b/c;->h:[C

    .line 249
    iget-object v0, p0, Lcom/d/a/a/b/c;->d:Lcom/d/a/a/e/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/d/a/a/e/a;->a(I[C)V

    .line 251
    :cond_0
    return-void
.end method

.method public b(I)[C
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/d/a/a/b/c;->i:[C

    invoke-virtual {p0, v0}, Lcom/d/a/a/b/c;->a(Ljava/lang/Object;)V

    .line 199
    iget-object v0, p0, Lcom/d/a/a/b/c;->d:Lcom/d/a/a/e/a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/d/a/a/e/a;->b(II)[C

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/b/c;->i:[C

    return-object v0
.end method

.method public c([C)V
    .locals 2

    .prologue
    .line 254
    if-eqz p1, :cond_0

    .line 256
    iget-object v0, p0, Lcom/d/a/a/b/c;->i:[C

    invoke-virtual {p0, p1, v0}, Lcom/d/a/a/b/c;->a([C[C)V

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/d/a/a/b/c;->i:[C

    .line 258
    iget-object v0, p0, Lcom/d/a/a/b/c;->d:Lcom/d/a/a/e/a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/d/a/a/e/a;->a(I[C)V

    .line 260
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/d/a/a/b/c;->c:Z

    return v0
.end method

.method public d()Lcom/d/a/a/e/i;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Lcom/d/a/a/e/i;

    iget-object v1, p0, Lcom/d/a/a/b/c;->d:Lcom/d/a/a/e/a;

    invoke-direct {v0, v1}, Lcom/d/a/a/e/i;-><init>(Lcom/d/a/a/e/a;)V

    return-object v0
.end method

.method public e()[B
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/d/a/a/b/c;->e:[B

    invoke-virtual {p0, v0}, Lcom/d/a/a/b/c;->a(Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/d/a/a/b/c;->d:Lcom/d/a/a/e/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/d/a/a/e/a;->a(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/b/c;->e:[B

    return-object v0
.end method

.method public f()[B
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/d/a/a/b/c;->f:[B

    invoke-virtual {p0, v0}, Lcom/d/a/a/b/c;->a(Ljava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lcom/d/a/a/b/c;->d:Lcom/d/a/a/e/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/d/a/a/e/a;->a(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/b/c;->f:[B

    return-object v0
.end method

.method public g()[C
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/d/a/a/b/c;->g:[C

    invoke-virtual {p0, v0}, Lcom/d/a/a/b/c;->a(Ljava/lang/Object;)V

    .line 181
    iget-object v0, p0, Lcom/d/a/a/b/c;->d:Lcom/d/a/a/e/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/d/a/a/e/a;->b(I)[C

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/b/c;->g:[C

    return-object v0
.end method

.method public h()[C
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/d/a/a/b/c;->h:[C

    invoke-virtual {p0, v0}, Lcom/d/a/a/b/c;->a(Ljava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lcom/d/a/a/b/c;->d:Lcom/d/a/a/e/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/d/a/a/e/a;->b(I)[C

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/b/c;->h:[C

    return-object v0
.end method
