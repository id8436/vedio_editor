.class public interface abstract Lcom/google/gdata/model/ElementMetadata$MultipleVirtualElement;
.super Ljava/lang/Object;
.source "ElementMetadata.java"


# virtual methods
.method public abstract generateMultiple(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Lcom/google/gdata/model/ElementMetadata;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)",
            "Ljava/util/Collection",
            "<+",
            "Lcom/google/gdata/model/Element;",
            ">;"
        }
    .end annotation
.end method

.method public abstract parse(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Ljava/util/Collection;Lcom/google/gdata/model/ElementMetadata;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/model/Element;",
            ">;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation
.end method
