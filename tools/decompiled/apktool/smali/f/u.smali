.class final Lf/u;
.super Ljava/lang/Object;
.source "OkHttpCall.java"

# interfaces
.implements Lf/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf/g",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lf/az;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/az",
            "<TT;*>;"
        }
    .end annotation
.end field

.field private final b:[Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile c:Z

.field private d:Ld/g;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private e:Ljava/lang/Throwable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private f:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method constructor <init>(Lf/az;[Ljava/lang/Object;)V
    .locals 0
    .param p2    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/az",
            "<TT;*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lf/u;->a:Lf/az;

    .line 46
    iput-object p2, p0, Lf/u;->b:[Ljava/lang/Object;

    .line 47
    return-void
.end method

.method private e()Ld/g;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lf/u;->a:Lf/az;

    iget-object v1, p0, Lf/u;->b:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lf/az;->a([Ljava/lang/Object;)Ld/ax;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lf/u;->a:Lf/az;

    iget-object v1, v1, Lf/az;->c:Ld/h;

    invoke-interface {v1, v0}, Ld/h;->a(Ld/ax;)Ld/g;

    move-result-object v0

    .line 186
    if-nez v0, :cond_0

    .line 187
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Call.Factory returned null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Lf/av;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/av",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    monitor-enter p0

    .line 154
    :try_start_0
    iget-boolean v0, p0, Lf/u;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 155
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lf/u;->f:Z

    .line 157
    iget-object v0, p0, Lf/u;->e:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p0, Lf/u;->e:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lf/u;->e:Ljava/lang/Throwable;

    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 161
    :cond_1
    iget-object v0, p0, Lf/u;->e:Ljava/lang/Throwable;

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 165
    :cond_2
    iget-object v0, p0, Lf/u;->d:Ld/g;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    if-nez v0, :cond_3

    .line 168
    :try_start_2
    invoke-direct {p0}, Lf/u;->e()Ld/g;

    move-result-object v0

    iput-object v0, p0, Lf/u;->d:Ld/g;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    :cond_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 176
    iget-boolean v1, p0, Lf/u;->c:Z

    if-eqz v1, :cond_4

    .line 177
    invoke-interface {v0}, Ld/g;->b()V

    .line 180
    :cond_4
    invoke-interface {v0}, Ld/g;->a()Ld/bd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lf/u;->a(Ld/bd;)Lf/av;

    move-result-object v0

    return-object v0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    :goto_0
    :try_start_4
    iput-object v0, p0, Lf/u;->e:Ljava/lang/Throwable;

    .line 171
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 169
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method a(Ld/bd;)Lf/av;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/bd;",
            ")",
            "Lf/av",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-virtual {p1}, Ld/bd;->f()Ld/bf;

    move-result-object v1

    .line 196
    invoke-virtual {p1}, Ld/bd;->g()Ld/be;

    move-result-object v0

    new-instance v2, Lf/y;

    .line 197
    invoke-virtual {v1}, Ld/bf;->a()Ld/an;

    move-result-object v3

    invoke-virtual {v1}, Ld/bf;->b()J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Lf/y;-><init>(Ld/an;J)V

    invoke-virtual {v0, v2}, Ld/be;->a(Ld/bf;)Ld/be;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Ld/be;->a()Ld/bd;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Ld/bd;->b()I

    move-result v2

    .line 201
    const/16 v3, 0xc8

    if-lt v2, v3, :cond_0

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_1

    .line 204
    :cond_0
    :try_start_0
    invoke-static {v1}, Lf/bb;->a(Ld/bf;)Ld/bf;

    move-result-object v2

    .line 205
    invoke-static {v2, v0}, Lf/av;->a(Ld/bf;Ld/bd;)Lf/av;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 207
    invoke-virtual {v1}, Ld/bf;->close()V

    .line 219
    :goto_0
    return-object v0

    .line 207
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ld/bf;->close()V

    throw v0

    .line 211
    :cond_1
    const/16 v3, 0xcc

    if-eq v2, v3, :cond_2

    const/16 v3, 0xcd

    if-ne v2, v3, :cond_3

    .line 212
    :cond_2
    invoke-virtual {v1}, Ld/bf;->close()V

    .line 213
    const/4 v1, 0x0

    invoke-static {v1, v0}, Lf/av;->a(Ljava/lang/Object;Ld/bd;)Lf/av;

    move-result-object v0

    goto :goto_0

    .line 216
    :cond_3
    new-instance v2, Lf/w;

    invoke-direct {v2, v1}, Lf/w;-><init>(Ld/bf;)V

    .line 218
    :try_start_1
    iget-object v1, p0, Lf/u;->a:Lf/az;

    invoke-virtual {v1, v2}, Lf/az;->a(Ld/bf;)Ljava/lang/Object;

    move-result-object v1

    .line 219
    invoke-static {v1, v0}, Lf/av;->a(Ljava/lang/Object;Ld/bd;)Lf/av;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 223
    invoke-virtual {v2}, Lf/w;->g()V

    .line 224
    throw v0
.end method

.method public a(Lf/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/j",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 78
    const-string/jumbo v0, "callback == null"

    invoke-static {p1, v0}, Lf/bb;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    monitor-enter p0

    .line 84
    :try_start_0
    iget-boolean v0, p0, Lf/u;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 85
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lf/u;->f:Z

    .line 87
    iget-object v2, p0, Lf/u;->d:Ld/g;

    .line 88
    iget-object v0, p0, Lf/u;->e:Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    if-nez v2, :cond_3

    if-nez v0, :cond_3

    .line 91
    :try_start_2
    invoke-direct {p0}, Lf/u;->e()Ld/g;

    move-result-object v1

    iput-object v1, p0, Lf/u;->d:Ld/g;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 98
    if-eqz v0, :cond_1

    .line 99
    invoke-interface {p1, p0, v0}, Lf/j;->onFailure(Lf/g;Ljava/lang/Throwable;)V

    .line 144
    :goto_1
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    :try_start_4
    iput-object v0, p0, Lf/u;->e:Ljava/lang/Throwable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v2

    goto :goto_0

    .line 103
    :cond_1
    iget-boolean v0, p0, Lf/u;->c:Z

    if-eqz v0, :cond_2

    .line 104
    invoke-interface {v1}, Ld/g;->b()V

    .line 107
    :cond_2
    new-instance v0, Lf/v;

    invoke-direct {v0, p0, p1}, Lf/v;-><init>(Lf/u;Lf/j;)V

    invoke-interface {v1, v0}, Ld/g;->a(Ld/i;)V

    goto :goto_1

    :cond_3
    move-object v1, v2

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 241
    iget-boolean v1, p0, Lf/u;->c:Z

    if-eqz v1, :cond_0

    .line 245
    :goto_0
    return v0

    .line 244
    :cond_0
    monitor-enter p0

    .line 245
    :try_start_0
    iget-object v1, p0, Lf/u;->d:Ld/g;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lf/u;->d:Ld/g;

    invoke-interface {v1}, Ld/g;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 245
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public synthetic c()Lf/g;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lf/u;->d()Lf/u;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, Lf/u;->d()Lf/u;

    move-result-object v0

    return-object v0
.end method

.method public d()Lf/u;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/u",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lf/u;

    iget-object v1, p0, Lf/u;->a:Lf/az;

    iget-object v2, p0, Lf/u;->b:[Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lf/u;-><init>(Lf/az;[Ljava/lang/Object;)V

    return-object v0
.end method
