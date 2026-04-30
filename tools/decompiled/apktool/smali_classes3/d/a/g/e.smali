.class final Ld/a/g/e;
.super Ld/a/g/i;
.source "Jdk9Platform.java"


# instance fields
.field final a:Ljava/lang/reflect/Method;

.field final b:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ld/a/g/i;-><init>()V

    .line 37
    iput-object p1, p0, Ld/a/g/e;->a:Ljava/lang/reflect/Method;

    .line 38
    iput-object p2, p0, Ld/a/g/e;->b:Ljava/lang/reflect/Method;

    .line 39
    return-void
.end method

.method public static a()Ld/a/g/e;
    .locals 5

    .prologue
    .line 87
    :try_start_0
    const-class v0, Ljavax/net/ssl/SSLParameters;

    const-string/jumbo v1, "setApplicationProtocols"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, [Ljava/lang/String;

    aput-object v4, v2, v3

    .line 88
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 89
    const-class v0, Ljavax/net/ssl/SSLSocket;

    const-string/jumbo v2, "getApplicationProtocol"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 91
    new-instance v0, Ld/a/g/e;

    invoke-direct {v0, v1, v2}, Ld/a/g/e;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-object v0

    .line 92
    :catch_0
    move-exception v0

    .line 96
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    :try_start_0
    iget-object v0, p0, Ld/a/g/e;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 65
    if-eqz v0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    :cond_0
    const/4 v0, 0x0

    .line 69
    :cond_1
    return-object v0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    :goto_0
    const-string/jumbo v1, "unable to get selected protocols"

    invoke-static {v1, v0}, Ld/a/c;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    .line 70
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
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
    .line 45
    :try_start_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    .line 47
    invoke-static {p3}, Ld/a/g/e;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 49
    iget-object v2, p0, Ld/a/g/e;->a:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 50
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v3, v4

    .line 49
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 56
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    :goto_0
    const-string/jumbo v1, "unable to set ssl parameters"

    invoke-static {v1, v0}, Ld/a/c;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    .line 53
    :catch_1
    move-exception v0

    goto :goto_0
.end method
