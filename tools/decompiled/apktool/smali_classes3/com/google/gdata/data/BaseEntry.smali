.class public abstract Lcom/google/gdata/data/BaseEntry;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "BaseEntry.java"

# interfaces
.implements Lcom/google/gdata/data/IEntry;
.implements Lcom/google/gdata/data/Kind$Adaptable;
.implements Lcom/google/gdata/data/Kind$Adaptor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/google/gdata/data/BaseEntry;",
        ">",
        "Lcom/google/gdata/data/ExtensionPoint;",
        "Lcom/google/gdata/data/IEntry;",
        "Lcom/google/gdata/data/Kind$Adaptable;",
        "Lcom/google/gdata/data/Kind$Adaptor;"
    }
.end annotation


# static fields
.field private static final namespaceDeclsAtom:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            ">;"
        }
    .end annotation
.end field

.field private static final namespaceDeclsRss:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private atomPubNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field protected state:Lcom/google/gdata/data/BaseEntry$EntryState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 951
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    sput-object v0, Lcom/google/gdata/data/BaseEntry;->namespaceDeclsAtom:Ljava/util/Collection;

    .line 954
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    sput-object v0, Lcom/google/gdata/data/BaseEntry;->namespaceDeclsRss:Ljava/util/Collection;

    .line 958
    sget-object v0, Lcom/google/gdata/data/BaseEntry;->namespaceDeclsAtom:Ljava/util/Collection;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 959
    sget-object v0, Lcom/google/gdata/data/BaseEntry;->namespaceDeclsRss:Ljava/util/Collection;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 960
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 228
    new-instance v0, Lcom/google/gdata/data/BaseEntry$EntryState;

    invoke-direct {v0}, Lcom/google/gdata/data/BaseEntry$EntryState;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    .line 229
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lcom/google/gdata/data/ExtensionPoint;-><init>(Lcom/google/gdata/data/ExtensionPoint;)V

    .line 250
    iget-object v0, p1, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iput-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    .line 251
    return-void
.end method

.method static synthetic access$100(Lcom/google/gdata/data/BaseEntry;)Lcom/google/gdata/util/common/xml/XmlNamespace;
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;->getAtomPubNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v0

    return-object v0
.end method

.method private getAtomPubNs()Lcom/google/gdata/util/common/xml/XmlNamespace;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->atomPubNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    if-nez v0, :cond_0

    .line 236
    invoke-static {}, Lcom/google/gdata/util/Namespaces;->getAtomPubNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/BaseEntry;->atomPubNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->atomPubNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    return-object v0
.end method

.method public static readEntry(Lcom/google/gdata/data/ParseSource;)Lcom/google/gdata/data/BaseEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/ParseSource;",
            ")",
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ParseException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 970
    invoke-static {p0, v0, v0}, Lcom/google/gdata/data/BaseEntry;->readEntry(Lcom/google/gdata/data/ParseSource;Ljava/lang/Class;Lcom/google/gdata/data/ExtensionProfile;)Lcom/google/gdata/data/BaseEntry;

    move-result-object v0

    return-object v0
.end method

.method public static readEntry(Lcom/google/gdata/data/ParseSource;Ljava/lang/Class;Lcom/google/gdata/data/ExtensionProfile;)Lcom/google/gdata/data/BaseEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/gdata/data/BaseEntry;",
            ">(",
            "Lcom/google/gdata/data/ParseSource;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/gdata/data/ExtensionProfile;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ParseException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 979
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/gdata/util/ParseUtil;->readEntry(Lcom/google/gdata/data/ParseSource;Ljava/lang/Class;Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/model/Schema;)Lcom/google/gdata/data/IEntry;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/BaseEntry;

    return-object v0
.end method


# virtual methods
.method public addAdaptor(Lcom/google/gdata/data/Kind$Adaptor;)V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->adaptable:Lcom/google/gdata/data/Kind$Adaptable;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/Kind$Adaptable;->addAdaptor(Lcom/google/gdata/data/Kind$Adaptor;)V

    .line 435
    return-void
.end method

.method public addHtmlLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 524
    new-instance v0, Lcom/google/gdata/data/Link;

    invoke-direct {v0}, Lcom/google/gdata/data/Link;-><init>()V

    .line 525
    const-string/jumbo v1, "alternate"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/Link;->setRel(Ljava/lang/String;)V

    .line 526
    sget-object v1, Lcom/google/gdata/data/ILink$Type;->HTML:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/Link;->setType(Ljava/lang/String;)V

    .line 527
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/Link;->setHref(Ljava/lang/String;)V

    .line 529
    if-eqz p2, :cond_0

    .line 530
    invoke-virtual {v0, p2}, Lcom/google/gdata/data/Link;->setHrefLang(Ljava/lang/String;)V

    .line 533
    :cond_0
    if-eqz p3, :cond_1

    .line 534
    invoke-virtual {v0, p3}, Lcom/google/gdata/data/Link;->setTitle(Ljava/lang/String;)V

    .line 537
    :cond_1
    iget-object v1, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v1, v1, Lcom/google/gdata/data/BaseEntry$EntryState;->links:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 538
    return-void
