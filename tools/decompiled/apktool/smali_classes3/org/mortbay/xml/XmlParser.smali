.class public Lorg/mortbay/xml/XmlParser;
.super Ljava/lang/Object;
.source "XmlParser.java"


# instance fields
.field private _dtd:Ljava/lang/String;

.field private _observerMap:Ljava/util/Map;

.field private _observers:Ljava/util/Stack;

.field private _parser:Ljavax/xml/parsers/SAXParser;

.field private _redirectMap:Ljava/util/Map;

.field private _xpath:Ljava/lang/String;

.field private _xpaths:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/xml/XmlParser;->_redirectMap:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/mortbay/xml/XmlParser;->_observers:Ljava/util/Stack;

    .line 69
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "org.apache.xerces."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 71
    const-string/jumbo v1, "org.mortbay.xml.XmlParser.Validating"

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-static {v1, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    const-string/jumbo v1, "org.mortbay.xml.XmlParser.NotValidating"

    invoke-static {v1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 73
    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 74
    :goto_1
    invoke-virtual {p0, v0}, Lorg/mortbay/xml/XmlParser;->setValidating(Z)V

    .line 75
    return-void

    .line 71
    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0

    .line 73
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/xml/XmlParser;->_redirectMap:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/mortbay/xml/XmlParser;->_observers:Ljava/util/Stack;

    .line 83
    invoke-virtual {p0, p1}, Lorg/mortbay/xml/XmlParser;->setValidating(Z)V

    .line 84
    return-void
.end method

.method static access$000(Lorg/mortbay/xml/XmlParser;)Ljavax/xml/parsers/SAXParser;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser;->_parser:Ljavax/xml/parsers/SAXParser;

    return-object v0
.end method

.method static access$100(Lorg/mortbay/xml/XmlParser;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser;->_xpaths:Ljava/lang/Object;

    return-object v0
.end method

.method static access$200(Lorg/mortbay/xml/XmlParser;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser;->_observerMap:Ljava/util/Map;

    return-object v0
.end method

.method static access$300(Lorg/mortbay/xml/XmlParser;)Ljava/util/Stack;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser;->_observers:Ljava/util/Stack;

    return-object v0
.end method

.method static access$402(Lorg/mortbay/xml/XmlParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lorg/mortbay/xml/XmlParser;->_dtd:Ljava/lang/String;

    return-object p1
.end method

.method static access$500(Lorg/mortbay/xml/XmlParser;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser;->_redirectMap:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addContentHandler(Ljava/lang/String;Lorg/xml/sax/ContentHandler;)V
    .locals 1

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser;->_observerMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/xml/XmlParser;->_observerMap:Ljava/util/Map;

    .line 174
    :cond_0
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser;->_observerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDTD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser;->_dtd:Ljava/lang/String;

    return-object v0
.end method

.method public getXpath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser;->_xpath:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized parse(Ljava/io/File;)Lorg/mortbay/xml/XmlParser$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 213
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "parse: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 215
    :cond_0
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-virtual {p1}, Ljava/io/File;->toURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/mortbay/xml/XmlParser;->parse(Lorg/xml/sax/InputSource;)Lorg/mortbay/xml/XmlParser$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized parse(Ljava/io/InputStream;)Lorg/mortbay/xml/XmlParser$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 224
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/mortbay/xml/XmlParser;->_dtd:Ljava/lang/String;

    .line 225
    new-instance v1, Lorg/mortbay/xml/XmlParser$Handler;

    invoke-direct {v1, p0}, Lorg/mortbay/xml/XmlParser$Handler;-><init>(Lorg/mortbay/xml/XmlParser;)V

    .line 226
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser;->_parser:Ljavax/xml/parsers/SAXParser;

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 227
    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 228
    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 229
    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 230
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser;->_parser:Ljavax/xml/parsers/SAXParser;

    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v2, v1}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 231
    iget-object v0, v1, Lorg/mortbay/xml/XmlParser$Handler;->_error:Lorg/xml/sax/SAXParseException;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, v1, Lorg/mortbay/xml/XmlParser$Handler;->_error:Lorg/xml/sax/SAXParseException;

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 233
    :cond_0
    :try_start_1
    iget-object v0, v1, Lorg/mortbay/xml/XmlParser$Handler;->_top:Lorg/mortbay/xml/XmlParser$Node;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/mortbay/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/xml/XmlParser$Node;

    .line 234
    invoke-virtual {v1}, Lorg/mortbay/xml/XmlParser$Handler;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized parse(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 202
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "parse: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 204
    :cond_0
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/mortbay/xml/XmlParser;->parse(Lorg/xml/sax/InputSource;)Lorg/mortbay/xml/XmlParser$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized parse(Lorg/xml/sax/InputSource;)Lorg/mortbay/xml/XmlParser$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 180
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/mortbay/xml/XmlParser;->_dtd:Ljava/lang/String;

    .line 181
    new-instance v1, Lorg/mortbay/xml/XmlParser$Handler;

    invoke-direct {v1, p0}, Lorg/mortbay/xml/XmlParser$Handler;-><init>(Lorg/mortbay/xml/XmlParser;)V

    .line 182
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser;->_parser:Ljavax/xml/parsers/SAXParser;

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 183
    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 184
    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 185
    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 186
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "parsing: sid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, ",pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 188
    :cond_0
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser;->_parser:Ljavax/xml/parsers/SAXParser;

    invoke-virtual {v0, p1, v1}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 189
    iget-object v0, v1, Lorg/mortbay/xml/XmlParser$Handler;->_error:Lorg/xml/sax/SAXParseException;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, v1, Lorg/mortbay/xml/XmlParser$Handler;->_error:Lorg/xml/sax/SAXParseException;

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 191
    :cond_1
    :try_start_1
    iget-object v0, v1, Lorg/mortbay/xml/XmlParser$Handler;->_top:Lorg/mortbay/xml/XmlParser$Node;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/mortbay/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/xml/XmlParser$Node;

    .line 192
    invoke-virtual {v1}, Lorg/mortbay/xml/XmlParser$Handler;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized redirectEntity(Ljava/lang/String;Ljava/net/URL;)V
    .locals 1

    .prologue
    .line 126
    monitor-enter p0

    if-eqz p2, :cond_0

    .line 127
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser;->_redirectMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :cond_0
    monitor-exit p0

    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setValidating(Z)V
    .locals 3

    .prologue
    .line 91
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 92
    invoke-virtual {v0, p1}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 93
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/xml/XmlParser;->_parser:Ljavax/xml/parsers/SAXParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 97
    if-eqz p1, :cond_0

    .line 98
    :try_start_1
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser;->_parser:Ljavax/xml/parsers/SAXParser;

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    const-string/jumbo v1, "http://apache.org/xml/features/validation/schema"

    invoke-interface {v0, v1, p1}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 108
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser;->_parser:Ljavax/xml/parsers/SAXParser;

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    const-string/jumbo v1, "http://xml.org/sax/features/validation"

    invoke-interface {v0, v1, p1}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 109
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser;->_parser:Ljavax/xml/parsers/SAXParser;

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    const-string/jumbo v1, "http://xml.org/sax/features/namespaces"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 110
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser;->_parser:Ljavax/xml/parsers/SAXParser;

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    const-string/jumbo v1, "http://xml.org/sax/features/namespace-prefixes"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 117
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 102
    if-eqz p1, :cond_1

    .line 103
    const-string/jumbo v1, "Schema validation may not be supported: "

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 112
    :catch_1
    move-exception v0

    .line 114
    const-string/jumbo v1, "EXCEPTION "

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    new-instance v1, Ljava/lang/Error;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_1
    :try_start_3
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public setXpath(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 149
    iput-object p1, p0, Lorg/mortbay/xml/XmlParser;->_xpath:Ljava/lang/String;

    .line 150
    new-instance v0, Ljava/util/StringTokenizer;

    const-string/jumbo v1, "| "

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lorg/mortbay/xml/XmlParser;->_xpaths:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/xml/XmlParser;->_xpaths:Ljava/lang/Object;

    goto :goto_0

    .line 153
    :cond_0
    return-void
.end method
