.class Lcom/google/gdata/model/ElementIterator;
.super Ljava/lang/Object;
.source "ElementIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/google/gdata/model/Element;",
        ">;"
    }
.end annotation


# instance fields
.field private final element:Lcom/google/gdata/model/Element;

.field private elementIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final elements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/model/QName;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final metadata:Lcom/google/gdata/model/ElementMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;"
        }
    .end annotation
.end field

.field private metadataIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;>;"
        }
    .end annotation
.end field

.field private mode:Lcom/google/gdata/model/ElementIterator$Mode;

.field private nextElement:Lcom/google/gdata/model/Element;

.field private sublistIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+",
            "Lcom/google/gdata/model/Element;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/model/QName;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Lcom/google/gdata/model/ElementIterator$Mode;->DECLARED:Lcom/google/gdata/model/ElementIterator$Mode;

    iput-object v0, p0, Lcom/google/gdata/model/ElementIterator;->mode:Lcom/google/gdata/model/ElementIterator$Mode;

    .line 51
    iput-object p1, p0, Lcom/google/gdata/model/ElementIterator;->element:Lcom/google/gdata/model/Element;

    .line 52
    iput-object p2, p0, Lcom/google/gdata/model/ElementIterator;->metadata:Lcom/google/gdata/model/ElementMetadata;

    .line 53
    iput-object p3, p0, Lcom/google/gdata/model/ElementIterator;->elements:Ljava/util/Map;

    .line 54
    if-nez p2, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/gdata/model/ElementIterator;->metadataIterator:Ljava/util/Iterator;

    .line 56
    if-nez p3, :cond_1

    :goto_1
    iput-object v1, p0, Lcom/google/gdata/model/ElementIterator;->elementIterator:Ljava/util/Iterator;

    .line 59
    invoke-direct {p0}, Lcom/google/gdata/model/ElementIterator;->findNextElement()Lcom/google/gdata/model/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/ElementIterator;->nextElement:Lcom/google/gdata/model/Element;

    .line 60
    return-void

    .line 54
    :cond_0
    invoke-interface {p2}, Lcom/google/gdata/model/ElementMetadata;->getElements()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    .line 56
    :cond_1
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    goto :goto_1
.end method

