.class public Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;
.super Ljava/lang/Object;
.source "InsufficientQuotaAmounts.java"


# instance fields
.field protected final spaceLeft:J

.field protected final spaceNeeded:J

.field protected final spaceShortage:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide p1, p0, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;->spaceNeeded:J

    .line 35
    iput-wide p3, p0, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;->spaceShortage:J

    .line 36
    iput-wide p5, p0, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;->spaceLeft:J

    .line 37
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 78
    if-ne p1, p0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 81
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 82
    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 86
    check-cast p1, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;

    .line 87
    iget-wide v2, p0, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;->spaceNeeded:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;->spaceNeeded:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;->spaceShortage:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;->spaceShortage:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;->spaceLeft:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;->spaceLeft:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 93
    goto :goto_0
.end method

.method public getSpaceLeft()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;->spaceLeft:J

    return-wide v0
.end method

.method public getSpaceNeeded()J
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;->spaceNeeded:J

    return-wide v0
.end method

.method public getSpaceShortage()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;->spaceShortage:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 68
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;->spaceNeeded:J

    .line 69
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;->spaceShortage:J

    .line 70
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;->spaceLeft:J

    .line 71
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 68
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 73
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    sget-object v0, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
