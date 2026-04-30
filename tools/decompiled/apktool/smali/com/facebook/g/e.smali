.class public Lcom/facebook/g/e;
.super Ljava/lang/Object;
.source "ImageFormatChecker.java"


# static fields
.field private static a:Lcom/facebook/g/e;


# instance fields
.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/g/d;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final d:Lcom/facebook/g/d;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/facebook/g/a;

    invoke-direct {v0}, Lcom/facebook/g/a;-><init>()V

    iput-object v0, p0, Lcom/facebook/g/e;->d:Lcom/facebook/g/d;

    .line 39
    invoke-direct {p0}, Lcom/facebook/g/e;->b()V

    .line 40
    return-void
.end method

.method private static a(ILjava/io/InputStream;[B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-static {p1}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-static {p2}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    array-length v0, p2

    if-lt v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/d/d/k;->a(Z)V

    .line 99
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->mark(I)V

    .line 102
    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p0}, Lcom/facebook/d/d/a;->a(Ljava/io/InputStream;[BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 104
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 107
    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 95
    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    throw v0

    .line 107
    :cond_1
    invoke-static {p1, p2, v1, p0}, Lcom/facebook/d/d/a;->a(Ljava/io/InputStream;[BII)I

    move-result v0

    goto :goto_1
.end method

.method public static declared-synchronized a()Lcom/facebook/g/e;
    .locals 2

    .prologue
    .line 116
    const-class v1, Lcom/facebook/g/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/g/e;->a:Lcom/facebook/g/e;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/facebook/g/e;

    invoke-direct {v0}, Lcom/facebook/g/e;-><init>()V

    sput-object v0, Lcom/facebook/g/e;->a:Lcom/facebook/g/e;

    .line 119
    :cond_0
    sget-object v0, Lcom/facebook/g/e;->a:Lcom/facebook/g/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Ljava/io/InputStream;)Lcom/facebook/g/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-static {}, Lcom/facebook/g/e;->a()Lcom/facebook/g/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/g/e;->a(Ljava/io/InputStream;)Lcom/facebook/g/c;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/g/e;->d:Lcom/facebook/g/d;

    invoke-interface {v0}, Lcom/facebook/g/d;->a()I

    move-result v0

    iput v0, p0, Lcom/facebook/g/e;->b:I

    .line 70
    iget-object v0, p0, Lcom/facebook/g/e;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/facebook/g/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/g/d;

    .line 72
    iget v2, p0, Lcom/facebook/g/e;->b:I

    invoke-interface {v0}, Lcom/facebook/g/d;->a()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/g/e;->b:I

    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method

.method public static c(Ljava/io/InputStream;)Lcom/facebook/g/c;
    .locals 1

    .prologue
    .line 142
    :try_start_0
    invoke-static {p0}, Lcom/facebook/g/e;->b(Ljava/io/InputStream;)Lcom/facebook/g/c;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    invoke-static {v0}, Lcom/facebook/d/d/p;->b(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Lcom/facebook/g/c;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {p1}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget v0, p0, Lcom/facebook/g/e;->b:I

    new-array v1, v0, [B

    .line 51
    iget v0, p0, Lcom/facebook/g/e;->b:I

    invoke-static {v0, p1, v1}, Lcom/facebook/g/e;->a(ILjava/io/InputStream;[B)I

    move-result v2

    .line 53
    iget-object v0, p0, Lcom/facebook/g/e;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/facebook/g/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/g/d;

    .line 55
    invoke-interface {v0, v1, v2}, Lcom/facebook/g/d;->a([BI)Lcom/facebook/g/c;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    sget-object v4, Lcom/facebook/g/c;->a:Lcom/facebook/g/c;

    if-eq v0, v4, :cond_0

    .line 65
    :cond_1
    :goto_0
    return-object v0

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/facebook/g/e;->d:Lcom/facebook/g/d;

    invoke-interface {v0, v1, v2}, Lcom/facebook/g/d;->a([BI)Lcom/facebook/g/c;

    move-result-object v0

    .line 62
    if-nez v0, :cond_1

    .line 63
    sget-object v0, Lcom/facebook/g/c;->a:Lcom/facebook/g/c;

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/g/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    iput-object p1, p0, Lcom/facebook/g/e;->c:Ljava/util/List;

    .line 45
    invoke-direct {p0}, Lcom/facebook/g/e;->b()V

    .line 46
    return-void
.end method
