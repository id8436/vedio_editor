.class public Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;
.super Ljava/lang/Object;
.source "DbxUserPaperRequests.java"


# instance fields
.field private final client:Lcom/dropbox/core/v2/DbxRawClientV2;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    .line 31
    return-void
.end method


# virtual methods
.method docsArchive(Lcom/dropbox/core/v2/paper/RefPaperDoc;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/paper/docs/archive"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/paper/RefPaperDoc$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/RefPaperDoc$Serializer;

    .line 49
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/paper/DocLookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/DocLookupError$Serializer;

    move-object v3, p1

    .line 44
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    new-instance v1, Lcom/dropbox/core/v2/paper/DocLookupErrorException;

    const-string/jumbo v2, "2/paper/docs/archive"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/DocLookupError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/paper/DocLookupErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/paper/DocLookupError;)V

    throw v1
.end method

.method public docsArchive(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Lcom/dropbox/core/v2/paper/RefPaperDoc;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/paper/RefPaperDoc;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->docsArchive(Lcom/dropbox/core/v2/paper/RefPaperDoc;)V

    .line 69
    return-void
.end method

.method public docsCreate(Lcom/dropbox/core/v2/paper/ImportFormat;)Lcom/dropbox/core/v2/paper/DocsCreateUploader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Lcom/dropbox/core/v2/paper/PaperDocCreateArgs;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/paper/PaperDocCreateArgs;-><init>(Lcom/dropbox/core/v2/paper/ImportFormat;)V

    .line 103
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->docsCreate(Lcom/dropbox/core/v2/paper/PaperDocCreateArgs;)Lcom/dropbox/core/v2/paper/DocsCreateUploader;

    move-result-object v0

    return-object v0
.end method

.method public docsCreate(Lcom/dropbox/core/v2/paper/ImportFormat;Ljava/lang/String;)Lcom/dropbox/core/v2/paper/DocsCreateUploader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Lcom/dropbox/core/v2/paper/PaperDocCreateArgs;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/paper/PaperDocCreateArgs;-><init>(Lcom/dropbox/core/v2/paper/ImportFormat;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->docsCreate(Lcom/dropbox/core/v2/paper/PaperDocCreateArgs;)Lcom/dropbox/core/v2/paper/DocsCreateUploader;

    move-result-object v0

    return-object v0
.end method

.method docsCreate(Lcom/dropbox/core/v2/paper/PaperDocCreateArgs;)Lcom/dropbox/core/v2/paper/DocsCreateUploader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/paper/docs/create"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/paper/PaperDocCreateArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/PaperDocCreateArgs$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/core/v2/DbxRawClientV2;->uploadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/http/HttpRequestor$Uploader;

    move-result-object v0

    .line 87
    new-instance v1, Lcom/dropbox/core/v2/paper/DocsCreateUploader;

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/DbxRawClientV2;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/dropbox/core/v2/paper/DocsCreateUploader;-><init>(Lcom/dropbox/core/http/HttpRequestor$Uploader;Ljava/lang/String;)V

    return-object v1
.end method

.method docsDownload(Lcom/dropbox/core/v2/paper/PaperDocExport;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/paper/PaperDocExport;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)",
            "Lcom/dropbox/core/DbxDownloader",
            "<",
            "Lcom/dropbox/core/v2/paper/PaperDocExportResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/paper/docs/download"

    const/4 v4, 0x0

    sget-object v6, Lcom/dropbox/core/v2/paper/PaperDocExport$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/PaperDocExport$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/paper/PaperDocExportResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/PaperDocExportResult$Serializer;

    sget-object v8, Lcom/dropbox/core/v2/paper/DocLookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/DocLookupError$Serializer;

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/dropbox/core/v2/DbxRawClientV2;->downloadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLjava/util/List;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/DbxDownloader;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    new-instance v1, Lcom/dropbox/core/v2/paper/DocLookupErrorException;

    const-string/jumbo v2, "2/paper/docs/download"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/DocLookupError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/paper/DocLookupErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/paper/DocLookupError;)V

    throw v1
.end method

.method public docsDownload(Ljava/lang/String;Lcom/dropbox/core/v2/paper/ExportFormat;)Lcom/dropbox/core/DbxDownloader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dropbox/core/v2/paper/ExportFormat;",
            ")",
            "Lcom/dropbox/core/DbxDownloader",
            "<",
            "Lcom/dropbox/core/v2/paper/PaperDocExportResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 166
    new-instance v0, Lcom/dropbox/core/v2/paper/PaperDocExport;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/paper/PaperDocExport;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/paper/ExportFormat;)V

    .line 167
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->docsDownload(Lcom/dropbox/core/v2/paper/PaperDocExport;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;

    move-result-object v0

    return-object v0
.end method

.method public docsDownloadBuilder(Ljava/lang/String;Lcom/dropbox/core/v2/paper/ExportFormat;)Lcom/dropbox/core/v2/paper/DocsDownloadBuilder;
    .locals 1

    .prologue
    .line 183
    new-instance v0, Lcom/dropbox/core/v2/paper/DocsDownloadBuilder;

    invoke-direct {v0, p0, p1, p2}, Lcom/dropbox/core/v2/paper/DocsDownloadBuilder;-><init>(Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;Ljava/lang/String;Lcom/dropbox/core/v2/paper/ExportFormat;)V

    return-object v0
.end method

.method docsFolderUsersList(Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs;)Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/paper/docs/folder_users/list"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/paper/DocLookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/DocLookupError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    new-instance v1, Lcom/dropbox/core/v2/paper/DocLookupErrorException;

    const-string/jumbo v2, "2/paper/docs/folder_users/list"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/DocLookupError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/paper/DocLookupErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/paper/DocLookupError;)V

    throw v1
