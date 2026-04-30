.class final Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "BinaryTreeTraverser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final hasExpanded:Ljava/util/BitSet;

.field private final stack:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/BinaryTreeTraverser;


# direct methods
.method constructor <init>(Lcom/google/common/collect/BinaryTreeTraverser;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->this$0:Lcom/google/common/collect/BinaryTreeTraverser;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    .line 138
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->stack:Ljava/util/LinkedList;

    .line 139
    iget-object v0, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->stack:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 140
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->hasExpanded:Ljava/util/BitSet;

    .line 141
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->stack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 151
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->stack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->hasExpanded:Ljava/util/BitSet;

    iget-object v2, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->stack:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    .line 153
    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->stack:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 155
    iget-object v1, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->hasExpanded:Ljava/util/BitSet;

    iget-object v2, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->stack:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->clear(I)V

    .line 156
    return-object v0

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->hasExpanded:Ljava/util/BitSet;

    iget-object v2, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->stack:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 159
    iget-object v1, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->stack:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->this$0:Lcom/google/common/collect/BinaryTreeTraverser;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/BinaryTreeTraverser;->rightChild(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/BinaryTreeTraverser;->access$000(Ljava/util/LinkedList;Lcom/google/common/base/Optional;)V

    .line 160
    iget-object v1, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->stack:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->this$0:Lcom/google/common/collect/BinaryTreeTraverser;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/BinaryTreeTraverser;->leftChild(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/common/collect/BinaryTreeTraverser;->access$000(Ljava/util/LinkedList;Lcom/google/common/base/Optional;)V

    goto :goto_0
.end method
