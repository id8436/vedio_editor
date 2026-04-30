.class Lcom/facebook/imagepipeline/k/de;
.super Lcom/facebook/imagepipeline/k/w;
.source "ThumbnailBranchProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/k/w",
        "<",
        "Lcom/facebook/imagepipeline/h/d;",
        "Lcom/facebook/imagepipeline/h/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/k/dd;

.field private final b:Lcom/facebook/imagepipeline/k/cm;

.field private final c:I

.field private final d:Lcom/facebook/imagepipeline/d/d;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/k/dd;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/o",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;",
            "Lcom/facebook/imagepipeline/k/cm;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 56
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/de;->a:Lcom/facebook/imagepipeline/k/dd;

    .line 57
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/k/w;-><init>(Lcom/facebook/imagepipeline/k/o;)V

    .line 58
    iput-object p3, p0, Lcom/facebook/imagepipeline/k/de;->b:Lcom/facebook/imagepipeline/k/cm;

    .line 59
    iput p4, p0, Lcom/facebook/imagepipeline/k/de;->c:I

    .line 60
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/de;->b:Lcom/facebook/imagepipeline/k/cm;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/k/cm;->a()Lcom/facebook/imagepipeline/l/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/l/a;->f()Lcom/facebook/imagepipeline/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/k/de;->d:Lcom/facebook/imagepipeline/d/d;

    .line 61
    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/imagepipeline/h/d;Z)V
    .locals 4

    .prologue
    .line 65
    if-eqz p1, :cond_2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/k/de;->d:Lcom/facebook/imagepipeline/d/d;

    .line 66
    invoke-static {p1, v0}, Lcom/facebook/imagepipeline/k/dg;->a(Lcom/facebook/imagepipeline/h/d;Lcom/facebook/imagepipeline/d/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/de;->d()Lcom/facebook/imagepipeline/k/o;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/k/o;->b(Ljava/lang/Object;Z)V

    .line 80
    :cond_1
    :goto_0
    return-void

    .line 68
    :cond_2
    if-eqz p2, :cond_1

    .line 69
    invoke-static {p1}, Lcom/facebook/imagepipeline/h/d;->d(Lcom/facebook/imagepipeline/h/d;)V

    .line 71
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/de;->a:Lcom/facebook/imagepipeline/k/dd;

    iget v1, p0, Lcom/facebook/imagepipeline/k/de;->c:I

    add-int/lit8 v1, v1, 0x1

    .line 73
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/de;->d()Lcom/facebook/imagepipeline/k/o;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/k/de;->b:Lcom/facebook/imagepipeline/k/cm;

    .line 71
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/k/dd;->a(Lcom/facebook/imagepipeline/k/dd;ILcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)Z

    move-result v0

    .line 76
    if-nez v0, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/de;->d()Lcom/facebook/imagepipeline/k/o;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/k/o;->b(Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 48
    check-cast p1, Lcom/facebook/imagepipeline/h/d;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/k/de;->a(Lcom/facebook/imagepipeline/h/d;Z)V

    return-void
.end method

.method protected a(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 84
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/de;->a:Lcom/facebook/imagepipeline/k/dd;

    iget v1, p0, Lcom/facebook/imagepipeline/k/de;->c:I

    add-int/lit8 v1, v1, 0x1

    .line 85
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/de;->d()Lcom/facebook/imagepipeline/k/o;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/k/de;->b:Lcom/facebook/imagepipeline/k/cm;

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/k/dd;->a(Lcom/facebook/imagepipeline/k/dd;ILcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)Z

    move-result v0

    .line 87
    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/de;->d()Lcom/facebook/imagepipeline/k/o;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/k/o;->b(Ljava/lang/Throwable;)V

    .line 90
    :cond_0
    return-void
.end method
