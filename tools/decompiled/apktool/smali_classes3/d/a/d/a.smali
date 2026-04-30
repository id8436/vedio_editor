.class public final Ld/a/d/a;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Ld/a/c/d;


# instance fields
.field final a:Ld/ar;

.field final b:Ld/a/b/h;

.field final c:Le/j;

.field final d:Le/i;

.field e:I

.field private f:J


# direct methods
.method public constructor <init>(Ld/ar;Ld/a/b/h;Le/j;Le/i;)V
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Ld/a/d/a;->e:I

    .line 87
    const-wide/32 v0, 0x40000

    iput-wide v0, p0, Ld/a/d/a;->f:J

    .line 91
    iput-object p1, p0, Ld/a/d/a;->a:Ld/ar;

    .line 92
    iput-object p2, p0, Ld/a/d/a;->b:Ld/a/b/h;

    .line 93
    iput-object p3, p0, Ld/a/d/a;->c:Le/j;

    .line 94
    iput-object p4, p0, Ld/a/d/a;->d:Le/i;

    .line 95
    return-void
.end method

.method private g()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Ld/a/d/a;->c:Le/j;

    iget-wide v2, p0, Ld/a/d/a;->f:J

    invoke-interface {v0, v2, v3}, Le/j;->e(J)Ljava/lang/String;

    move-result-object v0

    .line 213
    iget-wide v2, p0, Ld/a/d/a;->f:J

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Ld/a/d/a;->f:J

    .line 214
    return-object v0
.end method


# virtual methods
.method public a(Z)Ld/be;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    iget v0, p0, Ld/a/d/a;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Ld/a/d/a;->e:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 185
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ld/a/d/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    :try_start_0
    invoke-direct {p0}, Ld/a/d/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/a/c/m;->a(Ljava/lang/String;)Ld/a/c/m;

    move-result-object v1

    .line 191
    new-instance v0, Ld/be;

    invoke-direct {v0}, Ld/be;-><init>()V

    iget-object v2, v1, Ld/a/c/m;->a:Ld/au;

    .line 192
    invoke-virtual {v0, v2}, Ld/be;->a(Ld/au;)Ld/be;

    move-result-object v0

    iget v2, v1, Ld/a/c/m;->b:I

    .line 193
    invoke-virtual {v0, v2}, Ld/be;->a(I)Ld/be;

    move-result-object v0

    iget-object v2, v1, Ld/a/c/m;->c:Ljava/lang/String;

    .line 194
    invoke-virtual {v0, v2}, Ld/be;->a(Ljava/lang/String;)Ld/be;

    move-result-object v0

    .line 195
    invoke-virtual {p0}, Ld/a/d/a;->d()Ld/ag;

    move-result-object v2

    invoke-virtual {v0, v2}, Ld/be;->a(Ld/ag;)Ld/be;

    move-result-object v0

    .line 197
    if-eqz p1, :cond_1

    iget v1, v1, Ld/a/c/m;->b:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_1

    .line 198
    const/4 v0, 0x0

    .line 202
    :goto_0
    return-object v0

    .line 201
    :cond_1
    const/4 v1, 0x4

    iput v1, p0, Ld/a/d/a;->e:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 205
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected end of stream on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ld/a/d/a;->b:Ld/a/b/h;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 207
    throw v1
.end method

