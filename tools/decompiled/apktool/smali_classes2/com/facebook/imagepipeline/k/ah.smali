.class public Lcom/facebook/imagepipeline/k/ah;
.super Ljava/lang/Object;
.source "FetchState.java"


# instance fields
.field private final a:Lcom/facebook/imagepipeline/k/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/k/o",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/imagepipeline/k/cm;

.field private c:J


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V
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
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/ah;->a:Lcom/facebook/imagepipeline/k/o;

    .line 31
    iput-object p2, p0, Lcom/facebook/imagepipeline/k/ah;->b:Lcom/facebook/imagepipeline/k/cm;

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/imagepipeline/k/ah;->c:J

    .line 33
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/imagepipeline/k/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/k/o",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/ah;->a:Lcom/facebook/imagepipeline/k/o;

    return-object v0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/facebook/imagepipeline/k/ah;->c:J

    .line 61
    return-void
.end method

.method public b()Lcom/facebook/imagepipeline/k/cm;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/ah;->b:Lcom/facebook/imagepipeline/k/cm;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/ah;->b:Lcom/facebook/imagepipeline/k/cm;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/k/cm;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/facebook/imagepipeline/k/co;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/ah;->b:Lcom/facebook/imagepipeline/k/cm;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/k/cm;->c()Lcom/facebook/imagepipeline/k/co;

    move-result-object v0

    return-object v0
.end method

.method public e()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/ah;->b:Lcom/facebook/imagepipeline/k/cm;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/k/cm;->a()Lcom/facebook/imagepipeline/l/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/l/a;->b()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/facebook/imagepipeline/k/ah;->c:J

    return-wide v0
.end method
