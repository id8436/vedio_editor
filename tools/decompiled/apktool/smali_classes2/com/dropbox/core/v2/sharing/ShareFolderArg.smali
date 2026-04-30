.class Lcom/dropbox/core/v2/sharing/ShareFolderArg;
.super Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;
.source "ShareFolderArg.java"


# instance fields
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


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 79
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/sharing/ShareFolderArg;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;ZLcom/dropbox/core/v2/sharing/MemberPolicy;Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;Ljava/util/List;Lcom/dropbox/core/v2/sharing/LinkSettings;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;ZLcom/dropbox/core/v2/sharing/MemberPolicy;Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;Ljava/util/List;Lcom/dropbox/core/v2/sharing/LinkSettings;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;",
            "Z",
            "Lcom/dropbox/core/v2/sharing/MemberPolicy;",
            "Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;",
            "Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FolderAction;",
            ">;",
            "Lcom/dropbox/core/v2/sharing/LinkSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct/range {p0 .. p6}, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;ZLcom/dropbox/core/v2/sharing/MemberPolicy;Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;)V

    .line 55
    if-eqz p7, :cond_1

    .line 56
    invoke-interface {p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/FolderAction;

    .line 57
    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'actions\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1
    iput-object p7, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->actions:Ljava/util/List;

    .line 63
    iput-object p8, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

    .line 64
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;
    .locals 1

    .prologue
    .line 175
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 323
    if-ne p1, p0, :cond_1

    .line 343
    :cond_0
    :goto_0
    return v0

    .line 326
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 327
    goto :goto_0

    .line 330
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 331
    check-cast p1, Lcom/dropbox/core/v2/sharing/ShareFolderArg;

    .line 332
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->path:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    .line 333
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_4
    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->forceAsync:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->forceAsync:Z

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    .line 335
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/MemberPolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    .line 336
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    .line 337
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->actions:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->actions:Ljava/util/List;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->actions:Ljava/util/List;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->actions:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->actions:Ljava/util/List;

    .line 338
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

    .line 339
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/LinkSettings;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_9
    move v0, v1

    goto/16 :goto_0

    :cond_a
    move v0, v1

    .line 343
    goto/16 :goto_0
.end method

.method public getAclUpdatePolicy()Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

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
    .line 150
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->actions:Ljava/util/List;

    return-object v0
.end method

.method public getForceAsync()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->forceAsync:Z

    return v0
.end method

.method public getLinkSettings()Lcom/dropbox/core/v2/sharing/LinkSettings;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

    return-object v0
.end method

.method public getMemberPolicy()Lcom/dropbox/core/v2/sharing/MemberPolicy;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedLinkPolicy()Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    return-object v0
.end method

.method public getViewerInfoPolicy()Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 313
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->actions:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 317
    invoke-super {p0}, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 318
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 349
    sget-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ShareFolderArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 361
    sget-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ShareFolderArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
