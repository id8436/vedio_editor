.class public Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;
.super Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;
.source "SharedContentLinkMetadata.java"


# instance fields
.field protected final audienceExceptions:Lcom/dropbox/core/v2/sharing/AudienceExceptions;

.field protected final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/dropbox/core/v2/sharing/LinkAudience;Ljava/util/List;ZLjava/lang/String;)V
    .locals 10
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
    const/4 v6, 0x0

    .line 95
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v7, v6

    move-object v8, v6

    move-object v9, v6

    invoke-direct/range {v0 .. v9}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;-><init>(Ljava/util/List;Lcom/dropbox/core/v2/sharing/LinkAudience;Ljava/util/List;ZLjava/lang/String;Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;Ljava/util/Date;Lcom/dropbox/core/v2/sharing/AudienceExceptions;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/dropbox/core/v2/sharing/LinkAudience;Ljava/util/List;ZLjava/lang/String;Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;Ljava/util/Date;Lcom/dropbox/core/v2/sharing/AudienceExceptions;)V
    .locals 9
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
            "Lcom/dropbox/core/v2/sharing/AccessLevel;",
            "Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;",
            "Ljava/util/Date;",
            "Lcom/dropbox/core/v2/sharing/AudienceExceptions;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;-><init>(Ljava/util/List;Lcom/dropbox/core/v2/sharing/LinkAudience;Ljava/util/List;ZLcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;Ljava/util/Date;)V

    .line 65
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->audienceExceptions:Lcom/dropbox/core/v2/sharing/AudienceExceptions;

    .line 66
    if-nez p5, :cond_0

    .line 67
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Required value for \'url\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_0
    iput-object p5, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->url:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public static newBuilder(Ljava/util/List;Lcom/dropbox/core/v2/sharing/LinkAudience;Ljava/util/List;ZLjava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Builder;
    .locals 6
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
            ")",
            "Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Builder;"
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Builder;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Builder;-><init>(Ljava/util/List;Lcom/dropbox/core/v2/sharing/LinkAudience;Ljava/util/List;ZLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 307
    if-ne p1, p0, :cond_1

    .line 328
    :cond_0
    :goto_0
    return v0

    .line 310
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 311
    goto :goto_0

    .line 314
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 315
    check-cast p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    .line 316
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->audienceOptions:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->audienceOptions:Ljava/util/List;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->audienceOptions:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->audienceOptions:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->currentAudience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->currentAudience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->currentAudience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->currentAudience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    .line 317
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/LinkAudience;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->linkPermissions:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->linkPermissions:Ljava/util/List;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->linkPermissions:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->linkPermissions:Ljava/util/List;

    .line 318
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_5
    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->passwordProtected:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->passwordProtected:Z

    if-ne v2, v3, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->url:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->url:Ljava/lang/String;

    .line 320
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    .line 321
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/AccessLevel;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->audienceRestrictingSharedFolder:Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->audienceRestrictingSharedFolder:Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->audienceRestrictingSharedFolder:Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->audienceRestrictingSharedFolder:Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->audienceRestrictingSharedFolder:Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;

    .line 322
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_8
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->expiry:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->expiry:Ljava/util/Date;

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->expiry:Ljava/util/Date;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->expiry:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->expiry:Ljava/util/Date;

    .line 323
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->audienceExceptions:Lcom/dropbox/core/v2/sharing/AudienceExceptions;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->audienceExceptions:Lcom/dropbox/core/v2/sharing/AudienceExceptions;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->audienceExceptions:Lcom/dropbox/core/v2/sharing/AudienceExceptions;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->audienceExceptions:Lcom/dropbox/core/v2/sharing/AudienceExceptions;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->audienceExceptions:Lcom/dropbox/core/v2/sharing/AudienceExceptions;

    .line 324
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/AudienceExceptions;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_a
    move v0, v1

    goto/16 :goto_0

    :cond_b
    move v0, v1

    .line 328
    goto/16 :goto_0
.end method

.method public getAccessLevel()Lcom/dropbox/core/v2/sharing/AccessLevel;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    return-object v0
.end method

.method public getAudienceExceptions()Lcom/dropbox/core/v2/sharing/AudienceExceptions;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->audienceExceptions:Lcom/dropbox/core/v2/sharing/AudienceExceptions;

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
    .line 107
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->audienceOptions:Ljava/util/List;

    return-object v0
.end method

.method public getAudienceRestrictingSharedFolder()Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->audienceRestrictingSharedFolder:Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;

    return-object v0
.end method

.method public getCurrentAudience()Lcom/dropbox/core/v2/sharing/LinkAudience;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->currentAudience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    return-object v0
.end method

.method public getExpiry()Ljava/util/Date;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->expiry:Ljava/util/Date;

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
    .line 125
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->linkPermissions:Ljava/util/List;

    return-object v0
.end method

.method public getPasswordProtected()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->passwordProtected:Z

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 297
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->audienceExceptions:Lcom/dropbox/core/v2/sharing/AudienceExceptions;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->url:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 301
    invoke-super {p0}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 302
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 334
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 346
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
