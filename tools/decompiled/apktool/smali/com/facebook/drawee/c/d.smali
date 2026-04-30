.class public abstract Lcom/facebook/drawee/c/d;
.super Ljava/lang/Object;
.source "AbstractDraweeControllerBuilder.java"

# interfaces
.implements Lcom/facebook/drawee/h/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BUI",
        "LDER:Lcom/facebook/drawee/c/d",
        "<TBUI",
        "LDER;",
        "TREQUEST;TIMAGE;TINFO;>;REQUEST:",
        "Ljava/lang/Object;",
        "IMAGE:",
        "Ljava/lang/Object;",
        "INFO:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/drawee/h/d;"
    }
.end annotation


# static fields
.field private static final a:Lcom/facebook/drawee/c/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/drawee/c/i",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/NullPointerException;

.field private static final r:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/drawee/c/i;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TREQUEST;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TREQUEST;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private h:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TREQUEST;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private i:Z

.field private j:Lcom/facebook/d/d/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/d/d/m",
            "<",
            "Lcom/facebook/e/f",
            "<TIMAGE;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private k:Lcom/facebook/drawee/c/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/drawee/c/i",
            "<-TINFO;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private l:Lcom/facebook/drawee/c/j;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Lcom/facebook/drawee/h/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/facebook/drawee/c/e;

    invoke-direct {v0}, Lcom/facebook/drawee/c/e;-><init>()V

    sput-object v0, Lcom/facebook/drawee/c/d;->a:Lcom/facebook/drawee/c/i;

    .line 54
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "No image request was specified!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/drawee/c/d;->b:Ljava/lang/NullPointerException;

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/facebook/drawee/c/d;->r:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/drawee/c/i;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/facebook/drawee/c/d;->c:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/facebook/drawee/c/d;->d:Ljava/util/Set;

    .line 84
    invoke-direct {p0}, Lcom/facebook/drawee/c/d;->a()V

    .line 85
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 89
    iput-object v1, p0, Lcom/facebook/drawee/c/d;->e:Ljava/lang/Object;

    .line 90
    iput-object v1, p0, Lcom/facebook/drawee/c/d;->f:Ljava/lang/Object;

    .line 91
    iput-object v1, p0, Lcom/facebook/drawee/c/d;->g:Ljava/lang/Object;

    .line 92
    iput-object v1, p0, Lcom/facebook/drawee/c/d;->h:[Ljava/lang/Object;

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/drawee/c/d;->i:Z

    .line 94
    iput-object v1, p0, Lcom/facebook/drawee/c/d;->k:Lcom/facebook/drawee/c/i;

    .line 95
    iput-object v1, p0, Lcom/facebook/drawee/c/d;->l:Lcom/facebook/drawee/c/j;

    .line 96
    iput-boolean v2, p0, Lcom/facebook/drawee/c/d;->m:Z

    .line 97
    iput-boolean v2, p0, Lcom/facebook/drawee/c/d;->n:Z

    .line 98
    iput-object v1, p0, Lcom/facebook/drawee/c/d;->q:Lcom/facebook/drawee/h/a;

    .line 99
    iput-object v1, p0, Lcom/facebook/drawee/c/d;->p:Ljava/lang/String;

    .line 100
    return-void
.end method

.method protected static n()Ljava/lang/String;
    .locals 2

    .prologue
    .line 321
    sget-object v0, Lcom/facebook/drawee/c/d;->r:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/Object;Lcom/facebook/drawee/c/g;)Lcom/facebook/d/d/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TREQUEST;",
            "Lcom/facebook/drawee/c/g;",
            ")",
            "Lcom/facebook/d/d/m",
            "<",
            "Lcom/facebook/e/f",
            "<TIMAGE;>;>;"
        }
    .end annotation

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/facebook/drawee/c/d;->e()Ljava/lang/Object;

    move-result-object v0

    .line 382
    new-instance v1, Lcom/facebook/drawee/c/f;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/facebook/drawee/c/f;-><init>(Lcom/facebook/drawee/c/d;Ljava/lang/Object;Ljava/lang/Object;Lcom/facebook/drawee/c/g;)V

    return-object v1
.end method

