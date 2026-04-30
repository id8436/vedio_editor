.class public Lcom/google/gdata/wireformats/input/AtomServiceDualParser;
.super Ljava/lang/Object;
.source "AtomServiceDualParser.java"

# interfaces
.implements Lcom/google/gdata/wireformats/input/InputParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gdata/wireformats/input/InputParser",
        "<",
        "Lcom/google/gdata/data/introspection/IServiceDocument;",
        ">;"
    }
.end annotation


# instance fields
.field private final dataParser:Lcom/google/gdata/wireformats/input/InputParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/wireformats/input/InputParser",
            "<",
            "Lcom/google/gdata/data/introspection/ServiceDocument;",
            ">;"
        }
    .end annotation
.end field

.field private final elementParser:Lcom/google/gdata/wireformats/input/InputParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/wireformats/input/InputParser",
            "<",
            "Lcom/google/gdata/data/introspection/IServiceDocument;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/google/gdata/wireformats/input/AtomServiceDataParser;

    invoke-direct {v0}, Lcom/google/gdata/wireformats/input/AtomServiceDataParser;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/wireformats/input/AtomServiceDualParser;->dataParser:Lcom/google/gdata/wireformats/input/InputParser;

    .line 48
    sget-object v0, Lcom/google/gdata/wireformats/AltFormat;->ATOM_SERVICE:Lcom/google/gdata/wireformats/AltFormat;

    const-class v1, Lcom/google/gdata/data/introspection/IServiceDocument;

    invoke-static {v0, v1}, Lcom/google/gdata/wireformats/input/ElementParser;->of(Lcom/google/gdata/wireformats/AltFormat;Ljava/lang/Class;)Lcom/google/gdata/wireformats/input/ElementParser;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/wireformats/input/AtomServiceDualParser;->elementParser:Lcom/google/gdata/wireformats/input/InputParser;

    return-void
.end method


# virtual methods
.method public getAltFormat()Lcom/google/gdata/wireformats/AltFormat;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/google/gdata/wireformats/AltFormat;->ATOM_SERVICE:Lcom/google/gdata/wireformats/AltFormat;

    return-object v0
.end method

.method public getResultType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/google/gdata/data/introspection/IServiceDocument;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    const-class v0, Lcom/google/gdata/data/introspection/IServiceDocument;

    return-object v0
.end method

.method public parse(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Lcom/google/gdata/data/introspection/IServiceDocument;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/gdata/data/introspection/IServiceDocument;",
            ">(",
            "Lcom/google/gdata/data/ParseSource;",
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
    .line 62
    const-string/jumbo v0, "parseSource"

    invoke-static {p1, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string/jumbo v0, "inProps"

    invoke-static {p2, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string/jumbo v0, "resultClass"

    invoke-static {v0, p3}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-class v0, Lcom/google/gdata/model/Element;

    invoke-virtual {v0, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/google/gdata/wireformats/input/AtomServiceDualParser;->elementParser:Lcom/google/gdata/wireformats/input/InputParser;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/gdata/wireformats/input/InputParser;->parse(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/introspection/IServiceDocument;

    .line 71
    :cond_0
    const-class v0, Lcom/google/gdata/data/introspection/ServiceDocument;

    invoke-virtual {v0, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/google/gdata/wireformats/input/AtomServiceDualParser;->dataParser:Lcom/google/gdata/wireformats/input/InputParser;

    .line 74
    invoke-interface {v0, p1, p2, p3}, Lcom/google/gdata/wireformats/input/InputParser;->parse(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/introspection/IServiceDocument;

    .line 78
    return-object v0

    .line 76
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid result type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic parse(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/gdata/wireformats/input/AtomServiceDualParser;->parse(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Lcom/google/gdata/data/introspection/IServiceDocument;

    move-result-object v0

    return-object v0
.end method
