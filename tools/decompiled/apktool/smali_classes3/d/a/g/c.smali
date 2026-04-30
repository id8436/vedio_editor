.class final Ld/a/g/c;
.super Ljava/lang/Object;
.source "AndroidPlatform.java"

# interfaces
.implements Ld/a/i/f;


# instance fields
.field private final a:Ljavax/net/ssl/X509TrustManager;

.field private final b:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)V
    .locals 0

    .prologue
    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    iput-object p2, p0, Ld/a/g/c;->b:Ljava/lang/reflect/Method;

    .line 394
    iput-object p1, p0, Ld/a/g/c;->a:Ljavax/net/ssl/X509TrustManager;

    .line 395
    return-void
.end method


# virtual methods
.method public a(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 399
    :try_start_0
    iget-object v0, p0, Ld/a/g/c;->b:Ljava/lang/reflect/Method;

    iget-object v2, p0, Ld/a/g/c;->a:Ljavax/net/ssl/X509TrustManager;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    .line 401
    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 407
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 403
    goto :goto_0

    .line 404
    :catch_0
    move-exception v0

    .line 405
    const-string/jumbo v1, "unable to get issues and signature"

    invoke-static {v1, v0}, Ld/a/c;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    .line 406
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 407
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 413
    if-ne p1, p0, :cond_1

    .line 420
    :cond_0
    :goto_0
    return v0

    .line 416
    :cond_1
    instance-of v2, p1, Ld/a/g/c;

    if-nez v2, :cond_2

    move v0, v1

    .line 417
    goto :goto_0

    .line 419
    :cond_2
    check-cast p1, Ld/a/g/c;

    .line 420
    iget-object v2, p0, Ld/a/g/c;->a:Ljavax/net/ssl/X509TrustManager;

    iget-object v3, p1, Ld/a/g/c;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Ld/a/g/c;->b:Ljava/lang/reflect/Method;

    iget-object v3, p1, Ld/a/g/c;->b:Ljava/lang/reflect/Method;

    .line 421
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Ld/a/g/c;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Ld/a/g/c;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method
