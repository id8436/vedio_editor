.class Ld/a/g/a;
.super Ld/a/g/i;
.source "AndroidPlatform.java"


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Ld/a/g/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/a/g/h",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ld/a/g/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/a/g/h",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ld/a/g/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/a/g/h",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ld/a/g/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/a/g/h",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ld/a/g/d;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ld/a/g/h;Ld/a/g/h;Ld/a/g/h;Ld/a/g/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ld/a/g/h",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "Ld/a/g/h",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "Ld/a/g/h",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "Ld/a/g/h",
            "<",
            "Ljava/net/Socket;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Ld/a/g/i;-><init>()V

    .line 55
    invoke-static {}, Ld/a/g/d;->a()Ld/a/g/d;

    move-result-object v0

    iput-object v0, p0, Ld/a/g/a;->f:Ld/a/g/d;

    .line 60
    iput-object p1, p0, Ld/a/g/a;->a:Ljava/lang/Class;

    .line 61
    iput-object p2, p0, Ld/a/g/a;->b:Ld/a/g/h;

    .line 62
    iput-object p3, p0, Ld/a/g/a;->c:Ld/a/g/h;

    .line 63
    iput-object p4, p0, Ld/a/g/a;->d:Ld/a/g/h;

    .line 64
    iput-object p5, p0, Ld/a/g/a;->e:Ld/a/g/h;

    .line 65
    return-void
.end method

