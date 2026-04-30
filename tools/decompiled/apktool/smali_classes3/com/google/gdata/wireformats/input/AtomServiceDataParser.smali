.class public Lcom/google/gdata/wireformats/input/AtomServiceDataParser;
.super Lcom/google/gdata/wireformats/input/XmlInputParser;
.source "AtomServiceDataParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/wireformats/input/XmlInputParser",
        "<",
        "Lcom/google/gdata/data/introspection/ServiceDocument;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/google/gdata/wireformats/AltFormat;->ATOM_SERVICE:Lcom/google/gdata/wireformats/AltFormat;

    const-class v1, Lcom/google/gdata/data/introspection/ServiceDocument;

    invoke-direct {p0, v0, v1}, Lcom/google/gdata/wireformats/input/XmlInputParser;-><init>(Lcom/google/gdata/wireformats/AltFormat;Ljava/lang/Class;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected parse(Lcom/google/gdata/data/XmlEventSource;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Lcom/google/gdata/data/introspection/ServiceDocument;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Lcom/google/gdata/data/introspection/ServiceDocument;",
            ">(",
            "Lcom/google/gdata/data/XmlEventSource;",
            "Lcom/google/gdata/wireformats/input/InputProperties;",
            "Ljava/lang/Class",
            "<TR;>;)TR;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Parsing from XmlEventSource not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parse(Ljava/io/Reader;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Lcom/google/gdata/data/introspection/ServiceDocument;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Lcom/google/gdata/data/introspection/ServiceDocument;",
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
    .line 54
    invoke-interface {p2}, Lcom/google/gdata/wireformats/input/InputProperties;->getExtensionProfile()Lcom/google/gdata/data/ExtensionProfile;

    move-result-object v0

    const-string/jumbo v1, "No extension profile"

    invoke-static {v0, v1}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-virtual {p0, p3}, Lcom/google/gdata/wireformats/input/AtomServiceDataParser;->createResult(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/introspection/ServiceDocument;

    .line 58
    invoke-interface {p2}, Lcom/google/gdata/wireformats/input/InputProperties;->getExtensionProfile()Lcom/google/gdata/data/ExtensionProfile;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/gdata/data/introspection/ServiceDocument;->parse(Lcom/google/gdata/data/ExtensionProfile;Ljava/io/Reader;)V

    .line 59
    return-object v0
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
    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/gdata/wireformats/input/AtomServiceDataParser;->parse(Lcom/google/gdata/data/XmlEventSource;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Lcom/google/gdata/data/introspection/ServiceDocument;

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
    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/gdata/wireformats/input/AtomServiceDataParser;->parse(Ljava/io/Reader;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Lcom/google/gdata/data/introspection/ServiceDocument;

    move-result-object v0

    return-object v0
.end method