.end method

.method public docsFolderUsersList(Ljava/lang/String;)Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 227
    new-instance v0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->docsFolderUsersList(Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs;)Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;

    move-result-object v0

    return-object v0
.end method

.method public docsFolderUsersList(Ljava/lang/String;I)Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 247
    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 248
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'limit\' is smaller than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_0
    const/16 v0, 0x3e8

    if-le p2, v0, :cond_1

    .line 251
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'limit\' is larger than 1000"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs;-><init>(Ljava/lang/String;I)V

    .line 254
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->docsFolderUsersList(Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs;)Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;

    move-result-object v0

    return-object v0
.end method

.method docsFolderUsersListContinue(Lcom/dropbox/core/v2/paper/ListUsersOnFolderContinueArgs;)Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/ListUsersCursorErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/paper/docs/folder_users/list/continue"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/paper/ListUsersOnFolderContinueArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListUsersOnFolderContinueArgs$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    new-instance v1, Lcom/dropbox/core/v2/paper/ListUsersCursorErrorException;

    const-string/jumbo v2, "2/paper/docs/folder_users/list/continue"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/paper/ListUsersCursorErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/paper/ListUsersCursorError;)V

    throw v1
.end method

.method public docsFolderUsersListContinue(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/ListUsersCursorErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 297
    new-instance v0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderContinueArgs;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/paper/ListUsersOnFolderContinueArgs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->docsFolderUsersListContinue(Lcom/dropbox/core/v2/paper/ListUsersOnFolderContinueArgs;)Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;

    move-result-object v0

    return-object v0
.end method

.method docsGetFolderInfo(Lcom/dropbox/core/v2/paper/RefPaperDoc;)Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/paper/docs/get_folder_info"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/paper/RefPaperDoc$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/RefPaperDoc$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/paper/DocLookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/DocLookupError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    new-instance v1, Lcom/dropbox/core/v2/paper/DocLookupErrorException;

    const-string/jumbo v2, "2/paper/docs/get_folder_info"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/DocLookupError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/paper/DocLookupErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/paper/DocLookupError;)V

    throw v1
