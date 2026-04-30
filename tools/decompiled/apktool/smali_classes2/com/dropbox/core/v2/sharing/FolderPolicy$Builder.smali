.class public Lcom/dropbox/core/v2/sharing/FolderPolicy$Builder;
.super Ljava/lang/Object;
.source "FolderPolicy.java"


# instance fields
.field protected final aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

.field protected memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

.field protected resolvedMemberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

.field protected final sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

.field protected viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;


# direct methods
.method protected constructor <init>(Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    if-nez p1, :cond_0

    .line 168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'aclUpdatePolicy\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy$Builder;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    .line 171
    if-nez p2, :cond_1

    .line 172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'sharedLinkPolicy\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy$Builder;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    .line 175
    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy$Builder;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    .line 176
    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy$Builder;->resolvedMemberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    .line 177
    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy$Builder;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    .line 178
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/sharing/FolderPolicy;
    .locals 6

    .prologue
    .line 231
    new-instance v0, Lcom/dropbox/core/v2/sharing/FolderPolicy;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy$Builder;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy$Builder;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy$Builder;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy$Builder;->resolvedMemberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    iget-object v5, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy$Builder;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/sharing/FolderPolicy;-><init>(Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;Lcom/dropbox/core/v2/sharing/MemberPolicy;Lcom/dropbox/core/v2/sharing/MemberPolicy;Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;)V

    return-object v0
.end method

.method public withMemberPolicy(Lcom/dropbox/core/v2/sharing/MemberPolicy;)Lcom/dropbox/core/v2/sharing/FolderPolicy$Builder;
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy$Builder;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    .line 192
    return-object p0
.end method

.method public withResolvedMemberPolicy(Lcom/dropbox/core/v2/sharing/MemberPolicy;)Lcom/dropbox/core/v2/sharing/FolderPolicy$Builder;
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy$Builder;->resolvedMemberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    .line 208
    return-object p0
.end method

.method public withViewerInfoPolicy(Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;)Lcom/dropbox/core/v2/sharing/FolderPolicy$Builder;
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy$Builder;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    .line 221
    return-object p0
.end method
