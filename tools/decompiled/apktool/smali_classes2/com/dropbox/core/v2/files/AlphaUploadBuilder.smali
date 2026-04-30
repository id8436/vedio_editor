.class public Lcom/dropbox/core/v2/files/AlphaUploadBuilder;
.super Lcom/dropbox/core/v2/DbxUploadStyleBuilder;
.source "AlphaUploadBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/v2/DbxUploadStyleBuilder",
        "<",
        "Lcom/dropbox/core/v2/files/FileMetadata;",
        "Lcom/dropbox/core/v2/files/UploadErrorWithProperties;",
        "Lcom/dropbox/core/v2/files/UploadErrorWithPropertiesException;",
        ">;"
    }
.end annotation


# instance fields
.field private final _builder:Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

.field private final _client:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/dropbox/core/v2/DbxUploadStyleBuilder;-><init>()V

    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_client"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/files/AlphaUploadBuilder;->_client:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    .line 39
    if-nez p2, :cond_1

    .line 40
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_builder"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/files/AlphaUploadBuilder;->_builder:Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    .line 43
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
    .line 21
    invoke-virtual {p0}, Lcom/dropbox/core/v2/files/AlphaUploadBuilder;->start()Lcom/dropbox/core/v2/files/AlphaUploadUploader;

    move-result-object v0

    return-object v0
.end method

.method public start()Lcom/dropbox/core/v2/files/AlphaUploadUploader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/UploadErrorWithPropertiesException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/dropbox/core/v2/files/AlphaUploadBuilder;->_builder:Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;->build()Lcom/dropbox/core/v2/files/CommitInfoWithProperties;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/dropbox/core/v2/files/AlphaUploadBuilder;->_client:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    invoke-virtual {v1, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->alphaUpload(Lcom/dropbox/core/v2/files/CommitInfoWithProperties;)Lcom/dropbox/core/v2/files/AlphaUploadUploader;

    move-result-object v0

    return-object v0
.end method

.method public withAutorename(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/AlphaUploadBuilder;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dropbox/core/v2/files/AlphaUploadBuilder;->_builder:Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;->withAutorename(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    .line 79
    return-object p0
.end method

.method public withClientModified(Ljava/util/Date;)Lcom/dropbox/core/v2/files/AlphaUploadBuilder;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/dropbox/core/v2/files/AlphaUploadBuilder;->_builder:Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;->withClientModified(Ljava/util/Date;)Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    .line 96
    return-object p0
.end method

.method public withMode(Lcom/dropbox/core/v2/files/WriteMode;)Lcom/dropbox/core/v2/files/AlphaUploadBuilder;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/dropbox/core/v2/files/AlphaUploadBuilder;->_builder:Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;->withMode(Lcom/dropbox/core/v2/files/WriteMode;)Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    .line 62
    return-object p0
.end method

.method public withMute(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/AlphaUploadBuilder;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/dropbox/core/v2/files/AlphaUploadBuilder;->_builder:Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;->withMute(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    .line 114
    return-object p0
.end method

.method public withPropertyGroups(Ljava/util/List;)Lcom/dropbox/core/v2/files/AlphaUploadBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyGroup;",
            ">;)",
            "Lcom/dropbox/core/v2/files/AlphaUploadBuilder;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/dropbox/core/v2/files/AlphaUploadBuilder;->_builder:Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;->withPropertyGroups(Ljava/util/List;)Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    .line 130
    return-object p0
.end method
