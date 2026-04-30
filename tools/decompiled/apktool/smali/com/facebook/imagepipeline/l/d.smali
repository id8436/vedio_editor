.class public Lcom/facebook/imagepipeline/l/d;
.super Ljava/lang/Object;
.source "ImageRequestBuilder.java"


# instance fields
.field private a:Landroid/net/Uri;

.field private b:Lcom/facebook/imagepipeline/l/c;

.field private c:Lcom/facebook/imagepipeline/d/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private d:Lcom/facebook/imagepipeline/d/e;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private e:Lcom/facebook/imagepipeline/d/a;

.field private f:Lcom/facebook/imagepipeline/l/b;

.field private g:Z

.field private h:Z

.field private i:Lcom/facebook/imagepipeline/d/c;

.field private j:Lcom/facebook/imagepipeline/l/h;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private k:Z

.field private l:Lcom/facebook/imagepipeline/i/b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private m:Lcom/facebook/imagepipeline/l/f;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v1, p0, Lcom/facebook/imagepipeline/l/d;->a:Landroid/net/Uri;

    .line 34
    sget-object v0, Lcom/facebook/imagepipeline/l/c;->a:Lcom/facebook/imagepipeline/l/c;

    iput-object v0, p0, Lcom/facebook/imagepipeline/l/d;->b:Lcom/facebook/imagepipeline/l/c;

    .line 35
    iput-object v1, p0, Lcom/facebook/imagepipeline/l/d;->c:Lcom/facebook/imagepipeline/d/d;

    .line 36
    iput-object v1, p0, Lcom/facebook/imagepipeline/l/d;->d:Lcom/facebook/imagepipeline/d/e;

    .line 37
    invoke-static {}, Lcom/facebook/imagepipeline/d/a;->a()Lcom/facebook/imagepipeline/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/l/d;->e:Lcom/facebook/imagepipeline/d/a;

    .line 38
    sget-object v0, Lcom/facebook/imagepipeline/l/b;->b:Lcom/facebook/imagepipeline/l/b;

    iput-object v0, p0, Lcom/facebook/imagepipeline/l/d;->f:Lcom/facebook/imagepipeline/l/b;

    .line 40
    invoke-static {}, Lcom/facebook/imagepipeline/e/h;->e()Lcom/facebook/imagepipeline/e/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/e/k;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/l/d;->g:Z

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/l/d;->h:Z

    .line 42
    sget-object v0, Lcom/facebook/imagepipeline/d/c;->c:Lcom/facebook/imagepipeline/d/c;

    iput-object v0, p0, Lcom/facebook/imagepipeline/l/d;->i:Lcom/facebook/imagepipeline/d/c;

    .line 43
    iput-object v1, p0, Lcom/facebook/imagepipeline/l/d;->j:Lcom/facebook/imagepipeline/l/h;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/l/d;->k:Z

    .line 46
    iput-object v1, p0, Lcom/facebook/imagepipeline/l/d;->m:Lcom/facebook/imagepipeline/l/f;

    .line 98
    return-void
.end method

.method public static a(Landroid/net/Uri;)Lcom/facebook/imagepipeline/l/d;
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/facebook/imagepipeline/l/d;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/l/d;-><init>()V

    invoke-virtual {v0, p0}, Lcom/facebook/imagepipeline/l/d;->b(Landroid/net/Uri;)Lcom/facebook/imagepipeline/l/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/facebook/imagepipeline/l/d;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public a(Lcom/facebook/imagepipeline/d/e;)Lcom/facebook/imagepipeline/l/d;
    .locals 0
    .param p1    # Lcom/facebook/imagepipeline/d/e;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 206
    iput-object p1, p0, Lcom/facebook/imagepipeline/l/d;->d:Lcom/facebook/imagepipeline/d/e;

    .line 207
    return-object p0
.end method

.method public a(Z)Lcom/facebook/imagepipeline/l/d;
    .locals 0

    .prologue
    .line 246
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/l/d;->g:Z

    .line 247
    return-object p0
.end method

