.class public interface abstract Lcom/google/gdata/wireformats/XmlGenerator$ElementGenerator;
.super Ljava/lang/Object;
.source "XmlGenerator.java"


# virtual methods
.method public abstract endElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/util/common/xml/XmlWriter;",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract startElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/util/common/xml/XmlWriter;",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract textContent(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/util/common/xml/XmlWriter;",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
