.class public Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;
.super Ljava/lang/Object;
.source "SharedContentRemoveMemberDetails.java"


# instance fields
.field protected final originalFolderName:Ljava/lang/String;

.field protected final sharedFolderType:Ljava/lang/String;

.field protected final sharingPermission:Ljava/lang/String;

.field protected final targetAssetIndex:J


# direct methods
.method public constructor <init>(J)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 57
    move-object v1, p0

    move-wide v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v1 .. v6}, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide p1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;->targetAssetIndex:J

    .line 44
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;->originalFolderName:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;->sharingPermission:Ljava/lang/String;

    .line 46
    iput-object p5, p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;->sharedFolderType:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static newBuilder(J)Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails$Builder;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails$Builder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails$Builder;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 186
    if-ne p1, p0, :cond_1

    .line 202
    :cond_0
    :goto_0
    return v0

    .line 189
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 190
    goto :goto_0

    .line 193
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 194
    check-cast p1, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;

    .line 195
    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;->targetAssetIndex:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;->targetAssetIndex:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;->originalFolderName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;->originalFolderName:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;->originalFolderName:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;->originalFolderName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;->originalFolderName:Ljava/lang/String;

    .line 196
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;->sharingPermission:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;->sharingPermission:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;->sharingPermission:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;->sharingPermission:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;->sharingPermission:Ljava/lang/String;

    .line 197
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;->sharedFolderType:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;->sharedFolderType:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;->sharedFolderType:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;->sharedFolderType:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;->sharedFolderType:Ljava/lang/String;

    .line 198
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 202
    goto :goto_0
.end method

.method public getOriginalFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;->originalFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedFolderType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;->sharedFolderType:Ljava/lang/String;

    return-object v0
.end method

.method public getSharingPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;->sharingPermission:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetAssetIndex()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;->targetAssetIndex:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 175
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;->targetAssetIndex:J

    .line 176
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;->originalFolderName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;->sharingPermission:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;->sharedFolderType:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 175
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 181
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 208
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 220
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
