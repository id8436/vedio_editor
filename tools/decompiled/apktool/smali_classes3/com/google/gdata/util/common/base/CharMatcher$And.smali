.class Lcom/google/gdata/util/common/base/CharMatcher$And;
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
    .line 516
    invoke-direct {p0}, Lcom/google/gdata/util/common/base/CharMatcher;-><init>()V

    .line 517
    iput-object p1, p0, Lcom/google/gdata/util/common/base/CharMatcher$And;->components:Ljava/util/List;

    .line 518
    return-void
.end method


# virtual methods
.method public and(Lcom/google/gdata/util/common/base/CharMatcher;)Lcom/google/gdata/util/common/base/CharMatcher;
    .locals 2

    .prologue
    .line 530
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/gdata/util/common/base/CharMatcher$And;->components:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 531
    invoke-static {p1}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    new-instance v1, Lcom/google/gdata/util/common/base/CharMatcher$And;

    invoke-direct {v1, v0}, Lcom/google/gdata/util/common/base/CharMatcher$And;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 513
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/gdata/util/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public matches(C)Z
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/google/gdata/util/common/base/CharMatcher$And;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/util/common/base/CharMatcher;

    .line 522
    invoke-virtual {v0, p1}, Lcom/google/gdata/util/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 523
    const/4 v0, 0x0

    .line 526
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