.method public b(Landroid/net/Uri;)Lcom/facebook/imagepipeline/l/d;
    .locals 0

    .prologue
    .line 107
    invoke-static {p1}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iput-object p1, p0, Lcom/facebook/imagepipeline/l/d;->a:Landroid/net/Uri;

    .line 110
    return-object p0
.end method

.method public b()Lcom/facebook/imagepipeline/l/f;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/facebook/imagepipeline/l/d;->m:Lcom/facebook/imagepipeline/l/f;

    return-object v0
.end method

.method public c()Lcom/facebook/imagepipeline/l/c;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/facebook/imagepipeline/l/d;->b:Lcom/facebook/imagepipeline/l/c;

    return-object v0
.end method

.method public d()Lcom/facebook/imagepipeline/d/d;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/facebook/imagepipeline/l/d;->c:Lcom/facebook/imagepipeline/d/d;

    return-object v0
.end method

.method public e()Lcom/facebook/imagepipeline/d/e;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lcom/facebook/imagepipeline/l/d;->d:Lcom/facebook/imagepipeline/d/e;

    return-object v0
.end method

.method public f()Lcom/facebook/imagepipeline/d/a;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/facebook/imagepipeline/l/d;->e:Lcom/facebook/imagepipeline/d/a;

    return-object v0
.end method

.method public g()Lcom/facebook/imagepipeline/l/b;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/facebook/imagepipeline/l/d;->f:Lcom/facebook/imagepipeline/l/b;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/l/d;->g:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/l/d;->h:Z

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/l/d;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/l/d;->a:Landroid/net/Uri;

    invoke-static {v0}, Lcom/facebook/d/m/f;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Lcom/facebook/imagepipeline/d/c;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/facebook/imagepipeline/l/d;->i:Lcom/facebook/imagepipeline/d/c;

    return-object v0
.end method

.method public l()Lcom/facebook/imagepipeline/l/h;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lcom/facebook/imagepipeline/l/d;->j:Lcom/facebook/imagepipeline/l/h;

    return-object v0
.end method

.method public m()Lcom/facebook/imagepipeline/i/b;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 327
    iget-object v0, p0, Lcom/facebook/imagepipeline/l/d;->l:Lcom/facebook/imagepipeline/i/b;

    return-object v0
.end method

.method public n()Lcom/facebook/imagepipeline/l/a;
    .locals 1

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/l/d;->o()V

    .line 336
    new-instance v0, Lcom/facebook/imagepipeline/l/a;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/l/a;-><init>(Lcom/facebook/imagepipeline/l/d;)V

    return-object v0
.end method

.method protected o()V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/facebook/imagepipeline/l/d;->a:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 350
    new-instance v0, Lcom/facebook/imagepipeline/l/e;

    const-string/jumbo v1, "Source must be set!"

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/l/e;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/l/d;->a:Landroid/net/Uri;

    invoke-static {v0}, Lcom/facebook/d/m/f;->g(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 355
    iget-object v0, p0, Lcom/facebook/imagepipeline/l/d;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_1

    .line 356
    new-instance v0, Lcom/facebook/imagepipeline/l/e;

    const-string/jumbo v1, "Resource URI path must be absolute."

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/l/e;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/l/d;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 359
    new-instance v0, Lcom/facebook/imagepipeline/l/e;

    const-string/jumbo v1, "Resource URI must not be empty"

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/l/e;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/l/d;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :cond_3
    iget-object v0, p0, Lcom/facebook/imagepipeline/l/d;->a:Landroid/net/Uri;

    invoke-static {v0}, Lcom/facebook/d/m/f;->f(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/imagepipeline/l/d;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_4

    .line 371
    new-instance v0, Lcom/facebook/imagepipeline/l/e;

    const-string/jumbo v1, "Asset URI path must be absolute."

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/l/e;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :catch_0
    move-exception v0

    .line 364
    new-instance v0, Lcom/facebook/imagepipeline/l/e;

    const-string/jumbo v1, "Resource URI path must be a resource id."

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/l/e;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_4
    return-void
.end method
