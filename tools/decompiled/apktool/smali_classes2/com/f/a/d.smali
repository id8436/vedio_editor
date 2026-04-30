.class public final Lcom/f/a/d;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# instance fields
.field final synthetic a:Lcom/f/a/a;

.field private final b:Lcom/f/a/f;

.field private final c:[Z

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/f/a/a;Lcom/f/a/f;)V
    .locals 1

    .prologue
    .line 727
    iput-object p1, p0, Lcom/f/a/d;->a:Lcom/f/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 728
    iput-object p2, p0, Lcom/f/a/d;->b:Lcom/f/a/f;

    .line 729
    invoke-static {p2}, Lcom/f/a/f;->d(Lcom/f/a/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/f/a/d;->c:[Z

    .line 730
    return-void

    .line 729
    :cond_0
    invoke-static {p1}, Lcom/f/a/a;->e(Lcom/f/a/a;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/f/a/a;Lcom/f/a/f;Lcom/f/a/b;)V
    .locals 0

    .prologue
    .line 721
    invoke-direct {p0, p1, p2}, Lcom/f/a/d;-><init>(Lcom/f/a/a;Lcom/f/a/f;)V

    return-void
.end method

.method static synthetic a(Lcom/f/a/d;)Lcom/f/a/f;
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/f/a/d;->b:Lcom/f/a/f;

    return-object v0
.end method

.method static synthetic a(Lcom/f/a/d;Z)Z
    .locals 0

    .prologue
    .line 721
    iput-boolean p1, p0, Lcom/f/a/d;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/f/a/d;)[Z
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/f/a/d;->c:[Z

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 769
    iget-object v2, p0, Lcom/f/a/d;->a:Lcom/f/a/a;

    monitor-enter v2

    .line 770
    :try_start_0
    iget-object v0, p0, Lcom/f/a/d;->b:Lcom/f/a/f;

    invoke-static {v0}, Lcom/f/a/f;->a(Lcom/f/a/f;)Lcom/f/a/d;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 771
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 791
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 773
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/f/a/d;->b:Lcom/f/a/f;

    invoke-static {v0}, Lcom/f/a/f;->d(Lcom/f/a/f;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 774
    iget-object v0, p0, Lcom/f/a/d;->c:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 776
    :cond_1
    iget-object v0, p0, Lcom/f/a/d;->b:Lcom/f/a/f;

    invoke-virtual {v0, p1}, Lcom/f/a/f;->b(I)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 779
    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    .line 790
    :goto_0
    :try_start_3
    new-instance v0, Lcom/f/a/e;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3}, Lcom/f/a/e;-><init>(Lcom/f/a/d;Ljava/io/OutputStream;Lcom/f/a/b;)V

    monitor-exit v2

    :goto_1
    return-object v0

    .line 780
    :catch_0
    move-exception v0

    .line 782
    iget-object v0, p0, Lcom/f/a/d;->a:Lcom/f/a/a;

    invoke-static {v0}, Lcom/f/a/a;->f(Lcom/f/a/a;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 784
    :try_start_4
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v0

    .line 788
    goto :goto_0

    .line 785
    :catch_1
    move-exception v0

    .line 787
    :try_start_5
    invoke-static {}, Lcom/f/a/a;->e()Ljava/io/OutputStream;

    move-result-object v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 810
    iget-boolean v0, p0, Lcom/f/a/d;->d:Z

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/f/a/d;->a:Lcom/f/a/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/f/a/a;->a(Lcom/f/a/a;Lcom/f/a/d;Z)V

    .line 812
    iget-object v0, p0, Lcom/f/a/d;->a:Lcom/f/a/a;

    iget-object v1, p0, Lcom/f/a/d;->b:Lcom/f/a/f;

    invoke-static {v1}, Lcom/f/a/f;->c(Lcom/f/a/f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/f/a/a;->c(Ljava/lang/String;)Z

    .line 816
    :goto_0
    iput-boolean v2, p0, Lcom/f/a/d;->e:Z

    .line 817
    return-void

    .line 814
    :cond_0
    iget-object v0, p0, Lcom/f/a/d;->a:Lcom/f/a/a;

    invoke-static {v0, p0, v2}, Lcom/f/a/a;->a(Lcom/f/a/a;Lcom/f/a/d;Z)V

    goto :goto_0
.end method

.method public b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 824
    iget-object v0, p0, Lcom/f/a/d;->a:Lcom/f/a/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/f/a/a;->a(Lcom/f/a/a;Lcom/f/a/d;Z)V

    .line 825
    return-void
.end method
