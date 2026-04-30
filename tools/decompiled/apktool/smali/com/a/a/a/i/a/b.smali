.class Lcom/a/a/a/i/a/b;
.super Ljava/lang/Object;
.source "FileStorage.java"


# instance fields
.field private final a:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "com_birbit_jobqueue_jobs"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "files_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/a/a/a/i/a/b;->a:Ljava/io/File;

    .line 29
    iget-object v0, p0, Lcom/a/a/a/i/a/b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 30
    return-void
.end method

.method private static a(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 98
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".jobs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .prologue
    .line 70
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/a/a/a/i/a/b;->a:Ljava/io/File;

    invoke-static {p1}, Lcom/a/a/a/i/a/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string/jumbo v1, ".jobs"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 78
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string/jumbo v2, ".jobs"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/a/a/a/i/a/b;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 38
    :cond_0
    return-void
.end method

.method a(Ljava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/a/a/a/i/a/b;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 57
    invoke-static {v0}, Le/q;->b(Ljava/io/File;)Le/aa;

    move-result-object v0

    invoke-static {v0}, Le/q;->a(Le/aa;)Le/i;

    move-result-object v1

    .line 59
    :try_start_0
    invoke-interface {v1, p2}, Le/i;->c([B)Le/i;

    move-result-object v0

    invoke-interface {v0}, Le/i;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-static {v1}, Lcom/a/a/a/i/a/b;->a(Ljava/io/Closeable;)V

    .line 63
    return-void

    .line 61
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/a/a/a/i/a/b;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method a(Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 82
    iget-object v0, p0, Lcom/a/a/a/i/a/b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 83
    const-string/jumbo v5, ".jobs"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 82
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_1
    invoke-static {v4}, Lcom/a/a/a/i/a/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 87
    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 88
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/a/a/a/i/a/b;->a:Ljava/io/File;

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "cannot delete unused job toFile "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/a/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 94
    :cond_2
    return-void
.end method

.method b(Ljava/lang/String;)[B
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/a/a/a/i/a/b;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    invoke-static {v0}, Le/q;->a(Ljava/io/File;)Le/ab;

    move-result-object v0

    invoke-static {v0}, Le/q;->a(Le/ab;)Le/j;

    move-result-object v1

    .line 46
    :try_start_0
    invoke-interface {v1}, Le/j;->r()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 48
    invoke-static {v1}, Lcom/a/a/a/i/a/b;->a(Ljava/io/Closeable;)V

    .line 52
    :goto_0
    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/a/a/a/i/a/b;->a(Ljava/io/Closeable;)V

    throw v0

    .line 52
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
