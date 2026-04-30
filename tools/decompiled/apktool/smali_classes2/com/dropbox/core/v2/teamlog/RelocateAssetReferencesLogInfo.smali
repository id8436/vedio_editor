.class public Lcom/dropbox/core/v2/teamlog/RelocateAssetReferencesLogInfo;
.super Ljava/lang/Object;
.source "RelocateAssetReferencesLogInfo.java"


# instance fields
.field protected final destAssetIndex:J

.field protected final srcAssetIndex:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p1, p0, Lcom/dropbox/core/v2/teamlog/RelocateAssetReferencesLogInfo;->srcAssetIndex:J

    .line 37
    iput-wide p3, p0, Lcom/dropbox/core/v2/teamlog/RelocateAssetReferencesLogInfo;->destAssetIndex:J

    .line 38
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 69
    if-ne p1, p0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v0

    .line 72
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 73
    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 77
    check-cast p1, Lcom/dropbox/core/v2/teamlog/RelocateAssetReferencesLogInfo;

    .line 78
    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/RelocateAssetReferencesLogInfo;->srcAssetIndex:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/teamlog/RelocateAssetReferencesLogInfo;->srcAssetIndex:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/RelocateAssetReferencesLogInfo;->destAssetIndex:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/teamlog/RelocateAssetReferencesLogInfo;->destAssetIndex:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 83
    goto :goto_0
.end method

.method public getDestAssetIndex()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/dropbox/core/v2/teamlog/RelocateAssetReferencesLogInfo;->destAssetIndex:J

    return-wide v0
.end method

.method public getSrcAssetIndex()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/dropbox/core/v2/teamlog/RelocateAssetReferencesLogInfo;->srcAssetIndex:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/RelocateAssetReferencesLogInfo;->srcAssetIndex:J

    .line 61
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/RelocateAssetReferencesLogInfo;->destAssetIndex:J

    .line 62
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 60
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 64
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    sget-object v0, Lcom/dropbox/core/v2/teamlog/RelocateAssetReferencesLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/RelocateAssetReferencesLogInfo$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/RelocateAssetReferencesLogInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    sget-object v0, Lcom/dropbox/core/v2/teamlog/RelocateAssetReferencesLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/RelocateAssetReferencesLogInfo$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/RelocateAssetReferencesLogInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
