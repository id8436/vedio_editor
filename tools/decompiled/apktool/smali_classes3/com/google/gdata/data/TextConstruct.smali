.class public abstract Lcom/google/gdata/data/TextConstruct;
.super Ljava/lang/Object;
.source "TextConstruct.java"

# interfaces
.implements Lcom/google/gdata/data/ITextConstruct;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected lang:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/google/gdata/data/TextConstruct;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/gdata/data/TextConstruct;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    return-void
.end method

.method public static create(ILjava/lang/String;Lcom/google/gdata/util/XmlBlob;)Lcom/google/gdata/data/TextConstruct;
    .locals 3

    .prologue
    .line 90
    packed-switch p0, :pswitch_data_0

    .line 105
    sget-boolean v0, Lcom/google/gdata/data/TextConstruct;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 93
    :pswitch_0
    new-instance v0, Lcom/google/gdata/data/PlainTextConstruct;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/PlainTextConstruct;-><init>(Ljava/lang/String;)V

    .line 106
    :goto_0
    return-object v0

    .line 97
    :pswitch_1
    new-instance v0, Lcom/google/gdata/data/HtmlTextConstruct;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/HtmlTextConstruct;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :pswitch_2
    new-instance v0, Lcom/google/gdata/data/XhtmlTextConstruct;

    invoke-direct {v0, p2}, Lcom/google/gdata/data/XhtmlTextConstruct;-><init>(Lcom/google/gdata/util/XmlBlob;)V

    goto :goto_0

    .line 106
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getChildHandler(Lorg/xml/sax/Attributes;)Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    const-string/jumbo v0, ""

    const-string/jumbo v1, "type"

    invoke-interface {p0, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    new-instance v1, Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;

    invoke-direct {v1}, Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;-><init>()V

    .line 195
    if-eqz v0, :cond_0

    const-string/jumbo v2, "text"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "text/plain"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 197
    :cond_0
    new-instance v0, Lcom/google/gdata/data/PlainTextConstruct;

    invoke-direct {v0}, Lcom/google/gdata/data/PlainTextConstruct;-><init>()V

    .line 198
    new-instance v2, Lcom/google/gdata/data/PlainTextConstruct$AtomHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v0}, Lcom/google/gdata/data/PlainTextConstruct$AtomHandler;-><init>(Lcom/google/gdata/data/PlainTextConstruct;)V

    iput-object v2, v1, Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;->handler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    .line 199
    iput-object v0, v1, Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;->textConstruct:Lcom/google/gdata/data/TextConstruct;

    .line 221
    :goto_0
    return-object v1

    .line 201
    :cond_1
    const-string/jumbo v2, "html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "text/html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 203
    :cond_2
    new-instance v0, Lcom/google/gdata/data/HtmlTextConstruct;

    invoke-direct {v0}, Lcom/google/gdata/data/HtmlTextConstruct;-><init>()V

    .line 204
    new-instance v2, Lcom/google/gdata/data/HtmlTextConstruct$AtomHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v0}, Lcom/google/gdata/data/HtmlTextConstruct$AtomHandler;-><init>(Lcom/google/gdata/data/HtmlTextConstruct;)V

    iput-object v2, v1, Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;->handler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    .line 205
    iput-object v0, v1, Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;->textConstruct:Lcom/google/gdata/data/TextConstruct;

    goto :goto_0

    .line 207
    :cond_3
    const-string/jumbo v2, "xhtml"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 209
    new-instance v0, Lcom/google/gdata/data/XhtmlTextConstruct;

    invoke-direct {v0}, Lcom/google/gdata/data/XhtmlTextConstruct;-><init>()V

    .line 210
    new-instance v2, Lcom/google/gdata/data/XhtmlTextConstruct$AtomHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v0}, Lcom/google/gdata/data/XhtmlTextConstruct$AtomHandler;-><init>(Lcom/google/gdata/data/XhtmlTextConstruct;)V

    iput-object v2, v1, Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;->handler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    .line 211
    iput-object v0, v1, Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;->textConstruct:Lcom/google/gdata/data/TextConstruct;

    goto :goto_0

    .line 214
    :cond_4
    new-instance v1, Lcom/google/gdata/util/ParseException;

    sget-object v2, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v2, v2, Lcom/google/gdata/client/CoreErrorDomain;->invalidTextContentType:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v1, v2}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid text content type: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/gdata/util/ParseException;->setInternalReason(Ljava/lang/String;)V

    .line 218
    throw v1
.end method

.method public static html(Ljava/lang/String;)Lcom/google/gdata/data/TextConstruct;
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lcom/google/gdata/data/HtmlTextConstruct;

    invoke-direct {v0, p0}, Lcom/google/gdata/data/HtmlTextConstruct;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static plainText(Ljava/lang/String;)Lcom/google/gdata/data/TextConstruct;
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcom/google/gdata/data/PlainTextConstruct;

    invoke-direct {v0, p0}, Lcom/google/gdata/data/PlainTextConstruct;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static xhtml(Lcom/google/gdata/util/XmlBlob;)Lcom/google/gdata/data/TextConstruct;
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lcom/google/gdata/data/XhtmlTextConstruct;

    invoke-direct {v0, p0}, Lcom/google/gdata/data/XhtmlTextConstruct;-><init>(Lcom/google/gdata/util/XmlBlob;)V

    return-object v0
.end method


# virtual methods
.method public abstract generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract generateRss(Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;Lcom/google/gdata/data/TextConstruct$RssFormat;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/gdata/data/TextConstruct;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getPlainText()Ljava/lang/String;
.end method

.method public abstract getType()I
.end method

.method public abstract isEmpty()Z
.end method

.method public setLang(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/gdata/data/TextConstruct;->lang:Ljava/lang/String;

    return-void
.end method
