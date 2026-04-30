.class public Lcom/adobe/xmp/impl/XMPMetaParser;
.super Ljava/lang/Object;
.source "XMPMetaParser.java"


# static fields
.field private static final XMP_RDF:Ljava/lang/Object;

.field private static factory:Ljavax/xml/parsers/DocumentBuilderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/xmp/impl/XMPMetaParser;->XMP_RDF:Ljava/lang/Object;

    .line 50
    invoke-static {}, Lcom/adobe/xmp/impl/XMPMetaParser;->createDocumentBuilderFactory()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    sput-object v0, Lcom/adobe/xmp/impl/XMPMetaParser;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method private static createDocumentBuilderFactory()Ljavax/xml/parsers/DocumentBuilderFactory;
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 394
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 395
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 396
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringComments(Z)V

    .line 402
    :try_start_0
    const-string/jumbo v1, "http://javax.xml.XMLConstants/feature/secure-processing"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :goto_0
    return-object v0

    .line 404
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static findRootNode(Lorg/w3c/dom/Node;Z[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v7, 0x7

    const/4 v3, 0x0

    .line 325
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    move v2, v3

    .line 326
    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lt v2, v0, :cond_1

    .line 383
    const/4 p2, 0x0

    :cond_0
    :goto_1
    return-object p2

    .line 328
    :cond_1
    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 329
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v7, v0, :cond_3

    .line 330
    const-string/jumbo v5, "xpacket"

    move-object v0, v1

    check-cast v0, Lorg/w3c/dom/ProcessingInstruction;

    invoke-interface {v0}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 334
    if-eqz p2, :cond_2

    .line 336
    const/4 v0, 0x2

    check-cast v1, Lorg/w3c/dom/ProcessingInstruction;

    invoke-interface {v1}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    .line 326
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 339
    :cond_3
    const/4 v0, 0x3

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-eq v0, v5, :cond_2

    .line 340
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-eq v7, v0, :cond_2

    .line 342
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 343
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    .line 346
    const-string/jumbo v6, "xmpmeta"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 347
    const-string/jumbo v6, "xapmeta"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 349
    :cond_4
    const-string/jumbo v6, "adobe:ns:meta/"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 353
    invoke-static {v1, v3, p2}, Lcom/adobe/xmp/impl/XMPMetaParser;->findRootNode(Lorg/w3c/dom/Node;Z[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    .line 355
    :cond_5
    if-nez p1, :cond_6

    .line 356
    const-string/jumbo v6, "RDF"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 357
    const-string/jumbo v5, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 359
    if-eqz p2, :cond_0

    .line 361
    aput-object v1, p2, v3

    .line 362
    const/4 v0, 0x1

    sget-object v1, Lcom/adobe/xmp/impl/XMPMetaParser;->XMP_RDF:Ljava/lang/Object;

    aput-object v1, p2, v0

    goto :goto_1

    .line 369
    :cond_6
    invoke-static {v1, p1, p2}, Lcom/adobe/xmp/impl/XMPMetaParser;->findRootNode(Lorg/w3c/dom/Node;Z[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 370
    if-eqz v0, :cond_2

    move-object p2, v0

    .line 372
    goto/16 :goto_1
.end method

.method public static parse(Ljava/lang/Object;Lcom/adobe/xmp/options/ParseOptions;)Lcom/adobe/xmp/XMPMeta;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-static {p0}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    .line 75
    if-eqz p1, :cond_0

    .line 77
    :goto_0
    invoke-static {p0, p1}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseXml(Ljava/lang/Object;Lcom/adobe/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 79
    invoke-virtual {p1}, Lcom/adobe/xmp/options/ParseOptions;->getRequireXMPMeta()Z

    move-result v1

    .line 80
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 81
    invoke-static {v0, v1, v2}, Lcom/adobe/xmp/impl/XMPMetaParser;->findRootNode(Lorg/w3c/dom/Node;Z[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 83
    if-eqz v2, :cond_2

    const/4 v0, 0x1

    aget-object v0, v2, v0

    sget-object v1, Lcom/adobe/xmp/impl/XMPMetaParser;->XMP_RDF:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    .line 85
    const/4 v0, 0x0

    aget-object v0, v2, v0

    check-cast v0, Lorg/w3c/dom/Node;

    invoke-static {v0}, Lcom/adobe/xmp/impl/ParseRDF;->parse(Lorg/w3c/dom/Node;)Lcom/adobe/xmp/impl/XMPMetaImpl;

    move-result-object v1

    .line 86
    const/4 v0, 0x2

    aget-object v0, v2, v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setPacketHeader(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Lcom/adobe/xmp/options/ParseOptions;->getOmitNormalization()Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    invoke-static {v1, p1}, Lcom/adobe/xmp/impl/XMPNormalizer;->process(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/options/ParseOptions;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    .line 101
    :goto_1
    return-object v0

    .line 75
    :cond_0
    new-instance p1, Lcom/adobe/xmp/options/ParseOptions;

    invoke-direct {p1}, Lcom/adobe/xmp/options/ParseOptions;-><init>()V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 95
    goto :goto_1

    .line 101
    :cond_2
    new-instance v0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    goto :goto_1
.end method

.method private static parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 271
    :try_start_0
    sget-object v0, Lcom/adobe/xmp/impl/XMPMetaParser;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 272
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 273
    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    .line 275
    :catch_0
    move-exception v0

    .line 277
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v2, "XML parsing failure"

    const/16 v3, 0xc9

    invoke-direct {v1, v2, v3, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1

    .line 279
    :catch_1
    move-exception v0

    .line 281
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v2, "XML Parser not correctly configured"

    .line 282
    const/4 v3, 0x0

    .line 281
    invoke-direct {v1, v2, v3, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1

    .line 284
    :catch_2
    move-exception v0

    .line 286
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v2, "Error reading the XML-file"

    const/16 v3, 0xcc

    invoke-direct {v1, v2, v3, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1
.end method

.method private static parseXml(Ljava/lang/Object;Lcom/adobe/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 126
    instance-of v0, p0, Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 128
    check-cast p0, Ljava/io/InputStream;

    invoke-static {p0, p1}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseXmlFromInputStream(Ljava/io/InputStream;Lcom/adobe/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    .line 130
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    .line 132
    new-instance v0, Lcom/adobe/xmp/impl/ByteBuffer;

    check-cast p0, [B

    invoke-direct {v0, p0}, Lcom/adobe/xmp/impl/ByteBuffer;-><init>([B)V

    invoke-static {v0, p1}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseXmlFromBytebuffer(Lcom/adobe/xmp/impl/ByteBuffer;Lcom/adobe/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;

    move-result-object v0

    goto :goto_0

    .line 136
    :cond_1
    check-cast p0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseXmlFromString(Ljava/lang/String;Lcom/adobe/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;

    move-result-object v0

    goto :goto_0
.end method

.method private static parseXmlFromBytebuffer(Lcom/adobe/xmp/impl/ByteBuffer;Lcom/adobe/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/ByteBuffer;->getByteStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 189
    :try_start_0
    invoke-static {v0}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 219
    :goto_0
    return-object v0

    .line 191
    :catch_0
    move-exception v0

    .line 193
    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->getErrorCode()I

    move-result v1

    const/16 v2, 0xc9

    if-eq v1, v2, :cond_0

    .line 194
    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->getErrorCode()I

    move-result v1

    const/16 v2, 0xcc

    if-ne v1, v2, :cond_3

    .line 196
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/xmp/options/ParseOptions;->getAcceptLatin1()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    invoke-static {p0}, Lcom/adobe/xmp/impl/Latin1Converter;->convert(Lcom/adobe/xmp/impl/ByteBuffer;)Lcom/adobe/xmp/impl/ByteBuffer;

    move-result-object p0

    .line 201
    :cond_1
    invoke-virtual {p1}, Lcom/adobe/xmp/options/ParseOptions;->getFixControlChars()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 205
    :try_start_1
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/ByteBuffer;->getEncoding()Ljava/lang/String;

    move-result-object v1

    .line 206
    new-instance v2, Lcom/adobe/xmp/impl/FixASCIIControlsReader;

    .line 207
    new-instance v3, Ljava/io/InputStreamReader;

    .line 208
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/ByteBuffer;->getByteStream()Ljava/io/InputStream;

    move-result-object v4

    .line 207
    invoke-direct {v3, v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 206
    invoke-direct {v2, v3}, Lcom/adobe/xmp/impl/FixASCIIControlsReader;-><init>(Ljava/io/Reader;)V

    .line 209
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-static {v1}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 211
    :catch_1
    move-exception v1

    .line 214
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v2, "Unsupported Encoding"

    .line 215
    const/16 v3, 0x9

    .line 214
    invoke-direct {v1, v2, v3, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1

    .line 218
    :cond_2
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/ByteBuffer;->getByteStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 219
    invoke-static {v0}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    goto :goto_0

    .line 223
    :cond_3
    throw v0
.end method

.method private static parseXmlFromInputStream(Ljava/io/InputStream;Lcom/adobe/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-virtual {p1}, Lcom/adobe/xmp/options/ParseOptions;->getAcceptLatin1()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/adobe/xmp/options/ParseOptions;->getFixControlChars()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 163
    :goto_0
    return-object v0

    .line 162
    :cond_0
    :try_start_0
    new-instance v0, Lcom/adobe/xmp/impl/ByteBuffer;

    invoke-direct {v0, p0}, Lcom/adobe/xmp/impl/ByteBuffer;-><init>(Ljava/io/InputStream;)V

    .line 163
    invoke-static {v0, p1}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseXmlFromBytebuffer(Lcom/adobe/xmp/impl/ByteBuffer;Lcom/adobe/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 167
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v2, "Error reading the XML-file"

    .line 168
    const/16 v3, 0xcc

    .line 167
    invoke-direct {v1, v2, v3, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1
.end method

.method private static parseXmlFromString(Ljava/lang/String;Lcom/adobe/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 241
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 244
    :try_start_0
    invoke-static {v0}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 251
    :goto_0
    return-object v0

    .line 246
    :catch_0
    move-exception v0

    .line 248
    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->getErrorCode()I

    move-result v1

    const/16 v2, 0xc9

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/adobe/xmp/options/ParseOptions;->getFixControlChars()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Lcom/adobe/xmp/impl/FixASCIIControlsReader;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/adobe/xmp/impl/FixASCIIControlsReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 251
    invoke-static {v0}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    goto :goto_0

    .line 255
    :cond_0
    throw v0
.end method
