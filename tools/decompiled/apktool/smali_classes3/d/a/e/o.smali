.class Ld/a/e/o;
.super Ld/a/b;
.source "Http2Connection.java"


# instance fields
.field final synthetic a:I

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Z

.field final synthetic e:Ld/a/e/j;


# direct methods
.method varargs constructor <init>(Ld/a/e/j;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V
    .locals 0

    .prologue
    .line 805
    iput-object p1, p0, Ld/a/e/o;->e:Ld/a/e/j;

    iput p4, p0, Ld/a/e/o;->a:I

    iput-object p5, p0, Ld/a/e/o;->c:Ljava/util/List;

    iput-boolean p6, p0, Ld/a/e/o;->d:Z

    invoke-direct {p0, p2, p3}, Ld/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 4

    .prologue
    .line 807
    iget-object v0, p0, Ld/a/e/o;->e:Ld/a/e/j;

    iget-object v0, v0, Ld/a/e/j;->i:Ld/a/e/aj;

    iget v1, p0, Ld/a/e/o;->a:I

    iget-object v2, p0, Ld/a/e/o;->c:Ljava/util/List;

    iget-boolean v3, p0, Ld/a/e/o;->d:Z

    invoke-interface {v0, v1, v2, v3}, Ld/a/e/aj;->a(ILjava/util/List;Z)Z

    move-result v0

    .line 809
    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Ld/a/e/o;->e:Ld/a/e/j;

    iget-object v1, v1, Ld/a/e/j;->p:Ld/a/e/af;

    iget v2, p0, Ld/a/e/o;->a:I

    sget-object v3, Ld/a/e/b;->f:Ld/a/e/b;

    invoke-virtual {v1, v2, v3}, Ld/a/e/af;->a(ILd/a/e/b;)V

    .line 810
    :cond_0
    if-nez v0, :cond_1

    iget-boolean v0, p0, Ld/a/e/o;->d:Z

    if-eqz v0, :cond_2

    .line 811
    :cond_1
    iget-object v1, p0, Ld/a/e/o;->e:Ld/a/e/j;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    :try_start_1
    iget-object v0, p0, Ld/a/e/o;->e:Ld/a/e/j;

    iget-object v0, v0, Ld/a/e/j;->r:Ljava/util/Set;

    iget v2, p0, Ld/a/e/o;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 813
    monitor-exit v1

    .line 817
    :cond_2
    :goto_0
    return-void

    .line 813
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 815
    :catch_0
    move-exception v0

    goto :goto_0
.end method
