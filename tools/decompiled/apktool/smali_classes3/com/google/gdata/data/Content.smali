.class public abstract Lcom/google/gdata/data/Content;
.super Ljava/lang/Object;
.source "Content.java"

# interfaces
.implements Lcom/google/gdata/data/IContent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    return-void
.end method

.method public static getChildHandler(Lcom/google/gdata/data/ExtensionProfile;Lorg/xml/sax/Attributes;)Lcom/google/gdata/data/Content$ChildHandlerInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    const-string/jumbo v0, ""

    const-string/jumbo v1, "type"

    invoke-interface {p1, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    new-instance v1, Lcom/google/gdata/data/Content$ChildHandlerInfo;

    invoke-direct {v1}, Lcom/google/gdata/data/Content$ChildHandlerInfo;-><init>()V

    .line 89
    const-string/jumbo v2, ""

    const-string/jumbo v3, "src"

    invoke-interface {p1, v2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    if-nez v2, :cond_2

    .line 93
    if-eqz v0, :cond_0

    const-string/jumbo v2, "text"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "text/plain"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "text/html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "xhtml"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    :cond_0
    new-instance v0, Lcom/google/gdata/data/TextContent;

    invoke-direct {v0}, Lcom/google/gdata/data/TextContent;-><init>()V

    .line 101
    invoke-static {p1}, Lcom/google/gdata/data/TextConstruct;->getChildHandler(Lorg/xml/sax/Attributes;)Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;

    move-result-object v2

    .line 103
    iget-object v3, v2, Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;->textConstruct:Lcom/google/gdata/data/TextConstruct;

    invoke-virtual {v0, v3}, Lcom/google/gdata/data/TextContent;->setContent(Lcom/google/gdata/data/TextConstruct;)V

    .line 104
    iget-object v2, v2, Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;->handler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    iput-object v2, v1, Lcom/google/gdata/data/Content$ChildHandlerInfo;->handler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    .line 105
    iput-object v0, v1, Lcom/google/gdata/data/Content$ChildHandlerInfo;->content:Lcom/google/gdata/data/Content;

    .line 119
    :goto_0
    return-object v1

    .line 109
    :cond_1
    new-instance v0, Lcom/google/gdata/data/OtherContent;

    invoke-direct {v0}, Lcom/google/gdata/data/OtherContent;-><init>()V

    .line 110
    new-instance v2, Lcom/google/gdata/data/OtherContent$AtomHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v0, p0, p1}, Lcom/google/gdata/data/OtherContent$AtomHandler;-><init>(Lcom/google/gdata/data/OtherContent;Lcom/google/gdata/data/ExtensionProfile;Lorg/xml/sax/Attributes;)V

    iput-object v2, v1, Lcom/google/gdata/data/Content$ChildHandlerInfo;->handler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    .line 111
    iput-object v0, v1, Lcom/google/gdata/data/Content$ChildHandlerInfo;->content:Lcom/google/gdata/data/Content;

    goto :goto_0

    .line 114
    :cond_2
    new-instance v0, Lcom/google/gdata/data/OutOfLineContent;

    invoke-direct {v0}, Lcom/google/gdata/data/OutOfLineContent;-><init>()V

    .line 115
    new-instance v2, Lcom/google/gdata/data/OutOfLineContent$AtomHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v0}, Lcom/google/gdata/data/OutOfLineContent$AtomHandler;-><init>(Lcom/google/gdata/data/OutOfLineContent;)V

    iput-object v2, v1, Lcom/google/gdata/data/Content$ChildHandlerInfo;->handler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    .line 116
    iput-object v0, v1, Lcom/google/gdata/data/Content$ChildHandlerInfo;->content:Lcom/google/gdata/data/Content;

    goto :goto_0
.end method


# virtual methods
.method public abstract generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract generateRss(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getLang()Ljava/lang/String;
.end method

.method public abstract getType()I
.end method
