.class public Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails$Builder;
.super Ljava/lang/Object;
.source "SharedFolderChangeMemberManagementPolicyDetails.java"


# instance fields
.field protected final newValue:Lcom/dropbox/core/v2/teamlog/SharedFolderMembershipManagementPolicy;

.field protected final originalFolderName:Ljava/lang/String;

.field protected previousValue:Lcom/dropbox/core/v2/teamlog/SharedFolderMembershipManagementPolicy;

.field protected sharedFolderType:Ljava/lang/String;

.field protected final targetAssetIndex:J


# direct methods
.method protected constructor <init>(JLjava/lang/String;Lcom/dropbox/core/v2/teamlog/SharedFolderMembershipManagementPolicy;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-wide p1, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails$Builder;->targetAssetIndex:J

    .line 158
    if-nez p3, :cond_0

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'originalFolderName\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails$Builder;->originalFolderName:Ljava/lang/String;

    .line 162
    if-nez p4, :cond_1

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'newValue\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_1
    iput-object p4, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails$Builder;->newValue:Lcom/dropbox/core/v2/teamlog/SharedFolderMembershipManagementPolicy;

    .line 166
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails$Builder;->sharedFolderType:Ljava/lang/String;

    .line 167
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails$Builder;->previousValue:Lcom/dropbox/core/v2/teamlog/SharedFolderMembershipManagementPolicy;

    .line 168
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails;
    .locals 8

    .prologue
    .line 205
    new-instance v1, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails;

    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails$Builder;->targetAssetIndex:J

    iget-object v4, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails$Builder;->originalFolderName:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails$Builder;->newValue:Lcom/dropbox/core/v2/teamlog/SharedFolderMembershipManagementPolicy;

    iget-object v6, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails$Builder;->sharedFolderType:Ljava/lang/String;

    iget-object v7, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails$Builder;->previousValue:Lcom/dropbox/core/v2/teamlog/SharedFolderMembershipManagementPolicy;

    invoke-direct/range {v1 .. v7}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails;-><init>(JLjava/lang/String;Lcom/dropbox/core/v2/teamlog/SharedFolderMembershipManagementPolicy;Ljava/lang/String;Lcom/dropbox/core/v2/teamlog/SharedFolderMembershipManagementPolicy;)V

    return-object v1
.end method

.method public withPreviousValue(Lcom/dropbox/core/v2/teamlog/SharedFolderMembershipManagementPolicy;)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails$Builder;
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails$Builder;->previousValue:Lcom/dropbox/core/v2/teamlog/SharedFolderMembershipManagementPolicy;

    .line 193
    return-object p0
.end method

.method public withSharedFolderType(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails$Builder;
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails$Builder;->sharedFolderType:Ljava/lang/String;

    .line 180
    return-object p0
.end method
