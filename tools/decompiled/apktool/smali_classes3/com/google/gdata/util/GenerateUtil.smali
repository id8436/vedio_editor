.class public Lcom/google/gdata/util/GenerateUtil;
.super Ljava/lang/Object;
.source "GenerateUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/IEntry;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    instance-of v0, p1, Lcom/google/gdata/data/BaseEntry;

    if-eqz v0, :cond_0

    .line 43
    check-cast p1, Lcom/google/gdata/data/BaseEntry;

    invoke-virtual {p1, p0, p2}, Lcom/google/gdata/data/BaseEntry;->generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 46
    :cond_0
    return-void
.end method

.method public static generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/IFeed;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    instance-of v0, p1, Lcom/google/gdata/data/BaseFeed;

    if-eqz v0, :cond_0

    .line 55
    check-cast p1, Lcom/google/gdata/data/BaseFeed;

    invoke-virtual {p1, p0, p2}, Lcom/google/gdata/data/BaseFeed;->generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 58
    :cond_0
    return-void
.end method
