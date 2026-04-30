.class public Lcom/google/gdata/data/XhtmlTextConstruct;
.super Lcom/google/gdata/data/TextConstruct;
.source "XhtmlTextConstruct.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected xhtml:Lcom/google/gdata/util/XmlBlob;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/google/gdata/data/XhtmlTextConstruct;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/gdata/data/XhtmlTextConstruct;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/gdata/data/TextConstruct;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/util/XmlBlob;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/gdata/data/TextConstruct;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/gdata/data/XhtmlTextConstruct;->xhtml:Lcom/google/gdata/util/XmlBlob;

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/util/XmlBlob;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/gdata/data/TextConstruct;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/google/gdata/data/XhtmlTextConstruct;->xhtml:Lcom/google/gdata/util/XmlBlob;

    .line 56
    iput-object p2, p0, Lcom/google/gdata/data/XhtmlTextConstruct;->lang:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    new-instance v4, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 123
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string/jumbo v1, "type"

    const-string/jumbo v2, "xhtml"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lcom/google/gdata/data/XhtmlTextConstruct;->lang:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 126
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string/jumbo v1, "xml:lang"

    iget-object v2, p0, Lcom/google/gdata/data/XhtmlTextConstruct;->lang:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_0
    sget-object v1, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    iget-object v3, p0, Lcom/google/gdata/data/XhtmlTextConstruct;->xhtml:Lcom/google/gdata/util/XmlBlob;

    const/4 v5, 0x0

    move-object v0, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/google/gdata/util/XmlBlob;->startElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Lcom/google/gdata/util/XmlBlob;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 130
    sget-object v0, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    iget-object v1, p0, Lcom/google/gdata/data/XhtmlTextConstruct;->xhtml:Lcom/google/gdata/util/XmlBlob;

    invoke-static {p1, v0, p2, v1}, Lcom/google/gdata/util/XmlBlob;->endElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Lcom/google/gdata/util/XmlBlob;)V

    .line 131
    return-void
.end method

.method public generateRss(Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;Lcom/google/gdata/data/TextConstruct$RssFormat;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 152
    sget-object v0, Lcom/google/gdata/data/XhtmlTextConstruct$1;->$SwitchMap$com$google$gdata$data$TextConstruct$RssFormat:[I

    invoke-virtual {p3}, Lcom/google/gdata/data/TextConstruct$RssFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 172
    sget-boolean v0, Lcom/google/gdata/data/XhtmlTextConstruct;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 159
    :pswitch_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 160
    new-instance v1, Lcom/google/gdata/util/common/xml/XmlWriter;

    invoke-direct {v1, v0}, Lcom/google/gdata/util/common/xml/XmlWriter;-><init>(Ljava/io/Writer;)V

    .line 161
    iget-object v2, p0, Lcom/google/gdata/data/XhtmlTextConstruct;->xhtml:Lcom/google/gdata/util/XmlBlob;

    invoke-virtual {v2}, Lcom/google/gdata/util/XmlBlob;->getBlob()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter;->innerXml(Ljava/lang/String;)V

    .line 164
    sget-object v1, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, p2, v3, v0}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 168
    :pswitch_1
    sget-object v0, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {p0}, Lcom/google/gdata/data/XhtmlTextConstruct;->getPlainText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v3, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPlainText()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 87
    iget-object v1, p0, Lcom/google/gdata/data/XhtmlTextConstruct;->xhtml:Lcom/google/gdata/util/XmlBlob;

    if-nez v1, :cond_0

    .line 101
    :goto_0
    return-object v0

    .line 92
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 93
    new-instance v2, Lcom/google/gdata/util/common/xml/XmlWriter;

    invoke-direct {v2, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;-><init>(Ljava/io/Writer;)V

    .line 94
    iget-object v3, p0, Lcom/google/gdata/data/XhtmlTextConstruct;->xhtml:Lcom/google/gdata/util/XmlBlob;

    invoke-virtual {v3}, Lcom/google/gdata/util/XmlBlob;->getBlob()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter;->innerXml(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/gdata/util/common/html/HtmlToText;->htmlToPlainText(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x3

    return v0
.end method

.method public getXhtml()Lcom/google/gdata/util/XmlBlob;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/gdata/data/XhtmlTextConstruct;->xhtml:Lcom/google/gdata/util/XmlBlob;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/google/gdata/util/XmlBlob;

    invoke-direct {v0}, Lcom/google/gdata/util/XmlBlob;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/XhtmlTextConstruct;->xhtml:Lcom/google/gdata/util/XmlBlob;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/XhtmlTextConstruct;->xhtml:Lcom/google/gdata/util/XmlBlob;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/gdata/data/XhtmlTextConstruct;->xhtml:Lcom/google/gdata/util/XmlBlob;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setXhtml(Lcom/google/gdata/util/XmlBlob;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/gdata/data/XhtmlTextConstruct;->xhtml:Lcom/google/gdata/util/XmlBlob;

    return-void
.end method
