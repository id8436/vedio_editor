.class public final Ld/a/a/g;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# instance fields
.field final a:Ld/a/a/h;

.field final b:[Z

.field final synthetic c:Ld/a/a/f;

.field private d:Z


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 848
    iget-object v0, p0, Ld/a/a/g;->a:Ld/a/a/h;

    iget-object v0, v0, Ld/a/a/h;->f:Ld/a/a/g;

    if-ne v0, p0, :cond_1

    .line 849
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ld/a/a/g;->c:Ld/a/a/f;

    iget v1, v1, Ld/a/a/f;->c:I

    if-ge v0, v1, :cond_0

    .line 851
    :try_start_0
    iget-object v1, p0, Ld/a/a/g;->c:Ld/a/a/f;

    iget-object v1, v1, Ld/a/a/f;->b:Ld/a/f/a;

    iget-object v2, p0, Ld/a/a/g;->a:Ld/a/a/h;

    iget-object v2, v2, Ld/a/a/h;->d:[Ljava/io/File;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ld/a/f/a;->a(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 849
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 856
    :cond_0
    iget-object v0, p0, Ld/a/a/g;->a:Ld/a/a/h;

    const/4 v1, 0x0

    iput-object v1, v0, Ld/a/a/h;->f:Ld/a/a/g;

    .line 858
    :cond_1
    return-void

    .line 852
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 934
    iget-object v1, p0, Ld/a/a/g;->c:Ld/a/a/f;

    monitor-enter v1

    .line 935
    :try_start_0
    iget-boolean v0, p0, Ld/a/a/g;->d:Z

    if-eqz v0, :cond_0

    .line 936
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 942
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 938
    :cond_0
    :try_start_1
    iget-object v0, p0, Ld/a/a/g;->a:Ld/a/a/h;

    iget-object v0, v0, Ld/a/a/h;->f:Ld/a/a/g;

    if-ne v0, p0, :cond_1

    .line 939
    iget-object v0, p0, Ld/a/a/g;->c:Ld/a/a/f;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ld/a/a/f;->a(Ld/a/a/g;Z)V

    .line 941
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/a/a/g;->d:Z

    .line 942
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 943
    return-void
.end method
