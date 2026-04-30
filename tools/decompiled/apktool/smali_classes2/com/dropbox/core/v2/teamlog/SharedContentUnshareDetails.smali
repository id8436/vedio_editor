.class public Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails;
.super Ljava/lang/Object;
.source "SharedContentUnshareDetails.java"


# instance fields
.field protected final originalFolderName:Ljava/lang/String;

.field protected final targetAssetIndex:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails;-><init>(JLjava/lang/String;)V

    .line 50
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails;->targetAssetIndex:J

    .line 37
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails;->originalFolderName:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 81
    if-ne p1, p0, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 84
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 85
    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 89
    check-cast p1, Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails;

    .line 90
    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails;->targetAssetIndex:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails;->targetAssetIndex:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails;->originalFolderName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails;->originalFolderName:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails;->originalFolderName:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails;->originalFolderName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails;->originalFolderName:Ljava/lang/String;

    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 95
    goto :goto_0
.end method

.method public getOriginalFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails;->originalFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetAssetIndex()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails;->targetAssetIndex:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 72
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails;->targetAssetIndex:J

    .line 73
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails;->originalFolderName:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 72
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 76
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