.method protected a([Ljava/lang/Object;Z)Lcom/facebook/d/d/m;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TREQUEST;Z)",
            "Lcom/facebook/d/d/m",
            "<",
            "Lcom/facebook/e/f",
            "<TIMAGE;>;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 358
    new-instance v2, Ljava/util/ArrayList;

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 359
    if-eqz p2, :cond_0

    move v0, v1

    .line 361
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 362
    aget-object v3, p1, v0

    sget-object v4, Lcom/facebook/drawee/c/g;->c:Lcom/facebook/drawee/c/g;

    .line 363
    invoke-virtual {p0, v3, v4}, Lcom/facebook/drawee/c/d;->a(Ljava/lang/Object;Lcom/facebook/drawee/c/g;)Lcom/facebook/d/d/m;

    move-result-object v3

    .line 362
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 366
    :cond_0
    :goto_1
    array-length v0, p1

    if-ge v1, v0, :cond_1

    .line 367
    aget-object v0, p1, v1

    invoke-virtual {p0, v0}, Lcom/facebook/drawee/c/d;->d(Ljava/lang/Object;)Lcom/facebook/d/d/m;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 369
    :cond_1
    invoke-static {v2}, Lcom/facebook/e/j;->a(Ljava/util/List;)Lcom/facebook/e/j;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/drawee/h/a;)Lcom/facebook/drawee/c/d;
    .locals 1
    .param p1    # Lcom/facebook/drawee/h/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/h/a;",
            ")TBUI",
            "LDER;"
        }
    .end annotation

    .prologue
    .line 273
    iput-object p1, p0, Lcom/facebook/drawee/c/d;->q:Lcom/facebook/drawee/h/a;

    .line 274
    invoke-virtual {p0}, Lcom/facebook/drawee/c/d;->c()Lcom/facebook/drawee/c/d;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lcom/facebook/drawee/c/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TBUI",
            "LDER;"
        }
    .end annotation

    .prologue
    .line 111
    iput-object p1, p0, Lcom/facebook/drawee/c/d;->e:Ljava/lang/Object;

    .line 112
    invoke-virtual {p0}, Lcom/facebook/drawee/c/d;->c()Lcom/facebook/drawee/c/d;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)Lcom/facebook/drawee/c/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TBUI",
            "LDER;"
        }
    .end annotation

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/facebook/drawee/c/d;->n:Z

    .line 225
    invoke-virtual {p0}, Lcom/facebook/drawee/c/d;->c()Lcom/facebook/drawee/c/d;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a(Ljava/lang/Object;Ljava/lang/Object;Lcom/facebook/drawee/c/g;)Lcom/facebook/e/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TREQUEST;",
            "Ljava/lang/Object;",
            "Lcom/facebook/drawee/c/g;",
            ")",
            "Lcom/facebook/e/f",
            "<TIMAGE;>;"
        }
    .end annotation
.end method

.method protected a(Lcom/facebook/drawee/c/a;)V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/facebook/drawee/c/d;->d:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/facebook/drawee/c/d;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/c/i;

    .line 400
    invoke-virtual {p1, v0}, Lcom/facebook/drawee/c/a;->a(Lcom/facebook/drawee/c/i;)V

    goto :goto_0

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/c/d;->k:Lcom/facebook/drawee/c/i;

    if-eqz v0, :cond_1

    .line 404
    iget-object v0, p0, Lcom/facebook/drawee/c/d;->k:Lcom/facebook/drawee/c/i;

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/c/a;->a(Lcom/facebook/drawee/c/i;)V

    .line 406
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/drawee/c/d;->n:Z

    if-eqz v0, :cond_2

    .line 407
    sget-object v0, Lcom/facebook/drawee/c/d;->a:Lcom/facebook/drawee/c/i;

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/c/a;->a(Lcom/facebook/drawee/c/i;)V

    .line 409
    :cond_2
    return-void
.end method

