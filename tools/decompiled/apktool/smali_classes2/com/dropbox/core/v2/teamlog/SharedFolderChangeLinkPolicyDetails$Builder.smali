.class public Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails$Builder;
.super Ljava/lang/Object;
.source "SharedFolderChangeLinkPolicyDetails.java"


# instance fields
.field protected final newValue:Lcom/dropbox/core/v2/teamlog/SharedFolderLinkPolicy;

.field protected final originalFolderName:Ljava/lang/String;

.field protected previousValue:Lcom/dropbox/core/v2/teamlog/SharedFolderLinkPolicy;

.field protected sharedFolderType:Ljava/lang/String;

.field protected final targetAssetIndex:J


# direct methods
.method protected constructor <init>(JLjava/lang/String;Lcom/dropbox/core/v2/teamlog/SharedFolderLinkPolicy;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-wide p1, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails$Builder;->targetAssetIndex:J

    .line 155
    if-nez p3, :cond_0

    .line 156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'originalFolderName\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails$Builder;->originalFolderName:Ljava/lang/String;

    .line 159
    if-nez p4, :cond_1

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'newValue\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_1
    iput-object p4, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails$Builder;->newValue:Lcom/dropbox/core/v2/teamlog/SharedFolderLinkPolicy;

    .line 163
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails$Builder;->sharedFolderType:Ljava/lang/String;

    .line 164
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails$Builder;->previousValue:Lcom/dropbox/core/v2/teamlog/SharedFolderLinkPolicy;

    .line 165
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails;
    .locals 8

    .prologue
    .line 200
    new-instance v1, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails;

    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails$Builder;->targetAssetIndex:J

    iget-object v4, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails$Builder;->originalFolderName:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails$Builder;->newValue:Lcom/dropbox/core/v2/teamlog/SharedFolderLinkPolicy;

    iget-object v6, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails$Builder;->sharedFolderType:Ljava/lang/String;

    iget-object v7, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails$Builder;->previousValue:Lcom/dropbox/core/v2/teamlog/SharedFolderLinkPolicy;

    invoke-direct/range {v1 .. v7}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails;-><init>(JLjava/lang/String;Lcom/dropbox/core/v2/teamlog/SharedFolderLinkPolicy;Ljava/lang/String;Lcom/dropbox/core/v2/teamlog/SharedFolderLinkPolicy;)V

    return-object v1
.end method

.method public withPreviousValue(Lcom/dropbox/core/v2/teamlog/SharedFolderLinkPolicy;)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails$Builder;
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails$Builder;->previousValue:Lcom/dropbox/core/v2/teamlog/SharedFolderLinkPolicy;

    .line 190
    return-object p0
.end method

.method public withSharedFolderType(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails$Builder;
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails$Builder;->sharedFolderType:Ljava/lang/String;

    .line 177
    return-object p0
.end method
