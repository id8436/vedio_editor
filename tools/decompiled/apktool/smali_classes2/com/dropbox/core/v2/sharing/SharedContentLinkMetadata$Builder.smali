.class public Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Builder;
.super Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;
.source "SharedContentLinkMetadata.java"


# instance fields
.field protected audienceExceptions:Lcom/dropbox/core/v2/sharing/AudienceExceptions;

.field protected final url:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/util/List;Lcom/dropbox/core/v2/sharing/LinkAudience;Ljava/util/List;ZLjava/lang/String;)V
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
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 221
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;-><init>(Ljava/util/List;Lcom/dropbox/core/v2/sharing/LinkAudience;Ljava/util/List;Z)V

    .line 222
    if-nez p5, :cond_0

    .line 223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'url\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    iput-object p5, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Builder;->url:Ljava/lang/String;

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Builder;->audienceExceptions:Lcom/dropbox/core/v2/sharing/AudienceExceptions;

    .line 227
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;
    .locals 10

    .prologue
    .line 291
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Builder;->audienceOptions:Ljava/util/List;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Builder;->currentAudience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Builder;->linkPermissions:Ljava/util/List;

    iget-boolean v4, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Builder;->passwordProtected:Z

    iget-object v5, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Builder;->url:Ljava/lang/String;

    iget-object v6, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Builder;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v7, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Builder;->audienceRestrictingSharedFolder:Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;

    iget-object v8, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Builder;->expiry:Ljava/util/Date;

    iget-object v9, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Builder;->audienceExceptions:Lcom/dropbox/core/v2/sharing/AudienceExceptions;

    invoke-direct/range {v0 .. v9}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;-><init>(Ljava/util/List;Lcom/dropbox/core/v2/sharing/LinkAudience;Ljava/util/List;ZLjava/lang/String;Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;Ljava/util/Date;Lcom/dropbox/core/v2/sharing/AudienceExceptions;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Builder;->build()Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    move-result-object v0

    return-object v0
.end method

.method public withAccessLevel(Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Builder;
    .locals 0

    .prologue
    .line 252
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;->withAccessLevel(Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;

    .line 253
    return-object p0
.end method

.method public bridge synthetic withAccessLevel(Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Builder;->withAccessLevel(Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withAudienceExceptions(Lcom/dropbox/core/v2/sharing/AudienceExceptions;)Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Builder;
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Builder;->audienceExceptions:Lcom/dropbox/core/v2/sharing/AudienceExceptions;

    .line 241
    return-object p0
.end method

.method public withAudienceRestrictingSharedFolder(Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;)Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Builder;
    .locals 0

    .prologue
    .line 266
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;->withAudienceRestrictingSharedFolder(Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;)Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;

    .line 267
    return-object p0
.end method

.method public bridge synthetic withAudienceRestrictingSharedFolder(Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;)Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Builder;->withAudienceRestrictingSharedFolder(Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;)Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withExpiry(Ljava/util/Date;)Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Builder;
    .locals 0

    .prologue
    .line 280
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;->withExpiry(Ljava/util/Date;)Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;

    .line 281
    return-object p0
.end method

.method public bridge synthetic withExpiry(Ljava/util/Date;)Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Builder;->withExpiry(Ljava/util/Date;)Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Builder;

    move-result-object v0

    return-object v0
.end method
