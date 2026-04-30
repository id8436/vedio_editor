.class public Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;
.super Ljava/lang/Object;
.source "SharedContentLinkMetadataBase.java"


# instance fields
.field protected final accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

.field protected final audienceOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/LinkAudience;",
            ">;"
        }
    .end annotation
.end field

.field protected final audienceRestrictingSharedFolder:Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;

.field protected final currentAudience:Lcom/dropbox/core/v2/sharing/LinkAudience;

.field protected final expiry:Ljava/util/Date;

.field protected final linkPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/LinkPermission;",
            ">;"
        }
    .end annotation
.end field

.field protected final passwordProtected:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/dropbox/core/v2/sharing/LinkAudience;Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/LinkAudience;",
            ">;",
            "Lcom/dropbox/core/v2/sharing/LinkAudience;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/LinkPermission;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 109
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;-><init>(Ljava/util/List;Lcom/dropbox/core/v2/sharing/LinkAudience;Ljava/util/List;ZLcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;Ljava/util/Date;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/dropbox/core/v2/sharing/LinkAudience;Ljava/util/List;ZLcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;Ljava/util/Date;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/LinkAudience;",
            ">;",
            "Lcom/dropbox/core/v2/sharing/LinkAudience;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/LinkPermission;",
            ">;Z",
            "Lcom/dropbox/core/v2/sharing/AccessLevel;",
            "Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p5, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    .line 60
    if-nez p1, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'audienceOptions\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/LinkAudience;

    .line 64
    if-nez v0, :cond_1

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'audienceOptions\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->audienceOptions:Ljava/util/List;

    .line 69
    iput-object p6, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->audienceRestrictingSharedFolder:Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;

    .line 70
    if-nez p2, :cond_3

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'currentAudience\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_3
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->currentAudience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    .line 74
    invoke-static {p7}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->expiry:Ljava/util/Date;

    .line 75
    if-nez p3, :cond_4

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'linkPermissions\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_4
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/LinkPermission;

    .line 79
    if-nez v0, :cond_5

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'linkPermissions\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_6
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->linkPermissions:Ljava/util/List;

    .line 84
    iput-boolean p4, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->passwordProtected:Z

    .line 85
    return-void
.end method

.method public static newBuilder(Ljava/util/List;Lcom/dropbox/core/v2/sharing/LinkAudience;Ljava/util/List;Z)Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/LinkAudience;",
            ">;",
            "Lcom/dropbox/core/v2/sharing/LinkAudience;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/LinkPermission;",
            ">;Z)",
            "Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;"
        }
    .end annotation

    .prologue
    .line 202
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;-><init>(Ljava/util/List;Lcom/dropbox/core/v2/sharing/LinkAudience;Ljava/util/List;Z)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 314
    if-ne p1, p0, :cond_1

    .line 333
    :cond_0
    :goto_0
    return v0

    .line 317
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 318
    goto :goto_0

    .line 321
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 322
    check-cast p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;

    .line 323
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->audienceOptions:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->audienceOptions:Ljava/util/List;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->audienceOptions:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->audienceOptions:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->currentAudience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->currentAudience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->currentAudience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->currentAudience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    .line 324
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/LinkAudience;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->linkPermissions:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->linkPermissions:Ljava/util/List;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->linkPermissions:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->linkPermissions:Ljava/util/List;

    .line 325
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_5
    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->passwordProtected:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->passwordProtected:Z

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    .line 327
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/AccessLevel;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->audienceRestrictingSharedFolder:Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->audienceRestrictingSharedFolder:Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->audienceRestrictingSharedFolder:Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->audienceRestrictingSharedFolder:Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->audienceRestrictingSharedFolder:Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;

    .line 328
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->expiry:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->expiry:Ljava/util/Date;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->expiry:Ljava/util/Date;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->expiry:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->expiry:Ljava/util/Date;

    .line 329
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_8
    move v0, v1

    goto/16 :goto_0

    :cond_9
    move v0, v1

    .line 333
    goto/16 :goto_0
.end method

.method public getAccessLevel()Lcom/dropbox/core/v2/sharing/AccessLevel;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    return-object v0
.end method

.method public getAudienceOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/LinkAudience;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->audienceOptions:Ljava/util/List;

    return-object v0
.end method

.method public getAudienceRestrictingSharedFolder()Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->audienceRestrictingSharedFolder:Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;

    return-object v0
.end method

.method public getCurrentAudience()Lcom/dropbox/core/v2/sharing/LinkAudience;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->currentAudience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    return-object v0
.end method

.method public getExpiry()Ljava/util/Date;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->expiry:Ljava/util/Date;

    return-object v0
.end method

.method public getLinkPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/LinkPermission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->linkPermissions:Ljava/util/List;

    return-object v0
.end method

.method public getPasswordProtected()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->passwordProtected:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 300
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->audienceOptions:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->audienceRestrictingSharedFolder:Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->currentAudience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->expiry:Ljava/util/Date;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->linkPermissions:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->passwordProtected:Z

    .line 307
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 300
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 309
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 339
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 351
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
