.class Lcom/facebook/imagepipeline/k/cf;
.super Lcom/facebook/imagepipeline/k/w;
.source "PostprocessorProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/k/w",
        "<",
        "Lcom/facebook/d/h/a",
        "<",
        "Lcom/facebook/imagepipeline/h/b;",
        ">;",
        "Lcom/facebook/d/h/a",
        "<",
        "Lcom/facebook/imagepipeline/h/b;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/k/cd;

.field private final b:Lcom/facebook/imagepipeline/k/co;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/facebook/imagepipeline/l/h;

.field private e:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "PostprocessorConsumer.this"
    .end annotation
.end field

.field private f:Lcom/facebook/d/h/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "PostprocessorConsumer.this"
    .end annotation
.end field

.field private g:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "PostprocessorConsumer.this"
    .end annotation
.end field

.field private h:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "PostprocessorConsumer.this"
    .end annotation
.end field

.field private i:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "PostprocessorConsumer.this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/k/cd;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/co;Ljava/lang/String;Lcom/facebook/imagepipeline/l/h;Lcom/facebook/imagepipeline/k/cm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/o",
            "<",
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;>;",
            "Lcom/facebook/imagepipeline/k/co;",
            "Ljava/lang/String;",
            "Lcom/facebook/imagepipeline/l/h;",
            "Lcom/facebook/imagepipeline/k/cm;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 103
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/cf;->a:Lcom/facebook/imagepipeline/k/cd;

    .line 104
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/k/w;-><init>(Lcom/facebook/imagepipeline/k/o;)V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/imagepipeline/k/cf;->f:Lcom/facebook/d/h/a;

    .line 91
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/k/cf;->g:Z

    .line 93
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/k/cf;->h:Z

    .line 95
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/k/cf;->i:Z

    .line 105
    iput-object p3, p0, Lcom/facebook/imagepipeline/k/cf;->b:Lcom/facebook/imagepipeline/k/co;

    .line 106
    iput-object p4, p0, Lcom/facebook/imagepipeline/k/cf;->c:Ljava/lang/String;

    .line 107
    iput-object p5, p0, Lcom/facebook/imagepipeline/k/cf;->d:Lcom/facebook/imagepipeline/l/h;

    .line 108
    new-instance v0, Lcom/facebook/imagepipeline/k/cg;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/k/cg;-><init>(Lcom/facebook/imagepipeline/k/cf;Lcom/facebook/imagepipeline/k/cd;)V

    invoke-interface {p6, v0}, Lcom/facebook/imagepipeline/k/cm;->a(Lcom/facebook/imagepipeline/k/cn;)V

    .line 115
    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/k/cf;Lcom/facebook/d/h/a;)Lcom/facebook/d/h/a;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/cf;->f:Lcom/facebook/d/h/a;

    return-object p1
.end method

.method private a(Lcom/facebook/imagepipeline/k/co;Ljava/lang/String;Lcom/facebook/imagepipeline/l/h;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/co;",
            "Ljava/lang/String;",
            "Lcom/facebook/imagepipeline/l/h;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    invoke-interface {p1, p2}, Lcom/facebook/imagepipeline/k/co;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    const/4 v0, 0x0

    .line 242
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "Postprocessor"

    invoke-interface {p3}, Lcom/facebook/imagepipeline/l/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/d/d/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/k/cf;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/facebook/imagepipeline/k/cf;->g()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/k/cf;Lcom/facebook/d/h/a;Z)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/k/cf;->c(Lcom/facebook/d/h/a;Z)V

    return-void
.end method

.method private a(Lcom/facebook/imagepipeline/h/b;)Z
    .locals 1

    .prologue
    .line 246
    instance-of v0, p1, Lcom/facebook/imagepipeline/h/c;

    return v0
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/k/cf;Z)Z
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/k/cf;->h:Z

    return p1
.end method

.method private b(Lcom/facebook/imagepipeline/h/b;)Lcom/facebook/d/h/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/h/b;",
            ")",
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    move-object v0, p1

    check-cast v0, Lcom/facebook/imagepipeline/h/c;

    .line 251
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/h/c;->e()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 252
    iget-object v2, p0, Lcom/facebook/imagepipeline/k/cf;->d:Lcom/facebook/imagepipeline/l/h;

    iget-object v3, p0, Lcom/facebook/imagepipeline/k/cf;->a:Lcom/facebook/imagepipeline/k/cd;

    invoke-static {v3}, Lcom/facebook/imagepipeline/k/cd;->b(Lcom/facebook/imagepipeline/k/cd;)Lcom/facebook/imagepipeline/b/f;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/facebook/imagepipeline/l/h;->a(Landroid/graphics/Bitmap;Lcom/facebook/imagepipeline/b/f;)Lcom/facebook/d/h/a;

    move-result-object v1

    .line 253
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/h/c;->h()I

    move-result v0

    .line 255
    :try_start_0
    new-instance v2, Lcom/facebook/imagepipeline/h/c;

    .line 256
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/h/b;->c()Lcom/facebook/imagepipeline/h/g;

    move-result-object v3

    invoke-direct {v2, v1, v3, v0}, Lcom/facebook/imagepipeline/h/c;-><init>(Lcom/facebook/d/h/a;Lcom/facebook/imagepipeline/h/g;I)V

    .line 255
    invoke-static {v2}, Lcom/facebook/d/h/a;->a(Ljava/io/Closeable;)Lcom/facebook/d/h/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 258
    invoke-static {v1}, Lcom/facebook/d/h/a;->c(Lcom/facebook/d/h/a;)V

    .line 255
    return-object v0

    .line 258
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/facebook/d/h/a;->c(Lcom/facebook/d/h/a;)V

    throw v0