.method public a(Ld/bd;)Ld/bf;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const-wide/16 v4, -0x1

    .line 134
    iget-object v0, p0, Ld/a/d/a;->b:Ld/a/b/h;

    iget-object v0, v0, Ld/a/b/h;->c:Ld/z;

    iget-object v1, p0, Ld/a/d/a;->b:Ld/a/b/h;

    iget-object v1, v1, Ld/a/b/h;->b:Ld/g;

    invoke-virtual {v0, v1}, Ld/z;->f(Ld/g;)V

    .line 135
    const-string/jumbo v0, "Content-Type"

    invoke-virtual {p1, v0}, Ld/bd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-static {p1}, Ld/a/c/g;->b(Ld/bd;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p0, v6, v7}, Ld/a/d/a;->b(J)Le/ab;

    move-result-object v2

    .line 139
    new-instance v0, Ld/a/c/j;

    invoke-static {v2}, Le/q;->a(Le/ab;)Le/j;

    move-result-object v2

    invoke-direct {v0, v1, v6, v7, v2}, Ld/a/c/j;-><init>(Ljava/lang/String;JLe/j;)V

    .line 153
    :goto_0
    return-object v0

    .line 142
    :cond_0
    const-string/jumbo v0, "chunked"

    const-string/jumbo v2, "Transfer-Encoding"

    invoke-virtual {p1, v2}, Ld/bd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {p1}, Ld/bd;->a()Ld/ax;

    move-result-object v0

    invoke-virtual {v0}, Ld/ax;->a()Ld/ai;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld/a/d/a;->a(Ld/ai;)Le/ab;

    move-result-object v2

    .line 144
    new-instance v0, Ld/a/c/j;

    invoke-static {v2}, Le/q;->a(Le/ab;)Le/j;

    move-result-object v2

    invoke-direct {v0, v1, v4, v5, v2}, Ld/a/c/j;-><init>(Ljava/lang/String;JLe/j;)V

    goto :goto_0

    .line 147
    :cond_1
    invoke-static {p1}, Ld/a/c/g;->a(Ld/bd;)J

    move-result-wide v2

    .line 148
    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 149
    invoke-virtual {p0, v2, v3}, Ld/a/d/a;->b(J)Le/ab;

    move-result-object v4

    .line 150
    new-instance v0, Ld/a/c/j;

    invoke-static {v4}, Le/q;->a(Le/ab;)Le/j;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ld/a/c/j;-><init>(Ljava/lang/String;JLe/j;)V

    goto :goto_0

    .line 153
    :cond_2
    new-instance v0, Ld/a/c/j;

    invoke-virtual {p0}, Ld/a/d/a;->f()Le/ab;

    move-result-object v2

    invoke-static {v2}, Le/q;->a(Le/ab;)Le/j;

    move-result-object v2

    invoke-direct {v0, v1, v4, v5, v2}, Ld/a/c/j;-><init>(Ljava/lang/String;JLe/j;)V

    goto :goto_0
.end method

.method public a(J)Le/aa;
    .locals 3

    .prologue
    .line 234
    iget v0, p0, Ld/a/d/a;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ld/a/d/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Ld/a/d/a;->e:I

    .line 236
    new-instance v0, Ld/a/d/f;

    invoke-direct {v0, p0, p1, p2}, Ld/a/d/f;-><init>(Ld/a/d/a;J)V

    return-object v0
.end method

.method public a(Ld/ax;J)Le/aa;
    .locals 2

    .prologue
    .line 98
    const-string/jumbo v0, "chunked"

    const-string/jumbo v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Ld/ax;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Ld/a/d/a;->e()Le/aa;

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    .line 103
    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {p0, p2, p3}, Ld/a/d/a;->a(J)Le/aa;

    move-result-object v0

    goto :goto_0

    .line 108
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ld/ai;)Le/ab;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    iget v0, p0, Ld/a/d/a;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ld/a/d/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Ld/a/d/a;->e:I

    .line 248
    new-instance v0, Ld/a/d/e;

    invoke-direct {v0, p0, p1}, Ld/a/d/e;-><init>(Ld/a/d/a;Ld/ai;)V

    return-object v0
.end method

.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Ld/a/d/a;->d:Le/i;

    invoke-interface {v0}, Le/i;->flush()V

    .line 163
    return-void
.end method

