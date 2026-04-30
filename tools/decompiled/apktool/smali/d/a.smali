.class public final Ld/a;
.super Ljava/lang/Object;
.source "Address.java"


# instance fields
.field final a:Ld/ai;

.field final b:Ld/x;

.field final c:Ljavax/net/SocketFactory;

.field final d:Ld/b;

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

.field final g:Ljava/net/ProxySelector;

.field final h:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final i:Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final j:Ljavax/net/ssl/HostnameVerifier;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final k:Ld/j;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILd/x;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Ld/j;Ld/b;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .locals 2
    .param p5    # Ljavax/net/ssl/SSLSocketFactory;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljavax/net/ssl/HostnameVerifier;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ld/j;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/net/Proxy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ld/x;",
            "Ljavax/net/SocketFactory;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Ld/j;",
            "Ld/b;",
            "Ljava/net/Proxy;",
            "Ljava/util/List",
            "<",
            "Ld/au;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ld/r;",
            ">;",
            "Ljava/net/ProxySelector;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v1, Ld/aj;

    invoke-direct {v1}, Ld/aj;-><init>()V

    if-eqz p5, :cond_0

    .line 57
    const-string/jumbo v0, "https"

    :goto_0
    invoke-virtual {v1, v0}, Ld/aj;->a(Ljava/lang/String;)Ld/aj;

    move-result-object v0

    .line 58
    invoke-virtual {v0, p1}, Ld/aj;->d(Ljava/lang/String;)Ld/aj;

    move-result-object v0

    .line 59
    invoke-virtual {v0, p2}, Ld/aj;->a(I)Ld/aj;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ld/aj;->c()Ld/ai;

    move-result-object v0

    iput-object v0, p0, Ld/a;->a:Ld/ai;

    .line 62
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "dns == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    const-string/jumbo v0, "http"

    goto :goto_0

    .line 63
    :cond_1
    iput-object p3, p0, Ld/a;->b:Ld/x;

    .line 65
    if-nez p4, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "socketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_2
    iput-object p4, p0, Ld/a;->c:Ljavax/net/SocketFactory;

    .line 68
    if-nez p8, :cond_3

    .line 69
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "proxyAuthenticator == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_3
    iput-object p8, p0, Ld/a;->d:Ld/b;

    .line 73
    if-nez p10, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "protocols == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_4
    invoke-static {p10}, Ld/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ld/a;->e:Ljava/util/List;

    .line 76
    if-nez p11, :cond_5

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "connectionSpecs == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_5
    invoke-static {p11}, Ld/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ld/a;->f:Ljava/util/List;

    .line 79
    if-nez p12, :cond_6

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "proxySelector == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_6
    iput-object p12, p0, Ld/a;->g:Ljava/net/ProxySelector;

    .line 82
    iput-object p9, p0, Ld/a;->h:Ljava/net/Proxy;

    .line 83
    iput-object p5, p0, Ld/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    .line 84
    iput-object p6, p0, Ld/a;->j:Ljavax/net/ssl/HostnameVerifier;

    .line 85
    iput-object p7, p0, Ld/a;->k:Ld/j;

    .line 86
    return-void
.end method


# virtual methods
.method public a()Ld/ai;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Ld/a;->a:Ld/ai;

    return-object v0
.end method

