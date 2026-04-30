.class public Lcom/dropbox/core/v2/sharing/ListFoldersBuilder;
.super Ljava/lang/Object;
.source "ListFoldersBuilder.java"


# instance fields
.field private final _builder:Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Builder;

.field private final _client:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Builder;)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    if-nez p1, :cond_0

    .line 33
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_client"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ListFoldersBuilder;->_client:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;

    .line 36
    if-nez p2, :cond_1

    .line 37
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_builder"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/ListFoldersBuilder;->_builder:Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Builder;

    .line 40
    return-void
.end method


# virtual methods
.method public start()Lcom/dropbox/core/v2/sharing/ListFoldersResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFoldersBuilder;->_builder:Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Builder;->build()Lcom/dropbox/core/v2/sharing/ListFoldersArgs;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ListFoldersBuilder;->_client:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;

    invoke-virtual {v1, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->listFolders(Lcom/dropbox/core/v2/sharing/ListFoldersArgs;)Lcom/dropbox/core/v2/sharing/ListFoldersResult;

    move-result-object v0

    return-object v0
.end method

.method public withActions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/ListFoldersBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FolderAction;",
            ">;)",
            "Lcom/dropbox/core/v2/sharing/ListFoldersBuilder;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFoldersBuilder;->_builder:Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Builder;->withActions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Builder;

    .line 77
    return-object p0
.end method

.method public withLimit(Ljava/lang/Long;)Lcom/dropbox/core/v2/sharing/ListFoldersBuilder;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFoldersBuilder;->_builder:Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Builder;->withLimit(Ljava/lang/Long;)Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Builder;

    .line 58
    return-object p0
.end method
