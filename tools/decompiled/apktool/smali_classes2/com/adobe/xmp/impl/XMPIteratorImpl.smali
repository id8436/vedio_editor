.class public Lcom/adobe/xmp/impl/XMPIteratorImpl;
.super Ljava/lang/Object;
.source "XMPIteratorImpl.java"

# interfaces
.implements Lcom/adobe/xmp/XMPIterator;


# instance fields
.field private baseNS:Ljava/lang/String;

.field private nodeIterator:Ljava/util/Iterator;

.field private options:Lcom/adobe/xmp/options/IteratorOptions;

.field protected skipSiblings:Z

.field protected skipSubtree:Z


# direct methods
.method public constructor <init>(Lcom/adobe/xmp/impl/XMPMetaImpl;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/IteratorOptions;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->baseNS:Ljava/lang/String;

    .line 42
    iput-boolean v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->skipSiblings:Z

    .line 44
    iput-boolean v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->skipSubtree:Z

    .line 46
    iput-object v2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->nodeIterator:Ljava/util/Iterator;

    .line 62
    if-eqz p4, :cond_0

    :goto_0
    iput-object p4, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->options:Lcom/adobe/xmp/options/IteratorOptions;

    .line 67
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    move v4, v3

    .line 68
    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v3

    .line 70
    :goto_2
    if-nez v4, :cond_3

    if-nez v0, :cond_3

    .line 73
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    move-object v1, v0

    move-object v0, v2

    .line 104
    :goto_3
    if-eqz v1, :cond_8

    .line 106
    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->options:Lcom/adobe/xmp/options/IteratorOptions;

    invoke-virtual {v2}, Lcom/adobe/xmp/options/IteratorOptions;->isJustChildren()Z

    move-result v2

    if-nez v2, :cond_7

    .line 108
    new-instance v2, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;

    invoke-direct {v2, p0, v1, v0, v3}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;-><init>(Lcom/adobe/xmp/impl/XMPIteratorImpl;Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->nodeIterator:Ljava/util/Iterator;

    .line 120
    :goto_4
    return-void

    .line 62
    :cond_0
    new-instance p4, Lcom/adobe/xmp/options/IteratorOptions;

    invoke-direct {p4}, Lcom/adobe/xmp/options/IteratorOptions;-><init>()V

    goto :goto_0

    :cond_1
    move v4, v1

    .line 67
    goto :goto_1

    :cond_2
    move v0, v1

    .line 68
    goto :goto_2

    .line 75
    :cond_3
    if-eqz v4, :cond_5

    if-eqz v0, :cond_5

    .line 78
    invoke-static {p2, p3}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v4

    .line 81
    new-instance v5, Lcom/adobe/xmp/impl/xpath/XMPPath;

    invoke-direct {v5}, Lcom/adobe/xmp/impl/xpath/XMPPath;-><init>()V

    move v0, v1

    .line 82
    :goto_5
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/xpath/XMPPath;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-lt v0, v6, :cond_4

    .line 87
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    invoke-static {v0, v4, v1, v2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    .line 88
    iput-object p2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->baseNS:Ljava/lang/String;

    .line 89
    invoke-virtual {v5}, Lcom/adobe/xmp/impl/xpath/XMPPath;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 84
    :cond_4
    invoke-virtual {v4, v0}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/adobe/xmp/impl/xpath/XMPPath;->add(Lcom/adobe/xmp/impl/xpath/XMPPathSegment;)V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 91
    :cond_5
    if-eqz v4, :cond_6

    if-nez v0, :cond_6

    .line 94
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    invoke-static {v0, p2, v1}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    move-object v1, v0

    move-object v0, v2

    .line 95
    goto :goto_3

    .line 99
    :cond_6
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Schema namespace URI is required"

    const/16 v2, 0x65

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 112
    :cond_7
    new-instance v2, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;

    invoke-direct {v2, p0, v1, v0}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;-><init>(Lcom/adobe/xmp/impl/XMPIteratorImpl;Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->nodeIterator:Ljava/util/Iterator;

    goto :goto_4

    .line 118
    :cond_8
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->nodeIterator:Ljava/util/Iterator;

    goto :goto_4
.end method


# virtual methods
.method public getBaseNS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->baseNS:Ljava/lang/String;

    return-object v0
.end method

.method protected getOptions()Lcom/adobe/xmp/options/IteratorOptions;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->options:Lcom/adobe/xmp/options/IteratorOptions;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->nodeIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->nodeIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 165
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "The XMPIterator does not support remove()."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setBaseNS(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->baseNS:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public skipSiblings()V
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPIteratorImpl;->skipSubtree()V

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->skipSiblings:Z

    .line 139
    return-void
.end method

.method public skipSubtree()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->skipSubtree:Z

    .line 129
    return-void
.end method
