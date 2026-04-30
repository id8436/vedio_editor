.class public final Ld/a/c/b;
.super Ljava/lang/Object;
.source "CallServerInterceptor.java"

# interfaces
.implements Ld/al;


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean p1, p0, Ld/a/c/b;->a:Z

    .line 38
    return-void
.end method


# virtual methods
.method public intercept(Ld/am;)Ld/bd;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    check-cast p1, Ld/a/c/i;

    .line 42
    invoke-virtual {p1}, Ld/a/c/i;->g()Ld/a/c/d;

    move-result-object v2

    .line 43
    invoke-virtual {p1}, Ld/a/c/i;->f()Ld/a/b/h;

    move-result-object v3

    .line 44
    invoke-virtual {p1}, Ld/a/c/i;->e()Ld/o;

    move-result-object v0

    check-cast v0, Ld/a/b/c;

    .line 45
    invoke-virtual {p1}, Ld/a/c/i;->a()Ld/ax;

    move-result-object v4

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 49
    invoke-virtual {p1}, Ld/a/c/i;->i()Ld/z;

    move-result-object v1

    invoke-virtual {p1}, Ld/a/c/i;->h()Ld/g;

    move-result-object v5

    invoke-virtual {v1, v5}, Ld/z;->c(Ld/g;)V

    .line 50
    invoke-interface {v2, v4}, Ld/a/c/d;->a(Ld/ax;)V

    .line 51
    invoke-virtual {p1}, Ld/a/c/i;->i()Ld/z;

    move-result-object v1

    invoke-virtual {p1}, Ld/a/c/i;->h()Ld/g;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Ld/z;->a(Ld/g;Ld/ax;)V

    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-virtual {v4}, Ld/ax;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ld/a/c/h;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v4}, Ld/ax;->d()Ld/az;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 58
    const-string/jumbo v5, "100-continue"

    const-string/jumbo v8, "Expect"

    invoke-virtual {v4, v8}, Ld/ax;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 59
    invoke-interface {v2}, Ld/a/c/d;->a()V

    .line 60
    invoke-virtual {p1}, Ld/a/c/i;->i()Ld/z;

    move-result-object v1

    invoke-virtual {p1}, Ld/a/c/i;->h()Ld/g;

    move-result-object v5

    invoke-virtual {v1, v5}, Ld/z;->e(Ld/g;)V

    .line 61
    const/4 v1, 0x1

    invoke-interface {v2, v1}, Ld/a/c/d;->a(Z)Ld/be;

    move-result-object v1

    .line 64
    :cond_0
    if-nez v1, :cond_5

    .line 66
    invoke-virtual {p1}, Ld/a/c/i;->i()Ld/z;

    move-result-object v0

    invoke-virtual {p1}, Ld/a/c/i;->h()Ld/g;

    move-result-object v5

    invoke-virtual {v0, v5}, Ld/z;->d(Ld/g;)V

    .line 67
    invoke-virtual {v4}, Ld/ax;->d()Ld/az;

    move-result-object v0

    invoke-virtual {v0}, Ld/az;->contentLength()J

    move-result-wide v8

    .line 68
    new-instance v0, Ld/a/c/c;

    .line 69
    invoke-interface {v2, v4, v8, v9}, Ld/a/c/d;->a(Ld/ax;J)Le/aa;

    move-result-object v5

    invoke-direct {v0, v5}, Ld/a/c/c;-><init>(Le/aa;)V

    .line 70
    invoke-static {v0}, Le/q;->a(Le/aa;)Le/i;

    move-result-object v5

    .line 72
    invoke-virtual {v4}, Ld/ax;->d()Ld/az;

    move-result-object v8

    invoke-virtual {v8, v5}, Ld/az;->writeTo(Le/i;)V

    .line 73
    invoke-interface {v5}, Le/i;->close()V

    .line 74
    invoke-virtual {p1}, Ld/a/c/i;->i()Ld/z;

    move-result-object v5

    .line 75
    invoke-virtual {p1}, Ld/a/c/i;->h()Ld/g;

    move-result-object v8

    iget-wide v10, v0, Ld/a/c/c;->a:J

    invoke-virtual {v5, v8, v10, v11}, Ld/z;->a(Ld/g;J)V

    move-object v0, v1

    .line 84
    :goto_0
    invoke-interface {v2}, Ld/a/c/d;->b()V

    .line 86
    if-nez v0, :cond_1

    .line 87
    invoke-virtual {p1}, Ld/a/c/i;->i()Ld/z;

    move-result-object v0

    invoke-virtual {p1}, Ld/a/c/i;->h()Ld/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld/z;->e(Ld/g;)V

    .line 88
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ld/a/c/d;->a(Z)Ld/be;

    move-result-object v0

    .line 92
    :cond_1
    invoke-virtual {v0, v4}, Ld/be;->a(Ld/ax;)Ld/be;

    move-result-object v0

    .line 93
    invoke-virtual {v3}, Ld/a/b/h;->b()Ld/a/b/c;

    move-result-object v1

    invoke-virtual {v1}, Ld/a/b/c;->d()Ld/af;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld/be;->a(Ld/af;)Ld/be;

    move-result-object v0

    .line 94
    invoke-virtual {v0, v6, v7}, Ld/be;->a(J)Ld/be;

    move-result-object v0

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ld/be;->b(J)Ld/be;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Ld/be;->a()Ld/bd;

    move-result-object v0

    .line 98
    invoke-virtual {p1}, Ld/a/c/i;->i()Ld/z;

    move-result-object v1

    .line 99
    invoke-virtual {p1}, Ld/a/c/i;->h()Ld/g;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Ld/z;->a(Ld/g;Ld/bd;)V

    .line 101
    invoke-virtual {v0}, Ld/bd;->b()I

    move-result v1

    .line 102
    iget-boolean v4, p0, Ld/a/c/b;->a:Z

    if-eqz v4, :cond_7

    const/16 v4, 0x65

    if-ne v1, v4, :cond_7

    .line 104
    invoke-virtual {v0}, Ld/bd;->g()Ld/be;

    move-result-object v0

    sget-object v2, Ld/a/c;->c:Ld/bf;

    .line 105
    invoke-virtual {v0, v2}, Ld/be;->a(Ld/bf;)Ld/be;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Ld/be;->a()Ld/bd;

    move-result-object v0

    .line 113
    :goto_1
    const-string/jumbo v2, "close"

    invoke-virtual {v0}, Ld/bd;->a()Ld/ax;

    move-result-object v4

    const-string/jumbo v5, "Connection"

    invoke-virtual {v4, v5}, Ld/ax;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "close"

    const-string/jumbo v4, "Connection"

    .line 114
    invoke-virtual {v0, v4}, Ld/bd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 115
    :cond_2
    invoke-virtual {v3}, Ld/a/b/h;->d()V

    .line 118
    :cond_3
    const/16 v2, 0xcc

    if-eq v1, v2, :cond_4

    const/16 v2, 0xcd

    if-ne v1, v2, :cond_8

    :cond_4
    invoke-virtual {v0}, Ld/bd;->f()Ld/bf;

    move-result-object v2

    invoke-virtual {v2}, Ld/bf;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_8

    .line 119
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "HTTP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " had non-zero Content-Length: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 120
    invoke-virtual {v0}, Ld/bd;->f()Ld/bf;

    move-result-object v0

    invoke-virtual {v0}, Ld/bf;->b()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_5
    invoke-virtual {v0}, Ld/a/b/c;->e()Z

    move-result v0

    if-nez v0, :cond_6

    .line 80
    invoke-virtual {v3}, Ld/a/b/h;->d()V

    :cond_6
    move-object v0, v1

    goto/16 :goto_0

    .line 108
    :cond_7
    invoke-virtual {v0}, Ld/bd;->g()Ld/be;

    move-result-object v4

    .line 109
    invoke-interface {v2, v0}, Ld/a/c/d;->a(Ld/bd;)Ld/bf;

    move-result-object v0

    invoke-virtual {v4, v0}, Ld/be;->a(Ld/bf;)Ld/be;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Ld/be;->a()Ld/bd;

    move-result-object v0

    goto/16 :goto_1

    .line 123
    :cond_8
    return-object v0

    :cond_9
    move-object v0, v1

    goto/16 :goto_0
.end method
