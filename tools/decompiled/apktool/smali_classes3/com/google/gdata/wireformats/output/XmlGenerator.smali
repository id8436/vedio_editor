.class public abstract Lcom/google/gdata/wireformats/output/XmlGenerator;
.super Lcom/google/gdata/wireformats/output/CharacterGenerator;
.source "XmlGenerator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gdata/wireformats/output/CharacterGenerator",
        "<TS;>;"
    }
.end annotation


# static fields
.field protected static final XML_CONTENT_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/util/ContentType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/gdata/util/ContentType;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/gdata/util/ContentType;->TEXT_XML:Lcom/google/gdata/util/ContentType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/gdata/util/ContentType;->TEXT_PLAIN:Lcom/google/gdata/util/ContentType;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/wireformats/output/XmlGenerator;->XML_CONTENT_TYPES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/gdata/wireformats/output/CharacterGenerator;-><init>()V

    return-void
.end method

.method protected static varargs createMatchingXmlList([Lcom/google/gdata/util/ContentType;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/gdata/util/ContentType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/util/ContentType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v1, Ljava/util/ArrayList;

    array-length v0, p0

    sget-object v2, Lcom/google/gdata/wireformats/output/XmlGenerator;->XML_CONTENT_TYPES:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    .line 81
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    sget-object v0, Lcom/google/gdata/wireformats/output/XmlGenerator;->XML_CONTENT_TYPES:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 84
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public generate(Ljava/io/Writer;Lcom/google/gdata/wireformats/output/OutputProperties;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "Lcom/google/gdata/wireformats/output/OutputProperties;",
            "TS;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-static {p2}, Lcom/google/gdata/wireformats/output/XmlGenerator;->getCharsetEncoding(Lcom/google/gdata/wireformats/output/OutputProperties;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/gdata/wireformats/output/XmlGenerator;->getXmlWriter(Ljava/io/Writer;Lcom/google/gdata/wireformats/output/OutputProperties;Ljava/lang/String;)Lcom/google/gdata/util/common/xml/XmlWriter;

    move-result-object v0

    .line 96
    invoke-virtual {p0, v0, p2, p3}, Lcom/google/gdata/wireformats/output/XmlGenerator;->generateXml(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/wireformats/output/OutputProperties;Ljava/lang/Object;)V

    .line 97
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 98
    return-void
.end method

.method public abstract generateXml(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/wireformats/output/OutputProperties;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/util/common/xml/XmlWriter;",
            "Lcom/google/gdata/wireformats/output/OutputProperties;",
            "TS;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected getXmlWriter(Ljava/io/Writer;Lcom/google/gdata/wireformats/output/OutputProperties;Ljava/lang/String;)Lcom/google/gdata/util/common/xml/XmlWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    sget-object v0, Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;->WRITE_HEADER:Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 65
    invoke-virtual {p0, p2}, Lcom/google/gdata/wireformats/output/XmlGenerator;->usePrettyPrint(Lcom/google/gdata/wireformats/output/OutputProperties;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    sget-object v1, Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;->PRETTY_PRINT:Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_0
    new-instance v1, Lcom/google/gdata/util/common/xml/XmlWriter;

    invoke-direct {v1, p1, v0, p3}, Lcom/google/gdata/util/common/xml/XmlWriter;-><init>(Ljava/io/Writer;Ljava/util/Set;Ljava/lang/String;)V

    return-object v1
.end method
