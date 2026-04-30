.class public final Ld/af;
.super Ljava/lang/Object;
.source "Handshake.java"


# instance fields
.field private final a:Ld/bj;

.field private final b:Ld/m;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ld/bj;Ld/m;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/bj;",
            "Ld/m;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Ld/af;->a:Ld/bj;

    .line 44
    iput-object p2, p0, Ld/af;->b:Ld/m;

    .line 45
    iput-object p3, p0, Ld/af;->c:Ljava/util/List;

    .line 46
    iput-object p4, p0, Ld/af;->d:Ljava/util/List;

    .line 47
    return-void
.end method

.method public static a(Ljavax/net/ssl/SSLSession;)Ld/af;
    .locals 5

    .prologue
    .line 50
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    .line 51
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cipherSuite == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    invoke-static {v0}, Ld/m;->a(Ljava/lang/String;)Ld/m;

    move-result-object v2

    .line 54
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 55
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "tlsVersion == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    invoke-static {v0}, Ld/bj;->a(Ljava/lang/String;)Ld/bj;

    move-result-object v3

    .line 60
    :try_start_0
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 64
    :goto_0
    if-eqz v0, :cond_2

    .line 65
    invoke-static {v0}, Ld/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 68
    :goto_1
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v1

    .line 69
    if-eqz v1, :cond_3

    .line 70
    invoke-static {v1}, Ld/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 73
    :goto_2
    new-instance v4, Ld/af;

    invoke-direct {v4, v3, v2, v0, v1}, Ld/af;-><init>(Ld/bj;Ld/m;Ljava/util/List;Ljava/util/List;)V

    return-object v4

    .line 61
    :catch_0
    move-exception v0

    .line 62
    const/4 v0, 0x0

    goto :goto_0

    .line 66
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 71
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_2
.end method


# virtual methods
.method public a()Ld/m;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Ld/af;->b:Ld/m;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Ld/af;->c:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 122
    instance-of v1, p1, Ld/af;

    if-nez v1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v0

    .line 123
    :cond_1
    check-cast p1, Ld/af;

    .line 124
    iget-object v1, p0, Ld/af;->a:Ld/bj;

    iget-object v2, p1, Ld/af;->a:Ld/bj;

    invoke-virtual {v1, v2}, Ld/bj;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ld/af;->b:Ld/m;

    iget-object v2, p1, Ld/af;->b:Ld/m;

    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ld/af;->c:Ljava/util/List;

    iget-object v2, p1, Ld/af;->c:Ljava/util/List;

    .line 126
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ld/af;->d:Ljava/util/List;

    iget-object v2, p1, Ld/af;->d:Ljava/util/List;

    .line 127
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 131
    .line 132
    iget-object v0, p0, Ld/af;->a:Ld/bj;

    invoke-virtual {v0}, Ld/bj;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 133
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ld/af;->b:Ld/m;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 134
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ld/af;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 135
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ld/af;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 136
    return v0
.end method
