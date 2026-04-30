.class public Lcom/google/gdata/wireformats/input/AtomDataParser;
.super Lcom/google/gdata/wireformats/input/XmlInputParser;
.source "AtomDataParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/wireformats/input/XmlInputParser",
        "<",
        "Lcom/google/gdata/data/IAtom;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lcom/google/gdata/wireformats/AltFormat;->ATOM:Lcom/google/gdata/wireformats/AltFormat;

    const-class v1, Lcom/google/gdata/data/IAtom;

    invoke-direct {p0, v0, v1}, Lcom/google/gdata/wireformats/input/XmlInputParser;-><init>(Lcom/google/gdata/wireformats/AltFormat;Ljava/lang/Class;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected parse(Lcom/google/gdata/data/XmlEventSource;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Lcom/google/gdata/data/IAtom;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/gdata/data/IAtom;",
            ">(",
            "Lcom/google/gdata/data/XmlEventSource;",
            "Lcom/google/gdata/wireformats/input/InputProperties;",
            "Ljava/lang/Class",
            "<TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-interface {p2}, Lcom/google/gdata/wireformats/input/InputProperties;->getExtensionProfile()Lcom/google/gdata/data/ExtensionProfile;

    move-result-object v0

    const-string/jumbo v1, "No extension profile"

    invoke-static {v0, v1}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-virtual {p0, p3}, Lcom/google/gdata/wireformats/input/AtomDataParser;->createResult(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/IAtom;

    .line 90
    instance-of v1, v0, Lcom/google/gdata/data/BaseEntry;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 91
    check-cast v1, Lcom/google/gdata/data/BaseEntry;

    .line 92
    invoke-interface {p2}, Lcom/google/gdata/wireformats/input/InputProperties;->getExtensionProfile()Lcom/google/gdata/data/ExtensionProfile;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/google/gdata/data/BaseEntry;->parseAtom(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/XmlEventSource;)V

    .line 100
    :goto_0
    return-object v0

    .line 93
    :cond_0
    instance-of v1, v0, Lcom/google/gdata/data/BaseFeed;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 94
    check-cast v1, Lcom/google/gdata/data/BaseFeed;

    .line 95
    invoke-interface {p2}, Lcom/google/gdata/wireformats/input/InputProperties;->getExtensionProfile()Lcom/google/gdata/data/ExtensionProfile;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/google/gdata/data/BaseFeed;->parseAtom(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/XmlEventSource;)V

    goto :goto_0

    .line 97
    :cond_1
    new-instance v0, Lcom/google/gdata/wireformats/ContentCreationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid result class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gdata/wireformats/ContentCreationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parse(Ljava/io/Reader;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Lcom/google/gdata/data/IAtom;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/gdata/data/IAtom;",
            ">(",
            "Ljava/io/Reader;",
            "Lcom/google/gdata/wireformats/input/InputProperties;",
            "Ljava/lang/Class",
            "<TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-interface {p2}, Lcom/google/gdata/wireformats/input/InputProperties;->getExtensionProfile()Lcom/google/gdata/data/ExtensionProfile;

    move-result-object v0

    const-string/jumbo v1, "No extension profile"

    invoke-static {v0, v1}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-virtual {p0, p3}, Lcom/google/gdata/wireformats/input/AtomDataParser;->createResult(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/IAtom;

    .line 57
    instance-of v1, v0, Lcom/google/gdata/data/BaseEntry;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 58
    check-cast v1, Lcom/google/gdata/data/BaseEntry;

    .line 59
    invoke-interface {p2}, Lcom/google/gdata/wireformats/input/InputProperties;->getExtensionProfile()Lcom/google/gdata/data/ExtensionProfile;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/google/gdata/data/BaseEntry;->parseAtom(Lcom/google/gdata/data/ExtensionProfile;Ljava/io/Reader;)V

    .line 60
    const-class v2, Lcom/google/gdata/data/Entry;

    if-ne p3, v2, :cond_0

    .line 61
    invoke-virtual {v1}, Lcom/google/gdata/data/BaseEntry;->getAdaptedEntry()Lcom/google/gdata/data/BaseEntry;

    move-result-object v1

    .line 62
    invoke-virtual {p3, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    invoke-virtual {p3, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/IAtom;

    .line 79
    :cond_0
    :goto_0
    return-object v0

    .line 66
    :cond_1
    instance-of v1, v0, Lcom/google/gdata/data/BaseFeed;

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 67
    check-cast v1, Lcom/google/gdata/data/BaseFeed;

    .line 68
    invoke-interface {p2}, Lcom/google/gdata/wireformats/input/InputProperties;->getExtensionProfile()Lcom/google/gdata/data/ExtensionProfile;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/google/gdata/data/BaseFeed;->parseAtom(Lcom/google/gdata/data/ExtensionProfile;Ljava/io/Reader;)V

    .line 69
    const-class v2, Lcom/google/gdata/data/Feed;

    if-ne p3, v2, :cond_0

    .line 70
    invoke-virtual {v1}, Lcom/google/gdata/data/BaseFeed;->getAdaptedFeed()Lcom/google/gdata/data/BaseFeed;

    move-result-object v1

    .line 71
    invoke-virtual {p3, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    invoke-virtual {p3, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/IAtom;

    goto :goto_0

    .line 76
    :cond_2
    new-instance v0, Lcom/google/gdata/wireformats/ContentCreationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid result class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gdata/wireformats/ContentCreationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic parse(Lcom/google/gdata/data/XmlEventSource;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/gdata/wireformats/input/AtomDataParser;->parse(Lcom/google/gdata/data/XmlEventSource;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Lcom/google/gdata/data/IAtom;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parse(Ljava/io/Reader;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/gdata/wireformats/input/AtomDataParser;->parse(Ljava/io/Reader;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Lcom/google/gdata/data/IAtom;

    move-result-object v0

    return-object v0
.end method