.method private castElementCollection(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/gdata/model/Element;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 233
    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method private findNextDeclaredElement()Lcom/google/gdata/model/Element;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 120
    iget-object v0, p0, Lcom/google/gdata/model/ElementIterator;->metadataIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_5

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/model/ElementIterator;->metadataIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 122
    iget-object v0, p0, Lcom/google/gdata/model/ElementIterator;->metadataIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementKey;

    .line 123
    sget-object v2, Lcom/google/gdata/model/ElementCreatorImpl;->ELEMENT_MARKER:Lcom/google/gdata/model/ElementKey;

    if-ne v2, v0, :cond_1

    .line 124
    sget-object v0, Lcom/google/gdata/model/ElementIterator$Mode;->UNDECLARED:Lcom/google/gdata/model/ElementIterator$Mode;

    iput-object v0, p0, Lcom/google/gdata/model/ElementIterator;->mode:Lcom/google/gdata/model/ElementIterator$Mode;

    move-object v0, v1

    .line 167
    :goto_0
    return-object v0

    .line 128
    :cond_1
    iget-object v2, p0, Lcom/google/gdata/model/ElementIterator;->metadata:Lcom/google/gdata/model/ElementMetadata;

    invoke-interface {v2, v0}, Lcom/google/gdata/model/ElementMetadata;->bindElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementMetadata;

    move-result-object v3

    .line 129
    invoke-interface {v3}, Lcom/google/gdata/model/ElementMetadata;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    invoke-interface {v3}, Lcom/google/gdata/model/ElementMetadata;->getSingleVirtualElement()Lcom/google/gdata/model/ElementMetadata$SingleVirtualElement;

    move-result-object v2

    .line 135
    if-eqz v2, :cond_2

    .line 136
    iget-object v4, p0, Lcom/google/gdata/model/ElementIterator;->element:Lcom/google/gdata/model/Element;

    iget-object v5, p0, Lcom/google/gdata/model/ElementIterator;->metadata:Lcom/google/gdata/model/ElementMetadata;

    invoke-interface {v2, v4, v5, v3}, Lcom/google/gdata/model/ElementMetadata$SingleVirtualElement;->generateSingle(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Lcom/google/gdata/model/ElementMetadata;)Lcom/google/gdata/model/Element;

    move-result-object v2

    .line 138
    if-eqz v2, :cond_2

    move-object v0, v2

    .line 139
    goto :goto_0

    .line 143
    :cond_2
    invoke-interface {v3}, Lcom/google/gdata/model/ElementMetadata;->getMultipleVirtualElement()Lcom/google/gdata/model/ElementMetadata$MultipleVirtualElement;

    move-result-object v2

    .line 145
    if-eqz v2, :cond_3

    .line 146
    iget-object v4, p0, Lcom/google/gdata/model/ElementIterator;->element:Lcom/google/gdata/model/Element;

    iget-object v5, p0, Lcom/google/gdata/model/ElementIterator;->metadata:Lcom/google/gdata/model/ElementMetadata;

    invoke-interface {v2, v4, v5, v3}, Lcom/google/gdata/model/ElementMetadata$MultipleVirtualElement;->generateMultiple(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Lcom/google/gdata/model/ElementMetadata;)Ljava/util/Collection;

    move-result-object v2

    .line 148
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 149
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/ElementIterator;->sublistIterator:Ljava/util/Iterator;

    .line 150
    iget-object v0, p0, Lcom/google/gdata/model/ElementIterator;->sublistIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/Element;

    goto :goto_0

    .line 154
    :cond_3
    invoke-virtual {v0}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/gdata/model/ElementIterator;->getElementObject(Lcom/google/gdata/model/QName;)Ljava/lang/Object;

    move-result-object v0

    .line 155
    invoke-direct {p0, v0}, Lcom/google/gdata/model/ElementIterator;->firstElement(Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_0

    goto :goto_0

    .line 162
    :cond_4
    iput-object v1, p0, Lcom/google/gdata/model/ElementIterator;->metadataIterator:Ljava/util/Iterator;

    .line 166
    :cond_5
    sget-object v0, Lcom/google/gdata/model/ElementIterator$Mode;->UNDECLARED:Lcom/google/gdata/model/ElementIterator$Mode;

    iput-object v0, p0, Lcom/google/gdata/model/ElementIterator;->mode:Lcom/google/gdata/model/ElementIterator$Mode;

    move-object v0, v1

    .line 167
    goto :goto_0
.end method

.method private findNextElement()Lcom/google/gdata/model/Element;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 90
    iget-object v1, p0, Lcom/google/gdata/model/ElementIterator;->sublistIterator:Ljava/util/Iterator;

    if-eqz v1, :cond_2

    .line 91
    iget-object v1, p0, Lcom/google/gdata/model/ElementIterator;->sublistIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    iget-object v0, p0, Lcom/google/gdata/model/ElementIterator;->sublistIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/Element;

    .line 112
    :cond_0
    return-object v0

    .line 95
    :cond_1
    iput-object v0, p0, Lcom/google/gdata/model/ElementIterator;->sublistIterator:Ljava/util/Iterator;

    .line 99
    :cond_2
    :goto_0
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/gdata/model/ElementIterator;->mode:Lcom/google/gdata/model/ElementIterator$Mode;

    sget-object v2, Lcom/google/gdata/model/ElementIterator$Mode;->DONE:Lcom/google/gdata/model/ElementIterator$Mode;

    if-eq v1, v2, :cond_0

    .line 100
    sget-object v1, Lcom/google/gdata/model/ElementIterator$1;->$SwitchMap$com$google$gdata$model$ElementIterator$Mode:[I

    iget-object v2, p0, Lcom/google/gdata/model/ElementIterator;->mode:Lcom/google/gdata/model/ElementIterator$Mode;

    invoke-virtual {v2}, Lcom/google/gdata/model/ElementIterator$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 102
    :pswitch_0
    invoke-direct {p0}, Lcom/google/gdata/model/ElementIterator;->findNextDeclaredElement()Lcom/google/gdata/model/Element;

    move-result-object v0

    goto :goto_0

    .line 105
    :pswitch_1
    invoke-direct {p0}, Lcom/google/gdata/model/ElementIterator;->findNextUndeclaredElement()Lcom/google/gdata/model/Element;

    move-result-object v0

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private findNextUndeclaredElement()Lcom/google/gdata/model/Element;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 175
    iget-object v0, p0, Lcom/google/gdata/model/ElementIterator;->elementIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_2

    .line 176
    :goto_0
    iget-object v0, p0, Lcom/google/gdata/model/ElementIterator;->elementIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/google/gdata/model/ElementIterator;->elementIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 178
    invoke-direct {p0, v0}, Lcom/google/gdata/model/ElementIterator;->firstElement(Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gdata/model/Element;->getElementKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/gdata/model/ElementIterator;->isUndeclared(Lcom/google/gdata/model/ElementKey;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    :goto_1
    return-object v0

    .line 184
    :cond_0
    iput-object v1, p0, Lcom/google/gdata/model/ElementIterator;->sublistIterator:Ljava/util/Iterator;

    goto :goto_0

    .line 189
    :cond_1
    iput-object v1, p0, Lcom/google/gdata/model/ElementIterator;->sublistIterator:Ljava/util/Iterator;

    .line 190
    iput-object v1, p0, Lcom/google/gdata/model/ElementIterator;->elementIterator:Ljava/util/Iterator;

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/google/gdata/model/ElementIterator;->metadataIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/gdata/model/ElementIterator;->metadataIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/gdata/model/ElementIterator$Mode;->DECLARED:Lcom/google/gdata/model/ElementIterator$Mode;

    :goto_2
    iput-object v0, p0, Lcom/google/gdata/model/ElementIterator;->mode:Lcom/google/gdata/model/ElementIterator$Mode;

    move-object v0, v1

    .line 196
    goto :goto_1

    .line 194
    :cond_3
    sget-object v0, Lcom/google/gdata/model/ElementIterator$Mode;->DONE:Lcom/google/gdata/model/ElementIterator$Mode;

    goto :goto_2
.end method

.method private firstElement(Ljava/lang/Object;)Lcom/google/gdata/model/Element;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 205
    if-nez p1, :cond_0

    move-object p1, v0

    .line 224
    :goto_0
    return-object p1

    .line 211
    :cond_0
    instance-of v1, p1, Lcom/google/gdata/model/Element;

    if-eqz v1, :cond_1

    .line 212
    check-cast p1, Lcom/google/gdata/model/Element;

    goto :goto_0

    .line 218
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/gdata/model/ElementIterator;->castElementCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    .line 219
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 220
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/ElementIterator;->sublistIterator:Ljava/util/Iterator;

    .line 221
    iget-object v0, p0, Lcom/google/gdata/model/ElementIterator;->sublistIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/Element;

    move-object p1, v0

    goto :goto_0

    :cond_2
    move-object p1, v0

    .line 224
    goto :goto_0
.end method

.method private getElementObject(Lcom/google/gdata/model/QName;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/gdata/model/ElementIterator;->elements:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/model/ElementIterator;->elements:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUndeclared(Lcom/google/gdata/model/ElementKey;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)Z"
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/gdata/model/ElementIterator;->metadata:Lcom/google/gdata/model/ElementMetadata;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/model/ElementIterator;->metadata:Lcom/google/gdata/model/ElementMetadata;

    invoke-interface {v0, p1}, Lcom/google/gdata/model/ElementMetadata;->isDeclared(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/gdata/model/ElementIterator;->nextElement:Lcom/google/gdata/model/Element;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lcom/google/gdata/model/Element;
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/gdata/model/ElementIterator;->nextElement:Lcom/google/gdata/model/Element;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string/jumbo v1, "No remaining elements"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/model/ElementIterator;->nextElement:Lcom/google/gdata/model/Element;

    .line 71
    invoke-direct {p0}, Lcom/google/gdata/model/ElementIterator;->findNextElement()Lcom/google/gdata/model/Element;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gdata/model/ElementIterator;->nextElement:Lcom/google/gdata/model/Element;

    .line 72
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/gdata/model/ElementIterator;->next()Lcom/google/gdata/model/Element;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Removal not supported on element iterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
