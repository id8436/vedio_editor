.class public Ld/ar;
.super Ljava/lang/Object;
.source "OkHttpClient.java"

# interfaces
.implements Ld/h;
.implements Ljava/lang/Cloneable;


# static fields
.field static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ld/au;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ld/r;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final A:I

.field final B:I

.field final C:I

.field final c:Ld/w;

.field final d:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ld/au;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ld/r;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ld/al;",
            ">;"
        }
    .end annotation
.end field

.field final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ld/al;",
            ">;"
        }
    .end annotation
.end field

.field final i:Ld/ac;

.field final j:Ljava/net/ProxySelector;

.field final k:Ld/u;

.field final l:Ld/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final m:Ld/a/a/i;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final n:Ljavax/net/SocketFactory;

.field final o:Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final p:Ld/a/i/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final q:Ljavax/net/ssl/HostnameVerifier;

.field final r:Ld/j;

.field final s:Ld/b;

.field final t:Ld/b;

.field final u:Ld/p;

.field final v:Ld/x;

.field final w:Z

.field final x:Z

.field final y:Z

.field final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 126
    new-array v0, v4, [Ld/au;

    sget-object v1, Ld/au;->d:Ld/au;

    aput-object v1, v0, v2

    sget-object v1, Ld/au;->b:Ld/au;

    aput-object v1, v0, v3

    invoke-static {v0}, Ld/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ld/ar;->a:Ljava/util/List;

    .line 129
    new-array v0, v4, [Ld/r;

    sget-object v1, Ld/r;->a:Ld/r;

    aput-object v1, v0, v2

    sget-object v1, Ld/r;->c:Ld/r;

    aput-object v1, v0, v3

    invoke-static {v0}, Ld/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ld/ar;->b:Ljava/util/List;

    .line 133
    new-instance v0, Ld/as;

    invoke-direct {v0}, Ld/as;-><init>()V

    sput-object v0, Ld/a/a;->a:Ld/a/a;

    .line 195
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 226
    new-instance v0, Ld/at;

    invoke-direct {v0}, Ld/at;-><init>()V

    invoke-direct {p0, v0}, Ld/ar;-><init>(Ld/at;)V

    .line 227
    return-void
.end method

.method constructor <init>(Ld/at;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iget-object v0, p1, Ld/at;->a:Ld/w;

    iput-object v0, p0, Ld/ar;->c:Ld/w;

    .line 231
    iget-object v0, p1, Ld/at;->b:Ljava/net/Proxy;

    iput-object v0, p0, Ld/ar;->d:Ljava/net/Proxy;

    .line 232
    iget-object v0, p1, Ld/at;->c:Ljava/util/List;

    iput-object v0, p0, Ld/ar;->e:Ljava/util/List;

    .line 233
    iget-object v0, p1, Ld/at;->d:Ljava/util/List;

    iput-object v0, p0, Ld/ar;->f:Ljava/util/List;

    .line 234
    iget-object v0, p1, Ld/at;->e:Ljava/util/List;

    invoke-static {v0}, Ld/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ld/ar;->g:Ljava/util/List;

    .line 235
    iget-object v0, p1, Ld/at;->f:Ljava/util/List;

    invoke-static {v0}, Ld/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ld/ar;->h:Ljava/util/List;

    .line 236
    iget-object v0, p1, Ld/at;->g:Ld/ac;

    iput-object v0, p0, Ld/ar;->i:Ld/ac;

    .line 237
    iget-object v0, p1, Ld/at;->h:Ljava/net/ProxySelector;

    iput-object v0, p0, Ld/ar;->j:Ljava/net/ProxySelector;

    .line 238
    iget-object v0, p1, Ld/at;->i:Ld/u;

    iput-object v0, p0, Ld/ar;->k:Ld/u;

    .line 239
    iget-object v0, p1, Ld/at;->j:Ld/d;

    iput-object v0, p0, Ld/ar;->l:Ld/d;

    .line 240
    iget-object v0, p1, Ld/at;->k:Ld/a/a/i;

    iput-object v0, p0, Ld/ar;->m:Ld/a/a/i;

    .line 241
    iget-object v0, p1, Ld/at;->l:Ljavax/net/SocketFactory;

    iput-object v0, p0, Ld/ar;->n:Ljavax/net/SocketFactory;

    .line 244
    iget-object v0, p0, Ld/ar;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/r;

    .line 245
    if-nez v1, :cond_0

    invoke-virtual {v0}, Ld/r;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 246
    goto :goto_0

    :cond_1
    move v0, v2

    .line 245
    goto :goto_1

    .line 248
    :cond_2
    iget-object v0, p1, Ld/at;->m:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_3

    if-nez v1, :cond_4

    .line 249
    :cond_3
    iget-object v0, p1, Ld/at;->m:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Ld/ar;->o:Ljavax/net/ssl/SSLSocketFactory;

    .line 250
    iget-object v0, p1, Ld/at;->n:Ld/a/i/c;

    iput-object v0, p0, Ld/ar;->p:Ld/a/i/c;

    .line 257
    :goto_2
    iget-object v0, p1, Ld/at;->o:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Ld/ar;->q:Ljavax/net/ssl/HostnameVerifier;

    .line 258
    iget-object v0, p1, Ld/at;->p:Ld/j;

    iget-object v1, p0, Ld/ar;->p:Ld/a/i/c;

    invoke-virtual {v0, v1}, Ld/j;->a(Ld/a/i/c;)Ld/j;

    move-result-object v0

    iput-object v0, p0, Ld/ar;->r:Ld/j;

    .line 260
    iget-object v0, p1, Ld/at;->q:Ld/b;

    iput-object v0, p0, Ld/ar;->s:Ld/b;

    .line 261
    iget-object v0, p1, Ld/at;->r:Ld/b;

    iput-object v0, p0, Ld/ar;->t:Ld/b;

    .line 262
    iget-object v0, p1, Ld/at;->s:Ld/p;

    iput-object v0, p0, Ld/ar;->u:Ld/p;

    .line 263
    iget-object v0, p1, Ld/at;->t:Ld/x;

    iput-object v0, p0, Ld/ar;->v:Ld/x;

    .line 264
    iget-boolean v0, p1, Ld/at;->u:Z

    iput-boolean v0, p0, Ld/ar;->w:Z

    .line 265
    iget-boolean v0, p1, Ld/at;->v:Z

    iput-boolean v0, p0, Ld/ar;->x:Z

    .line 266
    iget-boolean v0, p1, Ld/at;->w:Z

    iput-boolean v0, p0, Ld/ar;->y:Z

    .line 267
    iget v0, p1, Ld/at;->x:I

    iput v0, p0, Ld/ar;->z:I

    .line 268
    iget v0, p1, Ld/at;->y:I

    iput v0, p0, Ld/ar;->A:I

    .line 269
    iget v0, p1, Ld/at;->z:I

    iput v0, p0, Ld/ar;->B:I

    .line 270
    iget v0, p1, Ld/at;->A:I

    iput v0, p0, Ld/ar;->C:I

    .line 272
    iget-object v0, p0, Ld/ar;->g:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 273
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Null interceptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ld/ar;->g:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_4
    invoke-direct {p0}, Ld/ar;->z()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 253
    invoke-direct {p0, v0}, Ld/ar;->a(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Ld/ar;->o:Ljavax/net/ssl/SSLSocketFactory;

    .line 254
    invoke-static {v0}, Ld/a/i/c;->a(Ljavax/net/ssl/X509TrustManager;)Ld/a/i/c;

    move-result-object v0

    iput-object v0, p0, Ld/ar;->p:Ld/a/i/c;

    goto :goto_2

    .line 275
    :cond_5
    iget-object v0, p0, Ld/ar;->h:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 276
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Null network interceptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ld/ar;->h:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_6
    return-void
.end method

.method private a(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 4

    .prologue
    .line 298
    :try_start_0
    const-string/jumbo v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 299
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 300
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 301
    :catch_0
    move-exception v0

    .line 302
    const-string/jumbo v1, "No System TLS"

    invoke-static {v1, v0}, Ld/a/c;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method

.method private z()Ljavax/net/ssl/X509TrustManager;
    .locals 4

    .prologue
    .line 283
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 284
    const/4 v0, 0x0

    check-cast v0, Ljava/security/KeyStore;

    invoke-virtual {v1, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 285
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    .line 286
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    instance-of v1, v1, Ljavax/net/ssl/X509TrustManager;

    if-nez v1, :cond_1

    .line 287
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected default trust managers:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 288
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    const-string/jumbo v1, "No System TLS"

    invoke-static {v1, v0}, Ld/a/c;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    .line 290
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    aget-object v0, v0, v1

    check-cast v0, Ljavax/net/ssl/X509TrustManager;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Ld/ar;->z:I

    return v0
.end method

.method public a(Ld/ax;)Ld/g;
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ld/av;->a(Ld/ar;Ld/ax;Z)Ld/av;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Ld/ar;->A:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Ld/ar;->B:I

    return v0
.end method

.method public d()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Ld/ar;->d:Ljava/net/Proxy;

    return-object v0
.end method

.method public e()Ljava/net/ProxySelector;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Ld/ar;->j:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public f()Ld/u;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Ld/ar;->k:Ld/u;

    return-object v0
.end method

.method g()Ld/a/a/i;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Ld/ar;->l:Ld/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/ar;->l:Ld/d;

    iget-object v0, v0, Ld/d;->a:Ld/a/a/i;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ld/ar;->m:Ld/a/a/i;

    goto :goto_0
.end method

.method public h()Ld/x;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Ld/ar;->v:Ld/x;

    return-object v0
.end method

.method public i()Ljavax/net/SocketFactory;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Ld/ar;->n:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public j()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Ld/ar;->o:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public k()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Ld/ar;->q:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public l()Ld/j;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Ld/ar;->r:Ld/j;

    return-object v0
.end method

.method public m()Ld/b;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Ld/ar;->t:Ld/b;

    return-object v0
.end method

.method public n()Ld/b;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Ld/ar;->s:Ld/b;

    return-object v0
.end method

.method public o()Ld/p;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Ld/ar;->u:Ld/p;

    return-object v0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 379
    iget-boolean v0, p0, Ld/ar;->w:Z

    return v0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 383
    iget-boolean v0, p0, Ld/ar;->x:Z

    return v0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 387
    iget-boolean v0, p0, Ld/ar;->y:Z

    return v0
.end method

.method public s()Ld/w;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Ld/ar;->c:Ld/w;

    return-object v0
.end method

.method public t()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ld/au;",
            ">;"
        }
    .end annotation

    .prologue
    .line 395
    iget-object v0, p0, Ld/ar;->e:Ljava/util/List;

    return-object v0
.end method

.method public u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ld/r;",
            ">;"
        }
    .end annotation

    .prologue
    .line 399
    iget-object v0, p0, Ld/ar;->f:Ljava/util/List;

    return-object v0
.end method

.method public v()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ld/al;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    iget-object v0, p0, Ld/ar;->g:Ljava/util/List;

    return-object v0
.end method

.method public w()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ld/al;",
            ">;"
        }
    .end annotation

    .prologue
    .line 417
    iget-object v0, p0, Ld/ar;->h:Ljava/util/List;

    return-object v0
.end method

.method public x()Ld/ac;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Ld/ar;->i:Ld/ac;

    return-object v0
.end method

.method public y()Ld/at;
    .locals 1

    .prologue
    .line 441
    new-instance v0, Ld/at;

    invoke-direct {v0, p0}, Ld/at;-><init>(Ld/ar;)V

    return-object v0
.end method
