.class public Lcom/google/gdata/wireformats/input/ElementParser;
.super Lcom/google/gdata/wireformats/input/CharacterParser;
.source "ElementParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gdata/wireformats/input/CharacterParser",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/google/gdata/wireformats/AltFormat;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/wireformats/AltFormat;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/wireformats/input/CharacterParser;-><init>(Lcom/google/gdata/wireformats/AltFormat;Ljava/lang/Class;)V

    .line 73
    return-void
.end method

.method public static of(Lcom/google/gdata/wireformats/AltFormat;Ljava/lang/Class;)Lcom/google/gdata/wireformats/input/ElementParser;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gdata/wireformats/AltFormat;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/gdata/wireformats/input/ElementParser",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/google/gdata/wireformats/AltFormat;->getWireFormat()Lcom/google/gdata/wireformats/WireFormat;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No wire format defined for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/gdata/util/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 59
    new-instance v0, Lcom/google/gdata/wireformats/input/ElementParser;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/wireformats/input/ElementParser;-><init>(Lcom/google/gdata/wireformats/AltFormat;Ljava/lang/Class;)V

    return-object v0

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public parse(Ljava/io/Reader;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:TT;>(",
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
    .line 79
    invoke-interface {p2}, Lcom/google/gdata/wireformats/input/InputProperties;->getRootMetadata()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    const-string/jumbo v1, "No element metadata"

    invoke-static {v0, v1}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {p0, p3}, Lcom/google/gdata/wireformats/input/ElementParser;->createResult(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 83
    instance-of v1, v0, Lcom/google/gdata/model/Element;

    if-eqz v1, :cond_0

    .line 84
    check-cast v0, Lcom/google/gdata/model/Element;

    .line 85
    iget-object v1, p0, Lcom/google/gdata/wireformats/input/ElementParser;->altFormat:Lcom/google/gdata/wireformats/AltFormat;

    invoke-virtual {v1}, Lcom/google/gdata/wireformats/AltFormat;->getWireFormat()Lcom/google/gdata/wireformats/WireFormat;

    move-result-object v1

    .line 87
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/gdata/wireformats/input/ElementParser;->getCharset(Lcom/google/gdata/wireformats/input/InputProperties;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, p2, p1, v2}, Lcom/google/gdata/wireformats/WireFormat;->createParser(Lcom/google/gdata/wireformats/input/InputProperties;Ljava/io/Reader;Ljava/nio/charset/Charset;)Lcom/google/gdata/wireformats/WireFormatParser;

    move-result-object v1

    .line 89
    invoke-interface {v1, v0}, Lcom/google/gdata/wireformats/WireFormatParser;->parse(Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/gdata/wireformats/ContentCreationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/gdata/wireformats/ContentValidationException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 103
    return-object v0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    new-instance v1, Lcom/google/gdata/util/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid charset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p2}, Lcom/google/gdata/wireformats/input/ElementParser;->getCharset(Lcom/google/gdata/wireformats/input/InputProperties;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 92
    :catch_1
    move-exception v0

    .line 93
    new-instance v1, Lcom/google/gdata/util/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid charset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p2}, Lcom/google/gdata/wireformats/input/ElementParser;->getCharset(Lcom/google/gdata/wireformats/input/InputProperties;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 94
    :catch_2
    move-exception v0

    .line 95
    new-instance v1, Lcom/google/gdata/util/ParseException;

    const-string/jumbo v2, "Unable to create element to parse into."

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 96
    :catch_3
    move-exception v0

    .line 97
    new-instance v1, Lcom/google/gdata/util/ParseException;

    const-string/jumbo v2, "Error trying to parse element."

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 100
    :cond_0
    new-instance v0, Lcom/google/gdata/wireformats/ContentCreationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Result class is not an Element type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gdata/wireformats/ContentCreationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
