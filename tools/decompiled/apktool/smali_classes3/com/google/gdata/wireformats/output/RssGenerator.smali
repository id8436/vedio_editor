.class public Lcom/google/gdata/wireformats/output/RssGenerator;
.super Lcom/google/gdata/wireformats/output/XmlGenerator;
.source "RssGenerator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/wireformats/output/XmlGenerator",
        "<",
        "Lcom/google/gdata/data/IAtom;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/gdata/wireformats/output/XmlGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public generateXml(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/wireformats/output/OutputProperties;Lcom/google/gdata/data/IAtom;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    instance-of v0, p3, Lcom/google/gdata/data/IFeed;

    if-eqz v0, :cond_1

    .line 50
    check-cast p3, Lcom/google/gdata/data/IFeed;

    .line 51
    instance-of v0, p3, Lcom/google/gdata/data/BaseFeed;

    if-eqz v0, :cond_0

    .line 52
    check-cast p3, Lcom/google/gdata/data/BaseFeed;

    invoke-interface {p2}, Lcom/google/gdata/wireformats/output/OutputProperties;->getExtensionProfile()Lcom/google/gdata/data/ExtensionProfile;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Lcom/google/gdata/data/BaseFeed;->generateRss(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 68
    :goto_0
    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Feed was not an instance of BaseFeed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    instance-of v0, p3, Lcom/google/gdata/data/IEntry;

    if-eqz v0, :cond_3

    .line 58
    check-cast p3, Lcom/google/gdata/data/IEntry;

    .line 59
    instance-of v0, p3, Lcom/google/gdata/data/BaseEntry;

    if-eqz v0, :cond_2

    .line 60
    check-cast p3, Lcom/google/gdata/data/BaseEntry;

    invoke-interface {p2}, Lcom/google/gdata/wireformats/output/OutputProperties;->getExtensionProfile()Lcom/google/gdata/data/ExtensionProfile;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Lcom/google/gdata/data/BaseEntry;->generateRss(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    goto :goto_0

    .line 62
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Entry was not an instance of BaseEntry"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected source type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic generateXml(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/wireformats/output/OutputProperties;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    check-cast p3, Lcom/google/gdata/data/IAtom;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/gdata/wireformats/output/RssGenerator;->generateXml(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/wireformats/output/OutputProperties;Lcom/google/gdata/data/IAtom;)V

    return-void
.end method

.method public getAltFormat()Lcom/google/gdata/wireformats/AltFormat;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/gdata/wireformats/AltFormat;->RSS:Lcom/google/gdata/wireformats/AltFormat;

    return-object v0
.end method

.method public getSourceType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/google/gdata/data/IAtom;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    const-class v0, Lcom/google/gdata/data/IAtom;

    return-object v0
.end method
