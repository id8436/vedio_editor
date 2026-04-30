.class final Ld/aw;
.super Ld/a/b;
.source "RealCall.java"


# instance fields
.field final synthetic a:Ld/av;

.field private final c:Ld/i;


# direct methods
.method constructor <init>(Ld/av;Ld/i;)V
    .locals 4

    .prologue
    .line 127
    iput-object p1, p0, Ld/aw;->a:Ld/av;

    .line 128
    const-string/jumbo v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ld/av;->f()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Ld/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    iput-object p2, p0, Ld/aw;->c:Ld/i;

    .line 130
    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Ld/aw;->a:Ld/av;

    iget-object v0, v0, Ld/av;->c:Ld/ax;

    invoke-virtual {v0}, Ld/ax;->a()Ld/ai;

    move-result-object v0

    invoke-virtual {v0}, Ld/ai;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 145
    const/4 v2, 0x0

    .line 147
    :try_start_0
    iget-object v0, p0, Ld/aw;->a:Ld/av;

    invoke-virtual {v0}, Ld/av;->g()Ld/bd;

    move-result-object v0

    .line 148
    iget-object v3, p0, Ld/aw;->a:Ld/av;

    iget-object v3, v3, Ld/av;->b:Ld/a/c/l;

    invoke-virtual {v3}, Ld/a/c/l;->b()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    :try_start_1
    iget-object v0, p0, Ld/aw;->c:Ld/i;

    iget-object v2, p0, Ld/aw;->a:Ld/av;

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Canceled"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Ld/i;->onFailure(Ld/g;Ljava/io/IOException;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    :goto_0
    iget-object v0, p0, Ld/aw;->a:Ld/av;

    iget-object v0, v0, Ld/av;->a:Ld/ar;

    invoke-virtual {v0}, Ld/ar;->s()Ld/w;

    move-result-object v0

    invoke-virtual {v0, p0}, Ld/w;->b(Ld/aw;)V

    .line 166
    :goto_1
    return-void

    .line 153
    :cond_0
    :try_start_2
    iget-object v2, p0, Ld/aw;->c:Ld/i;

    iget-object v3, p0, Ld/aw;->a:Ld/av;

    invoke-interface {v2, v3, v0}, Ld/i;->onResponse(Ld/g;Ld/bd;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    :goto_2
    if-eqz v1, :cond_1

    .line 158
    :try_start_3
    invoke-static {}, Ld/a/g/i;->b()Ld/a/g/i;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Callback failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ld/aw;->a:Ld/av;

    invoke-virtual {v4}, Ld/av;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ld/a/g/i;->a(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 164
    :goto_3
    iget-object v0, p0, Ld/aw;->a:Ld/av;

    iget-object v0, v0, Ld/av;->a:Ld/ar;

    invoke-virtual {v0}, Ld/ar;->s()Ld/w;

    move-result-object v0

    invoke-virtual {v0, p0}, Ld/w;->b(Ld/aw;)V

    goto :goto_1

    .line 160
    :cond_1
    :try_start_4
    iget-object v1, p0, Ld/aw;->a:Ld/av;

    invoke-static {v1}, Ld/av;->a(Ld/av;)Ld/z;

    move-result-object v1

    iget-object v2, p0, Ld/aw;->a:Ld/av;

    invoke-virtual {v1, v2, v0}, Ld/z;->a(Ld/g;Ljava/io/IOException;)V

    .line 161
    iget-object v1, p0, Ld/aw;->c:Ld/i;

    iget-object v2, p0, Ld/aw;->a:Ld/av;

    invoke-interface {v1, v2, v0}, Ld/i;->onFailure(Ld/g;Ljava/io/IOException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 164
    :catchall_0
    move-exception v0

    iget-object v1, p0, Ld/aw;->a:Ld/av;

    iget-object v1, v1, Ld/av;->a:Ld/ar;

    invoke-virtual {v1}, Ld/ar;->s()Ld/w;

    move-result-object v1

    invoke-virtual {v1, p0}, Ld/w;->b(Ld/aw;)V

    throw v0

    .line 155
    :catch_1
    move-exception v0

    move v1, v2

    goto :goto_2
.end method
