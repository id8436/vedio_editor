.class public Lcom/dropbox/core/v2/sharing/FolderPolicy;
.super Ljava/lang/Object;
.source "FolderPolicy.java"


# instance fields
.field protected final aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

.field protected final memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

.field protected final resolvedMemberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

.field protected final sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

.field protected final viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 85
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/sharing/FolderPolicy;-><init>(Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;Lcom/dropbox/core/v2/sharing/MemberPolicy;Lcom/dropbox/core/v2/sharing/MemberPolicy;Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;Lcom/dropbox/core/v2/sharing/MemberPolicy;Lcom/dropbox/core/v2/sharing/MemberPolicy;Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;)V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    .line 58
    iput-object p4, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy;->resolvedMemberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    .line 59
    if-nez p1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'aclUpdatePolicy\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    .line 63
    if-nez p2, :cond_1

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'sharedLinkPolicy\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    .line 67
    iput-object p5, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    .line 68
    return-void
.end method

.method public static newBuilder(Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;)Lcom/dropbox/core/v2/sharing/FolderPolicy$Builder;
    .locals 1

    .prologue
    .line 152
    new-instance v0, Lcom/dropbox/core/v2/sharing/FolderPolicy$Builder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/sharing/FolderPolicy$Builder;-><init>(Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 249
    if-ne p1, p0, :cond_1

    .line 266
    :cond_0
    :goto_0
    return v0

    .line 252
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 253
    goto :goto_0

    .line 256
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 257
    check-cast p1, Lcom/dropbox/core/v2/sharing/FolderPolicy;

    .line 258
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FolderPolicy;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FolderPolicy;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FolderPolicy;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FolderPolicy;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    .line 259
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FolderPolicy;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FolderPolicy;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    .line 260
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/MemberPolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy;->resolvedMemberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FolderPolicy;->resolvedMemberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy;->resolvedMemberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy;->resolvedMemberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FolderPolicy;->resolvedMemberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    .line 261
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/MemberPolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FolderPolicy;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FolderPolicy;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    .line 262
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    move v0, v1

    .line 266
    goto :goto_0
.end method

.method public getAclUpdatePolicy()Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    return-object v0
.end method

.method public getMemberPolicy()Lcom/dropbox/core/v2/sharing/MemberPolicy;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    return-object v0
.end method

.method public getResolvedMemberPolicy()Lcom/dropbox/core/v2/sharing/MemberPolicy;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy;->resolvedMemberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    return-object v0
.end method

.method public getSharedLinkPolicy()Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    return-object v0
.end method

.method public getViewerInfoPolicy()Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 237
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy;->resolvedMemberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 244
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 272
    sget-object v0, Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 284
    sget-object v0, Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
