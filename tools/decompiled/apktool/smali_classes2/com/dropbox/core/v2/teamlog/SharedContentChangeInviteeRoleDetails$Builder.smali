.class public Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$Builder;
.super Ljava/lang/Object;
.source "SharedContentChangeInviteeRoleDetails.java"


# instance fields
.field protected newSharingPermission:Ljava/lang/String;

.field protected final originalFolderName:Ljava/lang/String;

.field protected previousSharingPermission:Ljava/lang/String;

.field protected final targetAssetIndex:J


# direct methods
.method protected constructor <init>(JLjava/lang/String;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-wide p1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$Builder;->targetAssetIndex:J

    .line 139
    if-nez p3, :cond_0

    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'originalFolderName\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$Builder;->originalFolderName:Ljava/lang/String;

    .line 143
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$Builder;->newSharingPermission:Ljava/lang/String;

    .line 144
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$Builder;->previousSharingPermission:Ljava/lang/String;

    .line 145
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;
    .locals 7

    .prologue
    .line 180
    new-instance v1, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;

    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$Builder;->targetAssetIndex:J

    iget-object v4, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$Builder;->originalFolderName:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$Builder;->newSharingPermission:Ljava/lang/String;

    iget-object v6, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$Builder;->previousSharingPermission:Ljava/lang/String;

    invoke-direct/range {v1 .. v6}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public withNewSharingPermission(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$Builder;
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$Builder;->newSharingPermission:Ljava/lang/String;

    .line 157
    return-object p0
.end method

.method public withPreviousSharingPermission(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$Builder;
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$Builder;->previousSharingPermission:Ljava/lang/String;

    .line 170
    return-object p0
.end method
