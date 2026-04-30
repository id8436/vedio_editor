.class public Lcom/facebook/c/b/n;
.super Ljava/lang/Object;
.source "DiskCacheConfig.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Lcom/facebook/d/d/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/d/d/m",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private e:J

.field private f:J

.field private g:Lcom/facebook/c/b/aa;

.field private h:Lcom/facebook/c/a/a;

.field private i:Lcom/facebook/c/a/d;

.field private j:Lcom/facebook/d/a/b;

.field private k:Z

.field private final l:Landroid/content/Context;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/c/b/n;->a:I

    .line 137
    const-string/jumbo v0, "image_cache"

    iput-object v0, p0, Lcom/facebook/c/b/n;->b:Ljava/lang/String;

    .line 139
    const-wide/32 v0, 0x2800000

    iput-wide v0, p0, Lcom/facebook/c/b/n;->d:J

    .line 140
    const-wide/32 v0, 0xa00000

    iput-wide v0, p0, Lcom/facebook/c/b/n;->e:J

    .line 141
    const-wide/32 v0, 0x200000

    iput-wide v0, p0, Lcom/facebook/c/b/n;->f:J

    .line 142
    new-instance v0, Lcom/facebook/c/b/j;

    invoke-direct {v0}, Lcom/facebook/c/b/j;-><init>()V

    iput-object v0, p0, Lcom/facebook/c/b/n;->g:Lcom/facebook/c/b/aa;

    .line 152
    iput-object p1, p0, Lcom/facebook/c/b/n;->l:Landroid/content/Context;

    .line 153
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/facebook/c/b/m;)V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/facebook/c/b/n;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/c/b/n;)I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/facebook/c/b/n;->a:I

    return v0
.end method

.method static synthetic b(Lcom/facebook/c/b/n;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/facebook/c/b/n;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/c/b/n;)Lcom/facebook/d/d/m;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/facebook/c/b/n;->c:Lcom/facebook/d/d/m;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/c/b/n;)J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/facebook/c/b/n;->d:J

    return-wide v0
.end method

.method static synthetic e(Lcom/facebook/c/b/n;)J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/facebook/c/b/n;->e:J

    return-wide v0
.end method

.method static synthetic f(Lcom/facebook/c/b/n;)J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/facebook/c/b/n;->f:J

    return-wide v0
.end method

.method static synthetic g(Lcom/facebook/c/b/n;)Lcom/facebook/c/b/aa;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/facebook/c/b/n;->g:Lcom/facebook/c/b/aa;

    return-object v0
.end method

.method static synthetic h(Lcom/facebook/c/b/n;)Lcom/facebook/c/a/a;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/facebook/c/b/n;->h:Lcom/facebook/c/a/a;

    return-object v0
.end method

.method static synthetic i(Lcom/facebook/c/b/n;)Lcom/facebook/c/a/d;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/facebook/c/b/n;->i:Lcom/facebook/c/a/d;

    return-object v0
.end method

.method static synthetic j(Lcom/facebook/c/b/n;)Lcom/facebook/d/a/b;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/facebook/c/b/n;->j:Lcom/facebook/d/a/b;

    return-object v0
.end method

.method static synthetic k(Lcom/facebook/c/b/n;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/facebook/c/b/n;->l:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic l(Lcom/facebook/c/b/n;)Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/facebook/c/b/n;->k:Z

    return v0
.end method


# virtual methods
.method public a()Lcom/facebook/c/b/l;
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/facebook/c/b/n;->c:Lcom/facebook/d/d/m;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/c/b/n;->l:Landroid/content/Context;

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Either a non-null context or a base directory path or supplier must be provided."

    invoke-static {v0, v1}, Lcom/facebook/d/d/k;->b(ZLjava/lang/Object;)V

    .line 260
    iget-object v0, p0, Lcom/facebook/c/b/n;->c:Lcom/facebook/d/d/m;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/c/b/n;->l:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 261
    new-instance v0, Lcom/facebook/c/b/o;

    invoke-direct {v0, p0}, Lcom/facebook/c/b/o;-><init>(Lcom/facebook/c/b/n;)V

    iput-object v0, p0, Lcom/facebook/c/b/n;->c:Lcom/facebook/d/d/m;

    .line 268
    :cond_1
    new-instance v0, Lcom/facebook/c/b/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/c/b/l;-><init>(Lcom/facebook/c/b/n;Lcom/facebook/c/b/m;)V

    return-object v0

    .line 257
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
