.class public Lcom/facebook/imagepipeline/memory/aa;
.super Ljava/lang/Object;
.source "PoolConfig.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/memory/ae;

.field private final b:Lcom/facebook/imagepipeline/memory/af;

.field private final c:Lcom/facebook/imagepipeline/memory/ae;

.field private final d:Lcom/facebook/d/g/b;

.field private final e:Lcom/facebook/imagepipeline/memory/ae;

.field private final f:Lcom/facebook/imagepipeline/memory/af;

.field private final g:Lcom/facebook/imagepipeline/memory/ae;

.field private final h:Lcom/facebook/imagepipeline/memory/af;


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/memory/ac;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/ac;->a(Lcom/facebook/imagepipeline/memory/ac;)Lcom/facebook/imagepipeline/memory/ae;

    move-result-object v0

    if-nez v0, :cond_0

    .line 38
    invoke-static {}, Lcom/facebook/imagepipeline/memory/k;->a()Lcom/facebook/imagepipeline/memory/ae;

    move-result-object v0

    .line 39
    :goto_0
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/aa;->a:Lcom/facebook/imagepipeline/memory/ae;

    .line 41
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/ac;->b(Lcom/facebook/imagepipeline/memory/ac;)Lcom/facebook/imagepipeline/memory/af;

    move-result-object v0

    if-nez v0, :cond_1

    .line 42
    invoke-static {}, Lcom/facebook/imagepipeline/memory/x;->a()Lcom/facebook/imagepipeline/memory/x;

    move-result-object v0

    .line 43
    :goto_1
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/aa;->b:Lcom/facebook/imagepipeline/memory/af;

    .line 45
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/ac;->c(Lcom/facebook/imagepipeline/memory/ac;)Lcom/facebook/imagepipeline/memory/ae;

    move-result-object v0

    if-nez v0, :cond_2

    .line 46
    invoke-static {}, Lcom/facebook/imagepipeline/memory/m;->a()Lcom/facebook/imagepipeline/memory/ae;

    move-result-object v0

    .line 47
    :goto_2
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/aa;->c:Lcom/facebook/imagepipeline/memory/ae;

    .line 49
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/ac;->d(Lcom/facebook/imagepipeline/memory/ac;)Lcom/facebook/d/g/b;

    move-result-object v0

    if-nez v0, :cond_3

    .line 50
    invoke-static {}, Lcom/facebook/d/g/c;->a()Lcom/facebook/d/g/c;

    move-result-object v0

    .line 51
    :goto_3
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/aa;->d:Lcom/facebook/d/g/b;

    .line 53
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/ac;->e(Lcom/facebook/imagepipeline/memory/ac;)Lcom/facebook/imagepipeline/memory/ae;

    move-result-object v0

    if-nez v0, :cond_4

    .line 54
    invoke-static {}, Lcom/facebook/imagepipeline/memory/n;->a()Lcom/facebook/imagepipeline/memory/ae;

    move-result-object v0

    .line 55
    :goto_4
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/aa;->e:Lcom/facebook/imagepipeline/memory/ae;

    .line 57
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/ac;->f(Lcom/facebook/imagepipeline/memory/ac;)Lcom/facebook/imagepipeline/memory/af;

    move-result-object v0

    if-nez v0, :cond_5

    .line 58
    invoke-static {}, Lcom/facebook/imagepipeline/memory/x;->a()Lcom/facebook/imagepipeline/memory/x;

    move-result-object v0

    .line 59
    :goto_5
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/aa;->f:Lcom/facebook/imagepipeline/memory/af;

    .line 61
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/ac;->g(Lcom/facebook/imagepipeline/memory/ac;)Lcom/facebook/imagepipeline/memory/ae;

    move-result-object v0

    if-nez v0, :cond_6

    .line 62
    invoke-static {}, Lcom/facebook/imagepipeline/memory/l;->a()Lcom/facebook/imagepipeline/memory/ae;

    move-result-object v0

    .line 63
    :goto_6
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/aa;->g:Lcom/facebook/imagepipeline/memory/ae;

    .line 65
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/ac;->h(Lcom/facebook/imagepipeline/memory/ac;)Lcom/facebook/imagepipeline/memory/af;

    move-result-object v0

    if-nez v0, :cond_7

    .line 66
    invoke-static {}, Lcom/facebook/imagepipeline/memory/x;->a()Lcom/facebook/imagepipeline/memory/x;

    move-result-object v0

    .line 67
    :goto_7
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/aa;->h:Lcom/facebook/imagepipeline/memory/af;

    .line 68
    return-void

    .line 39
    :cond_0
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/ac;->a(Lcom/facebook/imagepipeline/memory/ac;)Lcom/facebook/imagepipeline/memory/ae;

    move-result-object v0

    goto :goto_0

    .line 43
    :cond_1
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/ac;->b(Lcom/facebook/imagepipeline/memory/ac;)Lcom/facebook/imagepipeline/memory/af;

    move-result-object v0

    goto :goto_1

    .line 47
    :cond_2
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/ac;->c(Lcom/facebook/imagepipeline/memory/ac;)Lcom/facebook/imagepipeline/memory/ae;

    move-result-object v0

    goto :goto_2

    .line 51
    :cond_3
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/ac;->d(Lcom/facebook/imagepipeline/memory/ac;)Lcom/facebook/d/g/b;

    move-result-object v0

    goto :goto_3

    .line 55
    :cond_4
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/ac;->e(Lcom/facebook/imagepipeline/memory/ac;)Lcom/facebook/imagepipeline/memory/ae;

    move-result-object v0

    goto :goto_4

    .line 59
    :cond_5
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/ac;->f(Lcom/facebook/imagepipeline/memory/ac;)Lcom/facebook/imagepipeline/memory/af;

    move-result-object v0

    goto :goto_5

    .line 63
    :cond_6
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/ac;->g(Lcom/facebook/imagepipeline/memory/ac;)Lcom/facebook/imagepipeline/memory/ae;

    move-result-object v0

    goto :goto_6

    .line 67
    :cond_7
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/ac;->h(Lcom/facebook/imagepipeline/memory/ac;)Lcom/facebook/imagepipeline/memory/af;

    move-result-object v0

    goto :goto_7
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/memory/ac;Lcom/facebook/imagepipeline/memory/ab;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/memory/aa;-><init>(Lcom/facebook/imagepipeline/memory/ac;)V

    return-void
