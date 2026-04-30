.class public Lcom/google/gdata/wireformats/XmlParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XmlParser.java"

# interfaces
.implements Lcom/google/gdata/wireformats/WireFormatParser;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

.field elementNamespaces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            ">;"
        }
    .end annotation
.end field

.field private final eventSource:Lcom/google/gdata/data/XmlEventSource;

.field locator:Lorg/xml/sax/Locator;

.field protected namespaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Stack",
            "<",
            "Lcom/google/gdata/wireformats/XmlParser$NamespaceDecl;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final props:Lcom/google/gdata/wireformats/StreamProperties;

.field protected rootElementName:Ljava/lang/String;

.field protected rootHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

.field protected rootNamespace:Ljava/lang/String;

.field unrecognizedElements:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const-class v0, Lcom/google/gdata/wireformats/XmlParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/gdata/wireformats/XmlParser;->$assertionsDisabled:Z

    .line 85
    const-class v0, Lcom/google/gdata/wireformats/XmlParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/wireformats/XmlParser;->logger:Ljava/util/logging/Logger;

    return-void

    .line 82
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/gdata/wireformats/StreamProperties;Lcom/google/gdata/data/XmlEventSource;)V
    .locals 1

    .prologue
    .line 464
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 408
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gdata/wireformats/XmlParser;->unrecognizedElements:I

    .line 436
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->namespaceMap:Ljava/util/Map;

    .line 442
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->elementNamespaces:Ljava/util/ArrayList;

    .line 465
    const-string/jumbo v0, "stream properties"

    invoke-static {p1, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    const-string/jumbo v0, "eventSource"

    invoke-static {p2, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    iput-object p1, p0, Lcom/google/gdata/wireformats/XmlParser;->props:Lcom/google/gdata/wireformats/StreamProperties;

    .line 468
    iput-object p2, p0, Lcom/google/gdata/wireformats/XmlParser;->eventSource:Lcom/google/gdata/data/XmlEventSource;

    .line 469
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/wireformats/StreamProperties;Ljava/io/Reader;Ljava/nio/charset/Charset;)V
    .locals 1

    .prologue
    .line 452
    new-instance v0, Lcom/google/gdata/wireformats/SaxEventSource;

    invoke-direct {v0, p2}, Lcom/google/gdata/wireformats/SaxEventSource;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, p1, v0}, Lcom/google/gdata/wireformats/XmlParser;-><init>(Lcom/google/gdata/wireformats/StreamProperties;Lcom/google/gdata/data/XmlEventSource;)V

    .line 455
    const-string/jumbo v0, "cs"

    invoke-static {p3, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/google/gdata/wireformats/XmlParser;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private static createQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/model/QName;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 925
    .line 926
    invoke-static {p1}, Lcom/google/gdata/util/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 927
    const-string/jumbo v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 928
    array-length v0, v2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 929
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-direct {v0, v1, p1}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    :goto_0
    new-instance v1, Lcom/google/gdata/model/QName;

    invoke-direct {v1, v0, p2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    return-object v1

    .line 931
    :cond_0
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-direct {v0, v1, p1}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private ensureBlobNamespace(Lcom/google/gdata/wireformats/XmlParser$ElementHandler;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 896
    const/4 v1, 0x0

    .line 897
    const-string/jumbo v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 898
    const-string/jumbo v0, "xml"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 920
    :cond_0
    :goto_0
    return-void

    .line 903
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->namespaceMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    .line 904
    if-eqz v0, :cond_3

    .line 905
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/wireformats/XmlParser$NamespaceDecl;

    .line 910
    :goto_1
    sget-boolean v1, Lcom/google/gdata/wireformats/XmlParser;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Namespace alias \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' should be mapped in \'namespaceMap\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 914
    :cond_2
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/google/gdata/wireformats/XmlParser$NamespaceDecl;->inBlob:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/google/gdata/wireformats/XmlParser$NamespaceDecl;->ns:Lcom/google/gdata/util/common/xml/XmlNamespace;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->blobNamespaces:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 916
    iget-object v1, p1, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->blobNamespaces:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 917
    iget-object v1, p1, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->xmlBlob:Lcom/google/gdata/util/XmlBlob;

    invoke-virtual {v1}, Lcom/google/gdata/util/XmlBlob;->getNamespaces()Ljava/util/List;

    move-result-object v1

    new-instance v3, Lcom/google/gdata/util/common/xml/XmlNamespace;

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser$NamespaceDecl;->ns:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v0}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v2, v0}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method static getCumulativeXmlBase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 560
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 562
    if-eqz p0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 565
    :cond_0
    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_3

    .line 566
    new-instance v0, Ljava/net/URISyntaxException;

    const-string/jumbo v1, "No xml:base established--need an absolute URI."

    invoke-direct {v0, p1, v1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 573
    :cond_1
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 574
    invoke-virtual {v1, v0}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    .line 575
    sget-boolean v1, Lcom/google/gdata/wireformats/XmlParser;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 576
    :cond_2
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 815
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    if-eqz v0, :cond_4

    .line 817
    iget v0, p0, Lcom/google/gdata/wireformats/XmlParser;->unrecognizedElements:I

    if-nez v0, :cond_1

    .line 819
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    invoke-static {v0}, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->access$100(Lcom/google/gdata/wireformats/XmlParser$ElementHandler;)Ljava/lang/StringBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v0, v1}, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->access$102(Lcom/google/gdata/wireformats/XmlParser$ElementHandler;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 823
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    invoke-static {v0}, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->access$100(Lcom/google/gdata/wireformats/XmlParser$ElementHandler;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 826
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->innerXml:Lcom/google/gdata/util/common/xml/XmlWriter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-boolean v0, v0, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->mixedContent:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/gdata/wireformats/XmlParser;->unrecognizedElements:I

    if-lez v0, :cond_4

    .line 829
    :cond_2
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-boolean v0, v0, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->fullTextIndex:Z

    if-eqz v0, :cond_3

    .line 830
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->fullTextIndexWriter:Ljava/io/StringWriter;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/StringWriter;->write([CII)V

    .line 831
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->fullTextIndexWriter:Ljava/io/StringWriter;

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 835
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->innerXml:Lcom/google/gdata/util/common/xml/XmlWriter;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->characters(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    :cond_4
    return-void

    .line 836
    :catch_0
    move-exception v0

    .line 837
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method protected createRootHandler(Lcom/google/gdata/model/ValidationContext;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Lcom/google/gdata/wireformats/XmlHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ValidationContext;",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)",
            "Lcom/google/gdata/wireformats/XmlHandler;"
        }
    .end annotation

    .prologue
    .line 508
    new-instance v0, Lcom/google/gdata/wireformats/XmlHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/google/gdata/wireformats/XmlHandler;-><init>(Lcom/google/gdata/model/ValidationContext;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)V

    return-object v0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 765
    sget-object v0, Lcom/google/gdata/wireformats/XmlParser;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "End element "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 767
    iget v0, p0, Lcom/google/gdata/wireformats/XmlParser;->unrecognizedElements:I

    if-lez v0, :cond_1

    .line 769
    iget v0, p0, Lcom/google/gdata/wireformats/XmlParser;->unrecognizedElements:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gdata/wireformats/XmlParser;->unrecognizedElements:I

    .line 771
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->innerXml:Lcom/google/gdata/util/common/xml/XmlWriter;

    if-eqz v0, :cond_0

    .line 773
    :try_start_0
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->innerXml:Lcom/google/gdata/util/common/xml/XmlWriter;

    invoke-virtual {v0}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 808
    :cond_0
    :goto_0
    return-void

    .line 774
    :catch_0
    move-exception v0

    .line 775
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 779
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->xmlBlob:Lcom/google/gdata/util/XmlBlob;

    if-eqz v0, :cond_2

    .line 783
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->innerXmlStringWriter:Ljava/io/StringWriter;

    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    .line 784
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 785
    iget-object v1, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v1, v1, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->xmlBlob:Lcom/google/gdata/util/XmlBlob;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/gdata/util/XmlBlob;->setBlob(Ljava/lang/String;)V

    .line 787
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-boolean v0, v0, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->fullTextIndex:Z

    if-eqz v0, :cond_2

    .line 788
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->xmlBlob:Lcom/google/gdata/util/XmlBlob;

    iget-object v1, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v1, v1, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->fullTextIndexWriter:Ljava/io/StringWriter;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/XmlBlob;->setFullText(Ljava/lang/String;)V

    .line 795
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    invoke-static {v0}, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->access$100(Lcom/google/gdata/wireformats/XmlParser$ElementHandler;)Ljava/lang/StringBuffer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 796
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v1, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    invoke-static {v1}, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->access$100(Lcom/google/gdata/wireformats/XmlParser$ElementHandler;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->value:Ljava/lang/String;

    .line 799
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->access$102(Lcom/google/gdata/wireformats/XmlParser$ElementHandler;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 801
    :cond_3
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    invoke-virtual {v0}, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->processEndElement()V
    :try_end_1
    .catch Lcom/google/gdata/util/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 806
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->parent:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iput-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    goto :goto_0

    .line 802
    :catch_1
    move-exception v0

    .line 803
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 888
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->namespaceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 889
    return-void
.end method

.method public ignorableWhitespace([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 849
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->innerXml:Lcom/google/gdata/util/common/xml/XmlWriter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-boolean v0, v0, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->mixedContent:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/gdata/wireformats/XmlParser;->unrecognizedElements:I

    if-lez v0, :cond_1

    .line 853
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->innerXml:Lcom/google/gdata/util/common/xml/XmlWriter;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->writeUnescaped(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 858
    :cond_1
    return-void

    .line 854
    :catch_0
    move-exception v0

    .line 855
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public parse(Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ParseException;,
            Lcom/google/gdata/wireformats/ContentValidationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 474
    new-instance v0, Lcom/google/gdata/model/ValidationContext;

    invoke-direct {v0}, Lcom/google/gdata/model/ValidationContext;-><init>()V

    .line 475
    iget-object v1, p0, Lcom/google/gdata/wireformats/XmlParser;->props:Lcom/google/gdata/wireformats/StreamProperties;

    invoke-interface {v1}, Lcom/google/gdata/wireformats/StreamProperties;->getRootMetadata()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v3

    .line 477
    invoke-virtual {p0, v0, p1, v3}, Lcom/google/gdata/wireformats/XmlParser;->createRootHandler(Lcom/google/gdata/model/ValidationContext;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Lcom/google/gdata/wireformats/XmlHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->rootHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    .line 478
    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/google/gdata/model/Element;->getElementId()Lcom/google/gdata/model/QName;

    move-result-object v0

    .line 480
    :goto_0
    invoke-virtual {v0}, Lcom/google/gdata/model/QName;->getNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v1

    .line 481
    if-nez v1, :cond_1

    move-object v1, v2

    :goto_1
    iput-object v1, p0, Lcom/google/gdata/wireformats/XmlParser;->rootNamespace:Ljava/lang/String;

    .line 482
    invoke-virtual {v0}, Lcom/google/gdata/model/QName;->getLocalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->rootElementName:Ljava/lang/String;

    .line 485
    :try_start_0
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->eventSource:Lcom/google/gdata/data/XmlEventSource;

    invoke-interface {v0, p0}, Lcom/google/gdata/data/XmlEventSource;->parse(Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    :goto_2
    invoke-virtual {p1, v3}, Lcom/google/gdata/model/Element;->resolve(Lcom/google/gdata/model/ElementMetadata;)Lcom/google/gdata/model/Element;

    move-result-object v0

    return-object v0

    .line 478
    :cond_0
    invoke-interface {v3}, Lcom/google/gdata/model/ElementMetadata;->getName()Lcom/google/gdata/model/QName;

    move-result-object v0

    goto :goto_0

    .line 481
    :cond_1
    invoke-virtual {v1}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getUri()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 486
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 487
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v0

    .line 488
    instance-of v4, v0, Lcom/google/gdata/util/ParseException;

    if-eqz v4, :cond_2

    .line 489
    check-cast v0, Lcom/google/gdata/util/ParseException;

    invoke-virtual {p0, v0}, Lcom/google/gdata/wireformats/XmlParser;->throwParseException(Lcom/google/gdata/util/ParseException;)V

    goto :goto_2

    .line 490
    :cond_2
    instance-of v3, v0, Ljava/io/IOException;

    if-eqz v3, :cond_3

    .line 491
    sget-object v3, Lcom/google/gdata/wireformats/XmlParser;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v3, v4, v2, v1}, Lcom/google/gdata/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 492
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 494
    :cond_3
    sget-object v0, Lcom/google/gdata/wireformats/XmlParser;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {v0, v3, v2, v1}, Lcom/google/gdata/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 495
    new-instance v0, Lcom/google/gdata/util/ParseException;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    .prologue
    .line 864
    iput-object p1, p0, Lcom/google/gdata/wireformats/XmlParser;->locator:Lorg/xml/sax/Locator;

    .line 865
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 587
    sget-object v0, Lcom/google/gdata/wireformats/XmlParser;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Start element "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 589
    iget-object v2, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    .line 591
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    if-nez v0, :cond_4

    .line 593
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->rootNamespace:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->rootElementName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 596
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->rootHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iput-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    .line 620
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/google/gdata/wireformats/XmlParser;->unrecognizedElements:I

    if-nez v0, :cond_a

    .line 622
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iput-object v2, v0, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->parent:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    .line 623
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iput-object p3, v0, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->qName:Ljava/lang/String;

    .line 626
    if-eqz v2, :cond_1

    .line 627
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v3, v2, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->xmlLang:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->xmlLang:Ljava/lang/String;

    .line 628
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v2, v2, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->xmlBase:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->xmlBase:Ljava/lang/String;

    :cond_1
    move v0, v1

    .line 634
    :goto_1
    :try_start_0
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 636
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v2

    .line 637
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    .line 638
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    .line 640
    const-string/jumbo v5, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 642
    const-string/jumbo v2, "lang"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 644
    iget-object v2, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iput-object v4, v2, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->xmlLang:Ljava/lang/String;

    .line 645
    sget-object v2, Lcom/google/gdata/wireformats/XmlParser;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "xml:lang="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/gdata/util/ParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    .line 634
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 597
    :cond_3
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->rootElementName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 598
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Lcom/google/gdata/util/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid root element, expected (namespace uri:local name) of ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/gdata/wireformats/XmlParser;->rootNamespace:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/gdata/wireformats/XmlParser;->rootElementName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", found ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 605
    :cond_4
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/gdata/wireformats/XmlParser;->unrecognizedElements:I

    if-nez v0, :cond_0

    .line 611
    :try_start_1
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    invoke-static {p3, p1, p2}, Lcom/google/gdata/wireformats/XmlParser;->createQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/model/QName;

    move-result-object v3

    iget-object v4, p0, Lcom/google/gdata/wireformats/XmlParser;->elementNamespaces:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, p4, v4}, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->getChildHandler(Lcom/google/gdata/model/QName;Lorg/xml/sax/Attributes;Ljava/util/List;)Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;
    :try_end_1
    .catch Lcom/google/gdata/util/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 613
    :catch_0
    move-exception v0

    .line 614
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 615
    :catch_1
    move-exception v0

    .line 616
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 647
    :cond_5
    :try_start_2
    const-string/jumbo v2, "base"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 649
    iget-object v2, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v3, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v3, v3, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->xmlBase:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/wireformats/XmlParser;->getCumulativeXmlBase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->xmlBase:Ljava/lang/String;

    .line 651
    sget-object v2, Lcom/google/gdata/wireformats/XmlParser;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "xml:base="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v4, v4, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->xmlBase:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/google/gdata/util/ParseException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_2

    .line 671
    :catch_2
    move-exception v0

    .line 672
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_6
    move v0, v1

    .line 657
    :goto_3
    :try_start_3
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 659
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v2

    .line 660
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    .line 661
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    .line 662
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    .line 664
    sget-object v6, Lcom/google/gdata/wireformats/XmlParser;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Attribute "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 666
    iget-object v6, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    invoke-static {v3, v2, v4}, Lcom/google/gdata/wireformats/XmlParser;->createQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/model/QName;

    move-result-object v2

    invoke-virtual {v6, v2, v5}, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->processAttribute(Lcom/google/gdata/model/QName;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/google/gdata/util/ParseException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4

    .line 657
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 673
    :catch_3
    move-exception v0

    .line 674
    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Lcom/google/gdata/util/ParseException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 675
    :catch_4
    move-exception v0

    .line 676
    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Lcom/google/gdata/util/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid integer format. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 682
    :cond_7
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iput-boolean v1, v0, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->okToInitializeXmlBlob:Z

    .line 684
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->xmlBlob:Lcom/google/gdata/util/XmlBlob;

    if-eqz v0, :cond_9

    .line 687
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->xmlLang:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 688
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->xmlBlob:Lcom/google/gdata/util/XmlBlob;

    iget-object v1, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v1, v1, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->xmlLang:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/XmlBlob;->setLang(Ljava/lang/String;)V

    .line 691
    :cond_8
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->xmlBase:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 692
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->xmlBlob:Lcom/google/gdata/util/XmlBlob;

    iget-object v1, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v1, v1, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->xmlBase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/XmlBlob;->setBase(Ljava/lang/String;)V

    .line 756
    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->elementNamespaces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 757
    return-void

    .line 707
    :cond_a
    iget v0, p0, Lcom/google/gdata/wireformats/XmlParser;->unrecognizedElements:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gdata/wireformats/XmlParser;->unrecognizedElements:I

    .line 711
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->elementNamespaces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 712
    iget-object v3, p0, Lcom/google/gdata/wireformats/XmlParser;->namespaceMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    .line 713
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v3

    if-lez v3, :cond_b

    .line 714
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/wireformats/XmlParser$NamespaceDecl;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/google/gdata/wireformats/XmlParser$NamespaceDecl;->inBlob:Z

    goto :goto_5

    .line 718
    :cond_c
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    if-nez v0, :cond_d

    .line 719
    iput-object v2, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    .line 725
    :cond_d
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->innerXml:Lcom/google/gdata/util/common/xml/XmlWriter;

    if-eqz v0, :cond_9

    .line 727
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 729
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_f

    .line 731
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v2

    .line 732
    iget-object v3, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    invoke-direct {p0, v3, v2}, Lcom/google/gdata/wireformats/XmlParser;->ensureBlobNamespace(Lcom/google/gdata/wireformats/XmlParser$ElementHandler;Ljava/lang/String;)V

    .line 734
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 736
    new-instance v4, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    invoke-direct {v4, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    iget-object v2, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-boolean v2, v2, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->fullTextIndex:Z

    if-eqz v2, :cond_e

    .line 740
    iget-object v2, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v2, v2, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->fullTextIndexWriter:Ljava/io/StringWriter;

    invoke-virtual {v2, v3}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 741
    iget-object v2, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v2, v2, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->fullTextIndexWriter:Ljava/io/StringWriter;

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 729
    :cond_e
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 746
    :cond_f
    :try_start_4
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    invoke-direct {p0, v0, p3}, Lcom/google/gdata/wireformats/XmlParser;->ensureBlobNamespace(Lcom/google/gdata/wireformats/XmlParser$ElementHandler;Ljava/lang/String;)V

    .line 747
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->innerXml:Lcom/google/gdata/util/common/xml/XmlWriter;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/gdata/wireformats/XmlParser;->elementNamespaces:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p3, v1, v3}, Lcom/google/gdata/util/common/xml/XmlWriter;->startElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_4

    .line 749
    :catch_5
    move-exception v0

    .line 750
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 872
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->namespaceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    .line 873
    if-nez v0, :cond_0

    .line 874
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 875
    iget-object v1, p0, Lcom/google/gdata/wireformats/XmlParser;->namespaceMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    :cond_0
    new-instance v1, Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-direct {v1, p1, p2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    new-instance v2, Lcom/google/gdata/wireformats/XmlParser$NamespaceDecl;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/google/gdata/wireformats/XmlParser$NamespaceDecl;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Lcom/google/gdata/wireformats/XmlParser$1;)V

    .line 880
    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->elementNamespaces:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 882
    return-void
.end method

.method protected throwParseException(Lcom/google/gdata/util/ParseException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 514
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->locator:Lorg/xml/sax/Locator;

    if-eqz v0, :cond_1

    .line 516
    const-string/jumbo v0, ""

    .line 517
    iget-object v1, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    if-eqz v1, :cond_0

    .line 518
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", element "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v1, v1, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->qName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 521
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[Line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gdata/wireformats/XmlParser;->locator:Lorg/xml/sax/Locator;

    invoke-interface {v2}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gdata/wireformats/XmlParser;->locator:Lorg/xml/sax/Locator;

    invoke-interface {v2}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 526
    sget-object v1, Lcom/google/gdata/wireformats/XmlParser;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0, p1}, Lcom/google/gdata/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 528
    new-instance v1, Lcom/google/gdata/util/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/gdata/util/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 532
    :cond_1
    sget-object v0, Lcom/google/gdata/wireformats/XmlParser;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/google/gdata/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 533
    throw p1
.end method
