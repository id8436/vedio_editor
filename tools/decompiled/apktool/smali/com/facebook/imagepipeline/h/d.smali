.class public Lcom/facebook/imagepipeline/h/d;
.super Ljava/lang/Object;
.source "EncodedImage.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final a:Lcom/facebook/d/h/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/memory/ah;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final b:Lcom/facebook/d/d/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/d/d/m",
            "<",
            "Ljava/io/FileInputStream;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private c:Lcom/facebook/g/c;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Lcom/facebook/c/a/f;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/d/d/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/d/d/m",
            "<",
            "Ljava/io/FileInputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    sget-object v0, Lcom/facebook/g/c;->a:Lcom/facebook/g/c;

    iput-object v0, p0, Lcom/facebook/imagepipeline/h/d;->c:Lcom/facebook/g/c;

    .line 64
    iput v1, p0, Lcom/facebook/imagepipeline/h/d;->d:I

    .line 65
    iput v1, p0, Lcom/facebook/imagepipeline/h/d;->e:I

    .line 66
    iput v1, p0, Lcom/facebook/imagepipeline/h/d;->f:I

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/imagepipeline/h/d;->g:I

    .line 68
    iput v1, p0, Lcom/facebook/imagepipeline/h/d;->h:I

    .line 78
    invoke-static {p1}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/imagepipeline/h/d;->a:Lcom/facebook/d/h/a;

    .line 80
    iput-object p1, p0, Lcom/facebook/imagepipeline/h/d;->b:Lcom/facebook/d/d/m;

    .line 81
    return-void
.end method

.method public constructor <init>(Lcom/facebook/d/d/m;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/d/d/m",
            "<",
            "Ljava/io/FileInputStream;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/h/d;-><init>(Lcom/facebook/d/d/m;)V

    .line 85
    iput p2, p0, Lcom/facebook/imagepipeline/h/d;->h:I

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/facebook/d/h/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/memory/ah;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    sget-object v0, Lcom/facebook/g/c;->a:Lcom/facebook/g/c;

    iput-object v0, p0, Lcom/facebook/imagepipeline/h/d;->c:Lcom/facebook/g/c;

    .line 64
    iput v1, p0, Lcom/facebook/imagepipeline/h/d;->d:I

    .line 65
    iput v1, p0, Lcom/facebook/imagepipeline/h/d;->e:I

    .line 66
    iput v1, p0, Lcom/facebook/imagepipeline/h/d;->f:I

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/imagepipeline/h/d;->g:I

    .line 68
    iput v1, p0, Lcom/facebook/imagepipeline/h/d;->h:I

    .line 72
    invoke-static {p1}, Lcom/facebook/d/h/a;->a(Lcom/facebook/d/h/a;)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/d/d/k;->a(Z)V

    .line 73
    invoke-virtual {p1}, Lcom/facebook/d/h/a;->b()Lcom/facebook/d/h/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/h/d;->a:Lcom/facebook/d/h/a;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/imagepipeline/h/d;->b:Lcom/facebook/d/d/m;

    .line 75
    return-void
.end method

.method public static a(Lcom/facebook/imagepipeline/h/d;)Lcom/facebook/imagepipeline/h/d;
    .locals 1

    .prologue
    .line 94
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/h/d;->a()Lcom/facebook/imagepipeline/h/d;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Lcom/facebook/imagepipeline/h/d;)Z
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lcom/facebook/imagepipeline/h/d;->d:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/facebook/imagepipeline/h/d;->e:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/facebook/imagepipeline/h/d;->f:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Lcom/facebook/imagepipeline/h/d;)V
    .locals 0
    .param p0    # Lcom/facebook/imagepipeline/h/d;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 390
    if-eqz p0, :cond_0

    .line 391
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/h/d;->close()V

    .line 393
    :cond_0
    return-void
.end method

.method public static e(Lcom/facebook/imagepipeline/h/d;)Z
    .locals 1
    .param p0    # Lcom/facebook/imagepipeline/h/d;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 400
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/h/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/h/d;->d()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/h/h;->a(Ljava/io/InputStream;)Landroid/util/Pair;

    move-result-object v1

    .line 328
    if-eqz v1, :cond_0

    .line 329
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/h/d;->e:I

    .line 330
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/h/d;->f:I

    .line 332
    :cond_0
    return-object v1
.end method

