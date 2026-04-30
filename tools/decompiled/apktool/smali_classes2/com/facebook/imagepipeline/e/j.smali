.class public Lcom/facebook/imagepipeline/e/j;
.super Ljava/lang/Object;
.source "ImagePipelineConfig.java"


# instance fields
.field private a:Lcom/facebook/imagepipeline/a/a/d;

.field private b:Landroid/graphics/Bitmap$Config;

.field private c:Lcom/facebook/d/d/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/d/d/m",
            "<",
            "Lcom/facebook/imagepipeline/c/ae;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/facebook/imagepipeline/c/k;

.field private final e:Landroid/content/Context;

.field private f:Z

.field private g:Lcom/facebook/d/d/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/d/d/m",
            "<",
            "Lcom/facebook/imagepipeline/c/ae;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/facebook/imagepipeline/e/e;

.field private i:Lcom/facebook/imagepipeline/c/ab;

.field private j:Lcom/facebook/imagepipeline/g/c;

.field private k:Lcom/facebook/d/d/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/d/d/m",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/facebook/c/b/l;

.field private m:Lcom/facebook/d/g/b;

.field private n:Lcom/facebook/imagepipeline/k/by;

.field private o:Lcom/facebook/imagepipeline/b/f;

.field private p:Lcom/facebook/imagepipeline/memory/ad;

.field private q:Lcom/facebook/imagepipeline/g/e;

.field private r:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/imagepipeline/i/b;",
            ">;"
        }
    .end annotation
.end field

.field private s:Z

.field private t:Lcom/facebook/c/b/l;

.field private u:Lcom/facebook/imagepipeline/e/f;

.field private v:Lcom/facebook/imagepipeline/g/d;

.field private final w:Lcom/facebook/imagepipeline/e/n;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/e/j;->f:Z

    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/e/j;->s:Z

    .line 364
    new-instance v0, Lcom/facebook/imagepipeline/e/n;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/e/n;-><init>(Lcom/facebook/imagepipeline/e/j;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/e/j;->w:Lcom/facebook/imagepipeline/e/n;

    .line 369
    invoke-static {p1}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/facebook/imagepipeline/e/j;->e:Landroid/content/Context;

    .line 370
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/facebook/imagepipeline/e/i;)V
    .locals 0

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/e/j;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/imagepipeline/e/n;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/j;->w:Lcom/facebook/imagepipeline/e/n;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/imagepipeline/a/a/d;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/j;->a:Lcom/facebook/imagepipeline/a/a/d;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/d/d/m;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/j;->c:Lcom/facebook/d/d/m;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/imagepipeline/e/j;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/j;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/imagepipeline/e/j;)Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/j;->b:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/imagepipeline/c/k;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/j;->d:Lcom/facebook/imagepipeline/c/k;

    return-object v0
.end method

.method static synthetic g(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/imagepipeline/e/f;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/j;->u:Lcom/facebook/imagepipeline/e/f;

    return-object v0
.end method

.method static synthetic h(Lcom/facebook/imagepipeline/e/j;)Z
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/e/j;->f:Z

    return v0
.end method

.method static synthetic i(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/d/d/m;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/j;->g:Lcom/facebook/d/d/m;

    return-object v0
.end method

.method static synthetic j(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/imagepipeline/c/ab;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/j;->i:Lcom/facebook/imagepipeline/c/ab;

    return-object v0
.end method

.method static synthetic k(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/imagepipeline/g/c;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/j;->j:Lcom/facebook/imagepipeline/g/c;

    return-object v0
.end method

.method static synthetic l(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/d/d/m;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/j;->k:Lcom/facebook/d/d/m;

    return-object v0
.end method

.method static synthetic m(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/c/b/l;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/j;->l:Lcom/facebook/c/b/l;

    return-object v0
.end method

.method static synthetic n(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/d/g/b;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/j;->m:Lcom/facebook/d/g/b;

    return-object v0
.end method

.method static synthetic o(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/imagepipeline/k/by;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/j;->n:Lcom/facebook/imagepipeline/k/by;

    return-object v0
.end method

.method static synthetic p(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/imagepipeline/b/f;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/j;->o:Lcom/facebook/imagepipeline/b/f;

    return-object v0
.end method

.method static synthetic q(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/imagepipeline/memory/ad;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/j;->p:Lcom/facebook/imagepipeline/memory/ad;

    return-object v0
.end method

.method static synthetic r(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/imagepipeline/g/e;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/j;->q:Lcom/facebook/imagepipeline/g/e;

    return-object v0
.end method

.method static synthetic s(Lcom/facebook/imagepipeline/e/j;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/j;->r:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic t(Lcom/facebook/imagepipeline/e/j;)Z
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/e/j;->s:Z

    return v0
.end method

.method static synthetic u(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/c/b/l;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/j;->t:Lcom/facebook/c/b/l;

    return-object v0
.end method

.method static synthetic v(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/imagepipeline/g/d;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/j;->v:Lcom/facebook/imagepipeline/g/d;

    return-object v0
.end method

.method static synthetic w(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/imagepipeline/e/e;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/j;->h:Lcom/facebook/imagepipeline/e/e;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/facebook/imagepipeline/e/h;
    .locals 2

    .prologue
    .line 490
    new-instance v0, Lcom/facebook/imagepipeline/e/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/imagepipeline/e/h;-><init>(Lcom/facebook/imagepipeline/e/j;Lcom/facebook/imagepipeline/e/i;)V

    return-object v0
.end method
