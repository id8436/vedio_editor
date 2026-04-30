.class public Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;
.super Ljava/lang/Object;
.source "UpdateFolderPolicyArg.java"


# instance fields
.field protected aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

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

.field protected memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

.field protected final sharedFolderId:Ljava/lang/String;

.field protected sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

.field protected viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    if-nez p1, :cond_0

    .line 198
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'sharedFolderId\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_0
    const-string/jumbo v0, "[-_0-9a-zA-Z:]+"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 201
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'sharedFolderId\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;->sharedFolderId:Ljava/lang/String;

    .line 204
    iput-object v1, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    .line 205
    iput-object v1, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    .line 206
    iput-object v1, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    .line 207
    iput-object v1, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    .line 208
    iput-object v1, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;->linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

    .line 209
    iput-object v1, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;->actions:Ljava/util/List;

    .line 210
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;
    .locals 8

    .prologue
    .line 310
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;->sharedFolderId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    iget-object v5, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    iget-object v6, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;->linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

    iget-object v7, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;->actions:Ljava/util/List;

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberPolicy;Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;Lcom/dropbox/core/v2/sharing/LinkSettings;Ljava/util/List;)V

    return-object v0
.end method

.method public withAclUpdatePolicy(Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    .line 235
    return-object p0
.end method

.method public withActions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FolderAction;",
            ">;)",
            "Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;"
        }
    .end annotation

    .prologue
    .line 292
    if-eqz p1, :cond_1

    .line 293
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/FolderAction;

    .line 294
    if-nez v0, :cond_0

    .line 295
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'actions\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;->actions:Ljava/util/List;

    .line 300
    return-object p0
.end method

.method public withLinkSettings(Lcom/dropbox/core/v2/sharing/LinkSettings;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;->linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

    .line 274
    return-object p0
.end method

.method public withMemberPolicy(Lcom/dropbox/core/v2/sharing/MemberPolicy;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    .line 222
    return-object p0
.end method

.method public withSharedLinkPolicy(Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    .line 262
    return-object p0
.end method

.method public withViewerInfoPolicy(Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    .line 248
    return-object p0
.end method
