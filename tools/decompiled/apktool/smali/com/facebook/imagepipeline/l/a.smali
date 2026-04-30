.class public Lcom/facebook/imagepipeline/l/a;
.super Ljava/lang/Object;
.source "ImageRequest.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/l/b;

.field private final b:Landroid/net/Uri;

.field private final c:Lcom/facebook/imagepipeline/l/f;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private d:Ljava/io/File;

.field private final e:Z

.field private final f:Z

.field private final g:Lcom/facebook/imagepipeline/d/a;

.field private final h:Lcom/facebook/imagepipeline/d/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final i:Lcom/facebook/imagepipeline/d/e;

.field private final j:Lcom/facebook/imagepipeline/d/c;

.field private final k:Lcom/facebook/imagepipeline/l/c;

.field private final l:Z

.field private final m:Lcom/facebook/imagepipeline/l/h;

.field private final n:Lcom/facebook/imagepipeline/i/b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/facebook/imagepipeline/l/d;)V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/l/d;->g()Lcom/facebook/imagepipeline/l/b;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/l/a;->a:Lcom/facebook/imagepipeline/l/b;

    .line 89
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/l/d;->a()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/l/a;->b:Landroid/net/Uri;

    .line 90
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/l/d;->b()Lcom/facebook/imagepipeline/l/f;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/l/a;->c:Lcom/facebook/imagepipeline/l/f;

    .line 92
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/l/d;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/l/a;->e:Z

    .line 93
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/l/d;->i()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/l/a;->f:Z

    .line 95
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/l/d;->f()Lcom/facebook/imagepipeline/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/l/a;->g:Lcom/facebook/imagepipeline/d/a;

    .line 97
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/l/d;->d()Lcom/facebook/imagepipeline/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/l/a;->h:Lcom/facebook/imagepipeline/d/d;

    .line 98
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/l/d;->e()Lcom/facebook/imagepipeline/d/e;

    move-result-object v0

    if-nez v0, :cond_0

    .line 99
    invoke-static {}, Lcom/facebook/imagepipeline/d/e;->a()Lcom/facebook/imagepipeline/d/e;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/facebook/imagepipeline/l/a;->i:Lcom/facebook/imagepipeline/d/e;

    .line 101
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/l/d;->k()Lcom/facebook/imagepipeline/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/l/a;->j:Lcom/facebook/imagepipeline/d/c;

    .line 102
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/l/d;->c()Lcom/facebook/imagepipeline/l/c;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/l/a;->k:Lcom/facebook/imagepipeline/l/c;

    .line 103
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/l/d;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/l/a;->l:Z

    .line 105
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/l/d;->l()Lcom/facebook/imagepipeline/l/h;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/l/a;->m:Lcom/facebook/imagepipeline/l/h;

    .line 107
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/l/d;->m()Lcom/facebook/imagepipeline/i/b;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/l/a;->n:Lcom/facebook/imagepipeline/i/b;

    .line 108
    return-void

    .line 99
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/l/d;->e()Lcom/facebook/imagepipeline/d/e;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/facebook/imagepipeline/l/b;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/facebook/imagepipeline/l/a;->a:Lcom/facebook/imagepipeline/l/b;

    return-object v0
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/facebook/imagepipeline/l/a;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public c()Lcom/facebook/imagepipeline/l/f;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/facebook/imagepipeline/l/a;->c:Lcom/facebook/imagepipeline/l/f;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/facebook/imagepipeline/l/a;->h:Lcom/facebook/imagepipeline/d/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/l/a;->h:Lcom/facebook/imagepipeline/d/d;

    iget v0, v0, Lcom/facebook/imagepipeline/d/d;->a:I

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x800

    goto :goto_0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/facebook/imagepipeline/l/a;->h:Lcom/facebook/imagepipeline/d/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/l/a;->h:Lcom/facebook/imagepipeline/d/d;

    iget v0, v0, Lcom/facebook/imagepipeline/d/d;->b:I

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x800

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 187
    instance-of v1, p1, Lcom/facebook/imagepipeline/l/a;

    if-nez v1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v0

    .line 190
    :cond_1
    check-cast p1, Lcom/facebook/imagepipeline/l/a;

    .line 191
    iget-object v1, p0, Lcom/facebook/imagepipeline/l/a;->b:Landroid/net/Uri;

    iget-object v2, p1, Lcom/facebook/imagepipeline/l/a;->b:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/facebook/d/d/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/imagepipeline/l/a;->a:Lcom/facebook/imagepipeline/l/b;

    iget-object v2, p1, Lcom/facebook/imagepipeline/l/a;->a:Lcom/facebook/imagepipeline/l/b;

    .line 192
    invoke-static {v1, v2}, Lcom/facebook/d/d/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/imagepipeline/l/a;->c:Lcom/facebook/imagepipeline/l/f;

    iget-object v2, p1, Lcom/facebook/imagepipeline/l/a;->c:Lcom/facebook/imagepipeline/l/f;

    .line 193
    invoke-static {v1, v2}, Lcom/facebook/d/d/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/imagepipeline/l/a;->d:Ljava/io/File;

    iget-object v2, p1, Lcom/facebook/imagepipeline/l/a;->d:Ljava/io/File;

    .line 194
    invoke-static {v1, v2}, Lcom/facebook/d/d/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public f()Lcom/facebook/imagepipeline/d/d;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/facebook/imagepipeline/l/a;->h:Lcom/facebook/imagepipeline/d/d;

    return-object v0