.end method

.method public bridge synthetic addLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/ILink;
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/gdata/data/BaseEntry;->addLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public addLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;
    .locals 1

    .prologue
    .line 375
    new-instance v0, Lcom/google/gdata/data/Link;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/gdata/data/Link;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/BaseEntry;->addLink(Lcom/google/gdata/data/Link;)V

    .line 377
    return-object v0
.end method

.method public addLink(Lcom/google/gdata/data/Link;)V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->links:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 372
    return-void
.end method

.method public delete()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 658
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->service:Lcom/google/gdata/client/Service;

    if-nez v0, :cond_0

    .line 659
    new-instance v0, Lcom/google/gdata/util/ServiceException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->entryNotAssociated:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ServiceException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0

    .line 662
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseEntry;->getEditLink()Lcom/google/gdata/data/Link;

    move-result-object v0

    .line 663
    if-nez v0, :cond_1

    .line 664
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Entry cannot be deleted"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 668
    :cond_1
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v0}, Lcom/google/gdata/data/Link;->getHref()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 669
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v2, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->service:Lcom/google/gdata/client/Service;

    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->etag:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/gdata/client/GDataProtocol;->isWeakEtag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v1, v0}, Lcom/google/gdata/client/Service;->delete(Ljava/net/URL;Ljava/lang/String;)V

    .line 671
    return-void

    .line 669
    :cond_2
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->etag:Ljava/lang/String;

    goto :goto_0
.end method

.method public generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 730
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/BaseEntry;->generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 731
    return-void
.end method

