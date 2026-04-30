.class Lorg/mortbay/xml/XmlParser$Handler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XmlParser.java"


# instance fields
.field private _context:Lorg/mortbay/xml/XmlParser$Node;

.field _error:Lorg/xml/sax/SAXParseException;

.field private _noop:Lorg/mortbay/xml/XmlParser$NoopHandler;

.field _top:Lorg/mortbay/xml/XmlParser$Node;

.field private final this$0:Lorg/mortbay/xml/XmlParser;


# direct methods
.method constructor <init>(Lorg/mortbay/xml/XmlParser;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 276
    iput-object p1, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 270
    new-instance v0, Lorg/mortbay/xml/XmlParser$Node;

    invoke-direct {v0, v1, v1, v1}, Lorg/mortbay/xml/XmlParser$Node;-><init>(Lorg/mortbay/xml/XmlParser$Node;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    iput-object v0, p0, Lorg/mortbay/xml/XmlParser$Handler;->_top:Lorg/mortbay/xml/XmlParser$Node;

    .line 272
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Handler;->_top:Lorg/mortbay/xml/XmlParser$Node;

    iput-object v0, p0, Lorg/mortbay/xml/XmlParser$Handler;->_context:Lorg/mortbay/xml/XmlParser$Node;

    .line 277
    new-instance v0, Lorg/mortbay/xml/XmlParser$NoopHandler;

    invoke-direct {v0, p1, p0}, Lorg/mortbay/xml/XmlParser$NoopHandler;-><init>(Lorg/mortbay/xml/XmlParser;Lorg/mortbay/xml/XmlParser$Handler;)V

    iput-object v0, p0, Lorg/mortbay/xml/XmlParser$Handler;->_noop:Lorg/mortbay/xml/XmlParser$NoopHandler;

    .line 278
    return-void
.end method

.method private getLocationString(Lorg/xml/sax/SAXParseException;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 389
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " line:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " col:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 354
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Handler;->_context:Lorg/mortbay/xml/XmlParser$Node;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lorg/mortbay/xml/XmlParser$Node;->add(Ljava/lang/Object;)Z

    .line 355
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v0}, Lorg/mortbay/xml/XmlParser;->access$300(Lorg/mortbay/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 356
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v0}, Lorg/mortbay/xml/XmlParser;->access$300(Lorg/mortbay/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v0}, Lorg/mortbay/xml/XmlParser;->access$300(Lorg/mortbay/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 355
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 358
    :cond_1
    return-void
.end method

.method clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 283
    iput-object v0, p0, Lorg/mortbay/xml/XmlParser$Handler;->_top:Lorg/mortbay/xml/XmlParser$Node;

    .line 284
    iput-object v0, p0, Lorg/mortbay/xml/XmlParser$Handler;->_error:Lorg/xml/sax/SAXParseException;

    .line 285
    iput-object v0, p0, Lorg/mortbay/xml/XmlParser$Handler;->_context:Lorg/mortbay/xml/XmlParser$Node;

    .line 286
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Handler;->_context:Lorg/mortbay/xml/XmlParser$Node;

    iget-object v0, v0, Lorg/mortbay/xml/XmlParser$Node;->_parent:Lorg/mortbay/xml/XmlParser$Node;

    iput-object v0, p0, Lorg/mortbay/xml/XmlParser$Handler;->_context:Lorg/mortbay/xml/XmlParser$Node;

    .line 337
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v0}, Lorg/mortbay/xml/XmlParser;->access$300(Lorg/mortbay/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 338
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v0}, Lorg/mortbay/xml/XmlParser;->access$300(Lorg/mortbay/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v0}, Lorg/mortbay/xml/XmlParser;->access$300(Lorg/mortbay/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 340
    :cond_1
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v0}, Lorg/mortbay/xml/XmlParser;->access$300(Lorg/mortbay/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 341
    return-void
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 371
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Handler;->_error:Lorg/xml/sax/SAXParseException;

    if-nez v0, :cond_0

    .line 372
    iput-object p1, p0, Lorg/mortbay/xml/XmlParser$Handler;->_error:Lorg/xml/sax/SAXParseException;

    .line 373
    :cond_0
    const-string/jumbo v0, "EXCEPTION "

    invoke-static {v0, p1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 374
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "ERROR@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/mortbay/xml/XmlParser$Handler;->getLocationString(Lorg/xml/sax/SAXParseException;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 380
    iput-object p1, p0, Lorg/mortbay/xml/XmlParser$Handler;->_error:Lorg/xml/sax/SAXParseException;

    .line 381
    const-string/jumbo v0, "EXCEPTION "

    invoke-static {v0, p1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 382
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "FATAL@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/mortbay/xml/XmlParser$Handler;->getLocationString(Lorg/xml/sax/SAXParseException;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 383
    throw p1
.end method

.method public ignorableWhitespace([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 346
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v0}, Lorg/mortbay/xml/XmlParser;->access$300(Lorg/mortbay/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 347
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v0}, Lorg/mortbay/xml/XmlParser;->access$300(Lorg/mortbay/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v0}, Lorg/mortbay/xml/XmlParser;->access$300(Lorg/mortbay/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    .line 346
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 349
    :cond_1
    return-void
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x2f

    .line 395
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "resolveEntity("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 398
    :cond_0
    if-eqz p2, :cond_1

    const-string/jumbo v0, ".dtd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v0, p2}, Lorg/mortbay/xml/XmlParser;->access$402(Lorg/mortbay/xml/XmlParser;Ljava/lang/String;)Ljava/lang/String;

    .line 402
    :cond_1
    if-eqz p1, :cond_8

    .line 403
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v0}, Lorg/mortbay/xml/XmlParser;->access$500(Lorg/mortbay/xml/XmlParser;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    .line 404
    :goto_0
    if-nez v0, :cond_2

    .line 405
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v0}, Lorg/mortbay/xml/XmlParser;->access$500(Lorg/mortbay/xml/XmlParser;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    .line 406
    :cond_2
    if-nez v0, :cond_4

    .line 409
    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_7

    .line 410
    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 412
    :goto_1
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 413
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Can\'t exact match entity in redirect map, trying "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 414
    :cond_3
    iget-object v2, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v2}, Lorg/mortbay/xml/XmlParser;->access$500(Lorg/mortbay/xml/XmlParser;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    .line 417
    :cond_4
    if-eqz v0, :cond_6

    .line 421
    :try_start_0
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    .line 422
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 423
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "Redirected entity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 424
    :cond_5
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 425
    invoke-virtual {v0, p2}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :goto_2
    return-object v0

    .line 428
    :catch_0
    move-exception v0

    .line 430
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    :cond_6
    move-object v0, v1

    .line 433
    goto :goto_2

    :cond_7
    move-object v0, p2

    goto :goto_1

    :cond_8
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 291
    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move-object v1, p3

    .line 292
    :goto_0
    new-instance v5, Lorg/mortbay/xml/XmlParser$Node;

    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Handler;->_context:Lorg/mortbay/xml/XmlParser$Node;

    invoke-direct {v5, v0, v1, p4}, Lorg/mortbay/xml/XmlParser$Node;-><init>(Lorg/mortbay/xml/XmlParser$Node;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 296
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v0}, Lorg/mortbay/xml/XmlParser;->access$100(Lorg/mortbay/xml/XmlParser;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 298
    invoke-virtual {v5}, Lorg/mortbay/xml/XmlParser$Node;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 300
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v0}, Lorg/mortbay/xml/XmlParser;->access$100(Lorg/mortbay/xml/XmlParser;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    move v4, v2

    :goto_1
    if-nez v4, :cond_4

    add-int/lit8 v3, v0, -0x1

    if-lez v0, :cond_4

    .line 302
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v0}, Lorg/mortbay/xml/XmlParser;->access$100(Lorg/mortbay/xml/XmlParser;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 304
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-le v4, v7, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x2f

    if-ne v0, v4, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_2
    move v4, v0

    move v0, v3

    .line 305
    goto :goto_1

    :cond_2
    move-object v1, p2

    .line 291
    goto :goto_0

    :cond_3
    move v0, v2

    .line 304
    goto :goto_2

    .line 307
    :cond_4
    if-eqz v4, :cond_7

    .line 309
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Handler;->_context:Lorg/mortbay/xml/XmlParser$Node;

    invoke-virtual {v0, v5}, Lorg/mortbay/xml/XmlParser$Node;->add(Ljava/lang/Object;)Z

    .line 310
    iput-object v5, p0, Lorg/mortbay/xml/XmlParser$Handler;->_context:Lorg/mortbay/xml/XmlParser$Node;

    .line 323
    :goto_3
    const/4 v0, 0x0

    .line 324
    iget-object v3, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v3}, Lorg/mortbay/xml/XmlParser;->access$200(Lorg/mortbay/xml/XmlParser;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 325
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v0}, Lorg/mortbay/xml/XmlParser;->access$200(Lorg/mortbay/xml/XmlParser;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xml/sax/ContentHandler;

    .line 326
    :cond_5
    iget-object v1, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v1}, Lorg/mortbay/xml/XmlParser;->access$300(Lorg/mortbay/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :goto_4
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v0}, Lorg/mortbay/xml/XmlParser;->access$300(Lorg/mortbay/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    .line 329
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v0}, Lorg/mortbay/xml/XmlParser;->access$300(Lorg/mortbay/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 330
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v0}, Lorg/mortbay/xml/XmlParser;->access$300(Lorg/mortbay/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 328
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 314
    :cond_7
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v0}, Lorg/mortbay/xml/XmlParser;->access$000(Lorg/mortbay/xml/XmlParser;)Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    iget-object v3, p0, Lorg/mortbay/xml/XmlParser$Handler;->_noop:Lorg/mortbay/xml/XmlParser$NoopHandler;

    invoke-interface {v0, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    goto :goto_3

    .line 319
    :cond_8
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Handler;->_context:Lorg/mortbay/xml/XmlParser$Node;

    invoke-virtual {v0, v5}, Lorg/mortbay/xml/XmlParser$Node;->add(Ljava/lang/Object;)Z

    .line 320
    iput-object v5, p0, Lorg/mortbay/xml/XmlParser$Handler;->_context:Lorg/mortbay/xml/XmlParser$Node;

    goto :goto_3

    .line 331
    :cond_9
    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 2

    .prologue
    .line 363
    const-string/jumbo v0, "EXCEPTION "

    invoke-static {v0, p1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 364
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "WARNING@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/mortbay/xml/XmlParser$Handler;->getLocationString(Lorg/xml/sax/SAXParseException;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 365
    return-void
.end method
