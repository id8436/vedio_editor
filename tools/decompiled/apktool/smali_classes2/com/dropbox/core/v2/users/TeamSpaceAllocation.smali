.class public Lcom/dropbox/core/v2/users/TeamSpaceAllocation;
.super Ljava/lang/Object;
.source "TeamSpaceAllocation.java"


# instance fields
.field protected final allocated:J

.field protected final used:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-wide p1, p0, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;->used:J

    .line 31
    iput-wide p3, p0, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;->allocated:J

    .line 32
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 63
    if-ne p1, p0, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v0

    .line 66
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 67
    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 71
    check-cast p1, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;

    .line 72
    iget-wide v2, p0, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;->used:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;->used:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;->allocated:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;->allocated:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 77
    goto :goto_0
.end method

.method public getAllocated()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;->allocated:J

    return-wide v0
.end method

.method public getUsed()J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;->used:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;->used:J

    .line 55
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;->allocated:J

    .line 56
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 54
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 58
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    sget-object v0, Lcom/dropbox/core/v2/users/TeamSpaceAllocation$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/TeamSpaceAllocation$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/users/TeamSpaceAllocation$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    sget-object v0, Lcom/dropbox/core/v2/users/TeamSpaceAllocation$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/TeamSpaceAllocation$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/users/TeamSpaceAllocation$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
