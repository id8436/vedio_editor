.class public abstract Lcom/google/gdata/data/media/mediarss/AbstractTextElement;
.super Lcom/google/gdata/data/AbstractExtension;
.source "AbstractTextElement.java"


# instance fields
.field private content:Lcom/google/gdata/data/TextConstruct;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    return-void
.end method


# virtual methods
.method protected consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 88
    return-void
.end method

.method public getContent()Lcom/google/gdata/data/TextConstruct;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/gdata/data/media/mediarss/AbstractTextElement;->content:Lcom/google/gdata/data/TextConstruct;

    return-object v0
.end method

.method public final getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 94
    new-instance v1, Lcom/google/gdata/data/AttributeHelper;

    invoke-direct {v1, p4}, Lcom/google/gdata/data/AttributeHelper;-><init>(Lorg/xml/sax/Attributes;)V

    .line 95
    const-string/jumbo v0, "type"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-virtual {p0, v1}, Lcom/google/gdata/data/media/mediarss/AbstractTextElement;->consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V

    .line 98
    if-eqz v0, :cond_0

    const-string/jumbo v2, "plain"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    :cond_0
    new-instance v2, Lcom/google/gdata/data/PlainTextConstruct;

    invoke-direct {v2}, Lcom/google/gdata/data/PlainTextConstruct;-><init>()V

    .line 100
    iput-object v2, p0, Lcom/google/gdata/data/media/mediarss/AbstractTextElement;->content:Lcom/google/gdata/data/TextConstruct;

    .line 101
    new-instance v0, Lcom/google/gdata/data/media/mediarss/AbstractTextElement$1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0, v2, v1}, Lcom/google/gdata/data/media/mediarss/AbstractTextElement$1;-><init>(Lcom/google/gdata/data/media/mediarss/AbstractTextElement;Lcom/google/gdata/data/PlainTextConstruct;Lcom/google/gdata/data/AttributeHelper;)V

    .line 111
    :goto_0
    return-object v0

    .line 108
    :cond_1
    const-string/jumbo v2, "html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    new-instance v2, Lcom/google/gdata/data/HtmlTextConstruct;

    invoke-direct {v2}, Lcom/google/gdata/data/HtmlTextConstruct;-><init>()V

    .line 110
    iput-object v2, p0, Lcom/google/gdata/data/media/mediarss/AbstractTextElement;->content:Lcom/google/gdata/data/TextConstruct;

    .line 111
    new-instance v0, Lcom/google/gdata/data/media/mediarss/AbstractTextElement$2;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0, v2, v1}, Lcom/google/gdata/data/media/mediarss/AbstractTextElement$2;-><init>(Lcom/google/gdata/data/media/mediarss/AbstractTextElement;Lcom/google/gdata/data/HtmlTextConstruct;Lcom/google/gdata/data/AttributeHelper;)V

    goto :goto_0

    .line 119
    :cond_2
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->unsupportedTextType:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0
.end method

.method public getPlainTextContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/gdata/data/media/mediarss/AbstractTextElement;->content:Lcom/google/gdata/data/TextConstruct;

    if-nez v0, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 60
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/media/mediarss/AbstractTextElement;->content:Lcom/google/gdata/data/TextConstruct;

    invoke-virtual {v0}, Lcom/google/gdata/data/TextConstruct;->getPlainText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/gdata/data/media/mediarss/AbstractTextElement;->content:Lcom/google/gdata/data/TextConstruct;

    invoke-virtual {v0}, Lcom/google/gdata/data/TextConstruct;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/gdata/data/media/mediarss/AbstractTextElement;->content:Lcom/google/gdata/data/TextConstruct;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/google/gdata/data/media/mediarss/AbstractTextElement;->content:Lcom/google/gdata/data/TextConstruct;

    invoke-virtual {v0}, Lcom/google/gdata/data/TextConstruct;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "plain"

    .line 68
    :goto_0
    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1, v0}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/google/gdata/data/media/mediarss/AbstractTextElement;->content:Lcom/google/gdata/data/TextConstruct;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/google/gdata/data/media/mediarss/AbstractTextElement;->content:Lcom/google/gdata/data/TextConstruct;

    instance-of v0, v0, Lcom/google/gdata/data/HtmlTextConstruct;

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/google/gdata/data/media/mediarss/AbstractTextElement;->content:Lcom/google/gdata/data/TextConstruct;

    check-cast v0, Lcom/google/gdata/data/HtmlTextConstruct;

    .line 72
    invoke-virtual {v0}, Lcom/google/gdata/data/HtmlTextConstruct;->getHtml()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/AttributeGenerator;->setContent(Ljava/lang/String;)V

    .line 78
    :cond_0
    :goto_1
    return-void

    .line 66
    :cond_1
    const-string/jumbo v0, "html"

    goto :goto_0

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/google/gdata/data/media/mediarss/AbstractTextElement;->content:Lcom/google/gdata/data/TextConstruct;

    invoke-virtual {v0}, Lcom/google/gdata/data/TextConstruct;->getPlainText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/AttributeGenerator;->setContent(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setHtmlContent(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/google/gdata/data/HtmlTextConstruct;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/HtmlTextConstruct;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/gdata/data/media/mediarss/AbstractTextElement;->content:Lcom/google/gdata/data/TextConstruct;

    .line 50
    return-void
.end method

.method public setPlainTextContent(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/google/gdata/data/PlainTextConstruct;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/PlainTextConstruct;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/gdata/data/media/mediarss/AbstractTextElement;->content:Lcom/google/gdata/data/TextConstruct;

    .line 54
    return-void
.end method
