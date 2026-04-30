.class public Lcom/google/gdata/data/youtube/VideoFeed;
.super Lcom/google/gdata/data/media/MediaFeed;
.source "VideoFeed.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://gdata.youtube.com/schemas/2007#video"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/media/MediaFeed",
        "<",
        "Lcom/google/gdata/data/youtube/VideoFeed;",
        "Lcom/google/gdata/data/youtube/VideoEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/google/gdata/data/youtube/VideoEntry;

    invoke-direct {p0, v0}, Lcom/google/gdata/data/media/MediaFeed;-><init>(Ljava/lang/Class;)V

    .line 36
    const-string/jumbo v0, "http://gdata.youtube.com/schemas/2007#video"

    invoke-static {p0, v0}, Lcom/google/gdata/data/youtube/EntryUtils;->setKind(Lcom/google/gdata/data/BaseFeed;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseFeed;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseFeed",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 40
    const-class v0, Lcom/google/gdata/data/youtube/VideoEntry;

    invoke-direct {p0, v0, p1}, Lcom/google/gdata/data/media/MediaFeed;-><init>(Ljava/lang/Class;Lcom/google/gdata/data/BaseFeed;)V

    .line 41
    const-string/jumbo v0, "http://gdata.youtube.com/schemas/2007#video"

    invoke-static {p0, v0}, Lcom/google/gdata/data/youtube/EntryUtils;->setKind(Lcom/google/gdata/data/BaseFeed;Ljava/lang/String;)V

    .line 42
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/google/gdata/data/media/MediaFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 47
    invoke-static {p1}, Lcom/google/gdata/data/batch/BatchUtils;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 48
    return-void
.end method

.method public getGetUploadTokenActionLink()Lcom/google/gdata/data/Link;
    .locals 4

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/VideoFeed;->getLinks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/Link;

    .line 58
    const-string/jumbo v2, "http://gdata.youtube.com/schemas/2007#action.getUploadToken"

    invoke-virtual {v0}, Lcom/google/gdata/data/Link;->getRel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
