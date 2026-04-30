.class public Lcom/facebook/c/b/l;
.super Ljava/lang/Object;
.source "DiskCacheConfig.java"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Lcom/facebook/d/d/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/d/d/m",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final d:J

.field private final e:J

.field private final f:J

.field private final g:Lcom/facebook/c/b/aa;

.field private final h:Lcom/facebook/c/a/a;

.field private final i:Lcom/facebook/c/a/d;

.field private final j:Lcom/facebook/d/a/b;

.field private final k:Landroid/content/Context;

.field private final l:Z


# direct methods
.method private constructor <init>(Lcom/facebook/c/b/n;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, Lcom/facebook/c/b/n;->a(Lcom/facebook/c/b/n;)I

    move-result v0

    iput v0, p0, Lcom/facebook/c/b/l;->a:I

    .line 50
    invoke-static {p1}, Lcom/facebook/c/b/n;->b(Lcom/facebook/c/b/n;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/c/b/l;->b:Ljava/lang/String;

    .line 51
    invoke-static {p1}, Lcom/facebook/c/b/n;->c(Lcom/facebook/c/b/n;)Lcom/facebook/d/d/m;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/d/d/m;

    iput-object v0, p0, Lcom/facebook/c/b/l;->c:Lcom/facebook/d/d/m;

    .line 52
    invoke-static {p1}, Lcom/facebook/c/b/n;->d(Lcom/facebook/c/b/n;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/c/b/l;->d:J

    .line 53
    invoke-static {p1}, Lcom/facebook/c/b/n;->e(Lcom/facebook/c/b/n;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/c/b/l;->e:J

    .line 54
    invoke-static {p1}, Lcom/facebook/c/b/n;->f(Lcom/facebook/c/b/n;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/c/b/l;->f:J

    .line 56
    invoke-static {p1}, Lcom/facebook/c/b/n;->g(Lcom/facebook/c/b/n;)Lcom/facebook/c/b/aa;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/c/b/aa;

    iput-object v0, p0, Lcom/facebook/c/b/l;->g:Lcom/facebook/c/b/aa;

    .line 58
    invoke-static {p1}, Lcom/facebook/c/b/n;->h(Lcom/facebook/c/b/n;)Lcom/facebook/c/a/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 59
    invoke-static {}, Lcom/facebook/c/a/i;->a()Lcom/facebook/c/a/i;

    move-result-object v0

    .line 60
    :goto_0
    iput-object v0, p0, Lcom/facebook/c/b/l;->h:Lcom/facebook/c/a/a;

    .line 62
    invoke-static {p1}, Lcom/facebook/c/b/n;->i(Lcom/facebook/c/b/n;)Lcom/facebook/c/a/d;

    move-result-object v0

    if-nez v0, :cond_1

    .line 63
    invoke-static {}, Lcom/facebook/c/a/j;->a()Lcom/facebook/c/a/j;

    move-result-object v0

    .line 64
    :goto_1
    iput-object v0, p0, Lcom/facebook/c/b/l;->i:Lcom/facebook/c/a/d;

    .line 66
    invoke-static {p1}, Lcom/facebook/c/b/n;->j(Lcom/facebook/c/b/n;)Lcom/facebook/d/a/b;

    move-result-object v0

    if-nez v0, :cond_2

    .line 67
    invoke-static {}, Lcom/facebook/d/a/c;->a()Lcom/facebook/d/a/c;

    move-result-object v0

    .line 68
    :goto_2
    iput-object v0, p0, Lcom/facebook/c/b/l;->j:Lcom/facebook/d/a/b;

    .line 69
    invoke-static {p1}, Lcom/facebook/c/b/n;->k(Lcom/facebook/c/b/n;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/c/b/l;->k:Landroid/content/Context;

    .line 70
    invoke-static {p1}, Lcom/facebook/c/b/n;->l(Lcom/facebook/c/b/n;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/c/b/l;->l:Z

    .line 71
    return-void

    .line 60
    :cond_0
    invoke-static {p1}, Lcom/facebook/c/b/n;->h(Lcom/facebook/c/b/n;)Lcom/facebook/c/a/a;

    move-result-object v0

    goto :goto_0

    .line 64
    :cond_1
    invoke-static {p1}, Lcom/facebook/c/b/n;->i(Lcom/facebook/c/b/n;)Lcom/facebook/c/a/d;

    move-result-object v0

    goto :goto_1

    .line 68
    :cond_2
    invoke-static {p1}, Lcom/facebook/c/b/n;->j(Lcom/facebook/c/b/n;)Lcom/facebook/d/a/b;

    move-result-object v0

    goto :goto_2
.end method

.method synthetic constructor <init>(Lcom/facebook/c/b/n;Lcom/facebook/c/b/m;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/facebook/c/b/l;-><init>(Lcom/facebook/c/b/n;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/facebook/c/b/n;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 131
    new-instance v0, Lcom/facebook/c/b/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/c/b/n;-><init>(Landroid/content/Context;Lcom/facebook/c/b/m;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/facebook/c/b/l;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/c/b/l;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/facebook/d/d/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/d/d/m",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/c/b/l;->c:Lcom/facebook/d/d/m;

    return-object v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/facebook/c/b/l;->d:J

    return-wide v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/facebook/c/b/l;->e:J

    return-wide v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/facebook/c/b/l;->f:J

    return-wide v0
.end method

.method public g()Lcom/facebook/c/b/aa;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/c/b/l;->g:Lcom/facebook/c/b/aa;

    return-object v0
.end method

.method public h()Lcom/facebook/c/a/a;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/facebook/c/b/l;->h:Lcom/facebook/c/a/a;

    return-object v0
.end method

.method public i()Lcom/facebook/c/a/d;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/facebook/c/b/l;->i:Lcom/facebook/c/a/d;

    return-object v0
.end method

.method public j()Lcom/facebook/d/a/b;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/facebook/c/b/l;->j:Lcom/facebook/d/a/b;

    return-object v0
.end method

.method public k()Landroid/content/Context;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/facebook/c/b/l;->k:Landroid/content/Context;

    return-object v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/facebook/c/b/l;->l:Z

    return v0
.end method
