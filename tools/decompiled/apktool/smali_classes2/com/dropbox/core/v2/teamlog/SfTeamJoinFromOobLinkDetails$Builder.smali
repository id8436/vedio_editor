.class public Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$Builder;
.super Ljava/lang/Object;
.source "SfTeamJoinFromOobLinkDetails.java"


# instance fields
.field protected final originalFolderName:Ljava/lang/String;

.field protected sharingPermission:Ljava/lang/String;

.field protected final targetAssetIndex:J

.field protected tokenKey:Ljava/lang/String;


# direct methods
.method protected constructor <init>(JLjava/lang/String;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-wide p1, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$Builder;->targetAssetIndex:J

    .line 135
    if-nez p3, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'originalFolderName\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$Builder;->originalFolderName:Ljava/lang/String;

    .line 139
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$Builder;->tokenKey:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$Builder;->sharingPermission:Ljava/lang/String;

    .line 141
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;
    .locals 7

    .prologue
    .line 175
    new-instance v1, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;

    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$Builder;->targetAssetIndex:J

    iget-object v4, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$Builder;->originalFolderName:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$Builder;->tokenKey:Ljava/lang/String;

    iget-object v6, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$Builder;->sharingPermission:Ljava/lang/String;

    invoke-direct/range {v1 .. v6}, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public withSharingPermission(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$Builder;
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$Builder;->sharingPermission:Ljava/lang/String;

    .line 165
    return-object p0
.end method

.method public withTokenKey(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$Builder;
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$Builder;->tokenKey:Ljava/lang/String;

    .line 152
    return-object p0
.end method
