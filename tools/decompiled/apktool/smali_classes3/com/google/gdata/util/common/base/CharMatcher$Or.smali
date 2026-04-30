.class Lcom/google/gdata/util/common/base/CharMatcher$Or;
.super Lcom/google/gdata/util/common/base/CharMatcher;
.source "CharMatcher.java"


# instance fields
.field components:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/util/common/base/CharMatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/util/common/base/CharMatcher;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 547
    invoke-direct {p0}, Lcom/google/gdata/util/common/base/CharMatcher;-><init>()V

    .line 548
    iput-object p1, p0, Lcom/google/gdata/util/common/base/CharMatcher$Or;->components:Ljava/util/List;

    .line 549
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 544
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/gdata/util/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public matches(C)Z
    .locals 2

    .prologue
    .line 552
    iget-object v0, p0, Lcom/google/gdata/util/common/base/CharMatcher$Or;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/util/common/base/CharMatcher;

    .line 553
    invoke-virtual {v0, p1}, Lcom/google/gdata/util/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    const/4 v0, 0x1

    .line 557
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public or(Lcom/google/gdata/util/common/base/CharMatcher;)Lcom/google/gdata/util/common/base/CharMatcher;
    .locals 2

    .prologue
    .line 561
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/gdata/util/common/base/CharMatcher$Or;->components:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 562
    invoke-static {p1}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    new-instance v1, Lcom/google/gdata/util/common/base/CharMatcher$Or;

    invoke-direct {v1, v0}, Lcom/google/gdata/util/common/base/CharMatcher$Or;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method protected setBits(Lcom/google/gdata/util/common/base/CharMatcher$LookupTable;)V
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/google/gdata/util/common/base/CharMatcher$Or;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/util/common/base/CharMatcher;

    .line 568
    invoke-virtual {v0, p1}, Lcom/google/gdata/util/common/base/CharMatcher;->setBits(Lcom/google/gdata/util/common/base/CharMatcher$LookupTable;)V

    goto :goto_0

    .line 570
    :cond_0
    return-void
.end method