.end method

.method public g()Lcom/facebook/imagepipeline/d/e;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/facebook/imagepipeline/l/a;->i:Lcom/facebook/imagepipeline/d/e;

    return-object v0
.end method

.method public h()Lcom/facebook/imagepipeline/d/a;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/facebook/imagepipeline/l/a;->g:Lcom/facebook/imagepipeline/d/a;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 199
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/imagepipeline/l/a;->a:Lcom/facebook/imagepipeline/l/b;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/facebook/imagepipeline/l/a;->b:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/facebook/imagepipeline/l/a;->c:Lcom/facebook/imagepipeline/l/f;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/facebook/imagepipeline/l/a;->d:Ljava/io/File;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/facebook/d/d/g;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/l/a;->e:Z

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/l/a;->f:Z

    return v0
.end method

.method public k()Lcom/facebook/imagepipeline/d/c;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/facebook/imagepipeline/l/a;->j:Lcom/facebook/imagepipeline/d/c;

    return-object v0
.end method

.method public l()Lcom/facebook/imagepipeline/l/c;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/facebook/imagepipeline/l/a;->k:Lcom/facebook/imagepipeline/l/c;

    return-object v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/l/a;->l:Z

    return v0
.end method

.method public declared-synchronized n()Ljava/io/File;
    .locals 2

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/l/a;->d:Ljava/io/File;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/imagepipeline/l/a;->b:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/l/a;->d:Ljava/io/File;

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/l/a;->d:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public o()Lcom/facebook/imagepipeline/l/h;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/facebook/imagepipeline/l/a;->m:Lcom/facebook/imagepipeline/l/h;

    return-object v0
.end method

.method public p()Lcom/facebook/imagepipeline/i/b;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/facebook/imagepipeline/l/a;->n:Lcom/facebook/imagepipeline/i/b;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 204
    invoke-static {p0}, Lcom/facebook/d/d/g;->a(Ljava/lang/Object;)Lcom/facebook/d/d/i;

    move-result-object v0

    const-string/jumbo v1, "uri"

    iget-object v2, p0, Lcom/facebook/imagepipeline/l/a;->b:Landroid/net/Uri;

    .line 205
    invoke-virtual {v0, v1, v2}, Lcom/facebook/d/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/d/d/i;

    move-result-object v0

    const-string/jumbo v1, "cacheChoice"

    iget-object v2, p0, Lcom/facebook/imagepipeline/l/a;->a:Lcom/facebook/imagepipeline/l/b;

    .line 206
    invoke-virtual {v0, v1, v2}, Lcom/facebook/d/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/d/d/i;

    move-result-object v0

    const-string/jumbo v1, "decodeOptions"

    iget-object v2, p0, Lcom/facebook/imagepipeline/l/a;->g:Lcom/facebook/imagepipeline/d/a;

    .line 207
    invoke-virtual {v0, v1, v2}, Lcom/facebook/d/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/d/d/i;

    move-result-object v0

    const-string/jumbo v1, "postprocessor"

    iget-object v2, p0, Lcom/facebook/imagepipeline/l/a;->m:Lcom/facebook/imagepipeline/l/h;

    .line 208
    invoke-virtual {v0, v1, v2}, Lcom/facebook/d/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/d/d/i;

    move-result-object v0

    const-string/jumbo v1, "priority"

    iget-object v2, p0, Lcom/facebook/imagepipeline/l/a;->j:Lcom/facebook/imagepipeline/d/c;

    .line 209
    invoke-virtual {v0, v1, v2}, Lcom/facebook/d/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/d/d/i;

    move-result-object v0

    const-string/jumbo v1, "resizeOptions"

    iget-object v2, p0, Lcom/facebook/imagepipeline/l/a;->h:Lcom/facebook/imagepipeline/d/d;

    .line 210
    invoke-virtual {v0, v1, v2}, Lcom/facebook/d/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/d/d/i;

    move-result-object v0

    const-string/jumbo v1, "rotationOptions"

    iget-object v2, p0, Lcom/facebook/imagepipeline/l/a;->i:Lcom/facebook/imagepipeline/d/e;

    .line 211
    invoke-virtual {v0, v1, v2}, Lcom/facebook/d/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/d/d/i;

    move-result-object v0

    const-string/jumbo v1, "mediaVariations"

    iget-object v2, p0, Lcom/facebook/imagepipeline/l/a;->c:Lcom/facebook/imagepipeline/l/f;

    .line 212
    invoke-virtual {v0, v1, v2}, Lcom/facebook/d/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/d/d/i;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Lcom/facebook/d/d/i;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    return-object v0
.end method
