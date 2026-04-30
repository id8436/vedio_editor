.class public Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails;
.super Ljava/lang/Object;
.source "SharedContentChangeLinkPasswordDetails.java"


# instance fields
.field protected final originalFolderName:Ljava/lang/String;

.field protected final sharedFolderType:Ljava/lang/String;

.field protected final targetAssetIndex:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-wide p1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails;->targetAssetIndex:J

    .line 41
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails;->originalFolderName:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails;->sharedFolderType:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public static newBuilder(J)Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails$Builder;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails$Builder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails$Builder;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 158
    if-ne p1, p0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v0

    .line 161
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 162
    goto :goto_0

    .line 165
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 166
    check-cast p1, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails;

    .line 167
    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails;->targetAssetIndex:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails;->targetAssetIndex:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails;->originalFolderName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails;->originalFolderName:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails;->originalFolderName:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails;->originalFolderName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails;->originalFolderName:Ljava/lang/String;

    .line 168
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails;->sharedFolderType:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails;->sharedFolderType:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails;->sharedFolderType:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails;->sharedFolderType:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails;->sharedFolderType:Ljava/lang/String;

    .line 169
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 173
    goto :goto_0
.end method

.method public getOriginalFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails;->originalFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedFolderType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails;->sharedFolderType:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetAssetIndex()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails;->targetAssetIndex:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 148
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails;->targetAssetIndex:J

    .line 149
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails;->originalFolderName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails;->sharedFolderType:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 148
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 153
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 179
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