.method public b(Ljava/lang/Object;)Lcom/facebook/drawee/c/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TREQUEST;)TBUI",
            "LDER;"
        }
    .end annotation

    .prologue
    .line 123
    iput-object p1, p0, Lcom/facebook/drawee/c/d;->f:Ljava/lang/Object;

    .line 124
    invoke-virtual {p0}, Lcom/facebook/drawee/c/d;->c()Lcom/facebook/drawee/c/d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/facebook/drawee/h/a;)Lcom/facebook/drawee/h/d;
    .locals 1
    .param p1    # Lcom/facebook/drawee/h/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/c/d;->a(Lcom/facebook/drawee/h/a;)Lcom/facebook/drawee/c/d;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/facebook/drawee/c/a;)V
    .locals 2

    .prologue
    .line 413
    iget-boolean v0, p0, Lcom/facebook/drawee/c/d;->m:Z

    if-nez v0, :cond_0

    .line 423
    :goto_0
    return-void

    .line 416
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/drawee/c/a;->f()Lcom/facebook/drawee/b/f;

    move-result-object v0

    .line 417
    if-nez v0, :cond_1

    .line 418
    new-instance v0, Lcom/facebook/drawee/b/f;

    invoke-direct {v0}, Lcom/facebook/drawee/b/f;-><init>()V

    .line 419
    invoke-virtual {p1, v0}, Lcom/facebook/drawee/c/a;->a(Lcom/facebook/drawee/b/f;)V

    .line 421
    :cond_1
    iget-boolean v1, p0, Lcom/facebook/drawee/c/d;->m:Z

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/b/f;->a(Z)V

    .line 422
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/c/d;->c(Lcom/facebook/drawee/c/a;)V

    goto :goto_0
.end method

.method protected abstract c()Lcom/facebook/drawee/c/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBUI",
            "LDER;"
        }
    .end annotation
.end method

.method public c(Ljava/lang/Object;)Lcom/facebook/drawee/c/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TREQUEST;)TBUI",
            "LDER;"
        }
    .end annotation

    .prologue
    .line 135
    iput-object p1, p0, Lcom/facebook/drawee/c/d;->g:Ljava/lang/Object;

    .line 136
    invoke-virtual {p0}, Lcom/facebook/drawee/c/d;->c()Lcom/facebook/drawee/c/d;

    move-result-object v0

    return-object v0
.end method

.method protected c(Lcom/facebook/drawee/c/a;)V
    .locals 1

    .prologue
    .line 427
    invoke-virtual {p1}, Lcom/facebook/drawee/c/a;->g()Lcom/facebook/drawee/g/a;

    move-result-object v0

    .line 428
    if-nez v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/facebook/drawee/c/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/drawee/g/a;->a(Landroid/content/Context;)Lcom/facebook/drawee/g/a;

    move-result-object v0

    .line 430
    invoke-virtual {p1, v0}, Lcom/facebook/drawee/c/a;->a(Lcom/facebook/drawee/g/a;)V

    .line 432
    :cond_0
    return-void
.end method

.method protected d(Ljava/lang/Object;)Lcom/facebook/d/d/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TREQUEST;)",
            "Lcom/facebook/d/d/m",
            "<",
            "Lcom/facebook/e/f",
            "<TIMAGE;>;>;"
        }
    .end annotation

    .prologue
    .line 374
    sget-object v0, Lcom/facebook/drawee/c/g;->a:Lcom/facebook/drawee/c/g;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/drawee/c/d;->a(Ljava/lang/Object;Lcom/facebook/drawee/c/g;)Lcom/facebook/d/d/m;

    move-result-object v0

    return-object v0
.end method

.method protected abstract d()Lcom/facebook/drawee/c/a;
.end method

.method public synthetic e(Ljava/lang/Object;)Lcom/facebook/drawee/h/d;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/c/d;->a(Ljava/lang/Object;)Lcom/facebook/drawee/c/d;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/facebook/drawee/c/d;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public f()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TREQUEST;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/facebook/drawee/c/d;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/facebook/drawee/c/d;->o:Z

    return v0
.end method

.method public h()Lcom/facebook/drawee/c/j;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lcom/facebook/drawee/c/d;->l:Lcom/facebook/drawee/c/j;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lcom/facebook/drawee/c/d;->p:Ljava/lang/String;

    return-object v0
.end method

.method public j()Lcom/facebook/drawee/h/a;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lcom/facebook/drawee/c/d;->q:Lcom/facebook/drawee/h/a;

    return-object v0
.end method

