.class public Lcom/a/a/a/c/a;
.super Ljava/lang/Object;
.source "Configuration.java"


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:I

.field d:I

.field e:I

.field f:Landroid/content/Context;

.field g:Lcom/a/a/a/ad;

.field h:Lcom/a/a/a/d/a;

.field i:Lcom/a/a/a/h/c;

.field j:Lcom/a/a/a/f/a;

.field k:Lcom/a/a/a/k/b;

.field l:Lcom/a/a/a/j/a;

.field m:Z

.field n:Z

.field o:I

.field p:Z

.field q:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string/jumbo v0, "default_job_manager"

    iput-object v0, p0, Lcom/a/a/a/c/a;->a:Ljava/lang/String;

    .line 56
    iput v2, p0, Lcom/a/a/a/c/a;->b:I

    .line 57
    iput v1, p0, Lcom/a/a/a/c/a;->c:I

    .line 58
    const/16 v0, 0xf

    iput v0, p0, Lcom/a/a/a/c/a;->d:I

    .line 59
    const/4 v0, 0x3

    iput v0, p0, Lcom/a/a/a/c/a;->e:I

    .line 64
    new-instance v0, Lcom/a/a/a/f/d;

    invoke-direct {v0}, Lcom/a/a/a/f/d;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/c/a;->j:Lcom/a/a/a/f/a;

    .line 67
    iput-boolean v1, p0, Lcom/a/a/a/c/a;->m:Z

    .line 68
    iput-boolean v1, p0, Lcom/a/a/a/c/a;->n:Z

    .line 69
    iput v2, p0, Lcom/a/a/a/c/a;->o:I

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/a/c/a;->p:Z

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/c/a;->q:Ljava/util/concurrent/ThreadFactory;

    .line 75
    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/a/c/b;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/a/a/a/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/a/a/a/c/a;->f:Landroid/content/Context;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/a/a/a/c/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/a/a/a/c/a;->p:Z

    return v0
.end method

.method public d()Lcom/a/a/a/ad;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/a/a/a/c/a;->g:Lcom/a/a/a/ad;

    return-object v0
.end method

.method public e()Lcom/a/a/a/d/a;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/a/a/a/c/a;->h:Lcom/a/a/a/d/a;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/a/a/a/c/a;->d:I

    return v0
.end method

.method public g()Lcom/a/a/a/h/c;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/a/a/a/c/a;->i:Lcom/a/a/a/h/c;

    return-object v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/a/a/a/c/a;->b:I

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/a/a/a/c/a;->c:I

    return v0
.end method

.method public j()Lcom/a/a/a/f/a;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/a/a/a/c/a;->j:Lcom/a/a/a/f/a;

    return-object v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/a/a/a/c/a;->e:I

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/a/a/a/c/a;->m:Z

    return v0
.end method

.method public m()Lcom/a/a/a/k/b;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/a/a/a/c/a;->k:Lcom/a/a/a/k/b;

    return-object v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/a/a/a/c/a;->n:Z

    return v0
.end method

.method public o()Lcom/a/a/a/j/a;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/a/a/a/c/a;->l:Lcom/a/a/a/j/a;

    return-object v0
.end method

.method public p()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/a/a/a/c/a;->o:I

    return v0
.end method

.method public q()Ljava/util/concurrent/ThreadFactory;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/a/a/a/c/a;->q:Ljava/util/concurrent/ThreadFactory;

    return-object v0
.end method
