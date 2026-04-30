.class public final Ld/at;
.super Ljava/lang/Object;
.source "OkHttpClient.java"


# instance fields
.field A:I

.field a:Ld/w;

.field b:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ld/au;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ld/r;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ld/al;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ld/al;",
            ">;"
        }
    .end annotation
.end field

.field g:Ld/ac;

.field h:Ljava/net/ProxySelector;

.field i:Ld/u;

.field j:Ld/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field k:Ld/a/a/i;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field l:Ljavax/net/SocketFactory;

.field m:Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field n:Ld/a/i/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field o:Ljavax/net/ssl/HostnameVerifier;

.field p:Ld/j;

.field q:Ld/b;

.field r:Ld/b;

.field s:Ld/p;

.field t:Ld/x;

.field u:Z

.field v:Z

.field w:Z

.field x:I

.field y:I

.field z:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x2710

    const/4 v1, 0x1

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/at;->e:Ljava/util/List;

    .line 450
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/at;->f:Ljava/util/List;

    .line 474
    new-instance v0, Ld/w;

    invoke-direct {v0}, Ld/w;-><init>()V

    iput-object v0, p0, Ld/at;->a:Ld/w;

    .line 475
    sget-object v0, Ld/ar;->a:Ljava/util/List;

    iput-object v0, p0, Ld/at;->c:Ljava/util/List;

    .line 476
    sget-object v0, Ld/ar;->b:Ljava/util/List;

    iput-object v0, p0, Ld/at;->d:Ljava/util/List;

    .line 477
    sget-object v0, Ld/z;->a:Ld/z;

    invoke-static {v0}, Ld/z;->a(Ld/z;)Ld/ac;

    move-result-object v0

    iput-object v0, p0, Ld/at;->g:Ld/ac;

    .line 478
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Ld/at;->h:Ljava/net/ProxySelector;

    .line 479
    sget-object v0, Ld/u;->a:Ld/u;

    iput-object v0, p0, Ld/at;->i:Ld/u;

    .line 480
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Ld/at;->l:Ljavax/net/SocketFactory;

    .line 481
    sget-object v0, Ld/a/i/e;->a:Ld/a/i/e;

    iput-object v0, p0, Ld/at;->o:Ljavax/net/ssl/HostnameVerifier;

    .line 482
    sget-object v0, Ld/j;->a:Ld/j;

    iput-object v0, p0, Ld/at;->p:Ld/j;

    .line 483
    sget-object v0, Ld/b;->b:Ld/b;

    iput-object v0, p0, Ld/at;->q:Ld/b;

    .line 484
    sget-object v0, Ld/b;->b:Ld/b;

    iput-object v0, p0, Ld/at;->r:Ld/b;

    .line 485
    new-instance v0, Ld/p;

    invoke-direct {v0}, Ld/p;-><init>()V

    iput-object v0, p0, Ld/at;->s:Ld/p;

    .line 486
    sget-object v0, Ld/x;->a:Ld/x;

    iput-object v0, p0, Ld/at;->t:Ld/x;

    .line 487
    iput-boolean v1, p0, Ld/at;->u:Z

    .line 488
    iput-boolean v1, p0, Ld/at;->v:Z

    .line 489
    iput-boolean v1, p0, Ld/at;->w:Z

    .line 490
    iput v2, p0, Ld/at;->x:I

    .line 491
    iput v2, p0, Ld/at;->y:I

    .line 492
    iput v2, p0, Ld/at;->z:I

    .line 493
    const/4 v0, 0x0

    iput v0, p0, Ld/at;->A:I

    .line 494
    return-void
.end method

