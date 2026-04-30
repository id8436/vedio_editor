.class public Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails;
.super Ljava/lang/Object;
.source "SfAllowNonMembersToViewSharedLinksDetails.java"


# instance fields
.field protected final originalFolderName:Ljava/lang/String;

.field protected final sharedFolderType:Ljava/lang/String;

.field protected final targetAssetIndex:J


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-wide p1, p0, Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails;->targetAssetIndex:J

    .line 42
    if-nez p3, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'originalFolderName\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails;->originalFolderName:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails;->sharedFolderType:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 104
    if-ne p1, p0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v0

    .line 107
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 108
    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 112
    check-cast p1, Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails;

    .line 113
    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails;->targetAssetIndex:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails;->targetAssetIndex:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails;->originalFolderName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails;->originalFolderName:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails;->originalFolderName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails;->originalFolderName:Ljava/lang/String;

    .line 114
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails;->sharedFolderType:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails;->sharedFolderType:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails;->sharedFolderType:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails;->sharedFolderType:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails;->sharedFolderType:Ljava/lang/String;

    .line 115
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 119
    goto :goto_0
.end method

.method public getOriginalFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails;->originalFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedFolderType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails;->sharedFolderType:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetAssetIndex()J
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails;->targetAssetIndex:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 94
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails;->targetAssetIndex:J

    .line 95
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails;->originalFolderName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails;->sharedFolderType:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 94
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 99
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
