.class public Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails;
.super Ljava/lang/Object;
.source "SharedFolderCreateDetails.java"


# instance fields
.field protected final parentNsId:Ljava/lang/String;

.field protected final targetAssetIndex:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails;-><init>(JLjava/lang/String;)V

    .line 56
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 3

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide p1, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails;->targetAssetIndex:J

    .line 39
    if-eqz p3, :cond_0

    .line 40
    const-string/jumbo v0, "[-_0-9a-zA-Z:]+"

    invoke-static {v0, p3}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'parentNsId\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails;->parentNsId:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 87
    if-ne p1, p0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 91
    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 95
    check-cast p1, Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails;

    .line 96
    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails;->targetAssetIndex:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails;->targetAssetIndex:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails;->parentNsId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails;->parentNsId:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails;->parentNsId:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails;->parentNsId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails;->parentNsId:Ljava/lang/String;

    .line 97
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 101
    goto :goto_0
.end method

.method public getParentNsId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails;->parentNsId:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetAssetIndex()J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails;->targetAssetIndex:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 78
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails;->targetAssetIndex:J

    .line 79
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails;->parentNsId:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 78
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 82
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
