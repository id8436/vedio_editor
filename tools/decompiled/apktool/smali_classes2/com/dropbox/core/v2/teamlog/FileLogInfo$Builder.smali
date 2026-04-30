.class public Lcom/dropbox/core/v2/teamlog/FileLogInfo$Builder;
.super Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$Builder;
.source "FileLogInfo.java"


# direct methods
.method protected constructor <init>(Lcom/dropbox/core/v2/teamlog/PathLogInfo;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$Builder;-><init>(Lcom/dropbox/core/v2/teamlog/PathLogInfo;)V

    .line 104
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/FileLogInfo;
    .locals 4

    .prologue
    .line 139
    new-instance v0, Lcom/dropbox/core/v2/teamlog/FileLogInfo;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/FileLogInfo$Builder;->path:Lcom/dropbox/core/v2/teamlog/PathLogInfo;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/FileLogInfo$Builder;->displayName:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/FileLogInfo$Builder;->fileId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/core/v2/teamlog/FileLogInfo;-><init>(Lcom/dropbox/core/v2/teamlog/PathLogInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/dropbox/core/v2/teamlog/FileLogInfo$Builder;->build()Lcom/dropbox/core/v2/teamlog/FileLogInfo;

    move-result-object v0

    return-object v0
.end method

.method public withDisplayName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/FileLogInfo$Builder;
    .locals 0

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$Builder;->withDisplayName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$Builder;

    .line 116
    return-object p0
.end method

.method public bridge synthetic withDisplayName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$Builder;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/FileLogInfo$Builder;->withDisplayName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/FileLogInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withFileId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/FileLogInfo$Builder;
    .locals 0

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$Builder;->withFileId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$Builder;

    .line 129
    return-object p0
.end method

.method public bridge synthetic withFileId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$Builder;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/FileLogInfo$Builder;->withFileId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/FileLogInfo$Builder;

    move-result-object v0

    return-object v0
.end method