.method public generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 747
    new-instance v5, Ljava/util/LinkedHashSet;

    sget-object v0, Lcom/google/gdata/data/BaseEntry;->namespaceDeclsAtom:Ljava/util/Collection;

    invoke-direct {v5, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 749
    invoke-virtual {p2}, Lcom/google/gdata/data/ExtensionProfile;->getNamespaceDecls()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 751
    new-instance v4, Ljava/util/ArrayList;

    const/4 v0, 0x3

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 754
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->kind:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/gdata/client/Service;->getVersion()Lcom/google/gdata/util/Version;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/client/Service$Versions;->V1:Lcom/google/gdata/util/Version;

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/Version;->isAfter(Lcom/google/gdata/util/Version;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 756
    sget-object v0, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 757
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string/jumbo v1, "gd"

    const-string/jumbo v2, "kind"

    iget-object v3, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v3, v3, Lcom/google/gdata/data/BaseEntry$EntryState;->kind:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->etag:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/gdata/client/Service;->getVersion()Lcom/google/gdata/util/Version;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/client/Service$Versions;->V1:Lcom/google/gdata/util/Version;

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/Version;->isCompatible(Lcom/google/gdata/util/Version;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 762
    sget-object v0, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 763
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string/jumbo v1, "gd"

    const-string/jumbo v2, "etag"

    iget-object v3, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v3, v3, Lcom/google/gdata/data/BaseEntry$EntryState;->etag:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->fields:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/gdata/client/Service;->getVersion()Lcom/google/gdata/util/Version;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/client/Service$Versions;->V1:Lcom/google/gdata/util/Version;

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/Version;->isAfter(Lcom/google/gdata/util/Version;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 768
    sget-object v0, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 769
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string/jumbo v1, "gd"

    const-string/jumbo v2, "fields"

    iget-object v3, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v3, v3, Lcom/google/gdata/data/BaseEntry$EntryState;->fields:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    :cond_2
    new-instance v0, Lcom/google/gdata/data/AttributeGenerator;

    invoke-direct {v0}, Lcom/google/gdata/data/AttributeGenerator;-><init>()V

    .line 775
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/BaseEntry;->putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V

    .line 776
    invoke-virtual {p0, v4, v0}, Lcom/google/gdata/data/BaseEntry;->generateAttributes(Ljava/util/List;Lcom/google/gdata/data/AttributeGenerator;)V

    .line 778
    sget-object v2, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v3, "entry"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/BaseEntry;->generateStartElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 780
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->id:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 781
    sget-object v0, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v2, v2, Lcom/google/gdata/data/BaseEntry$EntryState;->id:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v6, v2}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 784
    :cond_3
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->published:Lcom/google/gdata/data/DateTime;

    if-eqz v0, :cond_4

    .line 785
    sget-object v0, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v1, "published"

    iget-object v2, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v2, v2, Lcom/google/gdata/data/BaseEntry$EntryState;->published:Lcom/google/gdata/data/DateTime;

    invoke-virtual {v2}, Lcom/google/gdata/data/DateTime;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v6, v2}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 789
    :cond_4
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->updated:Lcom/google/gdata/data/DateTime;

    if-eqz v0, :cond_5

    .line 790
    sget-object v0, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v1, "updated"

    iget-object v2, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v2, v2, Lcom/google/gdata/data/BaseEntry$EntryState;->updated:Lcom/google/gdata/data/DateTime;

    invoke-virtual {v2}, Lcom/google/gdata/data/DateTime;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v6, v2}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 794
    :cond_5
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->edited:Lcom/google/gdata/data/DateTime;

    if-eqz v0, :cond_6

    .line 795
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;->getAtomPubNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v0

    const-string/jumbo v1, "edited"

    iget-object v2, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v2, v2, Lcom/google/gdata/data/BaseEntry$EntryState;->edited:Lcom/google/gdata/data/DateTime;

    invoke-virtual {v2}, Lcom/google/gdata/data/DateTime;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v6, v2}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 799
    :cond_6
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->pubControl:Lcom/google/gdata/data/PubControl;

    if-eqz v0, :cond_7

    .line 800
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->pubControl:Lcom/google/gdata/data/PubControl;

    invoke-virtual {v0, p1, p2}, Lcom/google/gdata/data/PubControl;->generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 803
    :cond_7
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->startRepeatingElement()V

    .line 804
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->categories:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/Category;

    .line 805
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/Category;->generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;)V

    goto :goto_0

    .line 807
    :cond_8
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endRepeatingElement()V

    .line 809
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->title:Lcom/google/gdata/data/TextConstruct;

    if-eqz v0, :cond_9

    .line 810
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->title:Lcom/google/gdata/data/TextConstruct;

    const-string/jumbo v1, "title"

    invoke-virtual {v0, p1, v1}, Lcom/google/gdata/data/TextConstruct;->generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;)V

    .line 813
    :cond_9
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->summary:Lcom/google/gdata/data/TextConstruct;

    if-eqz v0, :cond_a

    .line 814
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->summary:Lcom/google/gdata/data/TextConstruct;

    const-string/jumbo v1, "summary"

    invoke-virtual {v0, p1, v1}, Lcom/google/gdata/data/TextConstruct;->generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;)V

    .line 817
    :cond_a
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->rights:Lcom/google/gdata/data/TextConstruct;

    if-eqz v0, :cond_b

    .line 818
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->rights:Lcom/google/gdata/data/TextConstruct;

    const-string/jumbo v1, "rights"

    invoke-virtual {v0, p1, v1}, Lcom/google/gdata/data/TextConstruct;->generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;)V

    .line 821
    :cond_b
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->content:Lcom/google/gdata/data/Content;

    if-eqz v0, :cond_c

    .line 822
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->content:Lcom/google/gdata/data/Content;

    invoke-virtual {v0, p1, p2}, Lcom/google/gdata/data/Content;->generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 825
    :cond_c
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->startRepeatingElement()V

    .line 826
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->links:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/Link;

    .line 827
    invoke-virtual {v0, p1, p2}, Lcom/google/gdata/data/Link;->generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    goto :goto_1

    .line 829
    :cond_d
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endRepeatingElement()V

    .line 831
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->startRepeatingElement()V

    .line 832
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->authors:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/Person;

    .line 833
    const-string/jumbo v2, "author"

    invoke-virtual {v0, p2, p1, v2}, Lcom/google/gdata/data/Person;->generateAtom(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;)V

    goto :goto_2

    .line 835
    :cond_e
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endRepeatingElement()V

    .line 837
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->startRepeatingElement()V

    .line 838
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->contributors:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/Person;

    .line 839
    const-string/jumbo v2, "contributor"

    invoke-virtual {v0, p2, p1, v2}, Lcom/google/gdata/data/Person;->generateAtom(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;)V

    goto :goto_3

    .line 841
    :cond_f
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endRepeatingElement()V

    .line 843
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->source:Lcom/google/gdata/data/Source;

    if-eqz v0, :cond_10

    .line 844
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->source:Lcom/google/gdata/data/Source;

    invoke-virtual {v0, p1, p2}, Lcom/google/gdata/data/Source;->generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 848
    :cond_10
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/BaseEntry;->generateExtensions(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 850
    sget-object v0, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v1, "entry"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 851
    return-void
.end method

.method public generateRss(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 868
    new-instance v5, Ljava/util/Vector;

    sget-object v0, Lcom/google/gdata/data/BaseEntry;->namespaceDeclsRss:Ljava/util/Collection;

    invoke-direct {v5, v0}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    .line 869
    invoke-virtual {p2}, Lcom/google/gdata/data/ExtensionProfile;->getNamespaceDecls()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 871
    sget-object v2, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v3, "item"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/BaseEntry;->generateStartElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 873
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 874
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 875
    new-instance v1, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string/jumbo v2, "isPermaLink"

    const-string/jumbo v3, "false"

    invoke-direct {v1, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 876
    sget-object v1, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v2, "guid"

    iget-object v3, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v3, v3, Lcom/google/gdata/data/BaseEntry$EntryState;->id:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 881
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->content:Lcom/google/gdata/data/Content;

    if-eqz v0, :cond_d

    .line 882
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->content:Lcom/google/gdata/data/Content;

    invoke-virtual {v0}, Lcom/google/gdata/data/Content;->getLang()Ljava/lang/String;

    move-result-object v0

    .line 885
    :goto_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v1, v1, Lcom/google/gdata/data/BaseEntry$EntryState;->summary:Lcom/google/gdata/data/TextConstruct;

    if-eqz v1, :cond_1

    .line 886
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->summary:Lcom/google/gdata/data/TextConstruct;

    invoke-virtual {v0}, Lcom/google/gdata/data/TextConstruct;->getLang()Ljava/lang/String;

    move-result-object v0

    .line 889
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v1, v1, Lcom/google/gdata/data/BaseEntry$EntryState;->title:Lcom/google/gdata/data/TextConstruct;

    if-eqz v1, :cond_2

    .line 890
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->title:Lcom/google/gdata/data/TextConstruct;

    invoke-virtual {v0}, Lcom/google/gdata/data/TextConstruct;->getLang()Ljava/lang/String;

    move-result-object v0

    .line 893
    :cond_2
    if-eqz v0, :cond_3

    .line 894
    sget-object v1, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v2, "language"

    invoke-virtual {p1, v1, v2, v4, v0}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 897
    :cond_3
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->published:Lcom/google/gdata/data/DateTime;

    if-eqz v0, :cond_4

    .line 898
    sget-object v0, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v1, "pubDate"

    iget-object v2, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v2, v2, Lcom/google/gdata/data/BaseEntry$EntryState;->published:Lcom/google/gdata/data/DateTime;

    invoke-virtual {v2}, Lcom/google/gdata/data/DateTime;->toStringRfc822()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v4, v2}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 902
    :cond_4
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->updated:Lcom/google/gdata/data/DateTime;

    if-eqz v0, :cond_5

    .line 903
    sget-object v0, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v1, "updated"

    iget-object v2, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v2, v2, Lcom/google/gdata/data/BaseEntry$EntryState;->updated:Lcom/google/gdata/data/DateTime;

    invoke-virtual {v2}, Lcom/google/gdata/data/DateTime;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v4, v2}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 907
    :cond_5
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->startRepeatingElement()V

    .line 908
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->categories:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/Category;

    .line 909
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/Category;->generateRss(Lcom/google/gdata/util/common/xml/XmlWriter;)V

    goto :goto_1

    .line 911
    :cond_6
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endRepeatingElement()V

    .line 913
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->title:Lcom/google/gdata/data/TextConstruct;

    if-eqz v0, :cond_7

    .line 914
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->title:Lcom/google/gdata/data/TextConstruct;

    const-string/jumbo v1, "title"

    sget-object v2, Lcom/google/gdata/data/TextConstruct$RssFormat;->PLAIN_TEXT:Lcom/google/gdata/data/TextConstruct$RssFormat;

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/gdata/data/TextConstruct;->generateRss(Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;Lcom/google/gdata/data/TextConstruct$RssFormat;)V

    .line 917
    :cond_7
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->summary:Lcom/google/gdata/data/TextConstruct;

    if-eqz v0, :cond_8

    .line 918
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->summary:Lcom/google/gdata/data/TextConstruct;

    const-string/jumbo v1, "summary"

    invoke-virtual {v0, p1, v1}, Lcom/google/gdata/data/TextConstruct;->generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;)V

    .line 921
    :cond_8
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->content:Lcom/google/gdata/data/Content;

    if-eqz v0, :cond_9

    .line 922
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->content:Lcom/google/gdata/data/Content;

    invoke-virtual {v0, p1, p2}, Lcom/google/gdata/data/Content;->generateRss(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 925
    :cond_9
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->startRepeatingElement()V

    .line 926
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->links:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/Link;

    .line 927
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/Link;->generateRss(Lcom/google/gdata/util/common/xml/XmlWriter;)V

    goto :goto_2

    .line 929
    :cond_a
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endRepeatingElement()V

    .line 931
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->startRepeatingElement()V

    .line 932
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->authors:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/Person;

    .line 933
    const-string/jumbo v2, "author"

    invoke-virtual {v0, p1, v2}, Lcom/google/gdata/data/Person;->generateRss(Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;)V

    goto :goto_3

    .line 935
    :cond_b
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endRepeatingElement()V

    .line 937
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->startRepeatingElement()V

    .line 938
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->contributors:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/Person;

    .line 939
    const-string/jumbo v2, "author"

    invoke-virtual {v0, p1, v2}, Lcom/google/gdata/data/Person;->generateRss(Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;)V

    goto :goto_4

    .line 941
    :cond_c
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endRepeatingElement()V

    .line 944
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/BaseEntry;->generateExtensions(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 946
    sget-object v0, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v1, "item"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 947
    return-void

    :cond_d
    move-object v0, v4

    goto/16 :goto_0
.end method

.method public getAdaptedEntry()Lcom/google/gdata/data/BaseEntry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/Kind$AdaptorException;
        }
    .end annotation

    .prologue
    .line 1283
    const/4 v1, 0x0

    .line 1286
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseEntry;->getAdaptors()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/Kind$Adaptor;

    .line 1287
    instance-of v3, v0, Lcom/google/gdata/data/BaseEntry;

    if-eqz v3, :cond_0

    .line 1292
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1294
    :cond_1
    check-cast v0, Lcom/google/gdata/data/BaseEntry;

    :goto_1
    move-object v1, v0

    .line 1296
    goto :goto_0

    .line 1298
    :cond_2
    return-object v1

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public getAdaptor(Ljava/lang/Class;)Lcom/google/gdata/data/Kind$Adaptor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/gdata/data/Kind$Adaptor;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 442
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->adaptable:Lcom/google/gdata/data/Kind$Adaptable;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/Kind$Adaptable;->getAdaptor(Ljava/lang/Class;)Lcom/google/gdata/data/Kind$Adaptor;

    move-result-object v0

    return-object v0
.end method

.method public getAdaptors()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/data/Kind$Adaptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 438
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->adaptable:Lcom/google/gdata/data/Kind$Adaptable;

    invoke-interface {v0}, Lcom/google/gdata/data/Kind$Adaptable;->getAdaptors()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getAuthors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/Person;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->authors:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getCanEdit()Z
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-boolean v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->canEdit:Z

    return v0
.end method

.method public getCategories()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/gdata/data/Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->categories:Ljava/util/HashSet;

    return-object v0
.end method

.method public getContent()Lcom/google/gdata/data/Content;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->content:Lcom/google/gdata/data/Content;

    return-object v0
.end method

.method public bridge synthetic getContent()Lcom/google/gdata/data/IContent;
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseEntry;->getContent()Lcom/google/gdata/data/Content;

    move-result-object v0

    return-object v0
.end method

.method protected getContentHandlerInfo(Lcom/google/gdata/data/ExtensionProfile;Lorg/xml/sax/Attributes;)Lcom/google/gdata/data/Content$ChildHandlerInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1039
    invoke-static {p1, p2}, Lcom/google/gdata/data/Content;->getChildHandler(Lcom/google/gdata/data/ExtensionProfile;Lorg/xml/sax/Attributes;)Lcom/google/gdata/data/Content$ChildHandlerInfo;

    move-result-object v0

    return-object v0
.end method

.method public getContributors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/Person;",
            ">;"
        }
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->contributors:Ljava/util/LinkedList;

    return-object v0
