.class Lcom/google/gdata/model/atom/TextContent$TextContentValidator;
.super Ljava/lang/Object;
.source "TextContent.java"

# interfaces
.implements Lcom/google/gdata/model/ElementValidator;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gdata/model/atom/TextContent$1;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/google/gdata/model/atom/TextContent$TextContentValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public validate(Lcom/google/gdata/model/ValidationContext;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ValidationContext;",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 114
    invoke-static {p2}, Lcom/google/gdata/model/atom/TextContent;->access$100(Lcom/google/gdata/model/Element;)I

    move-result v0

    .line 115
    packed-switch v0, :pswitch_data_0

    .line 147
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Shouldn\'t be possible, TYPE_MAP can only map to text, html, or xhtml."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :pswitch_1
    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->invalidTextContentType:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/gdata/util/ErrorDomain$ErrorCode;->withInternalReason(Ljava/lang/String;)Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/gdata/model/ValidationContext;->addError(Lcom/google/gdata/model/Element;Lcom/google/gdata/util/ErrorContent;)V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 124
    :pswitch_2
    invoke-virtual {p2}, Lcom/google/gdata/model/Element;->hasTextValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    sget-object v0, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v0, v0, Lcom/google/gdata/client/CoreErrorDomain;->missingTextContent:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-virtual {p1, p2, v0}, Lcom/google/gdata/model/ValidationContext;->addError(Lcom/google/gdata/model/Element;Lcom/google/gdata/util/ErrorContent;)V

    .line 127
    :cond_1
    invoke-virtual {p2}, Lcom/google/gdata/model/Element;->getElementCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v0, v0, Lcom/google/gdata/client/CoreErrorDomain;->invalidChildElement:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    const-string/jumbo v1, "Child elements not allowed on text content"

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/ErrorDomain$ErrorCode;->withInternalReason(Ljava/lang/String;)Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/gdata/model/ValidationContext;->addError(Lcom/google/gdata/model/Element;Lcom/google/gdata/util/ErrorContent;)V

    goto :goto_0

    .line 135
    :pswitch_3
    sget-object v0, Lcom/google/gdata/model/atom/TextContent;->DIV:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p2, v0}, Lcom/google/gdata/model/Element;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 136
    sget-object v0, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v0, v0, Lcom/google/gdata/client/CoreErrorDomain;->missingExtensionElement:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    const-string/jumbo v1, "xhtml text content must have a div element"

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/ErrorDomain$ErrorCode;->withInternalReason(Ljava/lang/String;)Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/gdata/model/ValidationContext;->addError(Lcom/google/gdata/model/Element;Lcom/google/gdata/util/ErrorContent;)V

    goto :goto_0

    .line 139
    :cond_2
    invoke-virtual {p2}, Lcom/google/gdata/model/Element;->getElementCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 140
    sget-object v0, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v0, v0, Lcom/google/gdata/client/CoreErrorDomain;->invalidChildElement:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    const-string/jumbo v1, "xhtml must only have a single child element"

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/ErrorDomain$ErrorCode;->withInternalReason(Ljava/lang/String;)Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/gdata/model/ValidationContext;->addError(Lcom/google/gdata/model/Element;Lcom/google/gdata/util/ErrorContent;)V

    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
