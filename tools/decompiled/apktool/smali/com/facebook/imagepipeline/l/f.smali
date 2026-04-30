.class public Lcom/facebook/imagepipeline/l/f;
.super Ljava/lang/Object;
.source "MediaVariations.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/imagepipeline/l/g;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final c:Z


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/imagepipeline/l/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/imagepipeline/l/g;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/imagepipeline/l/f;->b:Ljava/util/List;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/l/f;->c:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 80
    instance-of v1, p1, Lcom/facebook/imagepipeline/l/f;

    if-nez v1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v0

    .line 83
    :cond_1
    check-cast p1, Lcom/facebook/imagepipeline/l/f;

    .line 84
    iget-object v1, p0, Lcom/facebook/imagepipeline/l/f;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/facebook/imagepipeline/l/f;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/facebook/d/d/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/l/f;->c:Z

    iget-boolean v2, p1, Lcom/facebook/imagepipeline/l/f;->c:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/facebook/imagepipeline/l/f;->b:Ljava/util/List;

    iget-object v2, p1, Lcom/facebook/imagepipeline/l/f;->b:Ljava/util/List;

    .line 86
    invoke-static {v1, v2}, Lcom/facebook/d/d/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 91
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/imagepipeline/l/f;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/facebook/imagepipeline/l/f;->c:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/facebook/imagepipeline/l/f;->b:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/facebook/d/d/g;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 96
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Locale;

    const-string/jumbo v1, "%s-%b-%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/imagepipeline/l/f;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/facebook/imagepipeline/l/f;->c:Z

    .line 97
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/facebook/imagepipeline/l/f;->b:Ljava/util/List;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 96
    return-object v0
.end method