.method public k()Lcom/facebook/drawee/c/a;
    .locals 1

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/facebook/drawee/c/d;->l()V

    .line 289
    iget-object v0, p0, Lcom/facebook/drawee/c/d;->f:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/drawee/c/d;->h:[Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/drawee/c/d;->g:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/facebook/drawee/c/d;->g:Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/drawee/c/d;->f:Ljava/lang/Object;

    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/drawee/c/d;->g:Ljava/lang/Object;

    .line 294
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/drawee/c/d;->m()Lcom/facebook/drawee/c/a;

    move-result-object v0

    return-object v0
.end method

.method protected l()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 299
    iget-object v0, p0, Lcom/facebook/drawee/c/d;->h:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/drawee/c/d;->f:Ljava/lang/Object;

    if-nez v0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    const-string/jumbo v3, "Cannot specify both ImageRequest and FirstAvailableImageRequests!"

    invoke-static {v0, v3}, Lcom/facebook/d/d/k;->b(ZLjava/lang/Object;)V

    .line 302
    iget-object v0, p0, Lcom/facebook/drawee/c/d;->j:Lcom/facebook/d/d/m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/drawee/c/d;->h:[Ljava/lang/Object;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/drawee/c/d;->f:Ljava/lang/Object;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/drawee/c/d;->g:Ljava/lang/Object;

    if-nez v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    const-string/jumbo v0, "Cannot specify DataSourceSupplier with other ImageRequests! Use one or the other."

    invoke-static {v1, v0}, Lcom/facebook/d/d/k;->b(ZLjava/lang/Object;)V

    .line 306
    return-void

    :cond_3
    move v0, v1

    .line 299
    goto :goto_0
.end method

.method protected m()Lcom/facebook/drawee/c/a;
    .locals 2

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/facebook/drawee/c/d;->d()Lcom/facebook/drawee/c/a;

    move-result-object v0

    .line 311
    invoke-virtual {p0}, Lcom/facebook/drawee/c/d;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/c/a;->b(Z)V

    .line 312
    invoke-virtual {p0}, Lcom/facebook/drawee/c/d;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/c/a;->a(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p0}, Lcom/facebook/drawee/c/d;->h()Lcom/facebook/drawee/c/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/c/a;->a(Lcom/facebook/drawee/c/j;)V

    .line 314
    invoke-virtual {p0, v0}, Lcom/facebook/drawee/c/d;->b(Lcom/facebook/drawee/c/a;)V

    .line 315
    invoke-virtual {p0, v0}, Lcom/facebook/drawee/c/d;->a(Lcom/facebook/drawee/c/a;)V

    .line 316
    return-object v0
.end method

.method protected o()Lcom/facebook/d/d/m;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/d/d/m",
            "<",
            "Lcom/facebook/e/f",
            "<TIMAGE;>;>;"
        }
    .end annotation

    .prologue
    .line 326
    iget-object v0, p0, Lcom/facebook/drawee/c/d;->j:Lcom/facebook/d/d/m;

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/facebook/drawee/c/d;->j:Lcom/facebook/d/d/m;

    .line 352
    :cond_0
    :goto_0
    return-object v0

    .line 330
    :cond_1
    const/4 v0, 0x0

    .line 333
    iget-object v1, p0, Lcom/facebook/drawee/c/d;->f:Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 334
    iget-object v0, p0, Lcom/facebook/drawee/c/d;->f:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/facebook/drawee/c/d;->d(Ljava/lang/Object;)Lcom/facebook/d/d/m;

    move-result-object v0

    .line 340
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/drawee/c/d;->g:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 341
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 342
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    iget-object v0, p0, Lcom/facebook/drawee/c/d;->g:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/facebook/drawee/c/d;->d(Ljava/lang/Object;)Lcom/facebook/d/d/m;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    invoke-static {v1}, Lcom/facebook/e/n;->a(Ljava/util/List;)Lcom/facebook/e/n;

    move-result-object v0

    .line 348
    :cond_3
    if-nez v0, :cond_0

    .line 349
    sget-object v0, Lcom/facebook/drawee/c/d;->b:Ljava/lang/NullPointerException;

    invoke-static {v0}, Lcom/facebook/e/g;->b(Ljava/lang/Throwable;)Lcom/facebook/d/d/m;

    move-result-object v0

    goto :goto_0

    .line 335
    :cond_4
    iget-object v1, p0, Lcom/facebook/drawee/c/d;->h:[Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 336
    iget-object v0, p0, Lcom/facebook/drawee/c/d;->h:[Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/facebook/drawee/c/d;->i:Z

    invoke-virtual {p0, v0, v1}, Lcom/facebook/drawee/c/d;->a([Ljava/lang/Object;Z)Lcom/facebook/d/d/m;

    move-result-object v0

    goto :goto_1
.end method

.method public synthetic p()Lcom/facebook/drawee/h/a;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/facebook/drawee/c/d;->k()Lcom/facebook/drawee/c/a;

    move-result-object v0

    return-object v0
.end method
