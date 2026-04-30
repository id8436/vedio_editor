.class public Ld/a/g/i;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field private static final a:Ld/a/g/i;

.field private static final b:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Ld/a/g/i;->a()Ld/a/g/i;

    move-result-object v0

    sput-object v0, Ld/a/g/i;->a:Ld/a/g/i;

    .line 77
    const-class v0, Ld/ar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ld/a/g/i;->b:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ld/a/g/i;
    .locals 1

    .prologue
    .line 184
    invoke-static {}, Ld/a/g/a;->a()Ld/a/g/i;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-object v0

    .line 190
    :cond_1
    invoke-static {}, Ld/a/g/e;->a()Ld/a/g/e;

    move-result-object v0

    .line 192
    if-nez v0, :cond_0

    .line 196
    invoke-static {}, Ld/a/g/f;->a()Ld/a/g/i;

    move-result-object v0

    .line 198
    if-nez v0, :cond_0

    .line 203
    new-instance v0, Ld/a/g/i;

    invoke-direct {v0}, Ld/a/g/i;-><init>()V

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ld/au;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 159
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 160
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/au;

    .line 161
    sget-object v4, Ld/au;->a:Ld/au;

    if-ne v0, v4, :cond_0

    .line 159
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {v0}, Ld/au;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 164
    :cond_1
    return-object v2
.end method

.method public static b()Ld/a/g/i;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Ld/a/g/i;->a:Ld/a/g/i;

    return-object v0
.end method

.method static b(Ljava/util/List;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ld/au;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 211
    new-instance v2, Le/f;

    invoke-direct {v2}, Le/f;-><init>()V

    .line 212
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 213
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/au;

    .line 214
    sget-object v4, Ld/au;->a:Ld/au;

    if-ne v0, v4, :cond_0

    .line 212
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {v0}, Ld/au;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Le/f;->b(I)Le/f;

    .line 216
    invoke-virtual {v0}, Ld/au;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Le/f;->a(Ljava/lang/String;)Le/f;

    goto :goto_1

    .line 218
    :cond_1
    invoke-virtual {v2}, Le/f;->r()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljavax/net/ssl/X509TrustManager;)Ld/a/i/c;
    .locals 2

    .prologue
    .line 168
    new-instance v0, Ld/a/i/a;

    invoke-virtual {p0, p1}, Ld/a/g/i;->b(Ljavax/net/ssl/X509TrustManager;)Ld/a/i/f;

    move-result-object v1

    invoke-direct {v0, v1}, Ld/a/i/a;-><init>(Ld/a/i/f;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 143
    sget-object v0, Ld/a/g/i;->b:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 146
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 129
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 130
    :goto_0
    sget-object v1, Ld/a/g/i;->b:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0, p2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    return-void

    .line 129
    :cond_0
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 150
    if-nez p2, :cond_0

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 154
    :cond_0
    const/4 v0, 0x5

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {p0, v0, p1, p2}, Ld/a/g/i;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    return-void
.end method

.method public a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 126
    return-void
.end method

.method public a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
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
    .line 109
    return-void
.end method

.method public b(Ljavax/net/ssl/X509TrustManager;)Ld/a/i/f;
    .locals 2

    .prologue
    .line 245
    new-instance v0, Ld/a/i/b;

    invoke-interface {p1}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-direct {v0, v1}, Ld/a/i/b;-><init>([Ljava/security/cert/X509Certificate;)V

    return-object v0
.end method

.method public b(Ljavax/net/ssl/SSLSocket;)V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x1

    return v0
.end method
