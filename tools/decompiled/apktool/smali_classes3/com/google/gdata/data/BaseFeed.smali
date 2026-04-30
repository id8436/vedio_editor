.class public abstract Lcom/google/gdata/data/BaseFeed;
.super Lcom/google/gdata/data/Source;
.source "BaseFeed.java"

# interfaces
.implements Lcom/google/gdata/data/IFeed;
.implements Lcom/google/gdata/data/Kind$Adaptable;
.implements Lcom/google/gdata/data/Kind$Adaptor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Lcom/google/gdata/data/BaseFeed;",
        "E:",
        "Lcom/google/gdata/data/BaseEntry;",
        ">",
        "Lcom/google/gdata/data/Source;",
        "Lcom/google/gdata/data/IFeed;",
        "Lcom/google/gdata/data/Kind$Adaptable;",
        "Lcom/google/gdata/data/Kind$Adaptor;"
    }
.end annotation


# static fields
.field private static final rssHeaderAttrs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field

.field protected entryClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+TE;>;"
        }
    .end annotation
.end field

.field protected feedState:Lcom/google/gdata/data/BaseFeed$FeedState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 802
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    sput-object v0, Lcom/google/gdata/data/BaseFeed;->rssHeaderAttrs:Ljava/util/Collection;

    .line 806
    sget-object v0, Lcom/google/gdata/data/BaseFeed;->rssHeaderAttrs:Ljava/util/Collection;

    new-instance v1, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string/jumbo v2, "version"

    const-string/jumbo v3, "2.0"

    invoke-direct {v1, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 807
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/google/gdata/data/Source;-><init>()V

    .line 191
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/BaseFeed;->entries:Ljava/util/List;

    .line 204
    new-instance v0, Lcom/google/gdata/data/BaseFeed$FeedState;

    invoke-direct {v0}, Lcom/google/gdata/data/BaseFeed$FeedState;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    .line 205
    iput-object p1, p0, Lcom/google/gdata/data/BaseFeed;->entryClass:Ljava/lang/Class;

    .line 206
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Lcom/google/gdata/data/BaseFeed;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TE;>;",
            "Lcom/google/gdata/data/BaseFeed",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 217
    invoke-direct {p0, p2}, Lcom/google/gdata/data/Source;-><init>(Lcom/google/gdata/data/Source;)V

    .line 191
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/BaseFeed;->entries:Ljava/util/List;

    .line 218
    iget-object v0, p2, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iput-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    .line 219
    iput-object p1, p0, Lcom/google/gdata/data/BaseFeed;->entryClass:Ljava/lang/Class;

    .line 221
    return-void
.end method

.method private generateEntries(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 582
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->startRepeatingElement()V

    .line 583
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/BaseEntry;

    .line 584
    invoke-virtual {v0, p1, p2}, Lcom/google/gdata/data/BaseEntry;->generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    goto :goto_0

    .line 586
    :cond_0
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endRepeatingElement()V

    .line 587
    return-void
.end method

.method public static readFeed(Lcom/google/gdata/data/ParseSource;)Lcom/google/gdata/data/BaseFeed;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/ParseSource;",
            ")",
            "Lcom/google/gdata/data/BaseFeed",
            "<**>;"
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

    .line 817
    invoke-static {p0, v0, v0}, Lcom/google/gdata/data/BaseFeed;->readFeed(Lcom/google/gdata/data/ParseSource;Ljava/lang/Class;Lcom/google/gdata/data/ExtensionProfile;)Lcom/google/gdata/data/BaseFeed;

    move-result-object v0

    return-object v0
.end method

.method public static readFeed(Lcom/google/gdata/data/ParseSource;Ljava/lang/Class;Lcom/google/gdata/data/ExtensionProfile;)Lcom/google/gdata/data/BaseFeed;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Lcom/google/gdata/data/BaseFeed;",
            ">(",
            "Lcom/google/gdata/data/ParseSource;",
            "Ljava/lang/Class",
            "<TF;>;",
            "Lcom/google/gdata/data/ExtensionProfile;",
            ")TF;"
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
    .line 830
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/gdata/util/ParseUtil;->readFeed(Lcom/google/gdata/data/ParseSource;Ljava/lang/Class;Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/model/Schema;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/BaseFeed;

    return-object v0
.end method


# virtual methods
.method public addAdaptor(Lcom/google/gdata/data/Kind$Adaptor;)V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->adaptable:Lcom/google/gdata/data/Kind$Adaptable;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/Kind$Adaptable;->addAdaptor(Lcom/google/gdata/data/Kind$Adaptor;)V

    .line 399
    return-void
.end method

.method public bridge synthetic addLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/ILink;
    .locals 1

    .prologue
    .line 121
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/data/Source;->addLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public createEntry()Lcom/google/gdata/data/BaseEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 416
    :try_start_0
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->entryClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/BaseEntry;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 424
    iget-object v1, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v1, v1, Lcom/google/gdata/data/BaseFeed$FeedState;->service:Lcom/google/gdata/client/Service;

    if-eqz v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v1, v1, Lcom/google/gdata/data/BaseFeed$FeedState;->service:Lcom/google/gdata/client/Service;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/BaseEntry;->setService(Lcom/google/gdata/client/Service;)V

    .line 428
    :cond_0
    return-object v0

    .line 417
    :catch_0
    move-exception v0

    .line 418
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 419
    :catch_1
    move-exception v0

    .line 420
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic createEntry()Lcom/google/gdata/data/IEntry;
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseFeed;->createEntry()Lcom/google/gdata/data/BaseEntry;

    move-result-object v0

    return-object v0
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseFeed;->createEntry()Lcom/google/gdata/data/BaseEntry;

    move-result-object v0

    .line 235
    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->addDeclarations(Lcom/google/gdata/data/Kind$Adaptor;)V

    .line 236
    return-void
.end method

.method public generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 554
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/BaseFeed;->generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 555
    return-void
.end method

.method public generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 572
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/google/gdata/data/BaseFeed;->generateFeedStart(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/util/Collection;)V

    .line 574
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/data/BaseFeed;->generateEntries(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 576
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/BaseFeed;->generateFeedEnd(Lcom/google/gdata/util/common/xml/XmlWriter;)V

    .line 577
    return-void
.end method

.method public generateFeedEnd(Lcom/google/gdata/util/common/xml/XmlWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 597
    sget-object v0, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v1, "feed"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 598
    return-void
.end method

.method public generateFeedStart(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/ExtensionProfile;",
            "Lcom/google/gdata/util/common/xml/XmlWriter;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 617
    invoke-static {}, Lcom/google/gdata/util/Namespaces;->getOpenSearchNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v6

    .line 619
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 620
    sget-object v0, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 621
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 622
    invoke-virtual {p1}, Lcom/google/gdata/data/ExtensionProfile;->getNamespaceDecls()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 625
    new-instance v4, Ljava/util/ArrayList;

    const/4 v0, 0x3

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 628
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->kind:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/gdata/client/Service;->getVersion()Lcom/google/gdata/util/Version;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/client/Service$Versions;->V1:Lcom/google/gdata/util/Version;

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/Version;->isAfter(Lcom/google/gdata/util/Version;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    sget-object v0, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 631
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string/jumbo v1, "gd"

    const-string/jumbo v2, "kind"

    iget-object v3, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v3, v3, Lcom/google/gdata/data/BaseFeed$FeedState;->kind:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->etag:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/gdata/client/Service;->getVersion()Lcom/google/gdata/util/Version;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/client/Service$Versions;->V1:Lcom/google/gdata/util/Version;

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/Version;->isAfter(Lcom/google/gdata/util/Version;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 637
    sget-object v0, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 638
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string/jumbo v1, "gd"

    const-string/jumbo v2, "etag"

    iget-object v3, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v3, v3, Lcom/google/gdata/data/BaseFeed$FeedState;->etag:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->fields:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/gdata/client/Service;->getVersion()Lcom/google/gdata/util/Version;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/client/Service$Versions;->V1:Lcom/google/gdata/util/Version;

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/Version;->isAfter(Lcom/google/gdata/util/Version;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 644
    sget-object v0, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 645
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string/jumbo v1, "gd"

    const-string/jumbo v2, "fields"

    iget-object v3, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v3, v3, Lcom/google/gdata/data/BaseFeed$FeedState;->fields:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    :cond_2
    new-instance v0, Lcom/google/gdata/data/AttributeGenerator;

    invoke-direct {v0}, Lcom/google/gdata/data/AttributeGenerator;-><init>()V

    .line 651
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/BaseFeed;->putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V

    .line 652
    invoke-virtual {p0, v4, v0}, Lcom/google/gdata/data/BaseFeed;->generateAttributes(Ljava/util/List;Lcom/google/gdata/data/AttributeGenerator;)V

    .line 654
    sget-object v2, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v3, "feed"

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/BaseFeed;->generateStartElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 657
    invoke-virtual {p0, p2, p1}, Lcom/google/gdata/data/BaseFeed;->generateInnerAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 660
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseFeed;->getTotalResults()I

    move-result v0

    if-eq v0, v7, :cond_3

    .line 661
    const-string/jumbo v0, "totalResults"

    iget-object v1, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget v1, v1, Lcom/google/gdata/data/BaseFeed$FeedState;->totalResults:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v6, v0, v8, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 665
    :cond_3
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseFeed;->getStartIndex()I

    move-result v0

    if-eq v0, v7, :cond_4

    .line 666
    const-string/jumbo v0, "startIndex"

    iget-object v1, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget v1, v1, Lcom/google/gdata/data/BaseFeed$FeedState;->startIndex:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v6, v0, v8, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 670
    :cond_4
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseFeed;->getItemsPerPage()I

    move-result v0

    if-eq v0, v7, :cond_5

    .line 671
    const-string/jumbo v0, "itemsPerPage"

    iget-object v1, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget v1, v1, Lcom/google/gdata/data/BaseFeed$FeedState;->itemsPerPage:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v6, v0, v8, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 676
    :cond_5
    invoke-virtual {p0, p2, p1}, Lcom/google/gdata/data/BaseFeed;->generateExtensions(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 677
    return-void
.end method

.method public generateRss(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 694
    invoke-static {}, Lcom/google/gdata/util/Namespaces;->getOpenSearchNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v6

    .line 696
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 697
    sget-object v1, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 698
    invoke-virtual {v0, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 699
    invoke-virtual {p2}, Lcom/google/gdata/data/ExtensionProfile;->getNamespaceDecls()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 701
    sget-object v1, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v2, "rss"

    sget-object v3, Lcom/google/gdata/data/BaseFeed;->rssHeaderAttrs:Ljava/util/Collection;

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/google/gdata/util/common/xml/XmlWriter;->startElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 703
    sget-object v2, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v3, "channel"

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/BaseFeed;->generateStartElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 705
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v0, v0, Lcom/google/gdata/data/Source$SourceState;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 706
    sget-object v0, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/google/gdata/data/BaseFeed;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v2, v2, Lcom/google/gdata/data/Source$SourceState;->id:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v4, v2}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->xmlBlob:Lcom/google/gdata/util/XmlBlob;

    if-eqz v0, :cond_1

    .line 710
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->xmlBlob:Lcom/google/gdata/util/XmlBlob;

    invoke-virtual {v0}, Lcom/google/gdata/util/XmlBlob;->getLang()Ljava/lang/String;

    move-result-object v0

    .line 711
    if-eqz v0, :cond_1

    .line 712
    sget-object v1, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v2, "language"

    invoke-virtual {p1, v1, v2, v4, v0}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 716
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v0, v0, Lcom/google/gdata/data/Source$SourceState;->updated:Lcom/google/gdata/data/DateTime;

    if-eqz v0, :cond_2

    .line 717
    sget-object v0, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v1, "lastBuildDate"

    iget-object v2, p0, Lcom/google/gdata/data/BaseFeed;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v2, v2, Lcom/google/gdata/data/Source$SourceState;->updated:Lcom/google/gdata/data/DateTime;

    invoke-virtual {v2}, Lcom/google/gdata/data/DateTime;->toStringRfc822()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v4, v2}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 721
    :cond_2
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->startRepeatingElement()V

    .line 722
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v0, v0, Lcom/google/gdata/data/Source$SourceState;->categories:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/Category;

    .line 723
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/Category;->generateRss(Lcom/google/gdata/util/common/xml/XmlWriter;)V

    goto :goto_0

    .line 725
    :cond_3
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endRepeatingElement()V

    .line 727
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v0, v0, Lcom/google/gdata/data/Source$SourceState;->title:Lcom/google/gdata/data/TextConstruct;

    if-eqz v0, :cond_4

    .line 728
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v0, v0, Lcom/google/gdata/data/Source$SourceState;->title:Lcom/google/gdata/data/TextConstruct;

    const-string/jumbo v1, "title"

    sget-object v2, Lcom/google/gdata/data/TextConstruct$RssFormat;->PLAIN_TEXT:Lcom/google/gdata/data/TextConstruct$RssFormat;

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/gdata/data/TextConstruct;->generateRss(Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;Lcom/google/gdata/data/TextConstruct$RssFormat;)V

    .line 732
    :cond_4
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v0, v0, Lcom/google/gdata/data/Source$SourceState;->subtitle:Lcom/google/gdata/data/TextConstruct;

    if-eqz v0, :cond_10

    .line 733
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v0, v0, Lcom/google/gdata/data/Source$SourceState;->subtitle:Lcom/google/gdata/data/TextConstruct;

    const-string/jumbo v1, "description"

    sget-object v2, Lcom/google/gdata/data/TextConstruct$RssFormat;->FULL_HTML:Lcom/google/gdata/data/TextConstruct$RssFormat;

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/gdata/data/TextConstruct;->generateRss(Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;Lcom/google/gdata/data/TextConstruct$RssFormat;)V

    .line 739
    :goto_1
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseFeed;->getHtmlLink()Lcom/google/gdata/data/Link;

    move-result-object v1

    .line 740
    if-eqz v1, :cond_5

    .line 741
    sget-object v0, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v2, "link"

    invoke-virtual {v1}, Lcom/google/gdata/data/Link;->getHref()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v4, v3}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 744
    :cond_5
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v0, v0, Lcom/google/gdata/data/Source$SourceState;->logo:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v0, v0, Lcom/google/gdata/data/Source$SourceState;->icon:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 745
    :cond_6
    sget-object v0, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v2, "image"

    invoke-virtual {p1, v0, v2, v4, v4}, Lcom/google/gdata/util/common/xml/XmlWriter;->startElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 746
    sget-object v2, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v3, "url"

    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v0, v0, Lcom/google/gdata/data/Source$SourceState;->logo:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v0, v0, Lcom/google/gdata/data/Source$SourceState;->logo:Ljava/lang/String;

    :goto_2
    invoke-virtual {p1, v2, v3, v4, v0}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 748
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v0, v0, Lcom/google/gdata/data/Source$SourceState;->title:Lcom/google/gdata/data/TextConstruct;

    if-eqz v0, :cond_7

    .line 749
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v0, v0, Lcom/google/gdata/data/Source$SourceState;->title:Lcom/google/gdata/data/TextConstruct;

    const-string/jumbo v2, "title"

    sget-object v3, Lcom/google/gdata/data/TextConstruct$RssFormat;->PLAIN_TEXT:Lcom/google/gdata/data/TextConstruct$RssFormat;

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/gdata/data/TextConstruct;->generateRss(Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;Lcom/google/gdata/data/TextConstruct$RssFormat;)V

    .line 752
    :cond_7
    if-eqz v1, :cond_8

    .line 753
    sget-object v0, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v2, "link"

    invoke-virtual {v1}, Lcom/google/gdata/data/Link;->getHref()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v2, v4, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 755
    :cond_8
    sget-object v0, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v1, "image"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 758
    :cond_9
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v0, v0, Lcom/google/gdata/data/Source$SourceState;->rights:Lcom/google/gdata/data/TextConstruct;

    if-eqz v0, :cond_a

    .line 759
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v0, v0, Lcom/google/gdata/data/Source$SourceState;->rights:Lcom/google/gdata/data/TextConstruct;

    const-string/jumbo v1, "copyright"

    sget-object v2, Lcom/google/gdata/data/TextConstruct$RssFormat;->PLAIN_TEXT:Lcom/google/gdata/data/TextConstruct$RssFormat;

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/gdata/data/TextConstruct;->generateRss(Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;Lcom/google/gdata/data/TextConstruct$RssFormat;)V

    .line 763
    :cond_a
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v0, v0, Lcom/google/gdata/data/Source$SourceState;->authors:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 764
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v0, v0, Lcom/google/gdata/data/Source$SourceState;->authors:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/Person;

    const-string/jumbo v1, "managingEditor"

    invoke-virtual {v0, p1, v1}, Lcom/google/gdata/data/Person;->generateRss(Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;)V

    .line 767
    :cond_b
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v0, v0, Lcom/google/gdata/data/Source$SourceState;->generator:Lcom/google/gdata/data/Generator;

    if-eqz v0, :cond_c

    .line 768
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v0, v0, Lcom/google/gdata/data/Source$SourceState;->generator:Lcom/google/gdata/data/Generator;

    invoke-virtual {v0}, Lcom/google/gdata/data/Generator;->getName()Ljava/lang/String;

    move-result-object v0

    .line 769
    if-eqz v0, :cond_c

    .line 770
    sget-object v1, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v2, "generator"

    invoke-virtual {p1, v1, v2, v4, v0}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 774
    :cond_c
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseFeed;->getTotalResults()I

    move-result v0

    if-eq v0, v7, :cond_d

    .line 775
    const-string/jumbo v0, "totalResults"

    iget-object v1, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget v1, v1, Lcom/google/gdata/data/BaseFeed$FeedState;->totalResults:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v6, v0, v4, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 779
    :cond_d
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseFeed;->getStartIndex()I

    move-result v0

    if-eq v0, v7, :cond_e

    .line 780
    const-string/jumbo v0, "startIndex"

    iget-object v1, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget v1, v1, Lcom/google/gdata/data/BaseFeed$FeedState;->startIndex:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v6, v0, v4, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 784
    :cond_e
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseFeed;->getItemsPerPage()I

    move-result v0

    if-eq v0, v7, :cond_f

    .line 785
    const-string/jumbo v0, "itemsPerPage"

    iget-object v1, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget v1, v1, Lcom/google/gdata/data/BaseFeed$FeedState;->itemsPerPage:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v6, v0, v4, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 790
    :cond_f
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/BaseFeed;->generateExtensions(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 791
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->startRepeatingElement()V

    .line 792
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/BaseEntry;

    .line 793
    invoke-virtual {v0, p1, p2}, Lcom/google/gdata/data/BaseEntry;->generateRss(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    goto :goto_3

    .line 736
    :cond_10
    sget-object v0, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v1, "description"

    invoke-virtual {p1, v0, v1, v4, v4}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 746
    :cond_11
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v0, v0, Lcom/google/gdata/data/Source$SourceState;->icon:Ljava/lang/String;

    goto/16 :goto_2

    .line 795
    :cond_12
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endRepeatingElement()V

    .line 797
    sget-object v0, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v1, "channel"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 798
    sget-object v0, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v1, "rss"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 799
    return-void
.end method

.method public getAdaptedFeed()Lcom/google/gdata/data/BaseFeed;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/data/BaseFeed",
            "<**>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/Kind$AdaptorException;
        }
    .end annotation

    .prologue
    .line 1058
    const/4 v1, 0x0

    .line 1061
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseFeed;->getAdaptors()Ljava/util/Collection;

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

    .line 1062
    instance-of v3, v0, Lcom/google/gdata/data/BaseFeed;

    if-eqz v3, :cond_0

    .line 1067
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1069
    :cond_1
    check-cast v0, Lcom/google/gdata/data/BaseFeed;

    :goto_1
    move-object v1, v0

    .line 1071
    goto :goto_0

    .line 1075
    :cond_2
    if-eqz v1, :cond_4

    .line 1077
    if-eq v1, p0, :cond_3

    .line 1078
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->entries:Ljava/util/List;

    .line 1084
    :goto_2
    invoke-virtual {v1}, Lcom/google/gdata/data/BaseFeed;->getEntries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1085
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/BaseEntry;

    .line 1086
    invoke-virtual {v1}, Lcom/google/gdata/data/BaseFeed;->getEntries()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/gdata/data/BaseEntry;->getAdaptedEntry()Lcom/google/gdata/data/BaseEntry;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1081
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1082
    iget-object v2, p0, Lcom/google/gdata/data/BaseFeed;->entries:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 1089
    :cond_4
    return-object v1

    :cond_5
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
    .line 406
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->adaptable:Lcom/google/gdata/data/Kind$Adaptable;

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
    .line 402
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->adaptable:Lcom/google/gdata/data/Kind$Adaptable;

    invoke-interface {v0}, Lcom/google/gdata/data/Kind$Adaptable;->getAdaptors()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getCanPost()Z
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-boolean v0, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->canPost:Z

    return v0
.end method

.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 389
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->entries:Ljava/util/List;

    return-object v0
.end method

.method public getEntries(Ljava/lang/Class;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/gdata/data/BaseEntry;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1096
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1098
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseFeed;->getEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/BaseEntry;

    .line 1099
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/BaseEntry;->getAdaptor(Ljava/lang/Class;)Lcom/google/gdata/data/Kind$Adaptor;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/BaseEntry;

    .line 1100
    if-eqz v0, :cond_0

    .line 1101
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1105
    :cond_1
    return-object v1
.end method

.method public bridge synthetic getEntryPostLink()Lcom/google/gdata/data/ILink;
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseFeed;->getEntryPostLink()Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getEntryPostLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 434
    const-string/jumbo v0, "http://schemas.google.com/g/2005#post"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/BaseFeed;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    .line 435
    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getFeedBatchLink()Lcom/google/gdata/data/ILink;
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseFeed;->getFeedBatchLink()Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getFeedBatchLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 473
    const-string/jumbo v0, "http://schemas.google.com/g/2005#batch"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/BaseFeed;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGenerator()Lcom/google/gdata/data/IGenerator;
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Lcom/google/gdata/data/Source;->getGenerator()Lcom/google/gdata/data/Generator;

    move-result-object v0

    return-object v0
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 889
    new-instance v0, Lcom/google/gdata/data/BaseFeed$FeedHandler;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/data/BaseFeed$FeedHandler;-><init>(Lcom/google/gdata/data/BaseFeed;Lcom/google/gdata/data/ExtensionProfile;)V

    return-object v0
.end method

.method public getItemsPerPage()I
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget v0, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->itemsPerPage:I

    return v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/ILink;
    .locals 1

    .prologue
    .line 121
    invoke-super {p0, p1, p2}, Lcom/google/gdata/data/Source;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNextLink()Lcom/google/gdata/data/ILink;
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseFeed;->getNextLink()Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getNextLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 451
    const-string/jumbo v0, "next"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/BaseFeed;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPreviousLink()Lcom/google/gdata/data/ILink;
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseFeed;->getPreviousLink()Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 461
    const-string/jumbo v0, "previous"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/BaseFeed;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedFields()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->fields:Ljava/lang/String;

    return-object v0
.end method

.method public getSelf()Lcom/google/gdata/data/BaseFeed;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 484
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->service:Lcom/google/gdata/client/Service;

    if-nez v0, :cond_0

    .line 485
    new-instance v0, Lcom/google/gdata/util/ServiceException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->feedNotAssociated:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ServiceException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0

    .line 488
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseFeed;->getSelfLink()Lcom/google/gdata/data/Link;

    move-result-object v0

    .line 489
    if-nez v0, :cond_1

    .line 490
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Feed cannot be retrieved"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 492
    :cond_1
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v0}, Lcom/google/gdata/data/Link;->getHref()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 496
    :try_start_0
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->etag:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 497
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->service:Lcom/google/gdata/client/Service;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v3, v3, Lcom/google/gdata/data/BaseFeed$FeedState;->etag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/gdata/client/Service;->getFeed(Ljava/net/URL;Ljava/lang/Class;Ljava/lang/String;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/BaseFeed;

    .line 504
    :goto_0
    return-object v0

    .line 500
    :cond_2
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->service:Lcom/google/gdata/client/Service;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lcom/google/gdata/data/BaseFeed;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v3, v3, Lcom/google/gdata/data/Source$SourceState;->updated:Lcom/google/gdata/data/DateTime;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/gdata/client/Service;->getFeed(Ljava/net/URL;Ljava/lang/Class;Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/BaseFeed;
    :try_end_0
    .catch Lcom/google/gdata/util/NotModifiedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 503
    :catch_0
    move-exception v0

    move-object v0, p0

    .line 504
    goto :goto_0
.end method

.method public bridge synthetic getSelfLink()Lcom/google/gdata/data/ILink;
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseFeed;->getSelfLink()Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getSelfLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 440
    const-string/jumbo v0, "self"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/BaseFeed;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    .line 441
    return-object v0
.end method

.method public getService()Lcom/google/gdata/client/Service;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->service:Lcom/google/gdata/client/Service;

    return-object v0
.end method

.method public getStartIndex()I
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget v0, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->startIndex:I

    return v0
.end method

.method public bridge synthetic getSubtitle()Lcom/google/gdata/data/ITextConstruct;
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Lcom/google/gdata/data/Source;->getSubtitle()Lcom/google/gdata/data/TextConstruct;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTitle()Lcom/google/gdata/data/ITextConstruct;
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Lcom/google/gdata/data/Source;->getTitle()Lcom/google/gdata/data/TextConstruct;

    move-result-object v0

    return-object v0
.end method

.method public getTotalResults()I
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget v0, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->totalResults:I

    return v0
.end method

.method public getVersionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->versionId:Ljava/lang/String;

    return-object v0
.end method

.method public insert(Lcom/google/gdata/data/BaseEntry;)Lcom/google/gdata/data/BaseEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TE;>(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 526
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->service:Lcom/google/gdata/client/Service;

    if-nez v0, :cond_0

    .line 527
    new-instance v0, Lcom/google/gdata/util/ServiceException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->entryNotAssociated:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ServiceException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0

    .line 530
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseFeed;->getEntryPostLink()Lcom/google/gdata/data/Link;

    move-result-object v0

    .line 531
    if-nez v0, :cond_1

    .line 532
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Media cannot be inserted"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 534
    :cond_1
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v0}, Lcom/google/gdata/data/Link;->getHref()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->service:Lcom/google/gdata/client/Service;

    invoke-virtual {v0, v1, p1}, Lcom/google/gdata/client/Service;->insert(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/BaseEntry;

    return-object v0
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
    .line 882
    new-instance v0, Lcom/google/gdata/data/BaseFeed$FeedHandler;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/data/BaseFeed$FeedHandler;-><init>(Lcom/google/gdata/data/BaseFeed;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 883
    new-instance v1, Lcom/google/gdata/util/EventSourceParser;

    const-string/jumbo v2, "http://www.w3.org/2005/Atom"

    const-string/jumbo v3, "feed"

    invoke-direct {v1, v0, v2, v3}, Lcom/google/gdata/util/EventSourceParser;-><init>(Lcom/google/gdata/util/XmlParser$ElementHandler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/google/gdata/util/EventSourceParser;->parse(Lcom/google/gdata/data/XmlEventSource;)V

    .line 884
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
    .line 847
    new-instance v0, Lcom/google/gdata/data/BaseFeed$FeedHandler;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/data/BaseFeed$FeedHandler;-><init>(Lcom/google/gdata/data/BaseFeed;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 848
    new-instance v1, Lcom/google/gdata/util/XmlParser;

    invoke-direct {v1}, Lcom/google/gdata/util/XmlParser;-><init>()V

    const-string/jumbo v2, "http://www.w3.org/2005/Atom"

    const-string/jumbo v3, "feed"

    invoke-virtual {v1, p2, v0, v2, v3}, Lcom/google/gdata/util/XmlParser;->parse(Ljava/io/InputStream;Lcom/google/gdata/util/XmlParser$ElementHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 849
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
    .line 866
    new-instance v0, Lcom/google/gdata/data/BaseFeed$FeedHandler;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/data/BaseFeed$FeedHandler;-><init>(Lcom/google/gdata/data/BaseFeed;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 867
    new-instance v1, Lcom/google/gdata/util/XmlParser;

    invoke-direct {v1}, Lcom/google/gdata/util/XmlParser;-><init>()V

    const-string/jumbo v2, "http://www.w3.org/2005/Atom"

    const-string/jumbo v3, "feed"

    invoke-virtual {v1, p2, v0, v2, v3}, Lcom/google/gdata/util/XmlParser;->parse(Ljava/io/Reader;Lcom/google/gdata/util/XmlParser$ElementHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    return-void
.end method

.method public setCanPost(Z)V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iput-boolean p1, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->canPost:Z

    .line 269
    return-void
.end method

.method public setEntries(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 393
    iput-object p1, p0, Lcom/google/gdata/data/BaseFeed;->entries:Ljava/util/List;

    return-void
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iput-object p1, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->etag:Ljava/lang/String;

    .line 301
    return-void
.end method

.method public bridge synthetic setGenerator(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/IGenerator;
    .locals 1

    .prologue
    .line 121
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/data/Source;->setGenerator(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Generator;

    move-result-object v0

    return-object v0
.end method

.method public setItemsPerPage(I)V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iput p1, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->itemsPerPage:I

    .line 385
    return-void
.end method

.method public setKind(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iput-object p1, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->kind:Ljava/lang/String;

    .line 333
    return-void
.end method

.method public setSelectedFields(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iput-object p1, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->fields:Ljava/lang/String;

    .line 317
    return-void
.end method

.method public setService(Lcom/google/gdata/client/Service;)V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iput-object p1, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->service:Lcom/google/gdata/client/Service;

    .line 250
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/BaseEntry;

    .line 251
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/BaseEntry;->setService(Lcom/google/gdata/client/Service;)V

    goto :goto_0

    .line 253
    :cond_0
    return-void
.end method

.method public setStartIndex(I)V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iput p1, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->startIndex:I

    .line 367
    return-void
.end method

.method public setTotalResults(I)V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iput p1, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->totalResults:I

    .line 351
    return-void
.end method

.method public setVersionId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iput-object p1, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->versionId:Ljava/lang/String;

    .line 278
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
    .line 543
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/BaseEntry;

    .line 544
    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/BaseFeed;->visitChild(Lcom/google/gdata/data/ExtensionVisitor;Lcom/google/gdata/data/Extension;)V

    goto :goto_0

    .line 546
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseFeed;->getLinks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/Link;

    .line 547
    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/BaseFeed;->visitChild(Lcom/google/gdata/data/ExtensionVisitor;Lcom/google/gdata/data/Extension;)V

    goto :goto_1

    .line 549
    :cond_1
    invoke-super {p0, p1}, Lcom/google/gdata/data/Source;->visitChildren(Lcom/google/gdata/data/ExtensionVisitor;)V

    .line 550
    return-void
.end method
