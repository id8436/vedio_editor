.class public final Ld/ax;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field final a:Ld/ai;

.field final b:Ljava/lang/String;

.field final c:Ld/ag;

.field final d:Ld/az;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final e:Ljava/lang/Object;

.field private volatile f:Ld/e;


# direct methods
.method constructor <init>(Ld/ay;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iget-object v0, p1, Ld/ay;->a:Ld/ai;

    iput-object v0, p0, Ld/ax;->a:Ld/ai;

    .line 39
    iget-object v0, p1, Ld/ay;->b:Ljava/lang/String;

    iput-object v0, p0, Ld/ax;->b:Ljava/lang/String;

    .line 40
    iget-object v0, p1, Ld/ay;->c:Ld/ah;

    invoke-virtual {v0}, Ld/ah;->a()Ld/ag;

    move-result-object v0

    iput-object v0, p0, Ld/ax;->c:Ld/ag;

    .line 41
    iget-object v0, p1, Ld/ay;->d:Ld/az;

    iput-object v0, p0, Ld/ax;->d:Ld/az;

    .line 42
    iget-object v0, p1, Ld/ay;->e:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Ld/ay;->e:Ljava/lang/Object;

    :goto_0
    iput-object v0, p0, Ld/ax;->e:Ljava/lang/Object;

    .line 43
    return-void

    :cond_0
    move-object v0, p0

    .line 42
    goto :goto_0
.end method


# virtual methods
.method public a()Ld/ai;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Ld/ax;->a:Ld/ai;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Ld/ax;->c:Ld/ag;

    invoke-virtual {v0, p1}, Ld/ag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Ld/ax;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ld/ag;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Ld/ax;->c:Ld/ag;

    return-object v0
.end method

.method public d()Ld/az;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Ld/ax;->d:Ld/az;

    return-object v0
.end method

.method public e()Ld/ay;
    .locals 1

    .prologue
    .line 74
    new-instance v0, Ld/ay;

    invoke-direct {v0, p0}, Ld/ay;-><init>(Ld/ax;)V

    return-object v0
.end method

.method public f()Ld/e;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Ld/ax;->f:Ld/e;

    .line 83
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ld/ax;->c:Ld/ag;

    invoke-static {v0}, Ld/e;->a(Ld/ag;)Ld/e;

    move-result-object v0

    iput-object v0, p0, Ld/ax;->f:Ld/e;

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Ld/ax;->a:Ld/ai;

    invoke-virtual {v0}, Ld/ai;->c()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Request{method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ld/ax;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ld/ax;->a:Ld/ai;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Ld/ax;->e:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    .line 96
    iget-object v0, p0, Ld/ax;->e:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    return-object v0

    .line 96
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