.method constructor <init>(Ld/ar;)V
    .locals 2

    .prologue
    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/at;->e:Ljava/util/List;

    .line 450
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/at;->f:Ljava/util/List;

    .line 497
    iget-object v0, p1, Ld/ar;->c:Ld/w;

    iput-object v0, p0, Ld/at;->a:Ld/w;

    .line 498
    iget-object v0, p1, Ld/ar;->d:Ljava/net/Proxy;

    iput-object v0, p0, Ld/at;->b:Ljava/net/Proxy;

    .line 499
    iget-object v0, p1, Ld/ar;->e:Ljava/util/List;

    iput-object v0, p0, Ld/at;->c:Ljava/util/List;

    .line 500
    iget-object v0, p1, Ld/ar;->f:Ljava/util/List;

    iput-object v0, p0, Ld/at;->d:Ljava/util/List;

    .line 501
    iget-object v0, p0, Ld/at;->e:Ljava/util/List;

    iget-object v1, p1, Ld/ar;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 502
    iget-object v0, p0, Ld/at;->f:Ljava/util/List;

    iget-object v1, p1, Ld/ar;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 503
    iget-object v0, p1, Ld/ar;->i:Ld/ac;

    iput-object v0, p0, Ld/at;->g:Ld/ac;

    .line 504
    iget-object v0, p1, Ld/ar;->j:Ljava/net/ProxySelector;

    iput-object v0, p0, Ld/at;->h:Ljava/net/ProxySelector;

    .line 505
    iget-object v0, p1, Ld/ar;->k:Ld/u;

    iput-object v0, p0, Ld/at;->i:Ld/u;

    .line 506
    iget-object v0, p1, Ld/ar;->m:Ld/a/a/i;

    iput-object v0, p0, Ld/at;->k:Ld/a/a/i;

    .line 507
    iget-object v0, p1, Ld/ar;->l:Ld/d;

    iput-object v0, p0, Ld/at;->j:Ld/d;

    .line 508
    iget-object v0, p1, Ld/ar;->n:Ljavax/net/SocketFactory;

    iput-object v0, p0, Ld/at;->l:Ljavax/net/SocketFactory;

    .line 509
    iget-object v0, p1, Ld/ar;->o:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Ld/at;->m:Ljavax/net/ssl/SSLSocketFactory;

    .line 510
    iget-object v0, p1, Ld/ar;->p:Ld/a/i/c;

    iput-object v0, p0, Ld/at;->n:Ld/a/i/c;

    .line 511
    iget-object v0, p1, Ld/ar;->q:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Ld/at;->o:Ljavax/net/ssl/HostnameVerifier;

    .line 512
    iget-object v0, p1, Ld/ar;->r:Ld/j;

    iput-object v0, p0, Ld/at;->p:Ld/j;

    .line 513
    iget-object v0, p1, Ld/ar;->s:Ld/b;

    iput-object v0, p0, Ld/at;->q:Ld/b;

    .line 514
    iget-object v0, p1, Ld/ar;->t:Ld/b;

    iput-object v0, p0, Ld/at;->r:Ld/b;

    .line 515
    iget-object v0, p1, Ld/ar;->u:Ld/p;

    iput-object v0, p0, Ld/at;->s:Ld/p;

    .line 516
    iget-object v0, p1, Ld/ar;->v:Ld/x;

    iput-object v0, p0, Ld/at;->t:Ld/x;

    .line 517
    iget-boolean v0, p1, Ld/ar;->w:Z

    iput-boolean v0, p0, Ld/at;->u:Z

    .line 518
    iget-boolean v0, p1, Ld/ar;->x:Z

    iput-boolean v0, p0, Ld/at;->v:Z

    .line 519
    iget-boolean v0, p1, Ld/ar;->y:Z

    iput-boolean v0, p0, Ld/at;->w:Z

    .line 520
    iget v0, p1, Ld/ar;->z:I

    iput v0, p0, Ld/at;->x:I

    .line 521
    iget v0, p1, Ld/ar;->A:I

    iput v0, p0, Ld/at;->y:I

    .line 522
    iget v0, p1, Ld/ar;->B:I

    iput v0, p0, Ld/at;->z:I

    .line 523
    iget v0, p1, Ld/ar;->C:I

    iput v0, p0, Ld/at;->A:I

    .line 524
    return-void
.end method


# virtual methods
.method public a()Ld/ar;
    .locals 1

    .prologue
    .line 914
    new-instance v0, Ld/ar;

    invoke-direct {v0, p0}, Ld/ar;-><init>(Ld/at;)V

    return-object v0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Ld/at;
    .locals 1

    .prologue
    .line 532
    const-string/jumbo v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Ld/a/c;->a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Ld/at;->x:I

    .line 533
    return-object p0
.end method

.method public a(Ld/al;)Ld/at;
    .locals 2

    .prologue
    .line 867
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "interceptor == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 868
    :cond_0
    iget-object v0, p0, Ld/at;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 869
    return-object p0
.end method

.method public a(Ld/b;)Ld/at;
    .locals 2

    .prologue
    .line 725
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "authenticator == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 726
    :cond_0
    iput-object p1, p0, Ld/at;->r:Ld/b;

    .line 727
    return-object p0
.end method

.method public a(Ld/j;)Ld/at;
    .locals 2

    .prologue
    .line 713
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "certificatePinner == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 714
    :cond_0
    iput-object p1, p0, Ld/at;->p:Ld/j;

    .line 715
    return-object p0
.end method

.method public a(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Ld/at;
    .locals 2

    .prologue
    .line 688
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "sslSocketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 689
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "trustManager == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 690
    :cond_1
    iput-object p1, p0, Ld/at;->m:Ljavax/net/ssl/SSLSocketFactory;

    .line 691
    invoke-static {p2}, Ld/a/i/c;->a(Ljavax/net/ssl/X509TrustManager;)Ld/a/i/c;

    move-result-object v0

    iput-object v0, p0, Ld/at;->n:Ld/a/i/c;

    .line 692
    return-object p0
.end method

.method public b(JLjava/util/concurrent/TimeUnit;)Ld/at;
    .locals 1

    .prologue
    .line 541
    const-string/jumbo v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Ld/a/c;->a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Ld/at;->y:I

    .line 542
    return-object p0
.end method

.method public b(Ld/al;)Ld/at;
    .locals 2

    .prologue
    .line 882
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "interceptor == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 883
    :cond_0
    iget-object v0, p0, Ld/at;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 884
    return-object p0
.end method

.method public c(JLjava/util/concurrent/TimeUnit;)Ld/at;
    .locals 1

    .prologue
    .line 550
    const-string/jumbo v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Ld/a/c;->a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Ld/at;->z:I

    .line 551
    return-object p0
.end method