.method public a(Ld/ag;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    iget v0, p0, Ld/a/d/a;->e:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ld/a/d/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    iget-object v0, p0, Ld/a/d/a;->d:Le/i;

    invoke-interface {v0, p2}, Le/i;->b(Ljava/lang/String;)Le/i;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-interface {v0, v1}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 173
    const/4 v0, 0x0

    invoke-virtual {p1}, Ld/ag;->a()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 174
    iget-object v2, p0, Ld/a/d/a;->d:Le/i;

    invoke-virtual {p1, v0}, Ld/ag;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Le/i;->b(Ljava/lang/String;)Le/i;

    move-result-object v2

    const-string/jumbo v3, ": "

    .line 175
    invoke-interface {v2, v3}, Le/i;->b(Ljava/lang/String;)Le/i;

    move-result-object v2

    .line 176
    invoke-virtual {p1, v0}, Ld/ag;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Le/i;->b(Ljava/lang/String;)Le/i;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    .line 177
    invoke-interface {v2, v3}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, p0, Ld/a/d/a;->d:Le/i;

    const-string/jumbo v1, "\r\n"

    invoke-interface {v0, v1}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 180
    const/4 v0, 0x1

    iput v0, p0, Ld/a/d/a;->e:I

    .line 181
    return-void
.end method

.method public a(Ld/ax;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Ld/a/d/a;->b:Ld/a/b/h;

    .line 129
    invoke-virtual {v0}, Ld/a/b/h;->b()Ld/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Ld/a/b/c;->a()Ld/bi;

    move-result-object v0

    invoke-virtual {v0}, Ld/bi;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    .line 128
    invoke-static {p1, v0}, Ld/a/c/k;->a(Ld/ax;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-virtual {p1}, Ld/ax;->c()Ld/ag;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ld/a/d/a;->a(Ld/ag;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method a(Le/n;)V
    .locals 2

    .prologue
    .line 265
    invoke-virtual {p1}, Le/n;->a()Le/ac;

    move-result-object v0

    .line 266
    sget-object v1, Le/ac;->c:Le/ac;

    invoke-virtual {p1, v1}, Le/n;->a(Le/ac;)Le/n;

    .line 267
    invoke-virtual {v0}, Le/ac;->f()Le/ac;

    .line 268
    invoke-virtual {v0}, Le/ac;->d_()Le/ac;

    .line 269
    return-void
.end method

.method public b(J)Le/ab;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    iget v0, p0, Ld/a/d/a;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ld/a/d/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Ld/a/d/a;->e:I

    .line 242
    new-instance v0, Ld/a/d/g;

    invoke-direct {v0, p0, p1, p2}, Ld/a/d/g;-><init>(Ld/a/d/a;J)V

    return-object v0
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Ld/a/d/a;->d:Le/i;

    invoke-interface {v0}, Le/i;->flush()V

    .line 167
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Ld/a/d/a;->b:Ld/a/b/h;

    invoke-virtual {v0}, Ld/a/b/h;->b()Ld/a/b/c;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ld/a/b/c;->b()V

    .line 115
    :cond_0
    return-void
.end method

.method public d()Ld/ag;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    new-instance v0, Ld/ah;

    invoke-direct {v0}, Ld/ah;-><init>()V

    .line 221
    :goto_0
    invoke-direct {p0}, Ld/a/d/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    sget-object v2, Ld/a/a;->a:Ld/a/a;

    invoke-virtual {v2, v0, v1}, Ld/a/a;->a(Ld/ah;Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {v0}, Ld/ah;->a()Ld/ag;

    move-result-object v0

    return-object v0
.end method

.method public e()Le/aa;
    .locals 3

    .prologue
    .line 228
    iget v0, p0, Ld/a/d/a;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ld/a/d/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Ld/a/d/a;->e:I

    .line 230
    new-instance v0, Ld/a/d/d;

    invoke-direct {v0, p0}, Ld/a/d/d;-><init>(Ld/a/d/a;)V

    return-object v0
.end method

.method public f()Le/ab;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    iget v0, p0, Ld/a/d/a;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ld/a/d/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_0
    iget-object v0, p0, Ld/a/d/a;->b:Ld/a/b/h;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_1
    const/4 v0, 0x5

    iput v0, p0, Ld/a/d/a;->e:I

    .line 255
    iget-object v0, p0, Ld/a/d/a;->b:Ld/a/b/h;

    invoke-virtual {v0}, Ld/a/b/h;->d()V

    .line 256
    new-instance v0, Ld/a/d/h;

    invoke-direct {v0, p0}, Ld/a/d/h;-><init>(Ld/a/d/a;)V

    return-object v0
.end method
