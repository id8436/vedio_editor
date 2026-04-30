.class Lcom/facebook/imagepipeline/c/r;
.super Ljava/lang/Object;
.source "CountingMemoryCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public final b:Lcom/facebook/d/h/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/d/h/a",
            "<TV;>;"
        }
    .end annotation
.end field

.field public c:I

.field public d:Z

.field public final e:Lcom/facebook/imagepipeline/c/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/c/s",
            "<TK;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lcom/facebook/d/h/a;Lcom/facebook/imagepipeline/c/s;)V
    .locals 2
    .param p3    # Lcom/facebook/imagepipeline/c/s;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/d/h/a",
            "<TV;>;",
            "Lcom/facebook/imagepipeline/c/s",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-static {p1}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/c/r;->a:Ljava/lang/Object;

    .line 87
    invoke-static {p2}, Lcom/facebook/d/h/a;->b(Lcom/facebook/d/h/a;)Lcom/facebook/d/h/a;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/d/h/a;

    iput-object v0, p0, Lcom/facebook/imagepipeline/c/r;->b:Lcom/facebook/d/h/a;

    .line 88
    iput v1, p0, Lcom/facebook/imagepipeline/c/r;->c:I

    .line 89
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/c/r;->d:Z

    .line 90
    iput-object p3, p0, Lcom/facebook/imagepipeline/c/r;->e:Lcom/facebook/imagepipeline/c/s;

    .line 91
    return-void
.end method

.method static a(Ljava/lang/Object;Lcom/facebook/d/h/a;Lcom/facebook/imagepipeline/c/s;)Lcom/facebook/imagepipeline/c/r;
    .locals 1
    .param p2    # Lcom/facebook/imagepipeline/c/s;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lcom/facebook/d/h/a",
            "<TV;>;",
            "Lcom/facebook/imagepipeline/c/s",
            "<TK;>;)",
            "Lcom/facebook/imagepipeline/c/r",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Lcom/facebook/imagepipeline/c/r;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/imagepipeline/c/r;-><init>(Ljava/lang/Object;Lcom/facebook/d/h/a;Lcom/facebook/imagepipeline/c/s;)V

    return-object v0
.end method