.end method

.method public docsGetFolderInfo(Ljava/lang/String;)Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 351
    new-instance v0, Lcom/dropbox/core/v2/paper/RefPaperDoc;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/paper/RefPaperDoc;-><init>(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->docsGetFolderInfo(Lcom/dropbox/core/v2/paper/RefPaperDoc;)Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;

    move-result-object v0

    return-object v0
.end method

.method public docsList()Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 389
    new-instance v0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;-><init>()V

    .line 390
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->docsList(Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;)Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;

    move-result-object v0

    return-object v0
.end method

.method docsList(Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;)Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 367
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/paper/docs/list"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListPaperDocsResponse$Serializer;

    .line 373
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    move-object v3, p1

    .line 367
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 375
    :catch_0
    move-exception v0

    .line 376
    new-instance v1, Lcom/dropbox/core/DbxApiException;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected error response for \"docs/list\":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/dropbox/core/DbxApiException;-><init>(Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Ljava/lang/String;)V

    throw v1
.end method

.method public docsListBuilder()Lcom/dropbox/core/v2/paper/DocsListBuilder;
    .locals 2

    .prologue
    .line 402
    invoke-static {}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->newBuilder()Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;

    move-result-object v0

    .line 403
    new-instance v1, Lcom/dropbox/core/v2/paper/DocsListBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/paper/DocsListBuilder;-><init>(Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;)V

    return-object v1
.end method

.method docsListContinue(Lcom/dropbox/core/v2/paper/ListPaperDocsContinueArgs;)Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/ListDocsCursorErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/paper/docs/list/continue"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/paper/ListPaperDocsContinueArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListPaperDocsContinueArgs$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListPaperDocsResponse$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/paper/ListDocsCursorError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListDocsCursorError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 426
    :catch_0
    move-exception v0

    .line 427
    new-instance v1, Lcom/dropbox/core/v2/paper/ListDocsCursorErrorException;

    const-string/jumbo v2, "2/paper/docs/list/continue"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/paper/ListDocsCursorErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/paper/ListDocsCursorError;)V

    throw v1
.end method

