.class Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSet;
.super Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMapBasedMultimap",
        "<TK;TV;>.WrappedCollection;",
        "Ljava/util/Set",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/Set;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Set",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 600
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSet;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    .line 601
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    .line 602
    return-void
.end method


# virtual methods
.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 606
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 607
    const/4 v0, 0x0

    .line 620
    :cond_0
    :goto_0
    return v0

    .line 609
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSet;->size()I

    move-result v1

    .line 614
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSet;->delegate:Ljava/util/Collection;

    check-cast v0, Ljava/util/Set;

    invoke-static {v0, p1}, Lcom/google/common/collect/Sets;->removeAllImpl(Ljava/util/Set;Ljava/util/Collection;)Z

    move-result v0

    .line 615
    if-eqz v0, :cond_0

    .line 616
    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSet;->delegate:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 617
    iget-object v3, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSet;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    sub-int v1, v2, v1

    invoke-static {v3, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$212(Lcom/google/common/collect/AbstractMapBasedMultimap;I)I

    .line 618
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSet;->removeIfEmpty()V

    goto :goto_0
.end method
