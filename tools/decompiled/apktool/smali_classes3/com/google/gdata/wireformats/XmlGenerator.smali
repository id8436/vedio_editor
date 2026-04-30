.class public Lcom/google/gdata/wireformats/XmlGenerator;
.super Ljava/lang/Object;
.source "XmlGenerator.java"

# interfaces
.implements Lcom/google/gdata/model/ElementVisitor;
.implements Lcom/google/gdata/wireformats/WireFormatGenerator;


# static fields
.field private static final DEFAULT_GENERATOR:Lcom/google/gdata/wireformats/XmlGenerator$ElementGenerator;

.field private static final USE_ROOT_ELEMENT_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;


# instance fields
.field private final defaultNamespace:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field protected final rootMetadata:Lcom/google/gdata/model/ElementMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;"
        }
    .end annotation
.end field

.field protected final xw:Lcom/google/gdata/util/common/xml/XmlWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v1, "__USE_ROOT_ELEMENT_NAMESPACE__"

    invoke-direct {v0, v1}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/wireformats/XmlGenerator;->USE_ROOT_ELEMENT_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 230
    new-instance v0, Lcom/google/gdata/wireformats/XmlGenerator$XmlElementGenerator;

    invoke-direct {v0}, Lcom/google/gdata/wireformats/XmlGenerator$XmlElementGenerator;-><init>()V

    sput-object v0, Lcom/google/gdata/wireformats/XmlGenerator;->DEFAULT_GENERATOR:Lcom/google/gdata/wireformats/XmlGenerator$ElementGenerator;

    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/wireformats/StreamProperties;Ljava/io/Writer;Ljava/nio/charset/Charset;Z)V
    .locals 6

    .prologue
    .line 80
    sget-object v5, Lcom/google/gdata/wireformats/XmlGenerator;->USE_ROOT_ELEMENT_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/gdata/wireformats/XmlGenerator;-><init>(Lcom/google/gdata/wireformats/StreamProperties;Ljava/io/Writer;Ljava/nio/charset/Charset;ZLcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/wireformats/StreamProperties;Ljava/io/Writer;Ljava/nio/charset/Charset;ZLcom/google/gdata/util/common/xml/XmlNamespace;)V
    .locals 3

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    sget-object v0, Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;->WRITE_HEADER:Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 90
    if-eqz p4, :cond_0

    .line 91
    sget-object v1, Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;->PRETTY_PRINT:Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_0
    :try_start_0
    new-instance v1, Lcom/google/gdata/util/common/xml/XmlWriter;

    invoke-virtual {p3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v0, v2}, Lcom/google/gdata/util/common/xml/XmlWriter;-><init>(Ljava/io/Writer;Ljava/util/Set;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/gdata/wireformats/XmlGenerator;->xw:Lcom/google/gdata/util/common/xml/XmlWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    invoke-interface {p1}, Lcom/google/gdata/wireformats/StreamProperties;->getRootMetadata()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/wireformats/XmlGenerator;->rootMetadata:Lcom/google/gdata/model/ElementMetadata;

    .line 101
    iput-object p5, p0, Lcom/google/gdata/wireformats/XmlGenerator;->defaultNamespace:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 102
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Unable to create XML generator"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getElementGenerator(Lcom/google/gdata/model/ElementMetadata;)Lcom/google/gdata/wireformats/XmlGenerator$ElementGenerator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)",
            "Lcom/google/gdata/wireformats/XmlGenerator$ElementGenerator;"
        }
    .end annotation

    .prologue
    .line 268
    if-eqz p1, :cond_0

    .line 269
    invoke-interface {p1}, Lcom/google/gdata/model/ElementMetadata;->getProperties()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/wireformats/XmlWireFormatProperties;

    .line 271
    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {v0}, Lcom/google/gdata/wireformats/XmlWireFormatProperties;->getElementGenerator()Lcom/google/gdata/wireformats/XmlGenerator$ElementGenerator;

    move-result-object v0

    .line 273
    if-eqz v0, :cond_0

    .line 278
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/gdata/wireformats/XmlGenerator;->DEFAULT_GENERATOR:Lcom/google/gdata/wireformats/XmlGenerator$ElementGenerator;

    goto :goto_0
.end method

