.class final Ld/av;
.super Ljava/lang/Object;
.source "RealCall.java"

# interfaces
.implements Ld/g;


# instance fields
.field final a:Ld/ar;

.field final b:Ld/a/c/l;

.field final c:Ld/ax;

.field final d:Z

.field private e:Ld/z;

.field private f:Z


# direct methods
.method private constructor <init>(Ld/ar;Ld/ax;Z)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Ld/av;->a:Ld/ar;

    .line 52
    iput-object p2, p0, Ld/av;->c:Ld/ax;

    .line 53
    iput-boolean p3, p0, Ld/av;->d:Z

    .line 54
    new-instance v0, Ld/a/c/l;

    invoke-direct {v0, p1, p3}, Ld/a/c/l;-><init>(Ld/ar;Z)V

    iput-object v0, p0, Ld/av;->b:Ld/a/c/l;

    .line 55
    return-void
.end method

.method static a(Ld/ar;Ld/ax;Z)Ld/av;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ld/av;

    invoke-direct {v0, p0, p1, p2}, Ld/av;-><init>(Ld/ar;Ld/ax;Z)V

    .line 60
    invoke-virtual {p0}, Ld/ar;->x()Ld/ac;

    move-result-object v1

    invoke-interface {v1, v0}, Ld/ac;->a(Ld/g;)Ld/z;

    move-result-object v1

    iput-object v1, v0, Ld/av;->e:Ld/z;

    .line 61
    return-object v0
.end method

.method static synthetic a(Ld/av;)Ld/z;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ld/av;->e:Ld/z;

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 89
    invoke-static {}, Ld/a/g/i;->b()Ld/a/g/i;

    move-result-object v0

    const-string/jumbo v1, "response.body().close()"

    invoke-virtual {v0, v1}, Ld/a/g/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 90
    iget-object v1, p0, Ld/av;->b:Ld/a/c/l;

    invoke-virtual {v1, v0}, Ld/a/c/l;->a(Ljava/lang/Object;)V

    .line 91
    return-void
.end method


# virtual methods
.method public a()Ld/bd;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    monitor-enter p0

    .line 70
    :try_start_0
    iget-boolean v0, p0, Ld/av;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 71
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Ld/av;->f:Z

    .line 72
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    invoke-direct {p0}, Ld/av;->h()V

    .line 74
    iget-object v0, p0, Ld/av;->e:Ld/z;

    invoke-virtual {v0, p0}, Ld/z;->a(Ld/g;)V

    .line 76
    :try_start_2
    iget-object v0, p0, Ld/av;->a:Ld/ar;

    invoke-virtual {v0}, Ld/ar;->s()Ld/w;

    move-result-object v0

    invoke-virtual {v0, p0}, Ld/w;->a(Ld/av;)V

    .line 77
    invoke-virtual {p0}, Ld/av;->g()Ld/bd;

    move-result-object v0

    .line 78
    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    :try_start_3
    iget-object v1, p0, Ld/av;->e:Ld/z;

    invoke-virtual {v1, p0, v0}, Ld/z;->a(Ld/g;Ljava/io/IOException;)V

    .line 82
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 84
    :catchall_1
    move-exception v0

    iget-object v1, p0, Ld/av;->a:Ld/ar;

    invoke-virtual {v1}, Ld/ar;->s()Ld/w;

    move-result-object v1

    invoke-virtual {v1, p0}, Ld/w;->b(Ld/av;)V

    throw v0

    :cond_1
    iget-object v1, p0, Ld/av;->a:Ld/ar;

    invoke-virtual {v1}, Ld/ar;->s()Ld/w;

    move-result-object v1

    invoke-virtual {v1, p0}, Ld/w;->b(Ld/av;)V

    .line 79
    return-object v0
.end method