.method public static a()Ld/a/g/i;
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 236
    :try_start_0
    const-string/jumbo v0, "com.android.org.conscrypt.SSLParametersImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 243
    :goto_0
    :try_start_1
    new-instance v2, Ld/a/g/h;

    const/4 v0, 0x0

    const-string/jumbo v3, "setUseSessionTickets"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v4, v5

    invoke-direct {v2, v0, v3, v4}, Ld/a/g/h;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 245
    new-instance v3, Ld/a/g/h;

    const/4 v0, 0x0

    const-string/jumbo v4, "setHostname"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v5, v7

    invoke-direct {v3, v0, v4, v5}, Ld/a/g/h;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 250
    invoke-static {}, Ld/a/g/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    new-instance v4, Ld/a/g/h;

    const-class v0, [B

    const-string/jumbo v5, "getAlpnSelectedProtocol"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-direct {v4, v0, v5, v7}, Ld/a/g/h;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 253
    new-instance v5, Ld/a/g/h;

    const/4 v0, 0x0

    const-string/jumbo v7, "setAlpnProtocols"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, [B

    aput-object v10, v8, v9

    invoke-direct {v5, v0, v7, v8}, Ld/a/g/h;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 257
    :goto_1
    new-instance v0, Ld/a/g/a;

    invoke-direct/range {v0 .. v5}, Ld/a/g/a;-><init>(Ljava/lang/Class;Ld/a/g/h;Ld/a/g/h;Ld/a/g/h;Ld/a/g/h;)V

    .line 263
    :goto_2
    return-object v0

    .line 237
    :catch_0
    move-exception v0

    .line 239
    const-string/jumbo v0, "org.apache.harmony.xnet.provider.jsse.SSLParametersImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 259
    :catch_1
    move-exception v0

    move-object v0, v6

    .line 263
    goto :goto_2

    :cond_0
    move-object v5, v6

    move-object v4, v6

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 182
    :try_start_0
    const-string/jumbo v0, "isCleartextTrafficPermitted"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 183
    invoke-virtual {p2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 184
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 186
    :goto_0
    return v0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    invoke-direct {p0, p1, p2, p3}, Ld/a/g/a;->b(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 193
    :try_start_0
    const-string/jumbo v0, "isCleartextTrafficPermitted"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    .line 194
    invoke-virtual {p2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 195
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 197
    :goto_0
    return v0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    invoke-super {p0, p1}, Ld/a/g/i;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static c()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 207
    const-string/jumbo v1, "GMSCore_OpenSSL"

    invoke-static {v1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 215
    :goto_0
    return v0

    .line 211
    :cond_0
    :try_start_0
    const-string/jumbo v1, "android.net.Network"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 215
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljavax/net/ssl/X509TrustManager;)Ld/a/i/c;
    .locals 6

    .prologue
    .line 220
    :try_start_0
    const-string/jumbo v0, "android.net.http.X509TrustManagerExtensions"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 221
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljavax/net/ssl/X509TrustManager;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 222
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 223
    const-string/jumbo v2, "checkServerTrusted"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, [Ljava/security/cert/X509Certificate;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 225
    new-instance v0, Ld/a/g/b;

    invoke-direct {v0, v1, v2}, Ld/a/g/b;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    return-object v0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    invoke-super {p0, p1}, Ld/a/g/i;->a(Ljavax/net/ssl/X509TrustManager;)Ld/a/i/c;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Ld/a/g/a;->f:Ld/a/g/d;

    invoke-virtual {v0, p1}, Ld/a/g/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 131
    iget-object v0, p0, Ld/a/g/a;->d:Ld/a/g/h;

    if-nez v0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-object v1

    .line 132
    :cond_1
    iget-object v0, p0, Ld/a/g/a;->d:Ld/a/g/h;

    invoke-virtual {v0, p1}, Ld/a/g/h;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Ld/a/g/a;->d:Ld/a/g/h;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ld/a/g/h;->d(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 135
    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/String;

    sget-object v2, Ld/a/c;->e:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v0, v1

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v0, 0x5

    .line 139
    if-ne p1, v0, :cond_1

    move v4, v0

    .line 140
    :goto_0
    if-eqz p3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 143
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_1
    if-ge v2, v1, :cond_3

    .line 144
    invoke-virtual {p2, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 145
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 147
    :goto_2
    add-int/lit16 v3, v2, 0xfa0

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 148
    const-string/jumbo v5, "OkHttp"

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 150
    if-lt v3, v0, :cond_4

    .line 143
    add-int/lit8 v2, v3, 0x1

    goto :goto_1

    .line 139
    :cond_1
    const/4 v0, 0x3

    move v4, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 145
    goto :goto_2

    .line 152
    :cond_3
    return-void

    :cond_4
    move v2, v3

    goto :goto_2
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Ld/a/g/a;->f:Ld/a/g/d;

    invoke-virtual {v0, p2}, Ld/a/g/d;->a(Ljava/lang/Object;)Z

    move-result v0

    .line 160
    if-nez v0, :cond_0

    .line 162
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Ld/a/g/a;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    :cond_0
    return-void
.end method

.method public a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    .line 91
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    invoke-static {v0}, Ld/a/c;->a(Ljava/lang/AssertionError;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 73
    :cond_0
    throw v0

    .line 74
    :catch_1
    move-exception v0

    .line 77
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Exception in connect"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 79
    throw v1

    .line 80
    :catch_2
    move-exception v0

    .line 83
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_1

    .line 84
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Exception in connect"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 86
    throw v1

    .line 88
    :cond_1
    throw v0
.end method

.method public a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ld/au;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 118
    if-eqz p2, :cond_0

    .line 119
    iget-object v0, p0, Ld/a/g/a;->b:Ld/a/g/h;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, p1, v1}, Ld/a/g/h;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Ld/a/g/a;->c:Ld/a/g/h;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v4

    invoke-virtual {v0, p1, v1}, Ld/a/g/h;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_0
    iget-object v0, p0, Ld/a/g/a;->e:Ld/a/g/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld/a/g/a;->e:Ld/a/g/h;

    invoke-virtual {v0, p1}, Ld/a/g/h;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ld/a/g/a;->b(Ljava/util/List;)[B

    move-result-object v1

    aput-object v1, v0, v4

    .line 126
    iget-object v1, p0, Ld/a/g/a;->e:Ld/a/g/h;

    invoke-virtual {v1, p1, v0}, Ld/a/g/h;->d(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_1
    return-void
.end method

.method public b(Ljavax/net/ssl/X509TrustManager;)Ld/a/i/f;
    .locals 5

    .prologue
    .line 272
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "findTrustAnchorByIssuerAndSignature"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/security/cert/X509Certificate;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 274
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 275
    new-instance v0, Ld/a/g/c;

    invoke-direct {v0, p1, v1}, Ld/a/g/c;-><init>(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_0
    return-object v0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    invoke-super {p0, p1}, Ld/a/g/i;->b(Ljavax/net/ssl/X509TrustManager;)Ld/a/i/f;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 168
    :try_start_0
    const-string/jumbo v0, "android.security.NetworkSecurityPolicy"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 169
    const-string/jumbo v1, "getInstance"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 170
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 171
    invoke-direct {p0, p1, v0, v1}, Ld/a/g/a;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    .line 173
    :goto_0
    return v0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    :goto_1
    invoke-super {p0, p1}, Ld/a/g/i;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 174
    :catch_1
    move-exception v0

    .line 175
    :goto_2
    const-string/jumbo v1, "unable to determine cleartext support"

    invoke-static {v1, v0}, Ld/a/c;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    .line 174
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2

    .line 172
    :catch_4
    move-exception v0

    goto :goto_1
.end method