.end method

.method static synthetic b(Lcom/facebook/imagepipeline/k/cf;)Lcom/facebook/d/h/a;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/cf;->f:Lcom/facebook/d/h/a;

    return-object v0
.end method

.method private b(Lcom/facebook/d/h/a;Z)V
    .locals 2
    .param p1    # Lcom/facebook/d/h/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 145
    monitor-enter p0

    .line 146
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/k/cf;->e:Z

    if-eqz v0, :cond_1

    .line 147
    monitor-exit p0

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/cf;->f:Lcom/facebook/d/h/a;

    .line 150
    invoke-static {p1}, Lcom/facebook/d/h/a;->b(Lcom/facebook/d/h/a;)Lcom/facebook/d/h/a;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/k/cf;->f:Lcom/facebook/d/h/a;

    .line 151
    iput-boolean p2, p0, Lcom/facebook/imagepipeline/k/cf;->g:Z

    .line 152
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/imagepipeline/k/cf;->h:Z

    .line 153
    invoke-direct {p0}, Lcom/facebook/imagepipeline/k/cf;->f()Z

    move-result v1

    .line 154
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    invoke-static {v0}, Lcom/facebook/d/h/a;->c(Lcom/facebook/d/h/a;)V

    .line 156
    if-eqz v1, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/facebook/imagepipeline/k/cf;->c()V

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/cf;->a:Lcom/facebook/imagepipeline/k/cd;

    invoke-static {v0}, Lcom/facebook/imagepipeline/k/cd;->a(Lcom/facebook/imagepipeline/k/cd;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/imagepipeline/k/ch;

    invoke-direct {v1, p0}, Lcom/facebook/imagepipeline/k/ch;-><init>(Lcom/facebook/imagepipeline/k/cf;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method

.method private c(Lcom/facebook/d/h/a;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 211
    invoke-static {p1}, Lcom/facebook/d/h/a;->a(Lcom/facebook/d/h/a;)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/d/d/k;->a(Z)V

    .line 212
    invoke-virtual {p1}, Lcom/facebook/d/h/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/h/b;

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/k/cf;->a(Lcom/facebook/imagepipeline/h/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/k/cf;->d(Lcom/facebook/d/h/a;Z)V

    .line 233
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/cf;->b:Lcom/facebook/imagepipeline/k/co;

    iget-object v1, p0, Lcom/facebook/imagepipeline/k/cf;->c:Ljava/lang/String;

    const-string/jumbo v2, "PostprocessorProducer"

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/k/co;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const/4 v1, 0x0

    .line 220
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/d/h/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/h/b;

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/k/cf;->b(Lcom/facebook/imagepipeline/h/b;)Lcom/facebook/d/h/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 227
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/cf;->b:Lcom/facebook/imagepipeline/k/co;

    iget-object v2, p0, Lcom/facebook/imagepipeline/k/cf;->c:Ljava/lang/String;

    const-string/jumbo v3, "PostprocessorProducer"

    iget-object v4, p0, Lcom/facebook/imagepipeline/k/cf;->b:Lcom/facebook/imagepipeline/k/co;

    iget-object v5, p0, Lcom/facebook/imagepipeline/k/cf;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/facebook/imagepipeline/k/cf;->d:Lcom/facebook/imagepipeline/l/h;

    .line 228
    invoke-direct {p0, v4, v5, v6}, Lcom/facebook/imagepipeline/k/cf;->a(Lcom/facebook/imagepipeline/k/co;Ljava/lang/String;Lcom/facebook/imagepipeline/l/h;)Ljava/util/Map;

    move-result-object v4

    .line 227
    invoke-interface {v0, v2, v3, v4}, Lcom/facebook/imagepipeline/k/co;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 229
    invoke-direct {p0, v1, p2}, Lcom/facebook/imagepipeline/k/cf;->d(Lcom/facebook/d/h/a;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    invoke-static {v1}, Lcom/facebook/d/h/a;->c(Lcom/facebook/d/h/a;)V

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    :try_start_2
    iget-object v2, p0, Lcom/facebook/imagepipeline/k/cf;->b:Lcom/facebook/imagepipeline/k/co;

    iget-object v3, p0, Lcom/facebook/imagepipeline/k/cf;->c:Ljava/lang/String;

    const-string/jumbo v4, "PostprocessorProducer"

    iget-object v5, p0, Lcom/facebook/imagepipeline/k/cf;->b:Lcom/facebook/imagepipeline/k/co;

    iget-object v6, p0, Lcom/facebook/imagepipeline/k/cf;->c:Ljava/lang/String;

    iget-object v7, p0, Lcom/facebook/imagepipeline/k/cf;->d:Lcom/facebook/imagepipeline/l/h;

    .line 223
    invoke-direct {p0, v5, v6, v7}, Lcom/facebook/imagepipeline/k/cf;->a(Lcom/facebook/imagepipeline/k/co;Ljava/lang/String;Lcom/facebook/imagepipeline/l/h;)Ljava/util/Map;

    move-result-object v5

    .line 222
    invoke-interface {v2, v3, v4, v0, v5}, Lcom/facebook/imagepipeline/k/co;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 224
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/k/cf;->c(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    invoke-static {v1}, Lcom/facebook/d/h/a;->c(Lcom/facebook/d/h/a;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/facebook/d/h/a;->c(Lcom/facebook/d/h/a;)V

    throw v0
.end method

.method private c(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/facebook/imagepipeline/k/cf;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/cf;->d()Lcom/facebook/imagepipeline/k/o;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/k/o;->b(Ljava/lang/Throwable;)V

    .line 272
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/k/cf;)Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/k/cf;->g:Z

    return v0
.end method

.method private d(Lcom/facebook/d/h/a;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 263
    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/facebook/imagepipeline/k/cf;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/facebook/imagepipeline/k/cf;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 264
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/cf;->d()Lcom/facebook/imagepipeline/k/o;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/k/o;->b(Ljava/lang/Object;Z)V

    .line 266
    :cond_2
    return-void
.end method

.method static synthetic d(Lcom/facebook/imagepipeline/k/cf;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/facebook/imagepipeline/k/cf;->e()V

    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 190
    monitor-enter p0

    .line 191
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/k/cf;->i:Z

    .line 192
    invoke-direct {p0}, Lcom/facebook/imagepipeline/k/cf;->f()Z

    move-result v0

    .line 193
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    if-eqz v0, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/facebook/imagepipeline/k/cf;->c()V

    .line 197
    :cond_0
    return-void

    .line 193
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized f()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 200
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/k/cf;->e:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/k/cf;->h:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/k/cf;->i:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/facebook/imagepipeline/k/cf;->f:Lcom/facebook/d/h/a;

    .line 201
    invoke-static {v1}, Lcom/facebook/d/h/a;->a(Lcom/facebook/d/h/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/imagepipeline/k/cf;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/facebook/imagepipeline/k/cf;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/cf;->d()Lcom/facebook/imagepipeline/k/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/k/o;->b()V

    .line 278
    :cond_0
    return-void
.end method

.method private declared-synchronized h()Z
    .locals 1

    .prologue
    .line 281
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/k/cf;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private i()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 286
    monitor-enter p0

    .line 287
    :try_start_0
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/k/cf;->e:Z

    if-eqz v1, :cond_0

    .line 288
    const/4 v0, 0x0

    monitor-exit p0

    .line 295
    :goto_0
    return v0

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/k/cf;->f:Lcom/facebook/d/h/a;

    .line 291
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/imagepipeline/k/cf;->f:Lcom/facebook/d/h/a;

    .line 292
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/imagepipeline/k/cf;->e:Z

    .line 293
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    invoke-static {v1}, Lcom/facebook/d/h/a;->c(Lcom/facebook/d/h/a;)V

    goto :goto_0

    .line 293
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/facebook/imagepipeline/k/cf;->g()V

    .line 138
    return-void
.end method

.method protected a(Lcom/facebook/d/h/a;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 119
    invoke-static {p1}, Lcom/facebook/d/h/a;->a(Lcom/facebook/d/h/a;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    if-eqz p2, :cond_0

    .line 122
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/facebook/imagepipeline/k/cf;->d(Lcom/facebook/d/h/a;Z)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/k/cf;->b(Lcom/facebook/d/h/a;Z)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 78
    check-cast p1, Lcom/facebook/d/h/a;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/k/cf;->a(Lcom/facebook/d/h/a;Z)V

    return-void
.end method

.method protected a(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/k/cf;->c(Ljava/lang/Throwable;)V

    .line 133
    return-void
.end method
