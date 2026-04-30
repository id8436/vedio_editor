.class public final Ld/a/e/h;
.super Ljava/lang/Object;
.source "Http2Codec.java"

# interfaces
.implements Ld/a/c/d;


# static fields
.field private static final b:Le/k;

.field private static final c:Le/k;

.field private static final d:Le/k;

.field private static final e:Le/k;

.field private static final f:Le/k;

.field private static final g:Le/k;

.field private static final h:Le/k;

.field private static final i:Le/k;

.field private static final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Le/k;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Le/k;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Ld/a/b/h;

.field private final l:Ld/ar;

.field private final m:Ld/am;

.field private final n:Ld/a/e/j;

.field private o:Ld/a/e/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    const-string/jumbo v0, "connection"

    invoke-static {v0}, Le/k;->a(Ljava/lang/String;)Le/k;

    move-result-object v0

    sput-object v0, Ld/a/e/h;->b:Le/k;

    .line 56
    const-string/jumbo v0, "host"

    invoke-static {v0}, Le/k;->a(Ljava/lang/String;)Le/k;

    move-result-object v0

    sput-object v0, Ld/a/e/h;->c:Le/k;

    .line 57
    const-string/jumbo v0, "keep-alive"

    invoke-static {v0}, Le/k;->a(Ljava/lang/String;)Le/k;

    move-result-object v0

    sput-object v0, Ld/a/e/h;->d:Le/k;

    .line 58
    const-string/jumbo v0, "proxy-connection"

    invoke-static {v0}, Le/k;->a(Ljava/lang/String;)Le/k;

    move-result-object v0

    sput-object v0, Ld/a/e/h;->e:Le/k;

    .line 59
    const-string/jumbo v0, "transfer-encoding"

    invoke-static {v0}, Le/k;->a(Ljava/lang/String;)Le/k;

    move-result-object v0

    sput-object v0, Ld/a/e/h;->f:Le/k;

    .line 60
    const-string/jumbo v0, "te"

    invoke-static {v0}, Le/k;->a(Ljava/lang/String;)Le/k;

    move-result-object v0

    sput-object v0, Ld/a/e/h;->g:Le/k;

    .line 61
    const-string/jumbo v0, "encoding"

    invoke-static {v0}, Le/k;->a(Ljava/lang/String;)Le/k;

    move-result-object v0

    sput-object v0, Ld/a/e/h;->h:Le/k;

    .line 62
    const-string/jumbo v0, "upgrade"

    invoke-static {v0}, Le/k;->a(Ljava/lang/String;)Le/k;

    move-result-object v0

    sput-object v0, Ld/a/e/h;->i:Le/k;

    .line 65
    const/16 v0, 0xc

    new-array v0, v0, [Le/k;

    sget-object v1, Ld/a/e/h;->b:Le/k;

    aput-object v1, v0, v3

    sget-object v1, Ld/a/e/h;->c:Le/k;

    aput-object v1, v0, v4

    sget-object v1, Ld/a/e/h;->d:Le/k;

    aput-object v1, v0, v5

    sget-object v1, Ld/a/e/h;->e:Le/k;

    aput-object v1, v0, v6

    sget-object v1, Ld/a/e/h;->g:Le/k;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Ld/a/e/h;->f:Le/k;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ld/a/e/h;->h:Le/k;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ld/a/e/h;->i:Le/k;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Ld/a/e/c;->c:Le/k;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Ld/a/e/c;->d:Le/k;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Ld/a/e/c;->e:Le/k;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Ld/a/e/c;->f:Le/k;

    aput-object v2, v0, v1

    invoke-static {v0}, Ld/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ld/a/e/h;->j:Ljava/util/List;

    .line 78
    const/16 v0, 0x8

    new-array v0, v0, [Le/k;

    sget-object v1, Ld/a/e/h;->b:Le/k;

    aput-object v1, v0, v3

    sget-object v1, Ld/a/e/h;->c:Le/k;

    aput-object v1, v0, v4

    sget-object v1, Ld/a/e/h;->d:Le/k;

    aput-object v1, v0, v5

    sget-object v1, Ld/a/e/h;->e:Le/k;

    aput-object v1, v0, v6

    sget-object v1, Ld/a/e/h;->g:Le/k;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Ld/a/e/h;->f:Le/k;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ld/a/e/h;->h:Le/k;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ld/a/e/h;->i:Le/k;

    aput-object v2, v0, v1

    invoke-static {v0}, Ld/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ld/a/e/h;->k:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ld/ar;Ld/am;Ld/a/b/h;Ld/a/e/j;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Ld/a/e/h;->l:Ld/ar;

    .line 97
    iput-object p2, p0, Ld/a/e/h;->m:Ld/am;

    .line 98
    iput-object p3, p0, Ld/a/e/h;->a:Ld/a/b/h;

    .line 99
    iput-object p4, p0, Ld/a/e/h;->n:Ld/a/e/j;

    .line 100
    return-void
.end method

.method public static a(Ljava/util/List;)Ld/be;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ld/a/e/c;",
            ">;)",
            "Ld/be;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 156
    .line 157
    new-instance v1, Ld/ah;

    invoke-direct {v1}, Ld/ah;-><init>()V

    .line 158
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    move v4, v0

    move-object v3, v2

    :goto_0
    if-ge v4, v5, :cond_3

    .line 159
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/a/e/c;

    .line 163
    if-nez v0, :cond_0

    .line 164
    if-eqz v3, :cond_2

    iget v0, v3, Ld/a/c/m;->b:I

    const/16 v6, 0x64

    if-ne v0, v6, :cond_2

    .line 166
    new-instance v0, Ld/ah;

    invoke-direct {v0}, Ld/ah;-><init>()V

    move-object v1, v2

    .line 158
    :goto_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-object v3, v1

    move-object v1, v0

    goto :goto_0

    .line 171
    :cond_0
    iget-object v6, v0, Ld/a/e/c;->g:Le/k;

    .line 172
    iget-object v0, v0, Ld/a/e/c;->h:Le/k;

    invoke-virtual {v0}, Le/k;->a()Ljava/lang/String;

    move-result-object v0

    .line 173
    sget-object v7, Ld/a/e/c;->b:Le/k;

    invoke-virtual {v6, v7}, Le/k;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "HTTP/1.1 "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/a/c/m;->a(Ljava/lang/String;)Ld/a/c/m;

    move-result-object v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_1

    .line 175
    :cond_1
    sget-object v7, Ld/a/e/h;->k:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 176
    sget-object v7, Ld/a/a;->a:Ld/a/a;

    invoke-virtual {v6}, Le/k;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v1, v6, v0}, Ld/a/a;->a(Ld/ah;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v0, v1

    move-object v1, v3

    goto :goto_1

    .line 179
    :cond_3
    if-nez v3, :cond_4

    new-instance v0, Ljava/net/ProtocolException;

    const-string/jumbo v1, "Expected \':status\' header not present"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_4
    new-instance v0, Ld/be;

    invoke-direct {v0}, Ld/be;-><init>()V

    sget-object v2, Ld/au;->d:Ld/au;

    .line 182
    invoke-virtual {v0, v2}, Ld/be;->a(Ld/au;)Ld/be;

    move-result-object v0

    iget v2, v3, Ld/a/c/m;->b:I

    .line 183
    invoke-virtual {v0, v2}, Ld/be;->a(I)Ld/be;

    move-result-object v0

    iget-object v2, v3, Ld/a/c/m;->c:Ljava/lang/String;

    .line 184
    invoke-virtual {v0, v2}, Ld/be;->a(Ljava/lang/String;)Ld/be;

    move-result-object v0

    .line 185
    invoke-virtual {v1}, Ld/ah;->a()Ld/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld/be;->a(Ld/ag;)Ld/be;

    move-result-object v0

    .line 181
    return-object v0
.end method

.method public static b(Ld/ax;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/ax;",
            ")",
            "Ljava/util/List",
            "<",
            "Ld/a/e/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p0}, Ld/ax;->c()Ld/ag;

    move-result-object v1

    .line 135
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ld/ag;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 136
    new-instance v0, Ld/a/e/c;

    sget-object v3, Ld/a/e/c;->c:Le/k;

    invoke-virtual {p0}, Ld/ax;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ld/a/e/c;-><init>(Le/k;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v0, Ld/a/e/c;

    sget-object v3, Ld/a/e/c;->d:Le/k;

    invoke-virtual {p0}, Ld/ax;->a()Ld/ai;

    move-result-object v4

    invoke-static {v4}, Ld/a/c/k;->a(Ld/ai;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ld/a/e/c;-><init>(Le/k;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    const-string/jumbo v0, "Host"

    invoke-virtual {p0, v0}, Ld/ax;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_0

    .line 140
    new-instance v3, Ld/a/e/c;

    sget-object v4, Ld/a/e/c;->f:Le/k;

    invoke-direct {v3, v4, v0}, Ld/a/e/c;-><init>(Le/k;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_0
    new-instance v0, Ld/a/e/c;

    sget-object v3, Ld/a/e/c;->e:Le/k;

    invoke-virtual {p0}, Ld/ax;->a()Ld/ai;

    move-result-object v4

    invoke-virtual {v4}, Ld/ai;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ld/a/e/c;-><init>(Le/k;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    const/4 v0, 0x0

    invoke-virtual {v1}, Ld/ag;->a()I

    move-result v3

    :goto_0
    if-ge v0, v3, :cond_2

    .line 146
    invoke-virtual {v1, v0}, Ld/ag;->a(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Le/k;->a(Ljava/lang/String;)Le/k;

    move-result-object v4

    .line 147
    sget-object v5, Ld/a/e/h;->j:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 148
    new-instance v5, Ld/a/e/c;

    invoke-virtual {v1, v0}, Ld/ag;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Ld/a/e/c;-><init>(Le/k;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_2
    return-object v2
.end method


# virtual methods
.method public a(Z)Ld/be;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Ld/a/e/h;->o:Ld/a/e/ab;

    invoke-virtual {v0}, Ld/a/e/ab;->d()Ljava/util/List;

    move-result-object v0

    .line 126
    invoke-static {v0}, Ld/a/e/h;->a(Ljava/util/List;)Ld/be;

    move-result-object v0

    .line 127
    if-eqz p1, :cond_0

    sget-object v1, Ld/a/a;->a:Ld/a/a;

    invoke-virtual {v1, v0}, Ld/a/a;->a(Ld/be;)I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    .line 128
    const/4 v0, 0x0

    .line 130
    :cond_0
    return-object v0
.end method

.method public a(Ld/bd;)Ld/bf;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Ld/a/e/h;->a:Ld/a/b/h;

    iget-object v0, v0, Ld/a/b/h;->c:Ld/z;

    iget-object v1, p0, Ld/a/e/h;->a:Ld/a/b/h;

    iget-object v1, v1, Ld/a/b/h;->b:Ld/g;

    invoke-virtual {v0, v1}, Ld/z;->f(Ld/g;)V

    .line 190
    const-string/jumbo v0, "Content-Type"

    invoke-virtual {p1, v0}, Ld/bd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {p1}, Ld/a/c/g;->a(Ld/bd;)J

    move-result-wide v2

    .line 192
    new-instance v1, Ld/a/e/i;

    iget-object v4, p0, Ld/a/e/h;->o:Ld/a/e/ab;

    invoke-virtual {v4}, Ld/a/e/ab;->g()Le/ab;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Ld/a/e/i;-><init>(Ld/a/e/h;Le/ab;)V

    .line 193
    new-instance v4, Ld/a/c/j;

    invoke-static {v1}, Le/q;->a(Le/ab;)Le/j;

    move-result-object v1

    invoke-direct {v4, v0, v2, v3, v1}, Ld/a/c/j;-><init>(Ljava/lang/String;JLe/j;)V

    return-object v4
.end method

.method public a(Ld/ax;J)Le/aa;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Ld/a/e/h;->o:Ld/a/e/ab;

    invoke-virtual {v0}, Ld/a/e/ab;->h()Le/aa;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Ld/a/e/h;->n:Ld/a/e/j;

    invoke-virtual {v0}, Ld/a/e/j;->b()V

    .line 118
    return-void
.end method

.method public a(Ld/ax;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Ld/a/e/h;->o:Ld/a/e/ab;

    if-eqz v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-virtual {p1}, Ld/ax;->d()Ld/az;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 110
    :goto_1
    invoke-static {p1}, Ld/a/e/h;->b(Ld/ax;)Ljava/util/List;

    move-result-object v1

    .line 111
    iget-object v2, p0, Ld/a/e/h;->n:Ld/a/e/j;

    invoke-virtual {v2, v1, v0}, Ld/a/e/j;->a(Ljava/util/List;Z)Ld/a/e/ab;

    move-result-object v0

    iput-object v0, p0, Ld/a/e/h;->o:Ld/a/e/ab;

    .line 112
    iget-object v0, p0, Ld/a/e/h;->o:Ld/a/e/ab;

    invoke-virtual {v0}, Ld/a/e/ab;->e()Le/ac;

    move-result-object v0

    iget-object v1, p0, Ld/a/e/h;->m:Ld/am;

    invoke-interface {v1}, Ld/am;->c()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Le/ac;->a(JLjava/util/concurrent/TimeUnit;)Le/ac;

    .line 113
    iget-object v0, p0, Ld/a/e/h;->o:Ld/a/e/ab;

    invoke-virtual {v0}, Ld/a/e/ab;->f()Le/ac;

    move-result-object v0

    iget-object v1, p0, Ld/a/e/h;->m:Ld/am;

    invoke-interface {v1}, Ld/am;->d()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Le/ac;->a(JLjava/util/concurrent/TimeUnit;)Le/ac;

    goto :goto_0

    .line 109
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Ld/a/e/h;->o:Ld/a/e/ab;

    invoke-virtual {v0}, Ld/a/e/ab;->h()Le/aa;

    move-result-object v0

    invoke-interface {v0}, Le/aa;->close()V

    .line 122
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Ld/a/e/h;->o:Ld/a/e/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/a/e/h;->o:Ld/a/e/ab;

    sget-object v1, Ld/a/e/b;->f:Ld/a/e/b;

    invoke-virtual {v0, v1}, Ld/a/e/ab;->b(Ld/a/e/b;)V

    .line 198
    :cond_0
    return-void
.end method