.end method

.method public bridge synthetic getEditLink()Lcom/google/gdata/data/ILink;
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseEntry;->getEditLink()Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getEditLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 550
    const-string/jumbo v0, "edit"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/BaseEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    .line 551
    return-object v0
.end method

.method public getEdited()Lcom/google/gdata/data/DateTime;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->edited:Lcom/google/gdata/data/DateTime;

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1

    .prologue
    .line 1045
    new-instance v0, Lcom/google/gdata/data/BaseEntry$AtomHandler;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/data/BaseEntry$AtomHandler;-><init>(Lcom/google/gdata/data/BaseEntry;Lcom/google/gdata/data/ExtensionProfile;)V

    return-object v0
.end method

.method public getHtmlLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 574
    const-string/jumbo v0, "alternate"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->HTML:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/BaseEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    .line 575
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/ILink;
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/BaseEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;
    .locals 3

    .prologue
    .line 454
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->links:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/Link;

    .line 455
    invoke-virtual {v0, p1, p2}, Lcom/google/gdata/data/Link;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 460
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLinks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/Link;",
            ">;"
        }
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->links:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getLinks(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/Link;",
            ">;"
        }
    .end annotation

    .prologue
    .line 474
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 475
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->links:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/Link;

    .line 476
    invoke-virtual {v0, p1, p2}, Lcom/google/gdata/data/Link;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 477
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 480
    :cond_1
    return-object v1
