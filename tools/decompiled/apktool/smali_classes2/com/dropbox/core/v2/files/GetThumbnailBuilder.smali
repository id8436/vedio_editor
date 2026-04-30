.class public Lcom/dropbox/core/v2/files/GetThumbnailBuilder;
.super Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;
.source "GetThumbnailBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/v2/DbxDownloadStyleBuilder",
        "<",
        "Lcom/dropbox/core/v2/files/FileMetadata;",
        ">;"
    }
.end annotation


# instance fields
.field private final _builder:Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;

.field private final _client:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;-><init>()V

    .line 31
    if-nez p1, :cond_0

    .line 32
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_client"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/files/GetThumbnailBuilder;->_client:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    .line 35
    if-nez p2, :cond_1

    .line 36
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_builder"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/files/GetThumbnailBuilder;->_builder:Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;

    .line 39
    return-void
.end method


# virtual methods
.method public start()Lcom/dropbox/core/DbxDownloader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dropbox/core/DbxDownloader",
            "<",
            "Lcom/dropbox/core/v2/files/FileMetadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ThumbnailErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetThumbnailBuilder;->_builder:Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;->build()Lcom/dropbox/core/v2/files/ThumbnailArg;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/dropbox/core/v2/files/GetThumbnailBuilder;->_client:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    invoke-virtual {p0}, Lcom/dropbox/core/v2/files/GetThumbnailBuilder;->getHeaders()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->getThumbnail(Lcom/dropbox/core/v2/files/ThumbnailArg;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;

    move-result-object v0

    return-object v0
.end method

.method public withFormat(Lcom/dropbox/core/v2/files/ThumbnailFormat;)Lcom/dropbox/core/v2/files/GetThumbnailBuilder;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetThumbnailBuilder;->_builder:Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;->withFormat(Lcom/dropbox/core/v2/files/ThumbnailFormat;)Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;

    .line 59
    return-object p0
.end method

.method public withSize(Lcom/dropbox/core/v2/files/ThumbnailSize;)Lcom/dropbox/core/v2/files/GetThumbnailBuilder;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetThumbnailBuilder;->_builder:Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;->withSize(Lcom/dropbox/core/v2/files/ThumbnailSize;)Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;

    .line 78
    return-object p0
.end method
