.class public Lcom/facebook/c/a/h;
.super Ljava/lang/Object;
.source "MultiCacheKey.java"

# interfaces
.implements Lcom/facebook/c/a/f;


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/c/a/f;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/facebook/c/a/h;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/c/a/f;

    invoke-interface {v0}, Lcom/facebook/c/a/f;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/c/a/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/c/a/h;->a:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 48
    if-ne p1, p0, :cond_0

    .line 49
    const/4 v0, 0x1

    .line 55
    :goto_0
    return v0

    .line 51
    :cond_0
    instance-of v0, p1, Lcom/facebook/c/a/h;

    if-eqz v0, :cond_1

    .line 52
    check-cast p1, Lcom/facebook/c/a/h;

    .line 53
    iget-object v0, p0, Lcom/facebook/c/a/h;->a:Ljava/util/List;

    iget-object v1, p1, Lcom/facebook/c/a/h;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 55
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/c/a/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MultiCacheKey:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/c/a/h;->a:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