.end method

.method public bridge synthetic getMediaEditLink()Lcom/google/gdata/data/ILink;
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseEntry;->getMediaEditLink()Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getMediaEditLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 558
    const-string/jumbo v0, "edit-media"

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/BaseEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    .line 559
    if-nez v0, :cond_0

    .line 562
    const-string/jumbo v0, "media-edit"

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/BaseEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    .line 564
    :cond_0
    return-object v0
.end method

.method public getPlainTextContent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseEntry;->getTextContent()Lcom/google/gdata/data/TextContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gdata/data/TextContent;->getContent()Lcom/google/gdata/data/TextConstruct;

    move-result-object v0

    .line 357
    instance-of v1, v0, Lcom/google/gdata/data/PlainTextConstruct;

    if-nez v1, :cond_0

    .line 358
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "TextConstruct object is not a PlainTextConstruct"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/TextConstruct;->getPlainText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPubControl()Lcom/google/gdata/data/PubControl;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->pubControl:Lcom/google/gdata/data/PubControl;

    return-object v0
.end method

.method public getPublished()Lcom/google/gdata/data/DateTime;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->published:Lcom/google/gdata/data/DateTime;

    return-object v0
.end method

.method public bridge synthetic getResumableEditMediaLink()Lcom/google/gdata/data/ILink;
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseEntry;->getResumableEditMediaLink()Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getResumableEditMediaLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 569
    const-string/jumbo v0, "http://schemas.google.com/g/2005#resumable-edit-media"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/BaseEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getRights()Lcom/google/gdata/data/TextConstruct;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->rights:Lcom/google/gdata/data/TextConstruct;

    return-object v0
