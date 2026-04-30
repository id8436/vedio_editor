.class Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;
.super Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;
.source "XMPIteratorImpl.java"


# instance fields
.field private childrenIterator:Ljava/util/Iterator;

.field private index:I

.field private parentPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;


# direct methods
.method public constructor <init>(Lcom/adobe/xmp/impl/XMPIteratorImpl;Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 549
    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    .line 548
    invoke-direct {p0, p1}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;-><init>(Lcom/adobe/xmp/impl/XMPIteratorImpl;)V

    .line 540
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->index:I

    .line 550
    invoke-virtual {p2}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isSchemaNode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    invoke-virtual {p2}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/adobe/xmp/impl/XMPIteratorImpl;->setBaseNS(Ljava/lang/String;)V

    .line 554
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p2, p3, v0}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->accumulatePath(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->parentPath:Ljava/lang/String;

    .line 556
    invoke-virtual {p2}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->childrenIterator:Ljava/util/Iterator;

    .line 557
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 567
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->getReturnProperty()Lcom/adobe/xmp/properties/XMPPropertyInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    move v0, v2

    .line 605
    :cond_0
    :goto_0
    return v0

    .line 572
    :cond_1
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    iget-boolean v1, v1, Lcom/adobe/xmp/impl/XMPIteratorImpl;->skipSiblings:Z

    if-nez v1, :cond_0

    .line 576
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->childrenIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 578
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->childrenIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 579
    iget v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->index:I

    .line 581
    const/4 v1, 0x0

    .line 582
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/xmp/options/PropertyOptions;->isSchemaNode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 584
    iget-object v3, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/adobe/xmp/impl/XMPIteratorImpl;->setBaseNS(Ljava/lang/String;)V

    .line 593
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    invoke-virtual {v3}, Lcom/adobe/xmp/impl/XMPIteratorImpl;->getOptions()Lcom/adobe/xmp/options/IteratorOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/xmp/options/IteratorOptions;->isJustLeafnodes()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v3

    if-nez v3, :cond_5

    .line 595
    :cond_3
    iget-object v3, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    invoke-virtual {v3}, Lcom/adobe/xmp/impl/XMPIteratorImpl;->getBaseNS()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3, v1}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->createPropertyInfo(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPPropertyInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->setReturnProperty(Lcom/adobe/xmp/properties/XMPPropertyInfo;)V

    move v0, v2

    .line 596
    goto :goto_0

    .line 586
    :cond_4
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getParent()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 589
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->parentPath:Ljava/lang/String;

    iget v3, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->index:I

    invoke-virtual {p0, v0, v1, v3}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->accumulatePath(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 600
    :cond_5
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->hasNext()Z

    move-result v0

    goto :goto_0
.end method
