.class public Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;
.super Ljava/lang/Object;
.source "ShareFolderArgBase.java"


# instance fields
.field protected aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

.field protected forceAsync:Z

.field protected memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

.field protected final path:Ljava/lang/String;

.field protected sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

.field protected viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    if-nez p1, :cond_0

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'path\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    const-string/jumbo v0, "(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'path\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;->path:Ljava/lang/String;

    .line 176
    iput-object v1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;->forceAsync:Z

    .line 178
    iput-object v1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    .line 179
    iput-object v1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    .line 180
    iput-object v1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    .line 181
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;
    .locals 7

    .prologue
    .line 265
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;->path:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    iget-boolean v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;->forceAsync:Z

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    iget-object v5, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    iget-object v6, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;ZLcom/dropbox/core/v2/sharing/MemberPolicy;Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;)V

    return-object v0
.end method

.method public withAclUpdatePolicy(Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;)Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    .line 193
    return-object p0
.end method

.method public withForceAsync(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;
    .locals 1

    .prologue
    .line 209
    if-eqz p1, :cond_0

    .line 210
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;->forceAsync:Z

    .line 215
    :goto_0
    return-object p0

    .line 213
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;->forceAsync:Z

    goto :goto_0
.end method

.method public withMemberPolicy(Lcom/dropbox/core/v2/sharing/MemberPolicy;)Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    .line 228
    return-object p0
.end method

.method public withSharedLinkPolicy(Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;)Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    .line 242
    return-object p0
.end method

.method public withViewerInfoPolicy(Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;)Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    .line 255
    return-object p0
.end method