.end method

.method public static i()Lcom/facebook/imagepipeline/memory/ac;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lcom/facebook/imagepipeline/memory/ac;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/memory/ac;-><init>(Lcom/facebook/imagepipeline/memory/ab;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/facebook/imagepipeline/memory/ae;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/aa;->a:Lcom/facebook/imagepipeline/memory/ae;

    return-object v0
.end method

.method public b()Lcom/facebook/imagepipeline/memory/af;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/aa;->b:Lcom/facebook/imagepipeline/memory/af;

    return-object v0
.end method

.method public c()Lcom/facebook/d/g/b;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/aa;->d:Lcom/facebook/d/g/b;

    return-object v0
.end method

.method public d()Lcom/facebook/imagepipeline/memory/ae;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/aa;->e:Lcom/facebook/imagepipeline/memory/ae;

    return-object v0
.end method

.method public e()Lcom/facebook/imagepipeline/memory/af;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/aa;->f:Lcom/facebook/imagepipeline/memory/af;

    return-object v0
.end method

.method public f()Lcom/facebook/imagepipeline/memory/ae;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/aa;->c:Lcom/facebook/imagepipeline/memory/ae;

    return-object v0
.end method

.method public g()Lcom/facebook/imagepipeline/memory/ae;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/aa;->g:Lcom/facebook/imagepipeline/memory/ae;

    return-object v0
.end method

.method public h()Lcom/facebook/imagepipeline/memory/af;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/aa;->h:Lcom/facebook/imagepipeline/memory/af;

    return-object v0
.end method