.method private setRootNamespace(Lcom/google/gdata/model/ElementMetadata;Lcom/google/gdata/model/Element;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;",
            "Lcom/google/gdata/model/Element;",
            ")V"
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlGenerator;->defaultNamespace:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 306
    sget-object v1, Lcom/google/gdata/wireformats/XmlGenerator;->USE_ROOT_ELEMENT_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    if-ne v0, v1, :cond_0

    .line 307
    if-eqz p1, :cond_2

    .line 308
    invoke-interface {p1}, Lcom/google/gdata/model/ElementMetadata;->getDefaultNamespace()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v0

    .line 313
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 314
    iget-object v1, p0, Lcom/google/gdata/wireformats/XmlGenerator;->xw:Lcom/google/gdata/util/common/xml/XmlWriter;

    invoke-virtual {v1, v0}, Lcom/google/gdata/util/common/xml/XmlWriter;->setDefaultNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 316
    :cond_1
    return-void

    .line 310
    :cond_2
    invoke-virtual {p2}, Lcom/google/gdata/model/Element;->getElementId()Lcom/google/gdata/model/QName;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gdata/model/QName;->getNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public generate(Lcom/google/gdata/model/Element;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlGenerator;->rootMetadata:Lcom/google/gdata/model/ElementMetadata;

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/wireformats/XmlGenerator;->generate(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)V

    .line 236
    return-void
.end method

.method public generate(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .prologue
    .line 241
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/google/gdata/model/ElementMetadata;->getKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/gdata/model/Element;->getElementKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gdata/model/ElementKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Element key ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/gdata/model/Element;->getElementKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") does not match metadata key ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/google/gdata/model/ElementMetadata;->getKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_0
    :try_start_0
    invoke-virtual {p1, p0, p2}, Lcom/google/gdata/model/Element;->visit(Lcom/google/gdata/model/ElementVisitor;Lcom/google/gdata/model/ElementMetadata;)V
    :try_end_0
    .catch Lcom/google/gdata/model/ElementVisitor$StoppedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    return-void

    .line 249
    :catch_0
    move-exception v1

    .line 250
    invoke-virtual {v1}, Lcom/google/gdata/model/ElementVisitor$StoppedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 251
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_1

    .line 252
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 254
    :cond_1
    throw v1
.end method

.method public visit(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/model/ElementVisitor$StoppedException;
        }
    .end annotation

    .prologue
    .line 284
    if-nez p1, :cond_0

    .line 285
    :try_start_0
    invoke-direct {p0, p3, p2}, Lcom/google/gdata/wireformats/XmlGenerator;->setRootNamespace(Lcom/google/gdata/model/ElementMetadata;Lcom/google/gdata/model/Element;)V

    .line 287
    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3, p2}, Lcom/google/gdata/model/ElementMetadata;->isSelected(Lcom/google/gdata/model/Element;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    :cond_1
    invoke-direct {p0, p3}, Lcom/google/gdata/wireformats/XmlGenerator;->getElementGenerator(Lcom/google/gdata/model/ElementMetadata;)Lcom/google/gdata/wireformats/XmlGenerator$ElementGenerator;

    move-result-object v0

    .line 289
    iget-object v1, p0, Lcom/google/gdata/wireformats/XmlGenerator;->xw:Lcom/google/gdata/util/common/xml/XmlWriter;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/google/gdata/wireformats/XmlGenerator$ElementGenerator;->startElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 294
    :goto_0
    return v0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    new-instance v1, Lcom/google/gdata/model/ElementVisitor$StoppedException;

    invoke-direct {v1, v0}, Lcom/google/gdata/model/ElementVisitor$StoppedException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 294
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public visitComplete(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/model/ElementVisitor$StoppedException;
        }
    .end annotation

    .prologue
    .line 321
    if-eqz p3, :cond_0

    :try_start_0
    invoke-interface {p3, p2}, Lcom/google/gdata/model/ElementMetadata;->isSelected(Lcom/google/gdata/model/Element;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/gdata/wireformats/XmlGenerator;->getElementGenerator(Lcom/google/gdata/model/ElementMetadata;)Lcom/google/gdata/wireformats/XmlGenerator$ElementGenerator;

    move-result-object v0

    .line 323
    iget-object v1, p0, Lcom/google/gdata/wireformats/XmlGenerator;->xw:Lcom/google/gdata/util/common/xml/XmlWriter;

    invoke-interface {v0, v1, p2, p3}, Lcom/google/gdata/wireformats/XmlGenerator$ElementGenerator;->textContent(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)V

    .line 324
    iget-object v1, p0, Lcom/google/gdata/wireformats/XmlGenerator;->xw:Lcom/google/gdata/util/common/xml/XmlWriter;

    invoke-interface {v0, v1, p2, p3}, Lcom/google/gdata/wireformats/XmlGenerator$ElementGenerator;->endElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :cond_1
    return-void

    .line 326
    :catch_0
    move-exception v0

    .line 327
    new-instance v1, Lcom/google/gdata/model/ElementVisitor$StoppedException;

    invoke-direct {v1, v0}, Lcom/google/gdata/model/ElementVisitor$StoppedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
