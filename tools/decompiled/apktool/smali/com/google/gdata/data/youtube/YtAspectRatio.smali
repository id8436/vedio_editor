.class public Lcom/google/gdata/data/youtube/YtAspectRatio;
.super Lcom/google/gdata/data/AbstractExtension;
.source "YtAspectRatio.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "aspectRatio"
    nsAlias = "yt"
    nsUri = "http://gdata.youtube.com/schemas/2007"
.end annotation


# instance fields
.field private value:Lcom/google/gdata/data/youtube/YtAspectRatio$Value;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/youtube/YtAspectRatio;->value:Lcom/google/gdata/data/youtube/YtAspectRatio$Value;

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/youtube/YtAspectRatio$Value;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/google/gdata/data/youtube/YtAspectRatio;->value:Lcom/google/gdata/data/youtube/YtAspectRatio$Value;

    .line 66
    return-void
.end method


# virtual methods
.method protected consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/google/gdata/data/AbstractExtension;->consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V

    .line 87
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/AttributeHelper;->consumeContent(Z)Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-static {}, Lcom/google/gdata/data/youtube/YtAspectRatio$Value;->values()[Lcom/google/gdata/data/youtube/YtAspectRatio$Value;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 89
    invoke-static {v4}, Lcom/google/gdata/data/youtube/YtAspectRatio$Value;->access$000(Lcom/google/gdata/data/youtube/YtAspectRatio$Value;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 90
    iput-object v4, p0, Lcom/google/gdata/data/youtube/YtAspectRatio;->value:Lcom/google/gdata/data/youtube/YtAspectRatio$Value;

    .line 94
    :cond_0
    return-void

    .line 88
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected generateAttributes(Ljava/util/List;Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;",
            ">;",
            "Lcom/google/gdata/data/AttributeGenerator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Lcom/google/gdata/data/AbstractExtension;->generateAttributes(Ljava/util/List;Lcom/google/gdata/data/AttributeGenerator;)V

    .line 81
    iget-object v0, p0, Lcom/google/gdata/data/youtube/YtAspectRatio;->value:Lcom/google/gdata/data/youtube/YtAspectRatio$Value;

    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/YtAspectRatio$Value;->getXmlName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/gdata/data/AttributeGenerator;->setContent(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public getValue()Lcom/google/gdata/data/youtube/YtAspectRatio$Value;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/gdata/data/youtube/YtAspectRatio;->value:Lcom/google/gdata/data/youtube/YtAspectRatio$Value;

    return-object v0
.end method

.method public setValue(Lcom/google/gdata/data/youtube/YtAspectRatio$Value;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/gdata/data/youtube/YtAspectRatio;->value:Lcom/google/gdata/data/youtube/YtAspectRatio$Value;

    .line 71
    return-void
.end method

.method protected validate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-super {p0}, Lcom/google/gdata/data/AbstractExtension;->validate()V

    .line 99
    iget-object v0, p0, Lcom/google/gdata/data/youtube/YtAspectRatio;->value:Lcom/google/gdata/data/youtube/YtAspectRatio$Value;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The value of yt:aspectRatio may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    return-void
.end method
