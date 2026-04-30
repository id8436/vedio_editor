.class public Lcom/google/gdata/data/introspection/Workspace$Handler;
.super Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;
.source "Workspace.java"


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/introspection/Workspace;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/introspection/Workspace;Lcom/google/gdata/data/ExtensionProfile;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 143
    iput-object p1, p0, Lcom/google/gdata/data/introspection/Workspace$Handler;->this$0:Lcom/google/gdata/data/introspection/Workspace;

    .line 144
    const-class v0, Lcom/google/gdata/data/introspection/Workspace;

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;Lorg/xml/sax/Attributes;)V

    .line 145
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
    .line 153
    iget-object v0, p0, Lcom/google/gdata/data/introspection/Workspace$Handler;->this$0:Lcom/google/gdata/data/introspection/Workspace;

    invoke-static {v0}, Lcom/google/gdata/data/introspection/Workspace;->access$000(Lcom/google/gdata/data/introspection/Workspace;)Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    const-string/jumbo v0, "collection"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    new-instance v1, Lcom/google/gdata/data/introspection/Collection;

    invoke-direct {v1}, Lcom/google/gdata/data/introspection/Collection;-><init>()V

    .line 159
    iget-object v0, p0, Lcom/google/gdata/data/introspection/Workspace$Handler;->this$0:Lcom/google/gdata/data/introspection/Workspace;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/introspection/Workspace;->addCollection(Lcom/google/gdata/data/introspection/Collection;)V

    .line 160
    new-instance v0, Lcom/google/gdata/data/introspection/Collection$Handler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/google/gdata/data/introspection/Workspace$Handler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-direct {v0, v1, v2, p3}, Lcom/google/gdata/data/introspection/Collection$Handler;-><init>(Lcom/google/gdata/data/introspection/Collection;Lcom/google/gdata/data/ExtensionProfile;Lorg/xml/sax/Attributes;)V

    .line 177
    :goto_0
    return-object v0

    .line 162
    :cond_0
    const-string/jumbo v0, "http://www.w3.org/2005/Atom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    const-string/jumbo v0, "title"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/gdata/data/introspection/Workspace$Handler;->this$0:Lcom/google/gdata/data/introspection/Workspace;

    invoke-static {v0}, Lcom/google/gdata/data/introspection/Workspace;->access$100(Lcom/google/gdata/data/introspection/Workspace;)Lcom/google/gdata/util/Version;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/client/Service$Versions;->V1:Lcom/google/gdata/util/Version;

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/Version;->isCompatible(Lcom/google/gdata/util/Version;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/google/gdata/data/introspection/Workspace$Handler;->this$0:Lcom/google/gdata/data/introspection/Workspace;

    invoke-static {v0}, Lcom/google/gdata/data/introspection/Workspace;->access$200(Lcom/google/gdata/data/introspection/Workspace;)Lcom/google/gdata/data/TextConstruct;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 167
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->duplicateTitle:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0

    .line 171
    :cond_1
    invoke-static {p3}, Lcom/google/gdata/data/TextConstruct;->getChildHandler(Lorg/xml/sax/Attributes;)Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/google/gdata/data/introspection/Workspace$Handler;->this$0:Lcom/google/gdata/data/introspection/Workspace;

    iget-object v2, v0, Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;->textConstruct:Lcom/google/gdata/data/TextConstruct;

    invoke-static {v1, v2}, Lcom/google/gdata/data/introspection/Workspace;->access$202(Lcom/google/gdata/data/introspection/Workspace;Lcom/google/gdata/data/TextConstruct;)Lcom/google/gdata/data/TextConstruct;

    .line 174
    iget-object v0, v0, Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;->handler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    goto :goto_0

    .line 177
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v0

    goto :goto_0
.end method
