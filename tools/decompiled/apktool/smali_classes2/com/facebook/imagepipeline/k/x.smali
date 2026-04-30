.class public Lcom/facebook/imagepipeline/k/x;
.super Ljava/lang/Object;
.source "DiskCacheReadProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/k/cl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/k/cl",
        "<",
        "Lcom/facebook/imagepipeline/h/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/k/cl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/k/cl",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/imagepipeline/c/w;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/k/cl;Lcom/facebook/imagepipeline/c/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/cl",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;",
            "Lcom/facebook/imagepipeline/c/w;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/x;->a:Lcom/facebook/imagepipeline/k/cl;

    .line 48
    iput-object p2, p0, Lcom/facebook/imagepipeline/k/x;->b:Lcom/facebook/imagepipeline/c/w;

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/k/x;)Lcom/facebook/imagepipeline/k/cl;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/x;->a:Lcom/facebook/imagepipeline/k/cl;

    return-object v0
.end method

.method static a(Lcom/facebook/imagepipeline/k/co;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/co;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    invoke-interface {p0, p1}, Lcom/facebook/imagepipeline/k/co;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    const/4 v0, 0x0

    .line 133
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "cached_value_found"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/d/d/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/imagepipeline/k/cm;)V
    .locals 1

    .prologue
    .line 139
    new-instance v0, Lcom/facebook/imagepipeline/k/z;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/k/z;-><init>(Lcom/facebook/imagepipeline/k/x;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-interface {p2, v0}, Lcom/facebook/imagepipeline/k/cm;->a(Lcom/facebook/imagepipeline/k/cn;)V

    .line 146
    return-void
.end method

.method static synthetic a(La/l;)Z
    .locals 1

    .prologue
    .line 37
    invoke-static {p0}, Lcom/facebook/imagepipeline/k/x;->b(La/l;)Z

    move-result v0

    return v0
.end method

.method private b(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)La/j;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/o",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;",
            "Lcom/facebook/imagepipeline/k/cm;",
            ")",
            "La/j",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/cm;->b()Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/cm;->c()Lcom/facebook/imagepipeline/k/co;

    move-result-object v2

    .line 75
    new-instance v0, Lcom/facebook/imagepipeline/k/y;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/k/y;-><init>(Lcom/facebook/imagepipeline/k/x;Lcom/facebook/imagepipeline/k/co;Ljava/lang/String;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V

    return-object v0
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
    .line 109
    invoke-virtual {p0}, La/l;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    invoke-virtual {p0}, La/l;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, La/l;->f()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 109
    :goto_0
    return v0

    .line 110
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/o",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;",
            "Lcom/facebook/imagepipeline/k/cm;",
            ")V"
        }
    .end annotation

    .prologue
    .line 116
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/cm;->e()Lcom/facebook/imagepipeline/l/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/l/c;->a()I

    move-result v0

    sget-object v1, Lcom/facebook/imagepipeline/l/c;->b:Lcom/facebook/imagepipeline/l/c;

    .line 117
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/l/c;->a()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 118
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/facebook/imagepipeline/k/o;->b(Ljava/lang/Object;Z)V

    .line 123
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/x;->a:Lcom/facebook/imagepipeline/k/cl;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/k/cl;->a(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/o",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;",
            "Lcom/facebook/imagepipeline/k/cm;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/cm;->a()Lcom/facebook/imagepipeline/l/a;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/l/a;->m()Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/k/x;->c(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V

    .line 68
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/cm;->c()Lcom/facebook/imagepipeline/k/co;

    move-result-object v1

    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/cm;->b()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "DiskCacheProducer"

    invoke-interface {v1, v2, v3}, Lcom/facebook/imagepipeline/k/co;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 63
    iget-object v2, p0, Lcom/facebook/imagepipeline/k/x;->b:Lcom/facebook/imagepipeline/c/w;

    .line 64
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/cm;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v0, v3, v1}, Lcom/facebook/imagepipeline/c/w;->a(Lcom/facebook/imagepipeline/l/a;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;)La/l;

    move-result-object v0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/k/x;->b(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)La/j;

    move-result-object v2

    .line 66
    invoke-virtual {v0, v2}, La/l;->a(La/j;)La/l;

    .line 67
    invoke-direct {p0, v1, p2}, Lcom/facebook/imagepipeline/k/x;->a(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/imagepipeline/k/cm;)V

    goto :goto_0
.end method
