.class public Lcom/b/a/j;
.super Ljava/lang/Object;
.source "GlideBuilder.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/b/a/d/b/f;

.field private c:Lcom/b/a/d/b/a/e;

.field private d:Lcom/b/a/d/b/b/o;

.field private e:Ljava/util/concurrent/ExecutorService;

.field private f:Ljava/util/concurrent/ExecutorService;

.field private g:Lcom/b/a/d/a;

.field private h:Lcom/b/a/d/b/b/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/j;->a:Landroid/content/Context;

    .line 36
    return-void
.end method


# virtual methods
.method a()Lcom/b/a/h;
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 169
    iget-object v0, p0, Lcom/b/a/j;->e:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 170
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 171
    new-instance v1, Lcom/b/a/d/b/c/a;

    invoke-direct {v1, v0}, Lcom/b/a/d/b/c/a;-><init>(I)V

    iput-object v1, p0, Lcom/b/a/j;->e:Ljava/util/concurrent/ExecutorService;

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/b/a/j;->f:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    .line 174
    new-instance v0, Lcom/b/a/d/b/c/a;

    invoke-direct {v0, v2}, Lcom/b/a/d/b/c/a;-><init>(I)V

    iput-object v0, p0, Lcom/b/a/j;->f:Ljava/util/concurrent/ExecutorService;

    .line 177
    :cond_1
    new-instance v0, Lcom/b/a/d/b/b/q;

    iget-object v1, p0, Lcom/b/a/j;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/b/a/d/b/b/q;-><init>(Landroid/content/Context;)V

    .line 178
    iget-object v1, p0, Lcom/b/a/j;->c:Lcom/b/a/d/b/a/e;

    if-nez v1, :cond_2

    .line 179
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_7

    .line 180
    invoke-virtual {v0}, Lcom/b/a/d/b/b/q;->b()I

    move-result v1

    .line 181
    new-instance v2, Lcom/b/a/d/b/a/i;

    invoke-direct {v2, v1}, Lcom/b/a/d/b/a/i;-><init>(I)V

    iput-object v2, p0, Lcom/b/a/j;->c:Lcom/b/a/d/b/a/e;

    .line 187
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/b/a/j;->d:Lcom/b/a/d/b/b/o;

    if-nez v1, :cond_3

    .line 188
    new-instance v1, Lcom/b/a/d/b/b/n;

    invoke-virtual {v0}, Lcom/b/a/d/b/b/q;->a()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/b/a/d/b/b/n;-><init>(I)V

    iput-object v1, p0, Lcom/b/a/j;->d:Lcom/b/a/d/b/b/o;

    .line 191
    :cond_3
    iget-object v0, p0, Lcom/b/a/j;->h:Lcom/b/a/d/b/b/b;

    if-nez v0, :cond_4

    .line 192
    new-instance v0, Lcom/b/a/d/b/b/l;

    iget-object v1, p0, Lcom/b/a/j;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/b/a/d/b/b/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/b/a/j;->h:Lcom/b/a/d/b/b/b;

    .line 195
    :cond_4
    iget-object v0, p0, Lcom/b/a/j;->b:Lcom/b/a/d/b/f;

    if-nez v0, :cond_5

    .line 196
    new-instance v0, Lcom/b/a/d/b/f;

    iget-object v1, p0, Lcom/b/a/j;->d:Lcom/b/a/d/b/b/o;

    iget-object v2, p0, Lcom/b/a/j;->h:Lcom/b/a/d/b/b/b;

    iget-object v3, p0, Lcom/b/a/j;->f:Ljava/util/concurrent/ExecutorService;

    iget-object v4, p0, Lcom/b/a/j;->e:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/d/b/f;-><init>(Lcom/b/a/d/b/b/o;Lcom/b/a/d/b/b/b;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/b/a/j;->b:Lcom/b/a/d/b/f;

    .line 199
    :cond_5
    iget-object v0, p0, Lcom/b/a/j;->g:Lcom/b/a/d/a;

    if-nez v0, :cond_6

    .line 200
    sget-object v0, Lcom/b/a/d/a;->d:Lcom/b/a/d/a;

    iput-object v0, p0, Lcom/b/a/j;->g:Lcom/b/a/d/a;

    .line 203
    :cond_6
    new-instance v0, Lcom/b/a/h;

    iget-object v1, p0, Lcom/b/a/j;->b:Lcom/b/a/d/b/f;

    iget-object v2, p0, Lcom/b/a/j;->d:Lcom/b/a/d/b/b/o;

    iget-object v3, p0, Lcom/b/a/j;->c:Lcom/b/a/d/b/a/e;

    iget-object v4, p0, Lcom/b/a/j;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/b/a/j;->g:Lcom/b/a/d/a;

    invoke-direct/range {v0 .. v5}, Lcom/b/a/h;-><init>(Lcom/b/a/d/b/f;Lcom/b/a/d/b/b/o;Lcom/b/a/d/b/a/e;Landroid/content/Context;Lcom/b/a/d/a;)V

    return-object v0

    .line 183
    :cond_7
    new-instance v1, Lcom/b/a/d/b/a/f;

    invoke-direct {v1}, Lcom/b/a/d/b/a/f;-><init>()V

    iput-object v1, p0, Lcom/b/a/j;->c:Lcom/b/a/d/b/a/e;

    goto :goto_0
.end method