.end method

.method public getSelectedFields()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->fields:Ljava/lang/String;

    return-object v0
.end method

.method public getSelf()Lcom/google/gdata/data/BaseEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 586
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->service:Lcom/google/gdata/client/Service;

    if-nez v0, :cond_0

    .line 587
    new-instance v0, Lcom/google/gdata/util/ServiceException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->entryNotAssociated:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ServiceException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0

    .line 590
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseEntry;->getSelfLink()Lcom/google/gdata/data/Link;

    move-result-object v0

    .line 591
    if-nez v0, :cond_1

    .line 592
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Entry cannot be retrieved"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 594
    :cond_1
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v0}, Lcom/google/gdata/data/Link;->getHref()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 598
    :try_start_0
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->etag:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 599
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->service:Lcom/google/gdata/client/Service;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v3, v3, Lcom/google/gdata/data/BaseEntry$EntryState;->etag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/gdata/client/Service;->getEntry(Ljava/net/URL;Ljava/lang/Class;Ljava/lang/String;)Lcom/google/gdata/data/IEntry;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/BaseEntry;

    .line 606
    :goto_0
    return-object v0

    .line 602
    :cond_2
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v2, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->service:Lcom/google/gdata/client/Service;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->edited:Lcom/google/gdata/data/DateTime;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->edited:Lcom/google/gdata/data/DateTime;

    :goto_1
    invoke-virtual {v2, v1, v3, v0}, Lcom/google/gdata/client/Service;->getEntry(Ljava/net/URL;Ljava/lang/Class;Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/data/IEntry;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/BaseEntry;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->updated:Lcom/google/gdata/data/DateTime;
    :try_end_0
    .catch Lcom/google/gdata/util/NotModifiedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 605
    :catch_0
    move-exception v0

    move-object v0, p0

    .line 606
    goto :goto_0
.end method

.method public bridge synthetic getSelfLink()Lcom/google/gdata/data/ILink;
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseEntry;->getSelfLink()Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getSelfLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 543
    const-string/jumbo v0, "self"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/BaseEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    .line 544
    return-object v0
.end method

.method public getService()Lcom/google/gdata/client/Service;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->service:Lcom/google/gdata/client/Service;

    return-object v0
.end method

.method public getSource()Lcom/google/gdata/data/Source;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->source:Lcom/google/gdata/data/Source;

    return-object v0
.end method

.method public bridge synthetic getSummary()Lcom/google/gdata/data/ITextConstruct;
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseEntry;->getSummary()Lcom/google/gdata/data/TextConstruct;

    move-result-object v0

    return-object v0
.end method

.method public getSummary()Lcom/google/gdata/data/TextConstruct;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->summary:Lcom/google/gdata/data/TextConstruct;

    return-object v0
.end method

.method public getTextContent()Lcom/google/gdata/data/TextContent;
    .locals 2

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseEntry;->getContent()Lcom/google/gdata/data/Content;

    move-result-object v0

    .line 340
    instance-of v0, v0, Lcom/google/gdata/data/TextContent;

    if-nez v0, :cond_0

    .line 341
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Content object is not a TextContent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseEntry;->getContent()Lcom/google/gdata/data/Content;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/TextContent;

    return-object v0
.end method

.method public bridge synthetic getTitle()Lcom/google/gdata/data/ITextConstruct;
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseEntry;->getTitle()Lcom/google/gdata/data/TextConstruct;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Lcom/google/gdata/data/TextConstruct;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->title:Lcom/google/gdata/data/TextConstruct;

    return-object v0
.end method

.method public getUpdated()Lcom/google/gdata/data/DateTime;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->updated:Lcom/google/gdata/data/DateTime;

    return-object v0
.end method

.method public getVersionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->versionId:Ljava/lang/String;

    return-object v0
.end method

.method public isDraft()Z
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->pubControl:Lcom/google/gdata/data/PubControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->pubControl:Lcom/google/gdata/data/PubControl;

    invoke-virtual {v0}, Lcom/google/gdata/data/PubControl;->isDraft()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parseAtom(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/XmlEventSource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 1030
    new-instance v0, Lcom/google/gdata/data/BaseEntry$AtomHandler;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/data/BaseEntry$AtomHandler;-><init>(Lcom/google/gdata/data/BaseEntry;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 1031
    new-instance v1, Lcom/google/gdata/util/EventSourceParser;

    const-string/jumbo v2, "http://www.w3.org/2005/Atom"

    const-string/jumbo v3, "entry"

    invoke-direct {v1, v0, v2, v3}, Lcom/google/gdata/util/EventSourceParser;-><init>(Lcom/google/gdata/util/XmlParser$ElementHandler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/google/gdata/util/EventSourceParser;->parse(Lcom/google/gdata/data/XmlEventSource;)V

    .line 1033
    return-void
.end method

.method public parseAtom(Lcom/google/gdata/data/ExtensionProfile;Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 995
    new-instance v0, Lcom/google/gdata/data/BaseEntry$AtomHandler;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/data/BaseEntry$AtomHandler;-><init>(Lcom/google/gdata/data/BaseEntry;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 996
    new-instance v1, Lcom/google/gdata/util/XmlParser;

    invoke-direct {v1}, Lcom/google/gdata/util/XmlParser;-><init>()V

    const-string/jumbo v2, "http://www.w3.org/2005/Atom"

    const-string/jumbo v3, "entry"

    invoke-virtual {v1, p2, v0, v2, v3}, Lcom/google/gdata/util/XmlParser;->parse(Ljava/io/InputStream;Lcom/google/gdata/util/XmlParser$ElementHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    return-void
.end method

.method public parseAtom(Lcom/google/gdata/data/ExtensionProfile;Ljava/io/Reader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 1014
    new-instance v0, Lcom/google/gdata/data/BaseEntry$AtomHandler;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/data/BaseEntry$AtomHandler;-><init>(Lcom/google/gdata/data/BaseEntry;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 1015
    new-instance v1, Lcom/google/gdata/util/XmlParser;

    invoke-direct {v1}, Lcom/google/gdata/util/XmlParser;-><init>()V

    const-string/jumbo v2, "http://www.w3.org/2005/Atom"

    const-string/jumbo v3, "entry"

    invoke-virtual {v1, p2, v0, v2, v3}, Lcom/google/gdata/util/XmlParser;->parse(Ljava/io/Reader;Lcom/google/gdata/util/XmlParser$ElementHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    return-void
.end method

.method public removeLinks()V
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->links:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 507
    return-void
.end method

.method public removeLinks(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->links:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 494
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 495
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/Link;

    .line 496
    invoke-virtual {v0, p1, p2}, Lcom/google/gdata/data/Link;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 500
    :cond_1
    return-void
.end method

.method public setCanEdit(Z)V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iput-boolean p1, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->canEdit:Z

    return-void
.end method

.method public setContent(Lcom/google/gdata/data/Content;)V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iput-object p1, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->content:Lcom/google/gdata/data/Content;

    return-void
.end method

.method public setContent(Lcom/google/gdata/data/TextConstruct;)V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    new-instance v1, Lcom/google/gdata/data/TextContent;

    invoke-direct {v1, p1}, Lcom/google/gdata/data/TextContent;-><init>(Lcom/google/gdata/data/TextConstruct;)V

    iput-object v1, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->content:Lcom/google/gdata/data/Content;

    .line 366
    return-void
.end method

.method public setDraft(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->pubControl:Lcom/google/gdata/data/PubControl;

    if-nez v0, :cond_1

    .line 395
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    :goto_0
    return-void

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    new-instance v1, Lcom/google/gdata/data/PubControl;

    invoke-direct {v1}, Lcom/google/gdata/data/PubControl;-><init>()V

    iput-object v1, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->pubControl:Lcom/google/gdata/data/PubControl;

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->pubControl:Lcom/google/gdata/data/PubControl;

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/PubControl;->setDraft(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public setEdited(Lcom/google/gdata/data/DateTime;)V
    .locals 2

    .prologue
    .line 309
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/gdata/data/DateTime;->getTzShift()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 310
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Entry.edited must have a timezone."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iput-object p1, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->edited:Lcom/google/gdata/data/DateTime;

    .line 313
    return-void
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iput-object p1, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->etag:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 255
    if-eqz p1, :cond_0

    const-string/jumbo v0, "-"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Entry.id must not be equal to \'-\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iput-object p1, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->id:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public setKind(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iput-object p1, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->kind:Ljava/lang/String;

    return-void
.end method

.method public setPubControl(Lcom/google/gdata/data/PubControl;)V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iput-object p1, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->pubControl:Lcom/google/gdata/data/PubControl;

    return-void
.end method

.method public setPublished(Lcom/google/gdata/data/DateTime;)V
    .locals 2

    .prologue
    .line 291
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/gdata/data/DateTime;->getTzShift()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 292
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Entry.published must have a timezone."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iput-object p1, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->published:Lcom/google/gdata/data/DateTime;

    .line 296
    return-void
.end method

.method public setRights(Lcom/google/gdata/data/TextConstruct;)V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iput-object p1, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->rights:Lcom/google/gdata/data/TextConstruct;

    return-void
.end method

.method public setSelectedFields(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iput-object p1, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->fields:Ljava/lang/String;

    return-void
.end method

.method public setService(Lcom/google/gdata/client/Service;)V
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iput-object p1, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->service:Lcom/google/gdata/client/Service;

    return-void
.end method

.method public setSource(Lcom/google/gdata/data/Source;)V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iput-object p1, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->source:Lcom/google/gdata/data/Source;

    return-void
.end method

.method public setSummary(Lcom/google/gdata/data/TextConstruct;)V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iput-object p1, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->summary:Lcom/google/gdata/data/TextConstruct;

    return-void
.end method

.method public setTitle(Lcom/google/gdata/data/TextConstruct;)V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iput-object p1, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->title:Lcom/google/gdata/data/TextConstruct;

    return-void
.end method

.method public setUpdated(Lcom/google/gdata/data/DateTime;)V
    .locals 2

    .prologue
    .line 300
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/gdata/data/DateTime;->getTzShift()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 301
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Entry.updated must have a timezone."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iput-object p1, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->updated:Lcom/google/gdata/data/DateTime;

    .line 304
    return-void
.end method

.method public setVersionId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iput-object p1, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->versionId:Ljava/lang/String;

    return-void
.end method

.method public update()Lcom/google/gdata/data/BaseEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 629
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->service:Lcom/google/gdata/client/Service;

    if-nez v0, :cond_0

    .line 630
    new-instance v0, Lcom/google/gdata/util/ServiceException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->entryNotAssociated:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ServiceException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0

    .line 633
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseEntry;->getEditLink()Lcom/google/gdata/data/Link;

    move-result-object v0

    .line 634
    if-nez v0, :cond_1

    .line 635
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Entry cannot be updated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 638
    :cond_1
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v0}, Lcom/google/gdata/data/Link;->getHref()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->service:Lcom/google/gdata/client/Service;

    invoke-virtual {v0, v1, p0}, Lcom/google/gdata/client/Service;->update(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/BaseEntry;

    return-object v0
.end method

.method protected visitChildren(Lcom/google/gdata/data/ExtensionVisitor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/ExtensionVisitor$StoppedException;
        }
    .end annotation

    .prologue
    .line 716
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->content:Lcom/google/gdata/data/Content;

    instance-of v0, v0, Lcom/google/gdata/data/OutOfLineContent;

    if-eqz v0, :cond_0

    .line 717
    new-instance v1, Lcom/google/gdata/data/BaseEntry$OutOfLineReference;

    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->content:Lcom/google/gdata/data/Content;

    check-cast v0, Lcom/google/gdata/data/OutOfLineContent;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/google/gdata/data/BaseEntry$OutOfLineReference;-><init>(Lcom/google/gdata/data/BaseEntry;Lcom/google/gdata/data/OutOfLineContent;Lcom/google/gdata/data/BaseEntry$1;)V

    invoke-virtual {p0, p1, v1}, Lcom/google/gdata/data/BaseEntry;->visitChild(Lcom/google/gdata/data/ExtensionVisitor;Lcom/google/gdata/data/Extension;)V

    .line 722
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseEntry;->getLinks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/Link;

    .line 723
    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/BaseEntry;->visitChild(Lcom/google/gdata/data/ExtensionVisitor;Lcom/google/gdata/data/Extension;)V

    goto :goto_0

    .line 725
    :cond_1
    invoke-super {p0, p1}, Lcom/google/gdata/data/ExtensionPoint;->visitChildren(Lcom/google/gdata/data/ExtensionVisitor;)V

    .line 726
    return-void
.end method
