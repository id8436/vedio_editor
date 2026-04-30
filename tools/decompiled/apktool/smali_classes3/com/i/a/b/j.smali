.class public final Lcom/i/a/b/j;
.super Ljava/lang/Object;
.source "ImageLoaderConfiguration.java"


# instance fields
.field final a:Landroid/content/res/Resources;

.field final b:I

.field final c:I

.field final d:I

.field final e:I

.field final f:Lcom/i/a/b/g/a;

.field final g:Ljava/util/concurrent/Executor;

.field final h:Ljava/util/concurrent/Executor;

.field final i:Z

.field final j:Z

.field final k:I

.field final l:I

.field final m:Lcom/i/a/b/a/h;

.field final n:Lcom/i/a/a/b/a;

.field final o:Lcom/i/a/a/a/b;

.field final p:Lcom/i/a/b/d/c;

.field final q:Lcom/i/a/b/b/d;

.field final r:Lcom/i/a/b/d;

.field final s:Lcom/i/a/b/d/c;

.field final t:Lcom/i/a/b/d/c;


# direct methods
.method private constructor <init>(Lcom/i/a/b/l;)V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {p1}, Lcom/i/a/b/l;->a(Lcom/i/a/b/l;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/i/a/b/j;->a:Landroid/content/res/Resources;

    .line 80
    invoke-static {p1}, Lcom/i/a/b/l;->b(Lcom/i/a/b/l;)I

    move-result v0

    iput v0, p0, Lcom/i/a/b/j;->b:I

    .line 81
    invoke-static {p1}, Lcom/i/a/b/l;->c(Lcom/i/a/b/l;)I

    move-result v0

    iput v0, p0, Lcom/i/a/b/j;->c:I

    .line 82
    invoke-static {p1}, Lcom/i/a/b/l;->d(Lcom/i/a/b/l;)I

    move-result v0

    iput v0, p0, Lcom/i/a/b/j;->d:I

    .line 83
    invoke-static {p1}, Lcom/i/a/b/l;->e(Lcom/i/a/b/l;)I

    move-result v0

    iput v0, p0, Lcom/i/a/b/j;->e:I

    .line 84
    invoke-static {p1}, Lcom/i/a/b/l;->f(Lcom/i/a/b/l;)Lcom/i/a/b/g/a;

    move-result-object v0

    iput-object v0, p0, Lcom/i/a/b/j;->f:Lcom/i/a/b/g/a;

    .line 85
    invoke-static {p1}, Lcom/i/a/b/l;->g(Lcom/i/a/b/l;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/i/a/b/j;->g:Ljava/util/concurrent/Executor;

    .line 86
    invoke-static {p1}, Lcom/i/a/b/l;->h(Lcom/i/a/b/l;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/i/a/b/j;->h:Ljava/util/concurrent/Executor;

    .line 87
    invoke-static {p1}, Lcom/i/a/b/l;->i(Lcom/i/a/b/l;)I

    move-result v0

    iput v0, p0, Lcom/i/a/b/j;->k:I

    .line 88
    invoke-static {p1}, Lcom/i/a/b/l;->j(Lcom/i/a/b/l;)I

    move-result v0

    iput v0, p0, Lcom/i/a/b/j;->l:I

    .line 89
    invoke-static {p1}, Lcom/i/a/b/l;->k(Lcom/i/a/b/l;)Lcom/i/a/b/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/i/a/b/j;->m:Lcom/i/a/b/a/h;

    .line 90
    invoke-static {p1}, Lcom/i/a/b/l;->l(Lcom/i/a/b/l;)Lcom/i/a/a/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/i/a/b/j;->o:Lcom/i/a/a/a/b;

    .line 91
    invoke-static {p1}, Lcom/i/a/b/l;->m(Lcom/i/a/b/l;)Lcom/i/a/a/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/i/a/b/j;->n:Lcom/i/a/a/b/a;

    .line 92
    invoke-static {p1}, Lcom/i/a/b/l;->n(Lcom/i/a/b/l;)Lcom/i/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/i/a/b/j;->r:Lcom/i/a/b/d;

    .line 93
    invoke-static {p1}, Lcom/i/a/b/l;->o(Lcom/i/a/b/l;)Lcom/i/a/b/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/i/a/b/j;->p:Lcom/i/a/b/d/c;

    .line 94
    invoke-static {p1}, Lcom/i/a/b/l;->p(Lcom/i/a/b/l;)Lcom/i/a/b/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/i/a/b/j;->q:Lcom/i/a/b/b/d;

    .line 96
    invoke-static {p1}, Lcom/i/a/b/l;->q(Lcom/i/a/b/l;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/i/a/b/j;->i:Z

    .line 97
    invoke-static {p1}, Lcom/i/a/b/l;->r(Lcom/i/a/b/l;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/i/a/b/j;->j:Z

    .line 99
    new-instance v0, Lcom/i/a/b/m;

    iget-object v1, p0, Lcom/i/a/b/j;->p:Lcom/i/a/b/d/c;

    invoke-direct {v0, v1}, Lcom/i/a/b/m;-><init>(Lcom/i/a/b/d/c;)V

    iput-object v0, p0, Lcom/i/a/b/j;->s:Lcom/i/a/b/d/c;

    .line 100
    new-instance v0, Lcom/i/a/b/n;

    iget-object v1, p0, Lcom/i/a/b/j;->p:Lcom/i/a/b/d/c;

    invoke-direct {v0, v1}, Lcom/i/a/b/n;-><init>(Lcom/i/a/b/d/c;)V

    iput-object v0, p0, Lcom/i/a/b/j;->t:Lcom/i/a/b/d/c;

    .line 102
    invoke-static {p1}, Lcom/i/a/b/l;->s(Lcom/i/a/b/l;)Z

    move-result v0

    invoke-static {v0}, Lcom/i/a/c/e;->a(Z)V

    .line 103
    return-void
.end method

.method synthetic constructor <init>(Lcom/i/a/b/l;Lcom/i/a/b/k;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/i/a/b/j;-><init>(Lcom/i/a/b/l;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/i/a/b/j;
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcom/i/a/b/l;

    invoke-direct {v0, p0}, Lcom/i/a/b/l;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/i/a/b/l;->a()Lcom/i/a/b/j;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a()Lcom/i/a/b/a/f;
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/i/a/b/j;->a:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 133
    iget v0, p0, Lcom/i/a/b/j;->b:I

    .line 134
    if-gtz v0, :cond_0

    .line 135
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 137
    :cond_0
    iget v1, p0, Lcom/i/a/b/j;->c:I

    .line 138
    if-gtz v1, :cond_1

    .line 139
    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 141
    :cond_1
    new-instance v2, Lcom/i/a/b/a/f;

    invoke-direct {v2, v0, v1}, Lcom/i/a/b/a/f;-><init>(II)V

    return-object v2
.end method
