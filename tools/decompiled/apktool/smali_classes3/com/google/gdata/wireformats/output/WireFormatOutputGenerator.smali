.class public abstract Lcom/google/gdata/wireformats/output/WireFormatOutputGenerator;
.super Lcom/google/gdata/wireformats/output/CharacterGenerator;
.source "WireFormatOutputGenerator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gdata/wireformats/output/CharacterGenerator",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/gdata/wireformats/output/CharacterGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public generate(Ljava/io/Writer;Lcom/google/gdata/wireformats/output/OutputProperties;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "Lcom/google/gdata/wireformats/output/OutputProperties;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    instance-of v0, p3, Lcom/google/gdata/model/Element;

    if-eqz v0, :cond_3

    .line 54
    check-cast p3, Lcom/google/gdata/model/Element;

    .line 56
    :try_start_0
    invoke-interface {p2}, Lcom/google/gdata/wireformats/output/OutputProperties;->getRootMetadata()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    .line 57
    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No metadata for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/gdata/model/Element;->getElementKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/gdata/wireformats/ContentValidationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/gdata/wireformats/ContentValidationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_0
    :try_start_1
    invoke-virtual {p3, v0}, Lcom/google/gdata/model/Element;->resolve(Lcom/google/gdata/model/ElementMetadata;)Lcom/google/gdata/model/Element;

    move-result-object v1

    .line 67
    invoke-virtual {v1}, Lcom/google/gdata/model/Element;->getElementKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/gdata/model/ElementMetadata;->getKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gdata/model/ElementKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 68
    invoke-interface {v0}, Lcom/google/gdata/model/ElementMetadata;->getSchema()Lcom/google/gdata/model/Schema;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/gdata/model/Element;->getElementKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/gdata/model/ElementMetadata;->getContext()Lcom/google/gdata/model/MetadataContext;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/google/gdata/model/Schema;->bind(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    .line 71
    if-nez v0, :cond_1

    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to rebind from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Lcom/google/gdata/wireformats/output/OutputProperties;->getRootMetadata()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/gdata/model/ElementMetadata;->getKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/gdata/model/Element;->getElementKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_1
    new-instance v2, Lcom/google/gdata/wireformats/output/OutputPropertiesBuilder;

    invoke-direct {v2, p2}, Lcom/google/gdata/wireformats/output/OutputPropertiesBuilder;-><init>(Lcom/google/gdata/wireformats/output/OutputProperties;)V

    invoke-virtual {v2, v0}, Lcom/google/gdata/wireformats/output/OutputPropertiesBuilder;->setElementMetadata(Lcom/google/gdata/model/ElementMetadata;)Lcom/google/gdata/wireformats/StreamPropertiesBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/wireformats/output/OutputPropertiesBuilder;

    invoke-virtual {v0}, Lcom/google/gdata/wireformats/output/OutputPropertiesBuilder;->build()Lcom/google/gdata/wireformats/output/OutputProperties;

    move-result-object p2

    .line 82
    :cond_2
    invoke-virtual {p0}, Lcom/google/gdata/wireformats/output/WireFormatOutputGenerator;->getWireFormat()Lcom/google/gdata/wireformats/WireFormat;

    move-result-object v0

    .line 83
    invoke-static {p2}, Lcom/google/gdata/wireformats/output/WireFormatOutputGenerator;->getCharsetEncoding(Lcom/google/gdata/wireformats/output/OutputProperties;)Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 85
    invoke-virtual {p0, p2}, Lcom/google/gdata/wireformats/output/WireFormatOutputGenerator;->usePrettyPrint(Lcom/google/gdata/wireformats/output/OutputProperties;)Z

    move-result v3

    invoke-virtual {v0, p2, p1, v2, v3}, Lcom/google/gdata/wireformats/WireFormat;->createGenerator(Lcom/google/gdata/wireformats/output/OutputProperties;Ljava/io/Writer;Ljava/nio/charset/Charset;Z)Lcom/google/gdata/wireformats/WireFormatGenerator;

    move-result-object v0

    .line 88
    invoke-interface {v0, v1}, Lcom/google/gdata/wireformats/WireFormatGenerator;->generate(Lcom/google/gdata/model/Element;)V
    :try_end_1
    .catch Lcom/google/gdata/wireformats/ContentValidationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 92
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 97
    return-void

    .line 94
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Output object was not an Element: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getWireFormat()Lcom/google/gdata/wireformats/WireFormat;
.end method
