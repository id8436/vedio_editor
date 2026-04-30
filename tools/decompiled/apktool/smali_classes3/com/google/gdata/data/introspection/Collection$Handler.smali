.class public Lcom/google/gdata/data/introspection/Collection$Handler;
.super Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;
.source "Collection.java"


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/introspection/Collection;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/introspection/Collection;Lcom/google/gdata/data/ExtensionProfile;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 203
    iput-object p1, p0, Lcom/google/gdata/data/introspection/Collection$Handler;->this$0:Lcom/google/gdata/data/introspection/Collection;

    .line 204
    const-class v0, Lcom/google/gdata/data/introspection/Collection;

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;Lorg/xml/sax/Attributes;)V

    .line 205
    return-void
.end method


# virtual methods
.method public getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    const-string/jumbo v0, "http://www.w3.org/2005/Atom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    const-string/jumbo v0, "title"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/gdata/data/introspection/Collection$Handler;->this$0:Lcom/google/gdata/data/introspection/Collection;

    invoke-static {v0}, Lcom/google/gdata/data/introspection/Collection;->access$000(Lcom/google/gdata/data/introspection/Collection;)Lcom/google/gdata/util/Version;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/client/Service$Versions;->V1:Lcom/google/gdata/util/Version;

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/Version;->isCompatible(Lcom/google/gdata/util/Version;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 218
    invoke-static {p3}, Lcom/google/gdata/data/TextConstruct;->getChildHandler(Lorg/xml/sax/Attributes;)Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lcom/google/gdata/data/introspection/Collection$Handler;->this$0:Lcom/google/gdata/data/introspection/Collection;

    invoke-static {v1}, Lcom/google/gdata/data/introspection/Collection;->access$100(Lcom/google/gdata/data/introspection/Collection;)Lcom/google/gdata/data/TextConstruct;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 222
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->duplicateTitle:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/data/introspection/Collection$Handler;->this$0:Lcom/google/gdata/data/introspection/Collection;

    iget-object v2, v0, Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;->textConstruct:Lcom/google/gdata/data/TextConstruct;

    invoke-static {v1, v2}, Lcom/google/gdata/data/introspection/Collection;->access$102(Lcom/google/gdata/data/introspection/Collection;Lcom/google/gdata/data/TextConstruct;)Lcom/google/gdata/data/TextConstruct;

    .line 227
    iget-object v0, v0, Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;->handler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    .line 241
    :goto_0
    return-object v0

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/data/introspection/Collection$Handler;->this$0:Lcom/google/gdata/data/introspection/Collection;

    invoke-static {v0}, Lcom/google/gdata/data/introspection/Collection;->access$200(Lcom/google/gdata/data/introspection/Collection;)Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 232
    const-string/jumbo v0, "accept"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 233
    new-instance v0, Lcom/google/gdata/data/introspection/Collection$Handler$AcceptHandler;

    invoke-direct {v0, p0}, Lcom/google/gdata/data/introspection/Collection$Handler$AcceptHandler;-><init>(Lcom/google/gdata/data/introspection/Collection$Handler;)V

    goto :goto_0

    .line 235
    :cond_2
    const-string/jumbo v0, "categories"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 236
    new-instance v1, Lcom/google/gdata/data/introspection/Categories;

    invoke-direct {v1}, Lcom/google/gdata/data/introspection/Categories;-><init>()V

    .line 237
    iget-object v0, p0, Lcom/google/gdata/data/introspection/Collection$Handler;->this$0:Lcom/google/gdata/data/introspection/Collection;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/introspection/Collection;->addCategories(Lcom/google/gdata/data/introspection/Categories;)V

    .line 238
    new-instance v0, Lcom/google/gdata/data/introspection/Categories$Handler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/google/gdata/data/introspection/Collection$Handler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-direct {v0, v1, v2, p3}, Lcom/google/gdata/data/introspection/Categories$Handler;-><init>(Lcom/google/gdata/data/introspection/Categories;Lcom/google/gdata/data/ExtensionProfile;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 241
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v0

    goto :goto_0
.end method

.method public processEndElement()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 248
    invoke-super {p0}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->processEndElement()V

    .line 249
    iget-object v0, p0, Lcom/google/gdata/data/introspection/Collection$Handler;->this$0:Lcom/google/gdata/data/introspection/Collection;

    invoke-static {v0}, Lcom/google/gdata/data/introspection/Collection;->access$100(Lcom/google/gdata/data/introspection/Collection;)Lcom/google/gdata/data/TextConstruct;

    move-result-object v0

    if-nez v0, :cond_0

    .line 250
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->collectionTitleRequired:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0

    .line 253
    :cond_0
    return-void
.end method
