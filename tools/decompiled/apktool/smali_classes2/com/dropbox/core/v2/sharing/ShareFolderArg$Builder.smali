.class public Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;
.super Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;
.source "ShareFolderArg.java"


# instance fields
.field protected actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FolderAction;",
            ">;"
        }
    .end annotation
.end field

.field protected linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 187
    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;-><init>(Ljava/lang/String;)V

    .line 188
    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->actions:Ljava/util/List;

    .line 189
    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

    .line 190
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/sharing/ShareFolderArg;
    .locals 9

    .prologue
    .line 307
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->path:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    iget-boolean v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->forceAsync:Z

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    iget-object v5, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    iget-object v6, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    iget-object v7, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->actions:Ljava/util/List;

    iget-object v8, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/sharing/ShareFolderArg;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;ZLcom/dropbox/core/v2/sharing/MemberPolicy;Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;Ljava/util/List;Lcom/dropbox/core/v2/sharing/LinkSettings;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->build()Lcom/dropbox/core/v2/sharing/ShareFolderArg;

    move-result-object v0

    return-object v0
.end method

.method public withAclUpdatePolicy(Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;)Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;
    .locals 0

    .prologue
    .line 239
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;->withAclUpdatePolicy(Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;)Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;

    .line 240
    return-object p0
.end method

.method public bridge synthetic withAclUpdatePolicy(Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;)Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->withAclUpdatePolicy(Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;)Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withActions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FolderAction;",
            ">;)",
            "Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;"
        }
    .end annotation

    .prologue
    .line 207
    if-eqz p1, :cond_1

    .line 208
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/FolderAction;

    .line 209
    if-nez v0, :cond_0

    .line 210
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'actions\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->actions:Ljava/util/List;

    .line 215
    return-object p0
.end method

.method public withForceAsync(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;
    .locals 0

    .prologue
    .line 256
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;->withForceAsync(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;

    .line 257
    return-object p0
.end method

.method public bridge synthetic withForceAsync(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->withForceAsync(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withLinkSettings(Lcom/dropbox/core/v2/sharing/LinkSettings;)Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

    .line 227
    return-object p0
.end method

.method public withMemberPolicy(Lcom/dropbox/core/v2/sharing/MemberPolicy;)Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;
    .locals 0

    .prologue
    .line 269
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;->withMemberPolicy(Lcom/dropbox/core/v2/sharing/MemberPolicy;)Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;

    .line 270
    return-object p0
.end method

.method public bridge synthetic withMemberPolicy(Lcom/dropbox/core/v2/sharing/MemberPolicy;)Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->withMemberPolicy(Lcom/dropbox/core/v2/sharing/MemberPolicy;)Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withSharedLinkPolicy(Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;)Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;
    .locals 0

    .prologue
    .line 283
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;->withSharedLinkPolicy(Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;)Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;

    .line 284
    return-object p0
.end method

.method public bridge synthetic withSharedLinkPolicy(Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;)Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->withSharedLinkPolicy(Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;)Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withViewerInfoPolicy(Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;)Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;
    .locals 0

    .prologue
    .line 296
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;->withViewerInfoPolicy(Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;)Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;

    .line 297
    return-object p0
.end method

.method public bridge synthetic withViewerInfoPolicy(Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;)Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->withViewerInfoPolicy(Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;)Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;

    move-result-object v0

    return-object v0
.end method
