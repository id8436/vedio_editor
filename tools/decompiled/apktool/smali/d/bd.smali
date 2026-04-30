.class public final Ld/bd;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field final a:Ld/ax;

.field final b:Ld/au;

.field final c:I

.field final d:Ljava/lang/String;

.field final e:Ld/af;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final f:Ld/ag;

.field final g:Ld/bf;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final h:Ld/bd;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final i:Ld/bd;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final j:Ld/bd;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final k:J

.field final l:J

.field private volatile m:Ld/e;


# direct methods
.method constructor <init>(Ld/be;)V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iget-object v0, p1, Ld/be;->a:Ld/ax;

    iput-object v0, p0, Ld/bd;->a:Ld/ax;

    .line 61
    iget-object v0, p1, Ld/be;->b:Ld/au;

    iput-object v0, p0, Ld/bd;->b:Ld/au;

    .line 62
    iget v0, p1, Ld/be;->c:I

    iput v0, p0, Ld/bd;->c:I

    .line 63
    iget-object v0, p1, Ld/be;->d:Ljava/lang/String;

    iput-object v0, p0, Ld/bd;->d:Ljava/lang/String;

    .line 64
    iget-object v0, p1, Ld/be;->e:Ld/af;

    iput-object v0, p0, Ld/bd;->e:Ld/af;

    .line 65
    iget-object v0, p1, Ld/be;->f:Ld/ah;

    invoke-virtual {v0}, Ld/ah;->a()Ld/ag;

    move-result-object v0

    iput-object v0, p0, Ld/bd;->f:Ld/ag;

    .line 66
    iget-object v0, p1, Ld/be;->g:Ld/bf;

    iput-object v0, p0, Ld/bd;->g:Ld/bf;

    .line 67
    iget-object v0, p1, Ld/be;->h:Ld/bd;

    iput-object v0, p0, Ld/bd;->h:Ld/bd;

    .line 68
    iget-object v0, p1, Ld/be;->i:Ld/bd;

    iput-object v0, p0, Ld/bd;->i:Ld/bd;

    .line 69
    iget-object v0, p1, Ld/be;->j:Ld/bd;

    iput-object v0, p0, Ld/bd;->j:Ld/bd;

    .line 70
    iget-wide v0, p1, Ld/be;->k:J

    iput-wide v0, p0, Ld/bd;->k:J

    .line 71
    iget-wide v0, p1, Ld/be;->l:J

    iput-wide v0, p0, Ld/bd;->l:J

    .line 72
    return-void
.end method


# virtual methods
.method public a()Ld/ax;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Ld/bd;->a:Ld/ax;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ld/bd;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Ld/bd;->f:Ld/ag;

    invoke-virtual {v0, p1}, Ld/ag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_0

    move-object p2, v0

    :cond_0
    return-object p2
.end method

.method public b()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Ld/bd;->c:I

    return v0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 106
    iget v0, p0, Ld/bd;->c:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p0, Ld/bd;->c:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Ld/bd;->g:Ld/bf;

    if-nez v0, :cond_0

    .line 281
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "response is not eligible for a body and must not be closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_0
    iget-object v0, p0, Ld/bd;->g:Ld/bf;

    invoke-virtual {v0}, Ld/bf;->close()V

    .line 284
    return-void
.end method

.method public d()Ld/af;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Ld/bd;->e:Ld/af;

    return-object v0
.end method

.method public e()Ld/ag;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Ld/bd;->f:Ld/ag;

    return-object v0
.end method

.method public f()Ld/bf;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Ld/bd;->g:Ld/bf;

    return-object v0
.end method

.method public g()Ld/be;
    .locals 1

    .prologue
    .line 181
    new-instance v0, Ld/be;

    invoke-direct {v0, p0}, Ld/be;-><init>(Ld/bd;)V

    return-object v0
.end method

.method public h()Ld/bd;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Ld/bd;->j:Ld/bd;

    return-object v0
.end method

.method public i()Ld/e;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Ld/bd;->m:Ld/e;

    .line 251
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ld/bd;->f:Ld/ag;

    invoke-static {v0}, Ld/e;->a(Ld/ag;)Ld/e;

    move-result-object v0

    iput-object v0, p0, Ld/bd;->m:Ld/e;

    goto :goto_0
.end method

.method public j()J
    .locals 2

    .prologue
    .line 260
    iget-wide v0, p0, Ld/bd;->k:J

    return-wide v0
.end method

.method public k()J
    .locals 2

    .prologue
    .line 269
    iget-wide v0, p0, Ld/bd;->l:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ld/bd;->b:Ld/au;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ld/bd;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ld/bd;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ld/bd;->a:Ld/ax;

    .line 294
    invoke-virtual {v1}, Ld/ax;->a()Ld/ai;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    return-object v0
.end method
