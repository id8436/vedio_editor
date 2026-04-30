.class public Lcom/google/gdata/data/photos/GphotoEntry;
.super Lcom/google/gdata/data/media/MediaEntry;
.source "GphotoEntry.java"

# interfaces
.implements Lcom/google/gdata/data/photos/AtomData;
.implements Lcom/google/gdata/data/photos/GphotoData;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/google/gdata/data/photos/GphotoEntry",
        "<TE;>;>",
        "Lcom/google/gdata/data/media/MediaEntry",
        "<TE;>;",
        "Lcom/google/gdata/data/photos/AtomData;",
        "Lcom/google/gdata/data/photos/GphotoData;"
    }
.end annotation


# instance fields
.field private final delegate:Lcom/google/gdata/data/photos/GphotoData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/gdata/data/media/MediaEntry;-><init>()V

    .line 52
    new-instance v0, Lcom/google/gdata/data/photos/impl/GphotoDataImpl;

    invoke-direct {v0, p0}, Lcom/google/gdata/data/photos/impl/GphotoDataImpl;-><init>(Lcom/google/gdata/data/ExtensionPoint;)V

    iput-object v0, p0, Lcom/google/gdata/data/photos/GphotoEntry;->delegate:Lcom/google/gdata/data/photos/GphotoData;

    .line 53
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
    .line 59
    invoke-direct {p0, p1}, Lcom/google/gdata/data/media/MediaEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 60
    new-instance v0, Lcom/google/gdata/data/photos/impl/GphotoDataImpl;

    invoke-direct {v0, p0}, Lcom/google/gdata/data/photos/impl/GphotoDataImpl;-><init>(Lcom/google/gdata/data/ExtensionPoint;)V

    iput-object v0, p0, Lcom/google/gdata/data/photos/GphotoEntry;->delegate:Lcom/google/gdata/data/photos/GphotoData;

    .line 61
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/gdata/data/photos/GphotoEntry;->delegate:Lcom/google/gdata/data/photos/GphotoData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/GphotoData;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 69
    invoke-super {p0, p1}, Lcom/google/gdata/data/media/MediaEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 70
    return-void
.end method

.method public generateRss(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/GphotoEntry;->getSummary()Lcom/google/gdata/data/TextConstruct;

    move-result-object v1

    .line 158
    if-eqz v1, :cond_0

    .line 159
    :try_start_0
    new-instance v0, Lcom/google/gdata/data/photos/GphotoEntry$SummaryTextConstruct;

    invoke-direct {v0, v1}, Lcom/google/gdata/data/photos/GphotoEntry$SummaryTextConstruct;-><init>(Lcom/google/gdata/data/TextConstruct;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/GphotoEntry;->setSummary(Lcom/google/gdata/data/TextConstruct;)V

    .line 161
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/gdata/data/media/MediaEntry;->generateRss(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    if-eqz v1, :cond_1

    .line 164
    invoke-virtual {p0, v1}, Lcom/google/gdata/data/photos/GphotoEntry;->setSummary(Lcom/google/gdata/data/TextConstruct;)V

    .line 167
    :cond_1
    return-void

    .line 163
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 164
    invoke-virtual {p0, v1}, Lcom/google/gdata/data/photos/GphotoEntry;->setSummary(Lcom/google/gdata/data/TextConstruct;)V

    :cond_2
    throw v0
.end method

.method public bridge synthetic getAdaptedEntry()Lcom/google/gdata/data/BaseEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/Kind$AdaptorException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/GphotoEntry;->getAdaptedEntry()Lcom/google/gdata/data/photos/GphotoEntry;

    move-result-object v0

    return-object v0
.end method

.method public getAdaptedEntry()Lcom/google/gdata/data/photos/GphotoEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/data/photos/GphotoEntry",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/Kind$AdaptorException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-super {p0}, Lcom/google/gdata/data/media/MediaEntry;->getAdaptedEntry()Lcom/google/gdata/data/BaseEntry;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoEntry;

    return-object v0
.end method

.method public getDescription()Lcom/google/gdata/data/TextConstruct;
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/GphotoEntry;->getSummary()Lcom/google/gdata/data/TextConstruct;

    move-result-object v0

    return-object v0
.end method

.method public varargs getFeed(Ljava/lang/Class;[Ljava/lang/String;)Lcom/google/gdata/data/photos/GphotoFeed;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Lcom/google/gdata/data/photos/GphotoFeed",
            "<TF;>;>(",
            "Ljava/lang/Class",
            "<TF;>;[",
            "Ljava/lang/String;",
            ")TF;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/gdata/data/photos/GphotoEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->service:Lcom/google/gdata/client/Service;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/google/gdata/util/ServiceException;

    const-string/jumbo v1, "Entry is not associated with a GData service."

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/GphotoEntry;->getFeedLink()Lcom/google/gdata/data/Link;

    move-result-object v0

    .line 94
    if-nez v0, :cond_1

    .line 95
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Missing feed link."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_1
    invoke-virtual {v0}, Lcom/google/gdata/data/Link;->getHref()Ljava/lang/String;

    move-result-object v1

    .line 98
    if-eqz p2, :cond_5

    array-length v0, p2

    if-lez v0, :cond_5

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    const/4 v0, 0x0

    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_3

    .line 101
    if-lez v0, :cond_2

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    :cond_2
    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_3
    const/16 v0, 0x3f

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_4

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?kind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    :goto_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/google/gdata/data/photos/GphotoEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->service:Lcom/google/gdata/client/Service;

    invoke-virtual {v0, v1, p1}, Lcom/google/gdata/client/Service;->getFeed(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoFeed;

    return-object v0

    .line 107
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&kind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method public getFeedLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 77
    const-string/jumbo v0, "http://schemas.google.com/g/2005#feed"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/photos/GphotoEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    .line 78
    return-object v0
.end method

.method public getGphotoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/gdata/data/photos/GphotoEntry;->delegate:Lcom/google/gdata/data/photos/GphotoData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/GphotoData;->getGphotoId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDescription(Lcom/google/gdata/data/TextConstruct;)V
    .locals 0

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/GphotoEntry;->setSummary(Lcom/google/gdata/data/TextConstruct;)V

    .line 147
    return-void
.end method

.method public setGphotoId(Ljava/lang/Long;)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/gdata/data/photos/GphotoEntry;->delegate:Lcom/google/gdata/data/photos/GphotoData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/GphotoData;->setGphotoId(Ljava/lang/Long;)V

    .line 126
    return-void
.end method

.method public setGphotoId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/gdata/data/photos/GphotoEntry;->delegate:Lcom/google/gdata/data/photos/GphotoData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/GphotoData;->setGphotoId(Ljava/lang/String;)V

    .line 133
    return-void
.end method
