.class public final Lcom/i/a/b/d;
.super Ljava/lang/Object;
.source "DisplayImageOptions.java"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Landroid/graphics/drawable/Drawable;

.field private final e:Landroid/graphics/drawable/Drawable;

.field private final f:Landroid/graphics/drawable/Drawable;

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:Lcom/i/a/b/a/e;

.field private final k:Landroid/graphics/BitmapFactory$Options;

.field private final l:I

.field private final m:Z

.field private final n:Ljava/lang/Object;

.field private final o:Lcom/i/a/b/g/a;

.field private final p:Lcom/i/a/b/g/a;

.field private final q:Lcom/i/a/b/c/a;

.field private final r:Landroid/os/Handler;

.field private final s:Z


# direct methods
.method private constructor <init>(Lcom/i/a/b/f;)V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {p1}, Lcom/i/a/b/f;->a(Lcom/i/a/b/f;)I

    move-result v0

    iput v0, p0, Lcom/i/a/b/d;->a:I

    .line 89
    invoke-static {p1}, Lcom/i/a/b/f;->b(Lcom/i/a/b/f;)I

    move-result v0

    iput v0, p0, Lcom/i/a/b/d;->b:I

    .line 90
    invoke-static {p1}, Lcom/i/a/b/f;->c(Lcom/i/a/b/f;)I

    move-result v0

    iput v0, p0, Lcom/i/a/b/d;->c:I

    .line 91
    invoke-static {p1}, Lcom/i/a/b/f;->d(Lcom/i/a/b/f;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/i/a/b/d;->d:Landroid/graphics/drawable/Drawable;

    .line 92
    invoke-static {p1}, Lcom/i/a/b/f;->e(Lcom/i/a/b/f;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/i/a/b/d;->e:Landroid/graphics/drawable/Drawable;

    .line 93
    invoke-static {p1}, Lcom/i/a/b/f;->f(Lcom/i/a/b/f;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/i/a/b/d;->f:Landroid/graphics/drawable/Drawable;

    .line 94
    invoke-static {p1}, Lcom/i/a/b/f;->g(Lcom/i/a/b/f;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/i/a/b/d;->g:Z

    .line 95
    invoke-static {p1}, Lcom/i/a/b/f;->h(Lcom/i/a/b/f;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/i/a/b/d;->h:Z

    .line 96
    invoke-static {p1}, Lcom/i/a/b/f;->i(Lcom/i/a/b/f;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/i/a/b/d;->i:Z

    .line 97
    invoke-static {p1}, Lcom/i/a/b/f;->j(Lcom/i/a/b/f;)Lcom/i/a/b/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/i/a/b/d;->j:Lcom/i/a/b/a/e;

    .line 98
    invoke-static {p1}, Lcom/i/a/b/f;->k(Lcom/i/a/b/f;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iput-object v0, p0, Lcom/i/a/b/d;->k:Landroid/graphics/BitmapFactory$Options;

    .line 99
    invoke-static {p1}, Lcom/i/a/b/f;->l(Lcom/i/a/b/f;)I

    move-result v0

    iput v0, p0, Lcom/i/a/b/d;->l:I

    .line 100
    invoke-static {p1}, Lcom/i/a/b/f;->m(Lcom/i/a/b/f;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/i/a/b/d;->m:Z

    .line 101
    invoke-static {p1}, Lcom/i/a/b/f;->n(Lcom/i/a/b/f;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/i/a/b/d;->n:Ljava/lang/Object;

    .line 102
    invoke-static {p1}, Lcom/i/a/b/f;->o(Lcom/i/a/b/f;)Lcom/i/a/b/g/a;

    move-result-object v0

    iput-object v0, p0, Lcom/i/a/b/d;->o:Lcom/i/a/b/g/a;

    .line 103
    invoke-static {p1}, Lcom/i/a/b/f;->p(Lcom/i/a/b/f;)Lcom/i/a/b/g/a;

    move-result-object v0

    iput-object v0, p0, Lcom/i/a/b/d;->p:Lcom/i/a/b/g/a;

    .line 104
    invoke-static {p1}, Lcom/i/a/b/f;->q(Lcom/i/a/b/f;)Lcom/i/a/b/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/i/a/b/d;->q:Lcom/i/a/b/c/a;

    .line 105
    invoke-static {p1}, Lcom/i/a/b/f;->r(Lcom/i/a/b/f;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/i/a/b/d;->r:Landroid/os/Handler;

    .line 106
    invoke-static {p1}, Lcom/i/a/b/f;->s(Lcom/i/a/b/f;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/i/a/b/d;->s:Z

    .line 107
    return-void
.end method

.method synthetic constructor <init>(Lcom/i/a/b/f;Lcom/i/a/b/e;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/i/a/b/d;-><init>(Lcom/i/a/b/f;)V

    return-void
.end method

.method static synthetic a(Lcom/i/a/b/d;)I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/i/a/b/d;->a:I

    return v0
.end method

.method static synthetic b(Lcom/i/a/b/d;)I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/i/a/b/d;->b:I

    return v0
.end method

.method static synthetic c(Lcom/i/a/b/d;)I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/i/a/b/d;->c:I

    return v0
.end method

.method static synthetic d(Lcom/i/a/b/d;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/i/a/b/d;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic e(Lcom/i/a/b/d;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/i/a/b/d;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic f(Lcom/i/a/b/d;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/i/a/b/d;->f:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic g(Lcom/i/a/b/d;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/i/a/b/d;->g:Z

    return v0
.end method

.method static synthetic h(Lcom/i/a/b/d;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/i/a/b/d;->h:Z

    return v0
.end method

.method static synthetic i(Lcom/i/a/b/d;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/i/a/b/d;->i:Z

    return v0
.end method

.method static synthetic j(Lcom/i/a/b/d;)Lcom/i/a/b/a/e;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/i/a/b/d;->j:Lcom/i/a/b/a/e;

    return-object v0
.end method

.method static synthetic k(Lcom/i/a/b/d;)Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/i/a/b/d;->k:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic l(Lcom/i/a/b/d;)I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/i/a/b/d;->l:I

    return v0
.end method

.method static synthetic m(Lcom/i/a/b/d;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/i/a/b/d;->m:Z

    return v0
.end method

.method static synthetic n(Lcom/i/a/b/d;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/i/a/b/d;->n:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic o(Lcom/i/a/b/d;)Lcom/i/a/b/g/a;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/i/a/b/d;->o:Lcom/i/a/b/g/a;

    return-object v0
.end method

.method static synthetic p(Lcom/i/a/b/d;)Lcom/i/a/b/g/a;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/i/a/b/d;->p:Lcom/i/a/b/g/a;

    return-object v0
.end method

.method static synthetic q(Lcom/i/a/b/d;)Lcom/i/a/b/c/a;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/i/a/b/d;->q:Lcom/i/a/b/c/a;

    return-object v0
.end method

.method static synthetic r(Lcom/i/a/b/d;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/i/a/b/d;->r:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic s(Lcom/i/a/b/d;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/i/a/b/d;->s:Z

    return v0
.end method

.method public static t()Lcom/i/a/b/d;
    .locals 1

    .prologue
    .line 507
    new-instance v0, Lcom/i/a/b/f;

    invoke-direct {v0}, Lcom/i/a/b/f;-><init>()V

    invoke-virtual {v0}, Lcom/i/a/b/f;->a()Lcom/i/a/b/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/i/a/b/d;->a:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/i/a/b/d;->a:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/i/a/b/d;->d:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/i/a/b/d;->d:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/i/a/b/d;->a:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/i/a/b/d;->b:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/i/a/b/d;->b:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/i/a/b/d;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/i/a/b/d;->e:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/i/a/b/d;->b:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/i/a/b/d;->c:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/i/a/b/d;->c:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/i/a/b/d;->f:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/i/a/b/d;->f:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/i/a/b/d;->c:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/i/a/b/d;->o:Lcom/i/a/b/g/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/i/a/b/d;->p:Lcom/i/a/b/g/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/i/a/b/d;->l:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/i/a/b/d;->g:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/i/a/b/d;->h:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/i/a/b/d;->i:Z

    return v0
.end method

.method public j()Lcom/i/a/b/a/e;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/i/a/b/d;->j:Lcom/i/a/b/a/e;

    return-object v0
.end method

.method public k()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/i/a/b/d;->k:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/i/a/b/d;->l:I

    return v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/i/a/b/d;->m:Z

    return v0
.end method

.method public n()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/i/a/b/d;->n:Ljava/lang/Object;

    return-object v0
.end method

.method public o()Lcom/i/a/b/g/a;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/i/a/b/d;->o:Lcom/i/a/b/g/a;

    return-object v0
.end method

.method public p()Lcom/i/a/b/g/a;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/i/a/b/d;->p:Lcom/i/a/b/g/a;

    return-object v0
.end method

.method public q()Lcom/i/a/b/c/a;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/i/a/b/d;->q:Lcom/i/a/b/c/a;

    return-object v0
.end method

.method public r()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/i/a/b/d;->r:Landroid/os/Handler;

    return-object v0
.end method

.method s()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/i/a/b/d;->s:Z

    return v0
.end method
