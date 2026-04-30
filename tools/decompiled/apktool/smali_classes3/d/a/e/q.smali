.class Ld/a/e/q;
.super Ld/a/b;
.source "Http2Connection.java"


# instance fields
.field final synthetic a:I

.field final synthetic c:Ld/a/e/b;

.field final synthetic d:Ld/a/e/j;


# direct methods
.method varargs constructor <init>(Ld/a/e/j;Ljava/lang/String;[Ljava/lang/Object;ILd/a/e/b;)V
    .locals 0

    .prologue
    .line 848
    iput-object p1, p0, Ld/a/e/q;->d:Ld/a/e/j;

    iput p4, p0, Ld/a/e/q;->a:I

    iput-object p5, p0, Ld/a/e/q;->c:Ld/a/e/b;

    invoke-direct {p0, p2, p3}, Ld/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .prologue
    .line 850
    iget-object v0, p0, Ld/a/e/q;->d:Ld/a/e/j;

    iget-object v0, v0, Ld/a/e/j;->i:Ld/a/e/aj;

    iget v1, p0, Ld/a/e/q;->a:I

    iget-object v2, p0, Ld/a/e/q;->c:Ld/a/e/b;

    invoke-interface {v0, v1, v2}, Ld/a/e/aj;->a(ILd/a/e/b;)V

    .line 851
    iget-object v1, p0, Ld/a/e/q;->d:Ld/a/e/j;

    monitor-enter v1

    .line 852
    :try_start_0
    iget-object v0, p0, Ld/a/e/q;->d:Ld/a/e/j;

    iget-object v0, v0, Ld/a/e/j;->r:Ljava/util/Set;

    iget v2, p0, Ld/a/e/q;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 853
    monitor-exit v1

    .line 854
    return-void

    .line 853
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
