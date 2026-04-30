.class public Lcom/google/gdata/data/introspection/Workspace;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "Workspace.java"

# interfaces
.implements Lcom/google/gdata/data/introspection/IWorkspace;


# instance fields
.field private atomPubNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field private collectionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/introspection/Collection;",
            ">;"
        }
    .end annotation
.end field

.field private coreVersion:Lcom/google/gdata/util/Version;

.field private title:Lcom/google/gdata/data/TextConstruct;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 60
    invoke-static {}, Lcom/google/gdata/client/Service;->getVersion()Lcom/google/gdata/util/Version;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/introspection/Workspace;->coreVersion:Lcom/google/gdata/util/Version;

    .line 61
    invoke-static {}, Lcom/google/gdata/util/Namespaces;->getAtomPubNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/introspection/Workspace;->atomPubNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/introspection/Workspace;->collectionList:Ljava/util/List;

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/TextConstruct;)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 60
    invoke-static {}, Lcom/google/gdata/client/Service;->getVersion()Lcom/google/gdata/util/Version;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/introspection/Workspace;->coreVersion:Lcom/google/gdata/util/Version;

    .line 61
    invoke-static {}, Lcom/google/gdata/util/Namespaces;->getAtomPubNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/introspection/Workspace;->atomPubNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/introspection/Workspace;->collectionList:Ljava/util/List;

    .line 66
    iput-object p1, p0, Lcom/google/gdata/data/introspection/Workspace;->title:Lcom/google/gdata/data/TextConstruct;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/google/gdata/data/introspection/Workspace;)Lcom/google/gdata/util/common/xml/XmlNamespace;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/gdata/data/introspection/Workspace;->atomPubNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/gdata/data/introspection/Workspace;)Lcom/google/gdata/util/Version;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/gdata/data/introspection/Workspace;->coreVersion:Lcom/google/gdata/util/Version;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/gdata/data/introspection/Workspace;)Lcom/google/gdata/data/TextConstruct;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/gdata/data/introspection/Workspace;->title:Lcom/google/gdata/data/TextConstruct;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/gdata/data/introspection/Workspace;Lcom/google/gdata/data/TextConstruct;)Lcom/google/gdata/data/TextConstruct;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/gdata/data/introspection/Workspace;->title:Lcom/google/gdata/data/TextConstruct;

    return-object p1
.end method


# virtual methods
.method public varargs addCollection(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/gdata/data/introspection/Collection;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Lcom/google/gdata/data/introspection/Collection;

    new-instance v1, Lcom/google/gdata/data/PlainTextConstruct;

    invoke-direct {v1, p2}, Lcom/google/gdata/data/PlainTextConstruct;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p1, v1, p3}, Lcom/google/gdata/data/introspection/Collection;-><init>(Ljava/lang/String;Lcom/google/gdata/data/TextConstruct;[Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/introspection/Workspace;->addCollection(Lcom/google/gdata/data/introspection/Collection;)V

    .line 84
    return-object v0
.end method

.method public bridge synthetic addCollection(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/gdata/data/introspection/ICollection;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/gdata/data/introspection/Workspace;->addCollection(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/gdata/data/introspection/Collection;

    move-result-object v0

    return-object v0
.end method

.method public addCollection(Lcom/google/gdata/data/introspection/Collection;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/gdata/data/introspection/Workspace;->collectionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/gdata/data/introspection/Workspace;->coreVersion:Lcom/google/gdata/util/Version;

    sget-object v1, Lcom/google/gdata/client/Service$Versions;->V1:Lcom/google/gdata/util/Version;

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/Version;->isCompatible(Lcom/google/gdata/util/Version;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const-string/jumbo v0, "title"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 128
    new-instance v1, Lcom/google/gdata/data/PlainTextConstruct;

    invoke-direct {v1, v0}, Lcom/google/gdata/data/PlainTextConstruct;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/gdata/data/introspection/Workspace;->title:Lcom/google/gdata/data/TextConstruct;

    .line 130
    :cond_0
    return-void
.end method

.method public generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    iget-object v1, p0, Lcom/google/gdata/data/introspection/Workspace;->coreVersion:Lcom/google/gdata/util/Version;

    sget-object v2, Lcom/google/gdata/client/Service$Versions;->V1:Lcom/google/gdata/util/Version;

    invoke-virtual {v1, v2}, Lcom/google/gdata/util/Version;->isCompatible(Lcom/google/gdata/util/Version;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    new-instance v1, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string/jumbo v2, "title"

    iget-object v3, p0, Lcom/google/gdata/data/introspection/Workspace;->title:Lcom/google/gdata/data/TextConstruct;

    invoke-virtual {v3}, Lcom/google/gdata/data/TextConstruct;->getPlainText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/data/introspection/Workspace;->atomPubNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v2, "workspace"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/google/gdata/util/common/xml/XmlWriter;->startElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 108
    iget-object v0, p0, Lcom/google/gdata/data/introspection/Workspace;->coreVersion:Lcom/google/gdata/util/Version;

    sget-object v1, Lcom/google/gdata/client/Service$Versions;->V1:Lcom/google/gdata/util/Version;

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/Version;->isCompatible(Lcom/google/gdata/util/Version;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/google/gdata/data/introspection/Workspace;->title:Lcom/google/gdata/data/TextConstruct;

    const-string/jumbo v1, "title"

    invoke-virtual {v0, p1, v1}, Lcom/google/gdata/data/TextConstruct;->generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;)V

    .line 112
    :cond_1
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->startRepeatingElement()V

    .line 113
    iget-object v0, p0, Lcom/google/gdata/data/introspection/Workspace;->collectionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/introspection/Collection;

    .line 114
    invoke-virtual {v0, p1, p2}, Lcom/google/gdata/data/introspection/Collection;->generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endRepeatingElement()V

    .line 118
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/introspection/Workspace;->generateExtensions(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 120
    iget-object v0, p0, Lcom/google/gdata/data/introspection/Workspace;->atomPubNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v1, "workspace"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public getCollections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/introspection/Collection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/gdata/data/introspection/Workspace;->collectionList:Ljava/util/List;

    return-object v0
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lcom/google/gdata/data/introspection/Workspace$Handler;

    invoke-direct {v0, p0, p1, p4}, Lcom/google/gdata/data/introspection/Workspace$Handler;-><init>(Lcom/google/gdata/data/introspection/Workspace;Lcom/google/gdata/data/ExtensionProfile;Lorg/xml/sax/Attributes;)V

    return-object v0
.end method

.method public getTitle()Lcom/google/gdata/data/TextConstruct;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/gdata/data/introspection/Workspace;->title:Lcom/google/gdata/data/TextConstruct;

    return-object v0
.end method

.method public processEndElement()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/gdata/data/introspection/Workspace;->title:Lcom/google/gdata/data/TextConstruct;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->workspaceTitleRequired:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0

    .line 187
    :cond_0
    return-void
.end method

.method public setTitle(Lcom/google/gdata/data/TextConstruct;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/gdata/data/introspection/Workspace;->title:Lcom/google/gdata/data/TextConstruct;

    return-void
.end method

.method protected visitChildren(Lcom/google/gdata/data/ExtensionVisitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/ExtensionVisitor$StoppedException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/gdata/data/introspection/Workspace;->collectionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/introspection/Collection;

    .line 93
    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/introspection/Workspace;->visitChild(Lcom/google/gdata/data/ExtensionVisitor;Lcom/google/gdata/data/Extension;)V

    goto :goto_0

    .line 95
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/ExtensionPoint;->visitChildren(Lcom/google/gdata/data/ExtensionVisitor;)V

    .line 96
    return-void
.end method
