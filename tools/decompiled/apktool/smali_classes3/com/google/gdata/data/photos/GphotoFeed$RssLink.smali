.class final Lcom/google/gdata/data/photos/GphotoFeed$RssLink;
.super Ljava/lang/Object;
.source "GphotoFeed.java"

# interfaces
.implements Lcom/google/gdata/data/Extension;


# instance fields
.field private final link:Lcom/google/gdata/data/Link;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/Link;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/google/gdata/data/photos/GphotoFeed$RssLink;->link:Lcom/google/gdata/data/Link;

    .line 127
    return-void
.end method


# virtual methods
.method public generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/gdata/data/photos/GphotoFeed$RssLink;->link:Lcom/google/gdata/data/Link;

    invoke-virtual {v0, p1, p2}, Lcom/google/gdata/data/Link;->generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 132
    return-void
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return-object v0
.end method
