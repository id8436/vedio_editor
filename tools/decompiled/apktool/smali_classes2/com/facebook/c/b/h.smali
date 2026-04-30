.class Lcom/facebook/c/b/h;
.super Ljava/lang/Object;
.source "DefaultDiskStorage.java"

# interfaces
.implements Lcom/facebook/c/b/r;


# instance fields
.field final a:Ljava/io/File;

.field final synthetic b:Lcom/facebook/c/b/a;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/c/b/a;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 656
    iput-object p1, p0, Lcom/facebook/c/b/h;->b:Lcom/facebook/c/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 657
    iput-object p2, p0, Lcom/facebook/c/b/h;->c:Ljava/lang/String;

    .line 658
    iput-object p3, p0, Lcom/facebook/c/b/h;->a:Ljava/io/File;

    .line 659
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/facebook/b/a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 699
    iget-object v0, p0, Lcom/facebook/c/b/h;->b:Lcom/facebook/c/b/a;

    iget-object v1, p0, Lcom/facebook/c/b/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/c/b/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 702
    :try_start_0
    iget-object v1, p0, Lcom/facebook/c/b/h;->a:Ljava/io/File;

    invoke-static {v1, v0}, Lcom/facebook/d/c/c;->a(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Lcom/facebook/d/c/g; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 724
    iget-object v1, p0, Lcom/facebook/c/b/h;->b:Lcom/facebook/c/b/a;

    invoke-static {v1}, Lcom/facebook/c/b/a;->c(Lcom/facebook/c/b/a;)Lcom/facebook/d/l/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/d/l/a;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 726
    :cond_0
    invoke-static {v0}, Lcom/facebook/b/b;->a(Ljava/io/File;)Lcom/facebook/b/b;

    move-result-object v0

    return-object v0

    .line 703
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 705
    invoke-virtual {v1}, Lcom/facebook/d/c/g;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 706
    if-nez v0, :cond_1

    .line 707
    sget-object v0, Lcom/facebook/c/a/b;->j:Lcom/facebook/c/a/b;

    .line 716
    :goto_0
    iget-object v2, p0, Lcom/facebook/c/b/h;->b:Lcom/facebook/c/b/a;

    invoke-static {v2}, Lcom/facebook/c/b/a;->d(Lcom/facebook/c/b/a;)Lcom/facebook/c/a/a;

    move-result-object v2

    .line 718
    invoke-static {}, Lcom/facebook/c/b/a;->f()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "commit"

    .line 716
    invoke-interface {v2, v0, v3, v4, v1}, Lcom/facebook/c/a/a;->a(Lcom/facebook/c/a/b;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 721
    throw v1

    .line 708
    :cond_1
    instance-of v2, v0, Lcom/facebook/d/c/f;

    if-eqz v2, :cond_2

    .line 709
    sget-object v0, Lcom/facebook/c/a/b;->i:Lcom/facebook/c/a/b;

    goto :goto_0

    .line 711
    :cond_2
    instance-of v0, v0, Ljava/io/FileNotFoundException;

    if-eqz v0, :cond_3

    .line 712
    sget-object v0, Lcom/facebook/c/a/b;->h:Lcom/facebook/c/a/b;

    goto :goto_0

    .line 714
    :cond_3
    sget-object v0, Lcom/facebook/c/a/b;->j:Lcom/facebook/c/a/b;

    goto :goto_0
.end method

.method public a(Lcom/facebook/c/a/l;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 665
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/facebook/c/b/h;->a:Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    :try_start_1
    new-instance v0, Lcom/facebook/d/d/c;

    invoke-direct {v0, v1}, Lcom/facebook/d/d/c;-><init>(Ljava/io/OutputStream;)V

    .line 678
    invoke-interface {p1, v0}, Lcom/facebook/c/a/l;->a(Ljava/io/OutputStream;)V

    .line 681
    invoke-virtual {v0}, Lcom/facebook/d/d/c;->flush()V

    .line 682
    invoke-virtual {v0}, Lcom/facebook/d/d/c;->a()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 687
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 691
    iget-object v0, p0, Lcom/facebook/c/b/h;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 692
    new-instance v0, Lcom/facebook/c/b/g;

    iget-object v1, p0, Lcom/facebook/c/b/h;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/facebook/c/b/g;-><init>(JJ)V

    throw v0

    .line 666
    :catch_0
    move-exception v0

    .line 667
    iget-object v1, p0, Lcom/facebook/c/b/h;->b:Lcom/facebook/c/b/a;

    invoke-static {v1}, Lcom/facebook/c/b/a;->d(Lcom/facebook/c/b/a;)Lcom/facebook/c/a/a;

    move-result-object v1

    sget-object v2, Lcom/facebook/c/a/b;->g:Lcom/facebook/c/a/b;

    .line 669
    invoke-static {}, Lcom/facebook/c/b/a;->f()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "updateResource"

    .line 667
    invoke-interface {v1, v2, v3, v4, v0}, Lcom/facebook/c/a/a;->a(Lcom/facebook/c/a/b;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 672
    throw v0

    .line 687
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v0

    .line 694
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/facebook/c/b/h;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/c/b/h;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