.method private n()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 339
    const/4 v1, 0x0

    .line 342
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/h/d;->d()Ljava/io/InputStream;

    move-result-object v1

    .line 343
    invoke-static {v1}, Lcom/facebook/h/a;->a(Ljava/io/InputStream;)Landroid/util/Pair;

    move-result-object v2

    .line 344
    if-eqz v2, :cond_0

    .line 345
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/h/d;->e:I

    .line 346
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/h/d;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    :cond_0
    if-eqz v1, :cond_1

    .line 351
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 357
    :cond_1
    :goto_0
    return-object v2

    .line 349
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 351
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 354
    :cond_2
    :goto_1
    throw v0

    .line 352
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public a()Lcom/facebook/imagepipeline/h/d;
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/facebook/imagepipeline/h/d;->b:Lcom/facebook/d/d/m;

    if-eqz v0, :cond_1

    .line 100
    new-instance v0, Lcom/facebook/imagepipeline/h/d;

    iget-object v1, p0, Lcom/facebook/imagepipeline/h/d;->b:Lcom/facebook/d/d/m;

    iget v2, p0, Lcom/facebook/imagepipeline/h/d;->h:I

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/h/d;-><init>(Lcom/facebook/d/d/m;I)V

    .line 111
    :goto_0
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0, p0}, Lcom/facebook/imagepipeline/h/d;->b(Lcom/facebook/imagepipeline/h/d;)V

    .line 114
    :cond_0
    return-object v0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/h/d;->a:Lcom/facebook/d/h/a;

    .line 103
    invoke-static {v0}, Lcom/facebook/d/h/a;->b(Lcom/facebook/d/h/a;)Lcom/facebook/d/h/a;

    move-result-object v1

    .line 105
    if-nez v1, :cond_2

    const/4 v0, 0x0

    .line 108
    :goto_1
    invoke-static {v1}, Lcom/facebook/d/h/a;->c(Lcom/facebook/d/h/a;)V

    goto :goto_0

    .line 105
    :cond_2
    :try_start_0
    new-instance v0, Lcom/facebook/imagepipeline/h/d;

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/h/d;-><init>(Lcom/facebook/d/h/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 108
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/facebook/d/h/a;->c(Lcom/facebook/d/h/a;)V

    throw v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 175
    iput p1, p0, Lcom/facebook/imagepipeline/h/d;->f:I

    .line 176
    return-void
.end method

.method public a(Lcom/facebook/c/a/f;)V
    .locals 0
    .param p1    # Lcom/facebook/c/a/f;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 213
    iput-object p1, p0, Lcom/facebook/imagepipeline/h/d;->i:Lcom/facebook/c/a/f;

    .line 214
    return-void
.end method

.method public a(Lcom/facebook/g/c;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/facebook/imagepipeline/h/d;->c:Lcom/facebook/g/c;

    .line 169
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 182
    iput p1, p0, Lcom/facebook/imagepipeline/h/d;->e:I

    .line 183
    return-void
.end method

.method public b(Lcom/facebook/imagepipeline/h/d;)V
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/h/d;->e()Lcom/facebook/g/c;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/h/d;->c:Lcom/facebook/g/c;

    .line 367
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/h/d;->g()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/h/d;->e:I

    .line 368
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/h/d;->h()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/h/d;->f:I

    .line 369
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/h/d;->f()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/h/d;->d:I

    .line 370
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/h/d;->i()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/h/d;->g:I

    .line 371
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/h/d;->k()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/h/d;->h:I

    .line 372
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/h/d;->j()Lcom/facebook/c/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/h/d;->i:Lcom/facebook/c/a/f;

    .line 373
    return-void
.end method

.method public declared-synchronized b()Z
    .locals 1

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/h/d;->a:Lcom/facebook/d/h/a;

    invoke-static {v0}, Lcom/facebook/d/h/a;->a(Lcom/facebook/d/h/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/h/d;->b:Lcom/facebook/d/d/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Lcom/facebook/d/h/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/memory/ah;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/facebook/imagepipeline/h/d;->a:Lcom/facebook/d/h/a;

    invoke-static {v0}, Lcom/facebook/d/h/a;->b(Lcom/facebook/d/h/a;)Lcom/facebook/d/h/a;

    move-result-object v0

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 189
    iput p1, p0, Lcom/facebook/imagepipeline/h/d;->d:I

    .line 190
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/facebook/imagepipeline/h/d;->a:Lcom/facebook/d/h/a;

    invoke-static {v0}, Lcom/facebook/d/h/a;->c(Lcom/facebook/d/h/a;)V

    .line 123
    return-void
.end method

.method public d()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/facebook/imagepipeline/h/d;->b:Lcom/facebook/d/d/m;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/facebook/imagepipeline/h/d;->b:Lcom/facebook/d/d/m;

    invoke-interface {v0}, Lcom/facebook/d/d/m;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 161
    :goto_0
    return-object v0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/h/d;->a:Lcom/facebook/d/h/a;

    .line 153
    invoke-static {v0}, Lcom/facebook/d/h/a;->b(Lcom/facebook/d/h/a;)Lcom/facebook/d/h/a;

    move-result-object v2

    .line 154
    if-eqz v2, :cond_1

    .line 156
    :try_start_0
    new-instance v1, Lcom/facebook/imagepipeline/memory/ak;

    invoke-virtual {v2}, Lcom/facebook/d/h/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/ah;

    invoke-direct {v1, v0}, Lcom/facebook/imagepipeline/memory/ak;-><init>(Lcom/facebook/imagepipeline/memory/ah;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    invoke-static {v2}, Lcom/facebook/d/h/a;->c(Lcom/facebook/d/h/a;)V

    move-object v0, v1

    .line 156
    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/facebook/d/h/a;->c(Lcom/facebook/d/h/a;)V

    throw v0

    .line 161
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 196
    iput p1, p0, Lcom/facebook/imagepipeline/h/d;->g:I

    .line 197
    return-void
.end method

.method public e()Lcom/facebook/g/c;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/facebook/imagepipeline/h/d;->c:Lcom/facebook/g/c;

    return-object v0
.end method

.method public e(I)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 270
    iget-object v0, p0, Lcom/facebook/imagepipeline/h/d;->c:Lcom/facebook/g/c;

    sget-object v2, Lcom/facebook/g/b;->a:Lcom/facebook/g/c;

    if-eq v0, v2, :cond_1

    .line 280
    :cond_0
    :goto_0
    return v1

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/h/d;->b:Lcom/facebook/d/d/m;

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/facebook/imagepipeline/h/d;->a:Lcom/facebook/d/h/a;

    invoke-static {v0}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v0, p0, Lcom/facebook/imagepipeline/h/d;->a:Lcom/facebook/d/h/a;

    invoke-virtual {v0}, Lcom/facebook/d/h/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/ah;

    .line 280
    add-int/lit8 v2, p1, -0x2

    invoke-interface {v0, v2}, Lcom/facebook/imagepipeline/memory/ah;->a(I)B

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, p1, -0x1

    .line 281
    invoke-interface {v0, v2}, Lcom/facebook/imagepipeline/memory/ah;->a(I)B

    move-result v0

    const/16 v2, -0x27

    if-ne v0, v2, :cond_2

    move v0, v1

    :goto_1
    move v1, v0

    .line 280
    goto :goto_0

    .line 281
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public f()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/facebook/imagepipeline/h/d;->d:I

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/facebook/imagepipeline/h/d;->e:I

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/facebook/imagepipeline/h/d;->f:I

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/facebook/imagepipeline/h/d;->g:I

    return v0
.end method

.method public j()Lcom/facebook/c/a/f;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lcom/facebook/imagepipeline/h/d;->i:Lcom/facebook/c/a/f;

    return-object v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/facebook/imagepipeline/h/d;->a:Lcom/facebook/d/h/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/h/d;->a:Lcom/facebook/d/h/a;

    invoke-virtual {v0}, Lcom/facebook/d/h/a;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/facebook/imagepipeline/h/d;->a:Lcom/facebook/d/h/a;

    invoke-virtual {v0}, Lcom/facebook/d/h/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/ah;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/memory/ah;->a()I

    move-result v0

    .line 294
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/facebook/imagepipeline/h/d;->h:I

    goto :goto_0
.end method

.method public l()V
    .locals 3

    .prologue
    .line 301
    .line 302
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/h/d;->d()Ljava/io/InputStream;

    move-result-object v0

    .line 301
    invoke-static {v0}, Lcom/facebook/g/e;->c(Ljava/io/InputStream;)Lcom/facebook/g/c;

    move-result-object v1

    .line 303
    iput-object v1, p0, Lcom/facebook/imagepipeline/h/d;->c:Lcom/facebook/g/c;

    .line 307
    invoke-static {v1}, Lcom/facebook/g/b;->a(Lcom/facebook/g/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    invoke-direct {p0}, Lcom/facebook/imagepipeline/h/d;->m()Landroid/util/Pair;

    move-result-object v0

    .line 312
    :goto_0
    sget-object v2, Lcom/facebook/g/b;->a:Lcom/facebook/g/c;

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/facebook/imagepipeline/h/d;->d:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 314
    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/h/d;->d()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/h/c;->a(Ljava/io/InputStream;)I

    move-result v0

    .line 315
    invoke-static {v0}, Lcom/facebook/h/c;->a(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/h/d;->d:I

    .line 321
    :cond_0
    :goto_1
    return-void

    .line 310
    :cond_1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/h/d;->n()Landroid/util/Pair;

    move-result-object v0

    goto :goto_0

    .line 319
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/imagepipeline/h/d;->d:I

    goto :goto_1
.end method
