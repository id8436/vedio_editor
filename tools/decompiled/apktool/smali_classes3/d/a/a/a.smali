.class public final Ld/a/a/a;
.super Ljava/lang/Object;
.source "CacheInterceptor.java"

# interfaces
.implements Ld/al;


# instance fields
.field final a:Ld/a/a/i;


# direct methods
.method public constructor <init>(Ld/a/a/i;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Ld/a/a/a;->a:Ld/a/a/i;

    .line 50
    return-void
.end method

.method private static a(Ld/ag;Ld/ag;)Ld/ag;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 219
    new-instance v2, Ld/ah;

    invoke-direct {v2}, Ld/ah;-><init>()V

    .line 221
    invoke-virtual {p0}, Ld/ag;->a()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    .line 222
    invoke-virtual {p0, v1}, Ld/ag;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 223
    invoke-virtual {p0, v1}, Ld/ag;->b(I)Ljava/lang/String;

    move-result-object v5

    .line 224
    const-string/jumbo v6, "Warning"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 221
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 227
    :cond_1
    invoke-static {v4}, Ld/a/a/a;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1, v4}, Ld/ag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 228
    :cond_2
    sget-object v6, Ld/a/a;->a:Ld/a/a;

    invoke-virtual {v6, v2, v4, v5}, Ld/a/a;->a(Ld/ah;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 232
    :cond_3
    invoke-virtual {p1}, Ld/ag;->a()I

    move-result v1

    :goto_2
    if-ge v0, v1, :cond_6

    .line 233
    invoke-virtual {p1, v0}, Ld/ag;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 234
    const-string/jumbo v4, "Content-Length"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 232
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 237
    :cond_5
    invoke-static {v3}, Ld/a/a/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 238
    sget-object v4, Ld/a/a;->a:Ld/a/a;

    invoke-virtual {p1, v0}, Ld/ag;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v3, v5}, Ld/a/a;->a(Ld/ah;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 242
    :cond_6
    invoke-virtual {v2}, Ld/ah;->a()Ld/ag;

    move-result-object v0

    return-object v0
.end method

.method private a(Ld/a/a/c;Ld/bd;)Ld/bd;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    if-nez p1, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-object p2

    .line 162
    :cond_1
    invoke-interface {p1}, Ld/a/a/c;->a()Le/aa;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p2}, Ld/bd;->f()Ld/bf;

    move-result-object v1

    invoke-virtual {v1}, Ld/bf;->d()Le/j;

    move-result-object v1

    .line 166
    invoke-static {v0}, Le/q;->a(Le/aa;)Le/i;

    move-result-object v0

    .line 168
    new-instance v2, Ld/a/a/b;

    invoke-direct {v2, p0, v1, p1, v0}, Ld/a/a/b;-><init>(Ld/a/a/a;Le/j;Ld/a/a/c;Le/i;)V

    .line 210
    const-string/jumbo v0, "Content-Type"

    invoke-virtual {p2, v0}, Ld/bd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-virtual {p2}, Ld/bd;->f()Ld/bf;

    move-result-object v1

    invoke-virtual {v1}, Ld/bf;->b()J

    move-result-wide v4

    .line 212
    invoke-virtual {p2}, Ld/bd;->g()Ld/be;

    move-result-object v1

    new-instance v3, Ld/a/c/j;

    .line 213
    invoke-static {v2}, Le/q;->a(Le/ab;)Le/j;

    move-result-object v2

    invoke-direct {v3, v0, v4, v5, v2}, Ld/a/c/j;-><init>(Ljava/lang/String;JLe/j;)V

    invoke-virtual {v1, v3}, Ld/be;->a(Ld/bf;)Ld/be;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Ld/be;->a()Ld/bd;

    move-result-object p2

    goto :goto_0
.end method

.method private static a(Ld/bd;)Ld/bd;
    .locals 2

    .prologue
    .line 148
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ld/bd;->f()Ld/bf;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Ld/bd;->g()Ld/be;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ld/be;->a(Ld/bf;)Ld/be;

    move-result-object v0

    invoke-virtual {v0}, Ld/be;->a()Ld/bd;

    move-result-object p0

    .line 148
    :cond_0
    return-object p0
.end method

