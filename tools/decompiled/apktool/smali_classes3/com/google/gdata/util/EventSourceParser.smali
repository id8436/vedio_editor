.class public Lcom/google/gdata/util/EventSourceParser;
.super Lcom/google/gdata/util/XmlParser;
.source "EventSourceParser.java"


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/google/gdata/util/EventSourceParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/util/EventSourceParser;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/util/XmlParser$ElementHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/gdata/util/EventSourceParser;->rootHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    .line 39
    iput-object p2, p0, Lcom/google/gdata/util/EventSourceParser;->rootNamespace:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/google/gdata/util/EventSourceParser;->rootElementName:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public parse(Lcom/google/gdata/data/XmlEventSource;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 45
    :try_start_0
    invoke-interface {p1, p0}, Lcom/google/gdata/data/XmlEventSource;->parse(Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v1

    .line 47
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v0

    .line 48
    instance-of v2, v0, Lcom/google/gdata/util/ParseException;

    if-eqz v2, :cond_0

    .line 49
    check-cast v0, Lcom/google/gdata/util/ParseException;

    invoke-virtual {p0, v0}, Lcom/google/gdata/util/EventSourceParser;->throwParseException(Lcom/google/gdata/util/ParseException;)V

    goto :goto_0

    .line 50
    :cond_0
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_1

    .line 51
    sget-object v2, Lcom/google/gdata/util/EventSourceParser;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v2, v3, v4, v1}, Lcom/google/gdata/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 54
    :cond_1
    sget-object v0, Lcom/google/gdata/util/EventSourceParser;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {v0, v2, v4, v1}, Lcom/google/gdata/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    new-instance v0, Lcom/google/gdata/util/ParseException;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
