.class Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;
.super Ljava/lang/Object;
.source "UpdateFolderPolicyArg.java"


# instance fields
.field protected final aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

.field protected final actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FolderAction;",
            ">;"
        }
    .end annotation
.end field

.field protected final linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

.field protected final memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

.field protected final sharedFolderId:Ljava/lang/String;

.field protected final sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

.field protected final viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 96
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberPolicy;Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;Lcom/dropbox/core/v2/sharing/LinkSettings;Ljava/util/List;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberPolicy;Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;Lcom/dropbox/core/v2/sharing/LinkSettings;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dropbox/core/v2/sharing/MemberPolicy;",
            "Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;",
            "Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;",
            "Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;",
            "Lcom/dropbox/core/v2/sharing/LinkSettings;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FolderAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    if-nez p1, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'sharedFolderId\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    const-string/jumbo v0, "[-_0-9a-zA-Z:]+"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'sharedFolderId\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->sharedFolderId:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    .line 70
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    .line 71
    iput-object p4, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    .line 72
    iput-object p5, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    .line 73
    iput-object p6, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

    .line 74
    if-eqz p7, :cond_3

    .line 75
    invoke-interface {p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/FolderAction;

    .line 76
    if-nez v0, :cond_2

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'actions\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_3
    iput-object p7, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->actions:Ljava/util/List;

    .line 82
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;
    .locals 1

    .prologue
    .line 180
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 330
    if-ne p1, p0, :cond_1

    .line 349
    :cond_0
    :goto_0
    return v0

    .line 333
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 334
    goto :goto_0

    .line 337
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 338
    check-cast p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;

    .line 339
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->sharedFolderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->sharedFolderId:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->sharedFolderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->sharedFolderId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    .line 340
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/MemberPolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    .line 341
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    .line 342
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    .line 343
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

    .line 344
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/LinkSettings;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->actions:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->actions:Ljava/util/List;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->actions:Ljava/util/List;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->actions:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->actions:Ljava/util/List;

    .line 345
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_9
    move v0, v1

    goto/16 :goto_0

    :cond_a
    move v0, v1

    .line 349
    goto/16 :goto_0
.end method

.method public getAclUpdatePolicy()Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    return-object v0
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FolderAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->actions:Ljava/util/List;

    return-object v0
.end method

.method public getLinkSettings()Lcom/dropbox/core/v2/sharing/LinkSettings;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

    return-object v0
.end method

.method public getMemberPolicy()Lcom/dropbox/core/v2/sharing/MemberPolicy;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    return-object v0
.end method

.method public getSharedFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->sharedFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedLinkPolicy()Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    return-object v0
.end method

.method public getViewerInfoPolicy()Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 316
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->sharedFolderId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->actions:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 325
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 355
    sget-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 367
    sget-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