.method public docsListContinue(Ljava/lang/String;)Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/ListDocsCursorErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 445
    new-instance v0, Lcom/dropbox/core/v2/paper/ListPaperDocsContinueArgs;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/paper/ListPaperDocsContinueArgs;-><init>(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->docsListContinue(Lcom/dropbox/core/v2/paper/ListPaperDocsContinueArgs;)Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;

    move-result-object v0

    return-object v0
.end method

.method docsPermanentlyDelete(Lcom/dropbox/core/v2/paper/RefPaperDoc;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 462
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/paper/docs/permanently_delete"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/paper/RefPaperDoc$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/RefPaperDoc$Serializer;

    .line 467
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/paper/DocLookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/DocLookupError$Serializer;

    move-object v3, p1

    .line 462
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    return-void

    .line 470
    :catch_0
    move-exception v0

    .line 471
    new-instance v1, Lcom/dropbox/core/v2/paper/DocLookupErrorException;

    const-string/jumbo v2, "2/paper/docs/permanently_delete"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/DocLookupError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/paper/DocLookupErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/paper/DocLookupError;)V

    throw v1
.end method

.method public docsPermanentlyDelete(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 487
    new-instance v0, Lcom/dropbox/core/v2/paper/RefPaperDoc;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/paper/RefPaperDoc;-><init>(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->docsPermanentlyDelete(Lcom/dropbox/core/v2/paper/RefPaperDoc;)V

    .line 489
    return-void
.end method

.method docsSharingPolicyGet(Lcom/dropbox/core/v2/paper/RefPaperDoc;)Lcom/dropbox/core/v2/paper/SharingPolicy;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 503
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/paper/docs/sharing_policy/get"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/paper/RefPaperDoc$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/RefPaperDoc$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/paper/SharingPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/SharingPolicy$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/paper/DocLookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/DocLookupError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/SharingPolicy;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 511
    :catch_0
    move-exception v0

    .line 512
    new-instance v1, Lcom/dropbox/core/v2/paper/DocLookupErrorException;

    const-string/jumbo v2, "2/paper/docs/sharing_policy/get"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/DocLookupError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/paper/DocLookupErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/paper/DocLookupError;)V

    throw v1
.end method

.method public docsSharingPolicyGet(Ljava/lang/String;)Lcom/dropbox/core/v2/paper/SharingPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 527
    new-instance v0, Lcom/dropbox/core/v2/paper/RefPaperDoc;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/paper/RefPaperDoc;-><init>(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->docsSharingPolicyGet(Lcom/dropbox/core/v2/paper/RefPaperDoc;)Lcom/dropbox/core/v2/paper/SharingPolicy;

    move-result-object v0

    return-object v0
.end method

.method docsSharingPolicySet(Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 546
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/paper/docs/sharing_policy/set"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy$Serializer;

    .line 551
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/paper/DocLookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/DocLookupError$Serializer;

    move-object v3, p1

    .line 546
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    return-void

    .line 554
    :catch_0
    move-exception v0

    .line 555
    new-instance v1, Lcom/dropbox/core/v2/paper/DocLookupErrorException;

    const-string/jumbo v2, "2/paper/docs/sharing_policy/set"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/DocLookupError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/paper/DocLookupErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/paper/DocLookupError;)V

    throw v1
.end method

.method public docsSharingPolicySet(Ljava/lang/String;Lcom/dropbox/core/v2/paper/SharingPolicy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 575
    new-instance v0, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/paper/SharingPolicy;)V

    .line 576
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->docsSharingPolicySet(Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;)V

    .line 577
    return-void
.end method

.method docsUpdate(Lcom/dropbox/core/v2/paper/PaperDocUpdateArgs;)Lcom/dropbox/core/v2/paper/DocsUpdateUploader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 590
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/paper/docs/update"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/paper/PaperDocUpdateArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/PaperDocUpdateArgs$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/core/v2/DbxRawClientV2;->uploadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/http/HttpRequestor$Uploader;

    move-result-object v0

    .line 595
    new-instance v1, Lcom/dropbox/core/v2/paper/DocsUpdateUploader;

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/DbxRawClientV2;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/dropbox/core/v2/paper/DocsUpdateUploader;-><init>(Lcom/dropbox/core/http/HttpRequestor$Uploader;Ljava/lang/String;)V

    return-object v1
.end method

.method public docsUpdate(Ljava/lang/String;Lcom/dropbox/core/v2/paper/PaperDocUpdatePolicy;JLcom/dropbox/core/v2/paper/ImportFormat;)Lcom/dropbox/core/v2/paper/DocsUpdateUploader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 616
    new-instance v1, Lcom/dropbox/core/v2/paper/PaperDocUpdateArgs;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/dropbox/core/v2/paper/PaperDocUpdateArgs;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/paper/PaperDocUpdatePolicy;JLcom/dropbox/core/v2/paper/ImportFormat;)V

    .line 617
    invoke-virtual {p0, v1}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->docsUpdate(Lcom/dropbox/core/v2/paper/PaperDocUpdateArgs;)Lcom/dropbox/core/v2/paper/DocsUpdateUploader;

    move-result-object v0

    return-object v0
.end method

.method docsUsersAdd(Lcom/dropbox/core/v2/paper/AddPaperDocUser;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/paper/AddPaperDocUser;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 633
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/paper/docs/users/add"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/AddPaperDocUser$Serializer;

    sget-object v3, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult$Serializer;

    .line 638
    invoke-static {v3}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/paper/DocLookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/DocLookupError$Serializer;

    move-object v3, p1

    .line 633
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 641
    :catch_0
    move-exception v0

    .line 642
    new-instance v1, Lcom/dropbox/core/v2/paper/DocLookupErrorException;

    const-string/jumbo v2, "2/paper/docs/users/add"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/DocLookupError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/paper/DocLookupErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/paper/DocLookupError;)V

    throw v1
.end method

.method public docsUsersAdd(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/paper/AddMember;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 664
    new-instance v0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/paper/AddPaperDocUser;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 665
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->docsUsersAdd(Lcom/dropbox/core/v2/paper/AddPaperDocUser;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public docsUsersAddBuilder(Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/v2/paper/DocsUsersAddBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/paper/AddMember;",
            ">;)",
            "Lcom/dropbox/core/v2/paper/DocsUsersAddBuilder;"
        }
    .end annotation

    .prologue
    .line 686
    invoke-static {p1, p2}, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->newBuilder(Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;

    move-result-object v0

    .line 687
    new-instance v1, Lcom/dropbox/core/v2/paper/DocsUsersAddBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/paper/DocsUsersAddBuilder;-><init>(Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;)V

    return-object v1
.end method

.method docsUsersList(Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;)Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 704
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/paper/docs/users/list"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/paper/DocLookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/DocLookupError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 712
    :catch_0
    move-exception v0

    .line 713
    new-instance v1, Lcom/dropbox/core/v2/paper/DocLookupErrorException;

    const-string/jumbo v2, "2/paper/docs/users/list"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/DocLookupError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/paper/DocLookupErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/paper/DocLookupError;)V

    throw v1
.end method

.method public docsUsersList(Ljava/lang/String;)Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 733
    new-instance v0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;-><init>(Ljava/lang/String;)V

    .line 734
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->docsUsersList(Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;)Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;

    move-result-object v0

    return-object v0
.end method

.method public docsUsersListBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/paper/DocsUsersListBuilder;
    .locals 2

    .prologue
    .line 753
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;->newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Builder;

    move-result-object v0

    .line 754
    new-instance v1, Lcom/dropbox/core/v2/paper/DocsUsersListBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/paper/DocsUsersListBuilder;-><init>(Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Builder;)V

    return-object v1
.end method

.method docsUsersListContinue(Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocContinueArgs;)Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/ListUsersCursorErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 769
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/paper/docs/users/list/continue"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocContinueArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocContinueArgs$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 777
    :catch_0
    move-exception v0

    .line 778
    new-instance v1, Lcom/dropbox/core/v2/paper/ListUsersCursorErrorException;

    const-string/jumbo v2, "2/paper/docs/users/list/continue"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/paper/ListUsersCursorErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/paper/ListUsersCursorError;)V

    throw v1
.end method

.method public docsUsersListContinue(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/ListUsersCursorErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 797
    new-instance v0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocContinueArgs;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocContinueArgs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->docsUsersListContinue(Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocContinueArgs;)Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;

    move-result-object v0

    return-object v0
.end method

.method docsUsersRemove(Lcom/dropbox/core/v2/paper/RemovePaperDocUser;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 814
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/paper/docs/users/remove"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/paper/RemovePaperDocUser$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/RemovePaperDocUser$Serializer;

    .line 819
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/paper/DocLookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/DocLookupError$Serializer;

    move-object v3, p1

    .line 814
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 825
    return-void

    .line 822
    :catch_0
    move-exception v0

    .line 823
    new-instance v1, Lcom/dropbox/core/v2/paper/DocLookupErrorException;

    const-string/jumbo v2, "2/paper/docs/users/remove"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/DocLookupError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/paper/DocLookupErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/paper/DocLookupError;)V

    throw v1
.end method

.method public docsUsersRemove(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 841
    new-instance v0, Lcom/dropbox/core/v2/paper/RemovePaperDocUser;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/paper/RemovePaperDocUser;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;)V

    .line 842
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->docsUsersRemove(Lcom/dropbox/core/v2/paper/RemovePaperDocUser;)V

    .line 843
    return-void
.end method
