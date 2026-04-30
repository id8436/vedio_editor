.class Lcom/facebook/c/b/i;
.super Ljava/lang/Object;
.source "DefaultDiskStorage.java"

# interfaces
.implements Lcom/facebook/d/c/b;


# instance fields
.field final synthetic a:Lcom/facebook/c/b/a;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/facebook/c/b/a;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/facebook/c/b/i;->a:Lcom/facebook/c/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/c/b/a;Lcom/facebook/c/b/b;)V
    .locals 0

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lcom/facebook/c/b/i;-><init>(Lcom/facebook/c/b/a;)V

    return-void
.end method

.method private d(Ljava/io/File;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 316
    iget-object v2, p0, Lcom/facebook/c/b/i;->a:Lcom/facebook/c/b/a;

    invoke-static {v2, p1}, Lcom/facebook/c/b/a;->a(Lcom/facebook/c/b/a;Ljava/io/File;)Lcom/facebook/c/b/e;

    move-result-object v2

    .line 317
    if-nez v2, :cond_0

    .line 324
    :goto_0
    return v0

    .line 320
    :cond_0
    iget-object v3, v2, Lcom/facebook/c/b/e;->a:Lcom/facebook/c/b/f;

    sget-object v4, Lcom/facebook/c/b/f;->b:Lcom/facebook/c/b/f;

    if-ne v3, v4, :cond_1

    .line 321
    invoke-direct {p0, p1}, Lcom/facebook/c/b/i;->e(Ljava/io/File;)Z

    move-result v0

    goto :goto_0

    .line 323
    :cond_1
    iget-object v2, v2, Lcom/facebook/c/b/e;->a:Lcom/facebook/c/b/f;

    sget-object v3, Lcom/facebook/c/b/f;->a:Lcom/facebook/c/b/f;

    if-ne v2, v3, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v0}, Lcom/facebook/d/d/k;->b(Z)V

    move v0, v1

    .line 324
    goto :goto_0
.end method

.method private e(Ljava/io/File;)Z
    .locals 6

    .prologue
    .line 331
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/c/b/i;->a:Lcom/facebook/c/b/a;

    invoke-static {v2}, Lcom/facebook/c/b/a;->c(Lcom/facebook/c/b/a;)Lcom/facebook/d/l/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/facebook/d/l/a;->a()J

    move-result-wide v2

    sget-wide v4, Lcom/facebook/c/b/a;->a:J

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/facebook/c/b/i;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/c/b/i;->a:Lcom/facebook/c/b/a;

    invoke-static {v0}, Lcom/facebook/c/b/a;->a(Lcom/facebook/c/b/a;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/c/b/i;->b:Z

    .line 292
    :cond_0
    return-void
.end method

.method public b(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/facebook/c/b/i;->b:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/facebook/c/b/i;->d(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 297
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 299
    :cond_1
    return-void
.end method

.method public c(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/facebook/c/b/i;->a:Lcom/facebook/c/b/a;

    invoke-static {v0}, Lcom/facebook/c/b/a;->b(Lcom/facebook/c/b/a;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    iget-boolean v0, p0, Lcom/facebook/c/b/i;->b:Z

    if-nez v0, :cond_0

    .line 306
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 309
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/c/b/i;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/c/b/i;->a:Lcom/facebook/c/b/a;

    invoke-static {v0}, Lcom/facebook/c/b/a;->a(Lcom/facebook/c/b/a;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/c/b/i;->b:Z

    .line 313
    :cond_1
    return-void
.end method
