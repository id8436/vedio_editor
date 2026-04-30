.class public abstract Ld/z;
.super Ljava/lang/Object;
.source "EventListener.java"


# static fields
.field public static final a:Ld/z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Ld/aa;

    invoke-direct {v0}, Ld/aa;-><init>()V

    sput-object v0, Ld/z;->a:Ld/z;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ld/z;)Ld/ac;
    .locals 1

    .prologue
    .line 63
    new-instance v0, Ld/ab;

    invoke-direct {v0, p0}, Ld/ab;-><init>(Ld/z;)V

    return-object v0
.end method


# virtual methods
.method public a(Ld/g;)V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public a(Ld/g;J)V
    .locals 0

    .prologue
    .line 221
    return-void
.end method

.method public a(Ld/g;Ld/af;)V
    .locals 0
    .param p2    # Ld/af;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 134
    return-void
.end method

.method public a(Ld/g;Ld/ax;)V
    .locals 0

    .prologue
    .line 200
    return-void
.end method

.method public a(Ld/g;Ld/bd;)V
    .locals 0

    .prologue
    .line 244
    return-void
.end method

.method public a(Ld/g;Ld/o;)V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method public a(Ld/g;Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 284
    return-void
.end method

.method public a(Ld/g;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public a(Ld/g;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p3    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/g;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    return-void
.end method

.method public a(Ld/g;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public a(Ld/g;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Ld/au;)V
    .locals 0
    .param p3    # Ljava/net/Proxy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ld/au;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 145
    return-void
.end method

.method public a(Ld/g;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Ld/au;Ljava/io/IOException;)V
    .locals 0
    .param p3    # Ljava/net/Proxy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ld/au;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 157
    return-void
.end method

.method public b(Ld/g;)V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public b(Ld/g;J)V
    .locals 0

    .prologue
    .line 267
    return-void
.end method

.method public b(Ld/g;Ld/o;)V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method public c(Ld/g;)V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method public d(Ld/g;)V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method public e(Ld/g;)V
    .locals 0

    .prologue
    .line 233
    return-void
.end method

.method public f(Ld/g;)V
    .locals 0

    .prologue
    .line 256
    return-void
.end method

.method public g(Ld/g;)V
    .locals 0

    .prologue
    .line 276
    return-void
.end method
