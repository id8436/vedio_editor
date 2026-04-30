.class public Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$Builder;
.super Ljava/lang/Object;
.source "FileOrFolderLogInfo.java"


# instance fields
.field protected displayName:Ljava/lang/String;

.field protected fileId:Ljava/lang/String;

.field protected final path:Lcom/dropbox/core/v2/teamlog/PathLogInfo;


# direct methods
.method protected constructor <init>(Lcom/dropbox/core/v2/teamlog/PathLogInfo;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    if-nez p1, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'path\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$Builder;->path:Lcom/dropbox/core/v2/teamlog/PathLogInfo;

    .line 120
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$Builder;->displayName:Ljava/lang/String;

    .line 121
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$Builder;->fileId:Ljava/lang/String;

    .line 122
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo;
    .locals 4

    .prologue
    .line 157
    new-instance v0, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$Builder;->path:Lcom/dropbox/core/v2/teamlog/PathLogInfo;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$Builder;->displayName:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$Builder;->fileId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo;-><init>(Lcom/dropbox/core/v2/teamlog/PathLogInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public withDisplayName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$Builder;
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$Builder;->displayName:Ljava/lang/String;

    .line 134
    return-object p0
.end method

.method public withFileId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$Builder;
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$Builder;->fileId:Ljava/lang/String;

    .line 147
    return-object p0
.end method
