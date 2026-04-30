.class public Lcom/google/gdata/data/youtube/PlaylistEntry;
.super Lcom/google/gdata/data/youtube/VideoEntry;
.source "PlaylistEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://gdata.youtube.com/schemas/2007#playlist"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/gdata/data/youtube/VideoEntry;-><init>()V

    .line 33
    const-string/jumbo v0, "http://gdata.youtube.com/schemas/2007#playlist"

    invoke-static {p0, v0}, Lcom/google/gdata/data/youtube/EntryUtils;->setKind(Lcom/google/gdata/data/BaseEntry;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/gdata/data/youtube/VideoEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 39
    const-string/jumbo v0, "http://gdata.youtube.com/schemas/2007#playlist"

    invoke-static {p0, v0}, Lcom/google/gdata/data/youtube/EntryUtils;->setKind(Lcom/google/gdata/data/BaseEntry;Ljava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/google/gdata/data/youtube/VideoEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 54
    const-class v0, Lcom/google/gdata/data/youtube/PlaylistEntry;

    const-class v1, Lcom/google/gdata/data/youtube/YtPosition;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 56
    const-class v0, Lcom/google/gdata/data/youtube/PlaylistEntry;

    const-class v1, Lcom/google/gdata/data/youtube/YtDescription;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 57
    const-class v0, Lcom/google/gdata/data/youtube/PlaylistEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declareArbitraryXmlExtension(Ljava/lang/Class;)V

    .line 58
    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 91
    const-class v0, Lcom/google/gdata/data/youtube/YtDescription;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/PlaylistEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtDescription;

    .line 92
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/YtDescription;->getContent()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPosition()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/google/gdata/data/youtube/YtPosition;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/PlaylistEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtPosition;

    .line 67
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/YtPosition;->getPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 103
    if-nez p1, :cond_0

    .line 104
    const-class v0, Lcom/google/gdata/data/youtube/YtDescription;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/PlaylistEntry;->removeExtension(Ljava/lang/Class;)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    new-instance v0, Lcom/google/gdata/data/youtube/YtDescription;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/youtube/YtDescription;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/PlaylistEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setPosition(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 76
    if-nez p1, :cond_0

    .line 77
    const-class v0, Lcom/google/gdata/data/youtube/YtPosition;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/PlaylistEntry;->removeExtension(Ljava/lang/Class;)V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    new-instance v0, Lcom/google/gdata/data/youtube/YtPosition;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/gdata/data/youtube/YtPosition;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/PlaylistEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method
