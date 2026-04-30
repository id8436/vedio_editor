.class public Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata$Builder;
.super Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;
.source "ExpectedSharedContentLinkMetadata.java"


# direct methods
.method protected constructor <init>(Ljava/util/List;Lcom/dropbox/core/v2/sharing/LinkAudience;Ljava/util/List;Z)V
    .locals 0
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
    .line 186
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;-><init>(Ljava/util/List;Lcom/dropbox/core/v2/sharing/LinkAudience;Ljava/util/List;Z)V

    .line 187
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;
    .locals 8

    .prologue
    .line 236
    new-instance v0, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata$Builder;->audienceOptions:Ljava/util/List;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata$Builder;->currentAudience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata$Builder;->linkPermissions:Ljava/util/List;

    iget-boolean v4, p0, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata$Builder;->passwordProtected:Z

    iget-object v5, p0, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata$Builder;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v6, p0, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata$Builder;->audienceRestrictingSharedFolder:Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;

    iget-object v7, p0, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata$Builder;->expiry:Ljava/util/Date;

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;-><init>(Ljava/util/List;Lcom/dropbox/core/v2/sharing/LinkAudience;Ljava/util/List;ZLcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;Ljava/util/Date;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata$Builder;->build()Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;

    move-result-object v0

    return-object v0
.end method

.method public withAccessLevel(Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata$Builder;
    .locals 0

    .prologue
    .line 197
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;->withAccessLevel(Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;

    .line 198
    return-object p0
.end method

.method public bridge synthetic withAccessLevel(Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata$Builder;->withAccessLevel(Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withAudienceRestrictingSharedFolder(Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;)Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata$Builder;
    .locals 0

    .prologue
    .line 211
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;->withAudienceRestrictingSharedFolder(Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;)Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;

    .line 212
    return-object p0
.end method

.method public bridge synthetic withAudienceRestrictingSharedFolder(Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;)Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata$Builder;->withAudienceRestrictingSharedFolder(Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;)Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withExpiry(Ljava/util/Date;)Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata$Builder;
    .locals 0

    .prologue
    .line 225
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;->withExpiry(Ljava/util/Date;)Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;

    .line 226
    return-object p0
.end method

.method public bridge synthetic withExpiry(Ljava/util/Date;)Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata$Builder;->withExpiry(Ljava/util/Date;)Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata$Builder;

    move-result-object v0

    return-object v0
.end method
