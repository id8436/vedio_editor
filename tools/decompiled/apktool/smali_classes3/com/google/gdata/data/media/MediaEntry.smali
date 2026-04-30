.class public abstract Lcom/google/gdata/data/media/MediaEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "MediaEntry.java"

# interfaces
.implements Lcom/google/gdata/data/media/IMediaEntry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/google/gdata/data/BaseEntry",
        "<TE;>;>",
        "Lcom/google/gdata/data/BaseEntry",
        "<TE;>;",
        "Lcom/google/gdata/data/media/IMediaEntry;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 51
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/google/gdata/data/BaseEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 63
    return-void
.end method


# virtual methods
.method protected getContentHandlerInfo(Lcom/google/gdata/data/ExtensionProfile;Lorg/xml/sax/Attributes;)Lcom/google/gdata/data/Content$ChildHandlerInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-static {p1, p2}, Lcom/google/gdata/data/MediaContent;->getChildHandler(Lcom/google/gdata/data/ExtensionProfile;Lorg/xml/sax/Attributes;)Lcom/google/gdata/data/Content$ChildHandlerInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMediaEditLink()Lcom/google/gdata/data/ILink;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/google/gdata/data/media/MediaEntry;->getMediaEditLink()Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getMediaEditLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    const-string/jumbo v0, "edit-media"

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/media/MediaEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    .line 104
    if-nez v0, :cond_0

    .line 107
    const-string/jumbo v0, "media-edit"

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/media/MediaEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    .line 109
    :cond_0
    return-object v0
.end method

.method public getMediaSource()Lcom/google/gdata/data/media/MediaSource;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/gdata/data/media/MediaEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->content:Lcom/google/gdata/data/Content;

    instance-of v0, v0, Lcom/google/gdata/data/MediaContent;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/google/gdata/data/media/MediaEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->content:Lcom/google/gdata/data/Content;

    check-cast v0, Lcom/google/gdata/data/MediaContent;

    .line 92
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Lcom/google/gdata/data/MediaContent;->getMediaSource()Lcom/google/gdata/data/media/MediaSource;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMediaSource(Lcom/google/gdata/data/media/MediaSource;)V
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/gdata/data/media/MediaEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->content:Lcom/google/gdata/data/Content;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/google/gdata/data/MediaContent;

    invoke-direct {v0}, Lcom/google/gdata/data/MediaContent;-><init>()V

    .line 78
    iget-object v1, p0, Lcom/google/gdata/data/media/MediaEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iput-object v0, v1, Lcom/google/gdata/data/BaseEntry$EntryState;->content:Lcom/google/gdata/data/Content;

    .line 85
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/MediaContent;->setMediaSource(Lcom/google/gdata/data/media/MediaSource;)V

    .line 86
    new-instance v1, Lcom/google/gdata/util/ContentType;

    invoke-interface {p1}, Lcom/google/gdata/data/media/MediaSource;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gdata/util/ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/MediaContent;->setMimeType(Lcom/google/gdata/util/ContentType;)V

    .line 87
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/media/MediaEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->content:Lcom/google/gdata/data/Content;

    instance-of v0, v0, Lcom/google/gdata/data/MediaContent;

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/google/gdata/data/media/MediaEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->content:Lcom/google/gdata/data/Content;

    check-cast v0, Lcom/google/gdata/data/MediaContent;

    goto :goto_0

    .line 82
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot set media source on entry with existing non-MediaContent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gdata/data/media/MediaEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v2, v2, Lcom/google/gdata/data/BaseEntry$EntryState;->content:Lcom/google/gdata/data/Content;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setService(Lcom/google/gdata/client/Service;)V
    .locals 2

    .prologue
    .line 68
    instance-of v0, p1, Lcom/google/gdata/client/media/MediaService;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Service does not support media"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/BaseEntry;->setService(Lcom/google/gdata/client/Service;)V

    .line 72
    return-void
.end method

.method public updateMedia(Z)Lcom/google/gdata/data/BaseEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/google/gdata/data/media/MediaEntry;->getMediaSource()Lcom/google/gdata/data/media/MediaSource;

    move-result-object v1

    .line 141
    if-nez v1, :cond_0

    .line 142
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Must supply media source"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/media/MediaEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->service:Lcom/google/gdata/client/Service;

    if-nez v0, :cond_1

    .line 146
    new-instance v0, Lcom/google/gdata/util/ServiceException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->entryNotAssociated:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ServiceException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0

    .line 149
    :cond_1
    invoke-virtual {p0}, Lcom/google/gdata/data/media/MediaEntry;->getMediaEditLink()Lcom/google/gdata/data/Link;

    move-result-object v0

    .line 150
    if-nez v0, :cond_2

    .line 151
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Media cannot be updated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_2
    new-instance v2, Ljava/net/URL;

    invoke-virtual {v0}, Lcom/google/gdata/data/Link;->getHref()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/google/gdata/data/media/MediaEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->service:Lcom/google/gdata/client/Service;

    check-cast v0, Lcom/google/gdata/client/media/MediaService;

    .line 156
    if-nez p1, :cond_3

    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/gdata/client/media/MediaService;->updateMedia(Ljava/net/URL;Ljava/lang/Class;Lcom/google/gdata/data/media/MediaSource;)Lcom/google/gdata/data/IEntry;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/BaseEntry;

    .line 159
    :goto_0
    return-object v0

    :cond_3
    invoke-virtual {v0, v2, p0}, Lcom/google/gdata/client/media/MediaService;->updateMedia(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/BaseEntry;

    goto :goto_0
.end method
