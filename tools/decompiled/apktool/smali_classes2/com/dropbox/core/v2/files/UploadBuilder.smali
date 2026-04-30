.class public Lcom/dropbox/core/v2/files/UploadBuilder;
.super Lcom/dropbox/core/v2/DbxUploadStyleBuilder;
.source "UploadBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/v2/DbxUploadStyleBuilder",
        "<",
        "Lcom/dropbox/core/v2/files/FileMetadata;",
        "Lcom/dropbox/core/v2/files/UploadError;",
        "Lcom/dropbox/core/v2/files/UploadErrorException;",
        ">;"
    }
.end annotation


# instance fields
.field private final _builder:Lcom/dropbox/core/v2/files/CommitInfo$Builder;

.field private final _client:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/CommitInfo$Builder;)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/dropbox/core/v2/DbxUploadStyleBuilder;-><init>()V

    .line 32
    if-nez p1, :cond_0

    .line 33
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_client"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/files/UploadBuilder;->_client:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    .line 36
    if-nez p2, :cond_1

    .line 37
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_builder"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/files/UploadBuilder;->_builder:Lcom/dropbox/core/v2/files/CommitInfo$Builder;

    .line 40
    return-void
.end method


# virtual methods
.method public bridge synthetic start()Lcom/dropbox/core/DbxUploader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/dropbox/core/v2/files/UploadBuilder;->start()Lcom/dropbox/core/v2/files/UploadUploader;

    move-result-object v0

    return-object v0
.end method

.method public start()Lcom/dropbox/core/v2/files/UploadUploader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/UploadErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadBuilder;->_builder:Lcom/dropbox/core/v2/files/CommitInfo$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/files/CommitInfo$Builder;->build()Lcom/dropbox/core/v2/files/CommitInfo;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/dropbox/core/v2/files/UploadBuilder;->_client:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    invoke-virtual {v1, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->upload(Lcom/dropbox/core/v2/files/CommitInfo;)Lcom/dropbox/core/v2/files/UploadUploader;

    move-result-object v0

    return-object v0
.end method

.method public withAutorename(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/UploadBuilder;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadBuilder;->_builder:Lcom/dropbox/core/v2/files/CommitInfo$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/CommitInfo$Builder;->withAutorename(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/CommitInfo$Builder;

    .line 76
    return-object p0
.end method

.method public withClientModified(Ljava/util/Date;)Lcom/dropbox/core/v2/files/UploadBuilder;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadBuilder;->_builder:Lcom/dropbox/core/v2/files/CommitInfo$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/CommitInfo$Builder;->withClientModified(Ljava/util/Date;)Lcom/dropbox/core/v2/files/CommitInfo$Builder;

    .line 93
    return-object p0
.end method

.method public withMode(Lcom/dropbox/core/v2/files/WriteMode;)Lcom/dropbox/core/v2/files/UploadBuilder;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadBuilder;->_builder:Lcom/dropbox/core/v2/files/CommitInfo$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/CommitInfo$Builder;->withMode(Lcom/dropbox/core/v2/files/WriteMode;)Lcom/dropbox/core/v2/files/CommitInfo$Builder;

    .line 59
    return-object p0
.end method

.method public withMute(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/UploadBuilder;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadBuilder;->_builder:Lcom/dropbox/core/v2/files/CommitInfo$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/CommitInfo$Builder;->withMute(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/CommitInfo$Builder;

    .line 111
    return-object p0
.end method