.method public a(Ld/i;)V
    .locals 2

    .prologue
    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    iget-boolean v0, p0, Ld/av;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 96
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Ld/av;->f:Z

    .line 97
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    invoke-direct {p0}, Ld/av;->h()V

    .line 99
    iget-object v0, p0, Ld/av;->e:Ld/z;

    invoke-virtual {v0, p0}, Ld/z;->a(Ld/g;)V

    .line 100
    iget-object v0, p0, Ld/av;->a:Ld/ar;

    invoke-virtual {v0}, Ld/ar;->s()Ld/w;

    move-result-object v0

    new-instance v1, Ld/aw;

    invoke-direct {v1, p0, p1}, Ld/aw;-><init>(Ld/av;Ld/i;)V

    invoke-virtual {v0, v1}, Ld/w;->a(Ld/aw;)V

    .line 101
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Ld/av;->b:Ld/a/c/l;

    invoke-virtual {v0}, Ld/a/c/l;->a()V

    .line 105
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Ld/av;->b:Ld/a/c/l;

    invoke-virtual {v0}, Ld/a/c/l;->b()Z

    move-result v0

    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0}, Ld/av;->d()Ld/av;

    move-result-object v0

    return-object v0
.end method

.method public d()Ld/av;
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Ld/av;->a:Ld/ar;

    iget-object v1, p0, Ld/av;->c:Ld/ax;

    iget-boolean v2, p0, Ld/av;->d:Z

    invoke-static {v0, v1, v2}, Ld/av;->a(Ld/ar;Ld/ax;Z)Ld/av;

    move-result-object v0

    return-object v0
.end method

.method e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ld/av;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "canceled "

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Ld/av;->d:Z

    if-eqz v0, :cond_1

    .line 175
    const-string/jumbo v0, "web socket"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 176
    invoke-virtual {p0}, Ld/av;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    .line 175
    :cond_1
    const-string/jumbo v0, "call"

    goto :goto_1
.end method

.method f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Ld/av;->c:Ld/ax;

    invoke-virtual {v0}, Ld/ax;->a()Ld/ai;

    move-result-object v0

    invoke-virtual {v0}, Ld/ai;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method g()Ld/bd;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 186
    iget-object v0, p0, Ld/av;->a:Ld/ar;

    invoke-virtual {v0}, Ld/ar;->v()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 187
    iget-object v0, p0, Ld/av;->b:Ld/a/c/l;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v0, Ld/a/c/a;

    iget-object v3, p0, Ld/av;->a:Ld/ar;

    invoke-virtual {v3}, Ld/ar;->f()Ld/u;

    move-result-object v3

    invoke-direct {v0, v3}, Ld/a/c/a;-><init>(Ld/u;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v0, Ld/a/a/a;

    iget-object v3, p0, Ld/av;->a:Ld/ar;

    invoke-virtual {v3}, Ld/ar;->g()Ld/a/a/i;

    move-result-object v3

    invoke-direct {v0, v3}, Ld/a/a/a;-><init>(Ld/a/a/i;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v0, Ld/a/b/a;

    iget-object v3, p0, Ld/av;->a:Ld/ar;

    invoke-direct {v0, v3}, Ld/a/b/a;-><init>(Ld/ar;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    iget-boolean v0, p0, Ld/av;->d:Z

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Ld/av;->a:Ld/ar;

    invoke-virtual {v0}, Ld/ar;->w()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 194
    :cond_0
    new-instance v0, Ld/a/c/b;

    iget-boolean v3, p0, Ld/av;->d:Z

    invoke-direct {v0, v3}, Ld/a/c/b;-><init>(Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v0, Ld/a/c/i;

    const/4 v5, 0x0

    iget-object v6, p0, Ld/av;->c:Ld/ax;

    iget-object v8, p0, Ld/av;->e:Ld/z;

    iget-object v3, p0, Ld/av;->a:Ld/ar;

    .line 197
    invoke-virtual {v3}, Ld/ar;->a()I

    move-result v9

    iget-object v3, p0, Ld/av;->a:Ld/ar;

    .line 198
    invoke-virtual {v3}, Ld/ar;->b()I

    move-result v10

    iget-object v3, p0, Ld/av;->a:Ld/ar;

    invoke-virtual {v3}, Ld/ar;->c()I

    move-result v11

    move-object v3, v2

    move-object v4, v2

    move-object v7, p0

    invoke-direct/range {v0 .. v11}, Ld/a/c/i;-><init>(Ljava/util/List;Ld/a/b/h;Ld/a/c/d;Ld/a/b/c;ILd/ax;Ld/g;Ld/z;III)V

    .line 200
    iget-object v1, p0, Ld/av;->c:Ld/ax;

    invoke-interface {v0, v1}, Ld/am;->a(Ld/ax;)Ld/bd;

    move-result-object v0

    return-object v0
.end method
