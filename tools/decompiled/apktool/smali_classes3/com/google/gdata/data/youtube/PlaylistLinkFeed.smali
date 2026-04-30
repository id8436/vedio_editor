.class public Lcom/google/gdata/data/youtube/PlaylistLinkFeed;
.super Lcom/google/gdata/data/BaseFeed;
.source "PlaylistLinkFeed.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://gdata.youtube.com/schemas/2007#playlistLink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseFeed",
        "<",
        "Lcom/google/gdata/data/youtube/PlaylistLinkFeed;",
        "Lcom/google/gdata/data/youtube/PlaylistLinkEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/google/gdata/data/youtube/PlaylistLinkEntry;

    invoke-direct {p0, v0}, Lcom/google/gdata/data/BaseFeed;-><init>(Ljava/lang/Class;)V

    .line 39
    const-string/jumbo v0, "http://gdata.youtube.com/schemas/2007#playlistLink"

    invoke-static {p0, v0}, Lcom/google/gdata/data/youtube/EntryUtils;->setKind(Lcom/google/gdata/data/BaseFeed;Ljava/lang/String;)V

    .line 40
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
    .line 43
    const-class v0, Lcom/google/gdata/data/youtube/PlaylistLinkEntry;

    invoke-direct {p0, v0, p1}, Lcom/google/gdata/data/BaseFeed;-><init>(Ljava/lang/Class;Lcom/google/gdata/data/BaseFeed;)V

    .line 44
    const-string/jumbo v0, "http://gdata.youtube.com/schemas/2007#playlistLink"

    invoke-static {p0, v0}, Lcom/google/gdata/data/youtube/EntryUtils;->setKind(Lcom/google/gdata/data/BaseFeed;Ljava/lang/String;)V

    .line 45
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/google/gdata/data/BaseFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 50
    invoke-static {p1}, Lcom/google/gdata/data/batch/BatchUtils;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 51
    return-void
.end method
