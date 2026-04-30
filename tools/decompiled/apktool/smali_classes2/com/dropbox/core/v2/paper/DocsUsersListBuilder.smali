.class public Lcom/dropbox/core/v2/paper/DocsUsersListBuilder;
.super Ljava/lang/Object;
.source "DocsUsersListBuilder.java"


# instance fields
.field private final _builder:Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Builder;

.field private final _client:Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Builder;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-nez p1, :cond_0

    .line 30
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_client"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/paper/DocsUsersListBuilder;->_client:Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;

    .line 33
    if-nez p2, :cond_1

    .line 34
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_builder"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/paper/DocsUsersListBuilder;->_builder:Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Builder;

    .line 37
    return-void
.end method


# virtual methods
.method public start()Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DocsUsersListBuilder;->_builder:Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Builder;->build()Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DocsUsersListBuilder;->_client:Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;

    invoke-virtual {v1, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->docsUsersList(Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;)Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;

    move-result-object v0

    return-object v0
.end method

.method public withFilterBy(Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;)Lcom/dropbox/core/v2/paper/DocsUsersListBuilder;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DocsUsersListBuilder;->_builder:Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Builder;->withFilterBy(Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;)Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Builder;

    .line 77
    return-object p0
.end method

.method public withLimit(Ljava/lang/Integer;)Lcom/dropbox/core/v2/paper/DocsUsersListBuilder;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DocsUsersListBuilder;->_builder:Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Builder;->withLimit(Ljava/lang/Integer;)Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Builder;

    .line 56
    return-object p0
.end method