.method static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 250
    const-string/jumbo v0, "Connection"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Keep-Alive"

    .line 251
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Proxy-Authenticate"

    .line 252
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Proxy-Authorization"

    .line 253
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "TE"

    .line 254
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Trailers"

    .line 255
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Transfer-Encoding"

    .line 256
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Upgrade"

    .line 257
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 250
    :goto_0
    return v0

    .line 257
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public intercept(Ld/am;)Ld/bd;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 53
    iget-object v0, p0, Ld/a/a/a;->a:Ld/a/a/i;

    if-eqz v0, :cond_3

    .line 54
    iget-object v0, p0, Ld/a/a/a;->a:Ld/a/a/i;

    invoke-interface {p1}, Ld/am;->a()Ld/ax;

    move-result-object v2

    invoke-interface {v0, v2}, Ld/a/a/i;->a(Ld/ax;)Ld/bd;

    move-result-object v0

    .line 57
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 59
    new-instance v4, Ld/a/a/e;

    invoke-interface {p1}, Ld/am;->a()Ld/ax;

    move-result-object v5

    invoke-direct {v4, v2, v3, v5, v0}, Ld/a/a/e;-><init>(JLd/ax;Ld/bd;)V

    invoke-virtual {v4}, Ld/a/a/e;->a()Ld/a/a/d;

    move-result-object v2

    .line 60
    iget-object v3, v2, Ld/a/a/d;->a:Ld/ax;

    .line 61
    iget-object v4, v2, Ld/a/a/d;->b:Ld/bd;

    .line 63
    iget-object v5, p0, Ld/a/a/a;->a:Ld/a/a/i;

    if-eqz v5, :cond_0

    .line 64
    iget-object v5, p0, Ld/a/a/a;->a:Ld/a/a/i;

    invoke-interface {v5, v2}, Ld/a/a/i;->a(Ld/a/a/d;)V

    .line 67
    :cond_0
    if-eqz v0, :cond_1

    if-nez v4, :cond_1

    .line 68
    invoke-virtual {v0}, Ld/bd;->f()Ld/bf;

    move-result-object v2

    invoke-static {v2}, Ld/a/c;->a(Ljava/io/Closeable;)V

    .line 72
    :cond_1
    if-nez v3, :cond_4

    if-nez v4, :cond_4

    .line 73
    new-instance v0, Ld/be;

    invoke-direct {v0}, Ld/be;-><init>()V

    .line 74
    invoke-interface {p1}, Ld/am;->a()Ld/ax;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld/be;->a(Ld/ax;)Ld/be;

    move-result-object v0

    sget-object v1, Ld/au;->b:Ld/au;

    .line 75
    invoke-virtual {v0, v1}, Ld/be;->a(Ld/au;)Ld/be;

    move-result-object v0

    const/16 v1, 0x1f8

    .line 76
    invoke-virtual {v0, v1}, Ld/be;->a(I)Ld/be;

    move-result-object v0

    const-string/jumbo v1, "Unsatisfiable Request (only-if-cached)"

    .line 77
    invoke-virtual {v0, v1}, Ld/be;->a(Ljava/lang/String;)Ld/be;

    move-result-object v0

    sget-object v1, Ld/a/c;->c:Ld/bf;

    .line 78
    invoke-virtual {v0, v1}, Ld/be;->a(Ld/bf;)Ld/be;

    move-result-object v0

    const-wide/16 v2, -0x1

    .line 79
    invoke-virtual {v0, v2, v3}, Ld/be;->a(J)Ld/be;

    move-result-object v0

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ld/be;->b(J)Ld/be;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Ld/be;->a()Ld/bd;

    move-result-object v0

    .line 144
    :cond_2
    :goto_1
    return-object v0

    :cond_3
    move-object v0, v1

    .line 55
    goto :goto_0

    .line 85
    :cond_4
    if-nez v3, :cond_5

    .line 86
    invoke-virtual {v4}, Ld/bd;->g()Ld/be;

    move-result-object v0

    .line 87
    invoke-static {v4}, Ld/a/a/a;->a(Ld/bd;)Ld/bd;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld/be;->b(Ld/bd;)Ld/be;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Ld/be;->a()Ld/bd;

    move-result-object v0

    goto :goto_1

    .line 93
    :cond_5
    :try_start_0
    invoke-interface {p1, v3}, Ld/am;->a(Ld/ax;)Ld/bd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 96
    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    .line 97
    invoke-virtual {v0}, Ld/bd;->f()Ld/bf;

    move-result-object v0

    invoke-static {v0}, Ld/a/c;->a(Ljava/io/Closeable;)V

    .line 102
    :cond_6
    if-eqz v4, :cond_9

    .line 103
    invoke-virtual {v1}, Ld/bd;->b()I

    move-result v0

    const/16 v2, 0x130

    if-ne v0, v2, :cond_8

    .line 104
    invoke-virtual {v4}, Ld/bd;->g()Ld/be;

    move-result-object v0

    .line 105
    invoke-virtual {v4}, Ld/bd;->e()Ld/ag;

    move-result-object v2

    invoke-virtual {v1}, Ld/bd;->e()Ld/ag;

    move-result-object v3

    invoke-static {v2, v3}, Ld/a/a/a;->a(Ld/ag;Ld/ag;)Ld/ag;

    move-result-object v2

    invoke-virtual {v0, v2}, Ld/be;->a(Ld/ag;)Ld/be;

    move-result-object v0

    .line 106
    invoke-virtual {v1}, Ld/bd;->j()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ld/be;->a(J)Ld/be;

    move-result-object v0

    .line 107
    invoke-virtual {v1}, Ld/bd;->k()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ld/be;->b(J)Ld/be;

    move-result-object v0

    .line 108
    invoke-static {v4}, Ld/a/a/a;->a(Ld/bd;)Ld/bd;

    move-result-object v2

    invoke-virtual {v0, v2}, Ld/be;->b(Ld/bd;)Ld/be;

    move-result-object v0

    .line 109
    invoke-static {v1}, Ld/a/a/a;->a(Ld/bd;)Ld/bd;

    move-result-object v2

    invoke-virtual {v0, v2}, Ld/be;->a(Ld/bd;)Ld/be;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Ld/be;->a()Ld/bd;

    move-result-object v0

    .line 111
    invoke-virtual {v1}, Ld/bd;->f()Ld/bf;

    move-result-object v1

    invoke-virtual {v1}, Ld/bf;->close()V

    .line 115
    iget-object v1, p0, Ld/a/a/a;->a:Ld/a/a/i;

    invoke-interface {v1}, Ld/a/a/i;->a()V

    .line 116
    iget-object v1, p0, Ld/a/a/a;->a:Ld/a/a/i;

    invoke-interface {v1, v4, v0}, Ld/a/a/i;->a(Ld/bd;Ld/bd;)V

    goto :goto_1

    .line 96
    :catchall_0
    move-exception v2

    if-nez v1, :cond_7

    if-eqz v0, :cond_7

    .line 97
    invoke-virtual {v0}, Ld/bd;->f()Ld/bf;

    move-result-object v0

    invoke-static {v0}, Ld/a/c;->a(Ljava/io/Closeable;)V

    :cond_7
    throw v2

    .line 119
    :cond_8
    invoke-virtual {v4}, Ld/bd;->f()Ld/bf;

    move-result-object v0

    invoke-static {v0}, Ld/a/c;->a(Ljava/io/Closeable;)V

    .line 123
    :cond_9
    invoke-virtual {v1}, Ld/bd;->g()Ld/be;

    move-result-object v0

    .line 124
    invoke-static {v4}, Ld/a/a/a;->a(Ld/bd;)Ld/bd;

    move-result-object v2

    invoke-virtual {v0, v2}, Ld/be;->b(Ld/bd;)Ld/be;

    move-result-object v0

    .line 125
    invoke-static {v1}, Ld/a/a/a;->a(Ld/bd;)Ld/bd;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld/be;->a(Ld/bd;)Ld/be;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Ld/be;->a()Ld/bd;

    move-result-object v0

    .line 128
    iget-object v1, p0, Ld/a/a/a;->a:Ld/a/a/i;

    if-eqz v1, :cond_2

    .line 129
    invoke-static {v0}, Ld/a/c/g;->b(Ld/bd;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {v0, v3}, Ld/a/a/d;->a(Ld/bd;Ld/ax;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 131
    iget-object v1, p0, Ld/a/a/a;->a:Ld/a/a/i;

    invoke-interface {v1, v0}, Ld/a/a/i;->a(Ld/bd;)Ld/a/a/c;

    move-result-object v1

    .line 132
    invoke-direct {p0, v1, v0}, Ld/a/a/a;->a(Ld/a/a/c;Ld/bd;)Ld/bd;

    move-result-object v0

    goto/16 :goto_1

    .line 135
    :cond_a
    invoke-virtual {v3}, Ld/ax;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ld/a/c/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    :try_start_1
    iget-object v1, p0, Ld/a/a/a;->a:Ld/a/a/i;

    invoke-interface {v1, v3}, Ld/a/a/i;->b(Ld/ax;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 138
    :catch_0
    move-exception v1

    goto/16 :goto_1
.end method
