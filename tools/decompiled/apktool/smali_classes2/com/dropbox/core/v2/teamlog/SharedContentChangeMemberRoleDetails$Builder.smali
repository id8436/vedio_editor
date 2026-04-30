.class public Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$Builder;
.super Ljava/lang/Object;
.source "SharedContentChangeMemberRoleDetails.java"


# instance fields
.field protected newSharingPermission:Ljava/lang/String;

.field protected originalFolderName:Ljava/lang/String;

.field protected previousSharingPermission:Ljava/lang/String;

.field protected sharedFolderType:Ljava/lang/String;

.field protected final targetAssetIndex:J


# direct methods
.method protected constructor <init>(J)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-wide p1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$Builder;->targetAssetIndex:J

    .line 133
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$Builder;->originalFolderName:Ljava/lang/String;

    .line 134
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$Builder;->newSharingPermission:Ljava/lang/String;

    .line 135
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$Builder;->previousSharingPermission:Ljava/lang/String;

    .line 136
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$Builder;->sharedFolderType:Ljava/lang/String;

    .line 137
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;
    .locals 8

    .prologue
    .line 197
    new-instance v1, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;

    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$Builder;->targetAssetIndex:J

    iget-object v4, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$Builder;->originalFolderName:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$Builder;->newSharingPermission:Ljava/lang/String;

    iget-object v6, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$Builder;->previousSharingPermission:Ljava/lang/String;

    iget-object v7, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$Builder;->sharedFolderType:Ljava/lang/String;

    invoke-direct/range {v1 .. v7}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public withNewSharingPermission(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$Builder;
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$Builder;->newSharingPermission:Ljava/lang/String;

    .line 161
    return-object p0
.end method

.method public withOriginalFolderName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$Builder;
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$Builder;->originalFolderName:Ljava/lang/String;

    .line 148
    return-object p0
.end method

.method public withPreviousSharingPermission(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$Builder;
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$Builder;->previousSharingPermission:Ljava/lang/String;

    .line 174
    return-object p0
.end method

.method public withSharedFolderType(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$Builder;
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$Builder;->sharedFolderType:Ljava/lang/String;

    .line 187
    return-object p0
.end method
