.class public Lcom/facebook/imagepipeline/c/aj;
.super Ljava/lang/Object;
.source "SplitCachesByImageSizeDiskCachePolicy.java"

# interfaces
.implements Lcom/facebook/imagepipeline/c/w;


# instance fields
.field private final a:Lcom/facebook/imagepipeline/c/g;

.field private final b:Lcom/facebook/imagepipeline/c/g;

.field private final c:Lcom/facebook/imagepipeline/c/k;

.field private final d:I


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/c/g;Lcom/facebook/imagepipeline/c/g;Lcom/facebook/imagepipeline/c/k;I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/facebook/imagepipeline/c/aj;->a:Lcom/facebook/imagepipeline/c/g;

    .line 39
    iput-object p2, p0, Lcom/facebook/imagepipeline/c/aj;->b:Lcom/facebook/imagepipeline/c/g;

    .line 40
    iput-object p3, p0, Lcom/facebook/imagepipeline/c/aj;->c:Lcom/facebook/imagepipeline/c/k;

    .line 41
    iput p4, p0, Lcom/facebook/imagepipeline/c/aj;->d:I

    .line 42
    return-void
.end method

.method static synthetic a(La/l;)Z
    .locals 1

    .prologue
    .line 26
    invoke-static {p0}, Lcom/facebook/imagepipeline/c/aj;->b(La/l;)Z

    move-result v0

    return v0
.end method

.method private static b(La/l;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/l",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p0}, La/l;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p0}, La/l;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, La/l;->f()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    .line 91
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/l/a;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;)La/l;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/l/a;",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")",
            "La/l",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/aj;->c:Lcom/facebook/imagepipeline/c/k;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/c/k;->c(Lcom/facebook/imagepipeline/l/a;Ljava/lang/Object;)Lcom/facebook/c/a/f;

    move-result-object v2

    .line 50
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/aj;->b:Lcom/facebook/imagepipeline/c/g;

    invoke-virtual {v0, v2}, Lcom/facebook/imagepipeline/c/g;->a(Lcom/facebook/c/a/f;)Z

    move-result v0

    .line 51
    iget-object v1, p0, Lcom/facebook/imagepipeline/c/aj;->a:Lcom/facebook/imagepipeline/c/g;

    invoke-virtual {v1, v2}, Lcom/facebook/imagepipeline/c/g;->a(Lcom/facebook/c/a/f;)Z

    move-result v1

    .line 54
    if-nez v0, :cond_0

    if-nez v1, :cond_1

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/c/aj;->b:Lcom/facebook/imagepipeline/c/g;

    .line 56
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/aj;->a:Lcom/facebook/imagepipeline/c/g;

    .line 61
    :goto_0
    invoke-virtual {v1, v2, p3}, Lcom/facebook/imagepipeline/c/g;->a(Lcom/facebook/c/a/f;Ljava/util/concurrent/atomic/AtomicBoolean;)La/l;

    move-result-object v1

    new-instance v3, Lcom/facebook/imagepipeline/c/ak;

    invoke-direct {v3, p0, v0, v2, p3}, Lcom/facebook/imagepipeline/c/ak;-><init>(Lcom/facebook/imagepipeline/c/aj;Lcom/facebook/imagepipeline/c/g;Lcom/facebook/c/a/f;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 62
    invoke-virtual {v1, v3}, La/l;->b(La/j;)La/l;

    move-result-object v0

    .line 61
    return-object v0

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/facebook/imagepipeline/c/aj;->a:Lcom/facebook/imagepipeline/c/g;

    .line 59
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/aj;->b:Lcom/facebook/imagepipeline/c/g;

    goto :goto_0
.end method

.method public a(Lcom/facebook/imagepipeline/h/d;Lcom/facebook/imagepipeline/l/a;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/aj;->c:Lcom/facebook/imagepipeline/c/k;

    invoke-interface {v0, p2, p3}, Lcom/facebook/imagepipeline/c/k;->c(Lcom/facebook/imagepipeline/l/a;Ljava/lang/Object;)Lcom/facebook/c/a/f;

    move-result-object v0

    .line 81
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/h/d;->k()I

    move-result v1

    .line 82
    if-lez v1, :cond_0

    iget v2, p0, Lcom/facebook/imagepipeline/c/aj;->d:I

    if-ge v1, v2, :cond_0

    .line 83
    iget-object v1, p0, Lcom/facebook/imagepipeline/c/aj;->b:Lcom/facebook/imagepipeline/c/g;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/imagepipeline/c/g;->a(Lcom/facebook/c/a/f;Lcom/facebook/imagepipeline/h/d;)V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/c/aj;->a:Lcom/facebook/imagepipeline/c/g;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/imagepipeline/c/g;->a(Lcom/facebook/c/a/f;Lcom/facebook/imagepipeline/h/d;)V

    goto :goto_0
.end method
