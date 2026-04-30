.class Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;
.super Ljava/lang/Object;
.source "ShareFolderArgBase.java"


# instance fields
.field protected final aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

.field protected final forceAsync:Z

.field protected final memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

.field protected final path:Ljava/lang/String;

.field protected final sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

.field protected final viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 78
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;ZLcom/dropbox/core/v2/sharing/MemberPolicy;Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;ZLcom/dropbox/core/v2/sharing/MemberPolicy;Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;)V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    .line 52
    iput-boolean p3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->forceAsync:Z

    .line 53
    iput-object p4, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    .line 54
    if-nez p1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'path\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    const-string/jumbo v0, "(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'path\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->path:Ljava/lang/String;

    .line 61
    iput-object p5, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    .line 62
    iput-object p6, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    .line 63
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;
    .locals 1

    .prologue
    .line 153
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 284
    if-ne p1, p0, :cond_1

    .line 302
    :cond_0
    :goto_0
    return v0

    .line 287
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 288
    goto :goto_0

    .line 291
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 292
    check-cast p1, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;

    .line 293
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->path:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    .line 294
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_4
    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->forceAsync:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->forceAsync:Z

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    .line 296
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/MemberPolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    .line 297
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    .line 298
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    move v0, v1

    .line 302
    goto :goto_0
.end method

.method public getAclUpdatePolicy()Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    return-object v0
.end method

.method public getForceAsync()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->forceAsync:Z

    return v0
.end method

.method public getMemberPolicy()Lcom/dropbox/core/v2/sharing/MemberPolicy;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedLinkPolicy()Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    return-object v0
.end method

.method public getViewerInfoPolicy()Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 271
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->forceAsync:Z

    .line 273
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->path:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    aput-object v2, v0, v1

    .line 271
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 279
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 308
    sget-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 320
    sget-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