.method a(Ld/a;)Z
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Ld/a;->b:Ld/x;

    iget-object v1, p1, Ld/a;->b:Ld/x;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/a;->d:Ld/b;

    iget-object v1, p1, Ld/a;->d:Ld/b;

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/a;->e:Ljava/util/List;

    iget-object v1, p1, Ld/a;->e:Ljava/util/List;

    .line 178
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/a;->f:Ljava/util/List;

    iget-object v1, p1, Ld/a;->f:Ljava/util/List;

    .line 179
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/a;->g:Ljava/net/ProxySelector;

    iget-object v1, p1, Ld/a;->g:Ljava/net/ProxySelector;

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/a;->h:Ljava/net/Proxy;

    iget-object v1, p1, Ld/a;->h:Ljava/net/Proxy;

    .line 181
    invoke-static {v0, v1}, Ld/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, p1, Ld/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    .line 182
    invoke-static {v0, v1}, Ld/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/a;->j:Ljavax/net/ssl/HostnameVerifier;

    iget-object v1, p1, Ld/a;->j:Ljavax/net/ssl/HostnameVerifier;

    .line 183
    invoke-static {v0, v1}, Ld/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/a;->k:Ld/j;

    iget-object v1, p1, Ld/a;->k:Ld/j;

    .line 184
    invoke-static {v0, v1}, Ld/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0}, Ld/a;->a()Ld/ai;

    move-result-object v0

    invoke-virtual {v0}, Ld/ai;->g()I

    move-result v0

    invoke-virtual {p1}, Ld/a;->a()Ld/ai;

    move-result-object v1

    invoke-virtual {v1}, Ld/ai;->g()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 176
    :goto_0
    return v0

    .line 185
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ld/x;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Ld/a;->b:Ld/x;

    return-object v0
.end method

.method public c()Ljavax/net/SocketFactory;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Ld/a;->c:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public d()Ld/b;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Ld/a;->d:Ld/b;

    return-object v0
.end method

.method public e()Ljava/util/List;
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
    .line 116
    iget-object v0, p0, Ld/a;->e:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 155
    instance-of v0, p1, Ld/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ld/a;->a:Ld/ai;

    move-object v0, p1

    check-cast v0, Ld/a;

    iget-object v0, v0, Ld/a;->a:Ld/ai;

    .line 156
    invoke-virtual {v1, v0}, Ld/ai;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Ld/a;

    .line 157
    invoke-virtual {p0, p1}, Ld/a;->a(Ld/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 155
    :goto_0
    return v0

    .line 157
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/util/List;
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
    .line 120
    iget-object v0, p0, Ld/a;->f:Ljava/util/List;

    return-object v0
.end method

.method public g()Ljava/net/ProxySelector;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Ld/a;->g:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public h()Ljava/net/Proxy;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Ld/a;->h:Ljava/net/Proxy;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 161
    .line 162
    iget-object v0, p0, Ld/a;->a:Ld/ai;

    invoke-virtual {v0}, Ld/ai;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 163
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ld/a;->b:Ld/x;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 164
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ld/a;->d:Ld/b;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 165
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ld/a;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 166
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ld/a;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 167
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ld/a;->g:Ljava/net/ProxySelector;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 168
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ld/a;->h:Ljava/net/Proxy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld/a;->h:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 169
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ld/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ld/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 170
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ld/a;->j:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ld/a;->j:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 171
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ld/a;->k:Ld/j;

    if-eqz v2, :cond_0

    iget-object v1, p0, Ld/a;->k:Ld/j;

    invoke-virtual {v1}, Ld/j;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 172
    return v0

    :cond_1
    move v0, v1

    .line 168
    goto :goto_0

    :cond_2
    move v0, v1

    .line 169
    goto :goto_1

    :cond_3
    move v0, v1

    .line 170
    goto :goto_2
.end method

.method public i()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Ld/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public j()Ljavax/net/ssl/HostnameVerifier;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Ld/a;->j:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public k()Ld/j;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Ld/a;->k:Ld/j;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Address{"

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ld/a;->a:Ld/ai;

    .line 191
    invoke-virtual {v1}, Ld/ai;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ld/a;->a:Ld/ai;

    invoke-virtual {v1}, Ld/ai;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 193
    iget-object v1, p0, Ld/a;->h:Ljava/net/Proxy;

    if-eqz v1, :cond_0

    .line 194
    const-string/jumbo v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ld/a;->h:Ljava/net/Proxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    :goto_0
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 196
    :cond_0
    const-string/jumbo v1, ", proxySelector="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ld/a;->g:Ljava/net/ProxySelector;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
