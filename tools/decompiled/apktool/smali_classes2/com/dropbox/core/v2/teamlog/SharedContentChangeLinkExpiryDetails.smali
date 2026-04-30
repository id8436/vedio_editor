.class public Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;
.super Ljava/lang/Object;
.source "SharedContentChangeLinkExpiryDetails.java"


# instance fields
.field protected final expirationDays:J

.field protected final expirationStartDate:Ljava/lang/String;

.field protected final originalFolderName:Ljava/lang/String;

.field protected final sharedFolderType:Ljava/lang/String;

.field protected final targetAssetIndex:J


# direct methods
.method public constructor <init>(JLjava/lang/String;J)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 74
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-wide v4, p4

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;-><init>(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide p1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;->targetAssetIndex:J

    .line 50
    iput-object p6, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;->originalFolderName:Ljava/lang/String;

    .line 51
    iput-object p7, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;->sharedFolderType:Ljava/lang/String;

    .line 52
    if-nez p3, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'expirationStartDate\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;->expirationStartDate:Ljava/lang/String;

    .line 56
    iput-wide p4, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;->expirationDays:J

    .line 57
    return-void
.end method

.method public static newBuilder(JLjava/lang/String;J)Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails$Builder;
    .locals 6

    .prologue
    .line 138
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails$Builder;

    move-wide v1, p0

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails$Builder;-><init>(JLjava/lang/String;J)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 213
    if-ne p1, p0, :cond_1

    .line 230
    :cond_0
    :goto_0
    return v0

    .line 216
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 217
    goto :goto_0

    .line 220
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 221
    check-cast p1, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;

    .line 222
    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;->targetAssetIndex:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;->targetAssetIndex:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;->expirationStartDate:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;->expirationStartDate:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;->expirationStartDate:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;->expirationStartDate:Ljava/lang/String;

    .line 223
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;->expirationDays:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;->expirationDays:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;->originalFolderName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;->originalFolderName:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;->originalFolderName:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;->originalFolderName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;->originalFolderName:Ljava/lang/String;

    .line 225
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;->sharedFolderType:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;->sharedFolderType:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;->sharedFolderType:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;->sharedFolderType:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;->sharedFolderType:Ljava/lang/String;

    .line 226
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 230
    goto :goto_0
.end method

.method public getExpirationDays()J
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;->expirationDays:J

    return-wide v0
.end method

.method public getExpirationStartDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;->expirationStartDate:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;->originalFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedFolderType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;->sharedFolderType:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetAssetIndex()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;->targetAssetIndex:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 201
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;->targetAssetIndex:J

    .line 202
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;->originalFolderName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;->sharedFolderType:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;->expirationStartDate:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;->expirationDays:J

    .line 206
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 201
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 208
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 236
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 248
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
