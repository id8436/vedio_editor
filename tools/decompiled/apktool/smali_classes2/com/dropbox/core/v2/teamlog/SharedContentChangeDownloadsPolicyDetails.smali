.class public Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;
.super Ljava/lang/Object;
.source "SharedContentChangeDownloadsPolicyDetails.java"


# instance fields
.field protected final newValue:Lcom/dropbox/core/v2/teamlog/SharedContentDownloadsPolicy;

.field protected final originalFolderName:Ljava/lang/String;

.field protected final previousValue:Lcom/dropbox/core/v2/teamlog/SharedContentDownloadsPolicy;

.field protected final sharedFolderType:Ljava/lang/String;

.field protected final targetAssetIndex:J


# direct methods
.method public constructor <init>(JLcom/dropbox/core/v2/teamlog/SharedContentDownloadsPolicy;)V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 70
    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v1 .. v7}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;-><init>(JLcom/dropbox/core/v2/teamlog/SharedContentDownloadsPolicy;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamlog/SharedContentDownloadsPolicy;)V

    .line 71
    return-void
.end method

.method public constructor <init>(JLcom/dropbox/core/v2/teamlog/SharedContentDownloadsPolicy;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamlog/SharedContentDownloadsPolicy;)V
    .locals 3

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-wide p1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;->targetAssetIndex:J

    .line 49
    iput-object p4, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;->originalFolderName:Ljava/lang/String;

    .line 50
    iput-object p5, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;->sharedFolderType:Ljava/lang/String;

    .line 51
    if-nez p3, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'newValue\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/SharedContentDownloadsPolicy;

    .line 55
    iput-object p6, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/SharedContentDownloadsPolicy;

    .line 56
    return-void
.end method

.method public static newBuilder(JLcom/dropbox/core/v2/teamlog/SharedContentDownloadsPolicy;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails$Builder;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails$Builder;

    invoke-direct {v0, p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails$Builder;-><init>(JLcom/dropbox/core/v2/teamlog/SharedContentDownloadsPolicy;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 220
    if-ne p1, p0, :cond_1

    .line 237
    :cond_0
    :goto_0
    return v0

    .line 223
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 224
    goto :goto_0

    .line 227
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 228
    check-cast p1, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;

    .line 229
    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;->targetAssetIndex:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;->targetAssetIndex:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/SharedContentDownloadsPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/SharedContentDownloadsPolicy;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/SharedContentDownloadsPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/SharedContentDownloadsPolicy;

    .line 230
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/SharedContentDownloadsPolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;->originalFolderName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;->originalFolderName:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;->originalFolderName:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;->originalFolderName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;->originalFolderName:Ljava/lang/String;

    .line 231
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;->sharedFolderType:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;->sharedFolderType:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;->sharedFolderType:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;->sharedFolderType:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;->sharedFolderType:Ljava/lang/String;

    .line 232
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/SharedContentDownloadsPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/SharedContentDownloadsPolicy;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/SharedContentDownloadsPolicy;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/SharedContentDownloadsPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/SharedContentDownloadsPolicy;

    .line 233
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/SharedContentDownloadsPolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v1

    .line 237
    goto :goto_0
.end method

.method public getNewValue()Lcom/dropbox/core/v2/teamlog/SharedContentDownloadsPolicy;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/SharedContentDownloadsPolicy;

    return-object v0
.end method

.method public getOriginalFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;->originalFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousValue()Lcom/dropbox/core/v2/teamlog/SharedContentDownloadsPolicy;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/SharedContentDownloadsPolicy;

    return-object v0
.end method

.method public getSharedFolderType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;->sharedFolderType:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetAssetIndex()J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;->targetAssetIndex:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 208
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;->targetAssetIndex:J

    .line 209
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;->originalFolderName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;->sharedFolderType:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/SharedContentDownloadsPolicy;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/SharedContentDownloadsPolicy;

    aput-object v2, v0, v1

    .line 208
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 215
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 243
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 255
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
