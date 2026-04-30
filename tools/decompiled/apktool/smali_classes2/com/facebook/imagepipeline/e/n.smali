.class public Lcom/facebook/imagepipeline/e/n;
.super Ljava/lang/Object;
.source "ImagePipelineExperiments.java"


# instance fields
.field private final a:Lcom/facebook/imagepipeline/e/j;

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Lcom/facebook/d/d/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/d/d/m",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/facebook/d/n/c;

.field private g:Z

.field private h:Lcom/facebook/d/n/b;

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/e/j;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput v1, p0, Lcom/facebook/imagepipeline/e/n;->b:I

    .line 95
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/e/n;->c:Z

    .line 96
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/e/n;->d:Z

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/imagepipeline/e/n;->e:Lcom/facebook/d/d/m;

    .line 99
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/e/n;->g:Z

    .line 101
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/e/n;->i:Z

    .line 102
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/e/n;->j:Z

    .line 105
    iput-object p1, p0, Lcom/facebook/imagepipeline/e/n;->a:Lcom/facebook/imagepipeline/e/j;

    .line 106
    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/e/n;)I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/facebook/imagepipeline/e/n;->b:I

    return v0
.end method

.method static synthetic b(Lcom/facebook/imagepipeline/e/n;)Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/e/n;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/e/n;)Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/e/n;->d:Z

    return v0
.end method

.method static synthetic d(Lcom/facebook/imagepipeline/e/n;)Lcom/facebook/d/d/m;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/n;->e:Lcom/facebook/d/d/m;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/imagepipeline/e/n;)Lcom/facebook/d/n/c;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/n;->f:Lcom/facebook/d/n/c;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/imagepipeline/e/n;)Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/e/n;->g:Z

    return v0
.end method

.method static synthetic g(Lcom/facebook/imagepipeline/e/n;)Lcom/facebook/d/n/b;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/n;->h:Lcom/facebook/d/n/b;

    return-object v0
.end method

.method static synthetic h(Lcom/facebook/imagepipeline/e/n;)Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/e/n;->i:Z

    return v0
.end method

.method static synthetic i(Lcom/facebook/imagepipeline/e/n;)Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/e/n;->j:Z

    return v0
.end method


# virtual methods
.method public a()Lcom/facebook/imagepipeline/e/l;
    .locals 3

    .prologue
    .line 180
    new-instance v0, Lcom/facebook/imagepipeline/e/l;

    iget-object v1, p0, Lcom/facebook/imagepipeline/e/n;->a:Lcom/facebook/imagepipeline/e/j;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/facebook/imagepipeline/e/l;-><init>(Lcom/facebook/imagepipeline/e/n;Lcom/facebook/imagepipeline/e/j;Lcom/facebook/imagepipeline/e/m;)V

    return-object v0
.end method
