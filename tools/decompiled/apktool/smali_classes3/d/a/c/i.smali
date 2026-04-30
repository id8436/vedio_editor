.class public final Ld/a/c/i;
.super Ljava/lang/Object;
.source "RealInterceptorChain.java"

# interfaces
.implements Ld/am;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ld/al;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ld/a/b/h;

.field private final c:Ld/a/c/d;

.field private final d:Ld/a/b/c;

.field private final e:I

.field private final f:Ld/ax;

.field private final g:Ld/g;

.field private final h:Ld/z;

.field private final i:I

.field private final j:I

.field private final k:I

.field private l:I


# direct methods
.method public constructor <init>(Ljava/util/List;Ld/a/b/h;Ld/a/c/d;Ld/a/b/c;ILd/ax;Ld/g;Ld/z;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ld/al;",
            ">;",
            "Ld/a/b/h;",
            "Ld/a/c/d;",
            "Ld/a/b/c;",
            "I",
            "Ld/ax;",
            "Ld/g;",
            "Ld/z;",
            "III)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Ld/a/c/i;->a:Ljava/util/List;

    .line 54
    iput-object p4, p0, Ld/a/c/i;->d:Ld/a/b/c;

    .line 55
    iput-object p2, p0, Ld/a/c/i;->b:Ld/a/b/h;

    .line 56
    iput-object p3, p0, Ld/a/c/i;->c:Ld/a/c/d;

    .line 57
    iput p5, p0, Ld/a/c/i;->e:I

    .line 58
    iput-object p6, p0, Ld/a/c/i;->f:Ld/ax;

    .line 59
    iput-object p7, p0, Ld/a/c/i;->g:Ld/g;

    .line 60
    iput-object p8, p0, Ld/a/c/i;->h:Ld/z;

    .line 61
    iput p9, p0, Ld/a/c/i;->i:I

    .line 62
    iput p10, p0, Ld/a/c/i;->j:I

    .line 63
    iput p11, p0, Ld/a/c/i;->k:I

    .line 64
    return-void
.end method


# virtual methods
.method public a()Ld/ax;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Ld/a/c/i;->f:Ld/ax;

    return-object v0
.end method

.method public a(Ld/ax;)Ld/bd;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Ld/a/c/i;->b:Ld/a/b/h;

    iget-object v1, p0, Ld/a/c/i;->c:Ld/a/c/d;

    iget-object v2, p0, Ld/a/c/i;->d:Ld/a/b/c;

    invoke-virtual {p0, p1, v0, v1, v2}, Ld/a/c/i;->a(Ld/ax;Ld/a/b/h;Ld/a/c/d;Ld/a/b/c;)Ld/bd;

    move-result-object v0

    return-object v0
.end method

.method public a(Ld/ax;Ld/a/b/h;Ld/a/c/d;Ld/a/b/c;)Ld/bd;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    iget v0, p0, Ld/a/c/i;->e:I

    iget-object v1, p0, Ld/a/c/i;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 128
    :cond_0
    iget v0, p0, Ld/a/c/i;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ld/a/c/i;->l:I

    .line 131
    iget-object v0, p0, Ld/a/c/i;->c:Ld/a/c/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld/a/c/i;->d:Ld/a/b/c;

    invoke-virtual {p1}, Ld/ax;->a()Ld/ai;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld/a/b/c;->a(Ld/ai;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "network interceptor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ld/a/c/i;->a:Ljava/util/List;

    iget v3, p0, Ld/a/c/i;->e:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must retain the same host and port"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_1
    iget-object v0, p0, Ld/a/c/i;->c:Ld/a/c/d;

    if-eqz v0, :cond_2

    iget v0, p0, Ld/a/c/i;->l:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 138
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "network interceptor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ld/a/c/i;->a:Ljava/util/List;

    iget v3, p0, Ld/a/c/i;->e:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must call proceed() exactly once"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_2
    new-instance v0, Ld/a/c/i;

    iget-object v1, p0, Ld/a/c/i;->a:Ljava/util/List;

    iget v2, p0, Ld/a/c/i;->e:I

    add-int/lit8 v5, v2, 0x1

    iget-object v7, p0, Ld/a/c/i;->g:Ld/g;

    iget-object v8, p0, Ld/a/c/i;->h:Ld/z;

    iget v9, p0, Ld/a/c/i;->i:I

    iget v10, p0, Ld/a/c/i;->j:I

    iget v11, p0, Ld/a/c/i;->k:I

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object v6, p1

    invoke-direct/range {v0 .. v11}, Ld/a/c/i;-><init>(Ljava/util/List;Ld/a/b/h;Ld/a/c/d;Ld/a/b/c;ILd/ax;Ld/g;Ld/z;III)V

    .line 146
    iget-object v1, p0, Ld/a/c/i;->a:Ljava/util/List;

    iget v2, p0, Ld/a/c/i;->e:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/al;

    .line 147
    invoke-interface {v1, v0}, Ld/al;->intercept(Ld/am;)Ld/bd;

    move-result-object v2

    .line 150
    if-eqz p3, :cond_3

    iget v3, p0, Ld/a/c/i;->e:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Ld/a/c/i;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget v0, v0, Ld/a/c/i;->l:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    .line 151
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "network interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must call proceed() exactly once"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_3
    if-nez v2, :cond_4

    .line 157
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " returned null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_4
    invoke-virtual {v2}, Ld/bd;->f()Ld/bf;

    move-result-object v0

    if-nez v0, :cond_5

    .line 161
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " returned a response with no body"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_5
    return-object v2
.end method

.method public b()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Ld/a/c/i;->i:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Ld/a/c/i;->j:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Ld/a/c/i;->k:I

    return v0
.end method

.method public e()Ld/o;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Ld/a/c/i;->d:Ld/a/b/c;

    return-object v0
.end method

.method public f()Ld/a/b/h;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Ld/a/c/i;->b:Ld/a/b/h;

    return-object v0
.end method

.method public g()Ld/a/c/d;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Ld/a/c/i;->c:Ld/a/c/d;

    return-object v0
.end method

.method public h()Ld/g;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Ld/a/c/i;->g:Ld/g;

    return-object v0
.end method

.method public i()Ld/z;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Ld/a/c/i;->h:Ld/z;

    return-object v0
.end method
