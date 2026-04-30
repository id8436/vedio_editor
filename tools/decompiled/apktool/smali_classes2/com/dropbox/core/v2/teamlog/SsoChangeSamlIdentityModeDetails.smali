.class public Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails;
.super Ljava/lang/Object;
.source "SsoChangeSamlIdentityModeDetails.java"


# instance fields
.field protected final newValue:J

.field protected final previousValue:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide p1, p0, Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails;->previousValue:J

    .line 35
    iput-wide p3, p0, Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails;->newValue:J

    .line 36
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 67
    if-ne p1, p0, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v0

    .line 70
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 71
    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 75
    check-cast p1, Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails;

    .line 76
    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails;->previousValue:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails;->previousValue:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails;->newValue:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails;->newValue:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 81
    goto :goto_0
.end method

.method public getNewValue()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails;->newValue:J

    return-wide v0
.end method

.method public getPreviousValue()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails;->previousValue:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails;->previousValue:J

    .line 59
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails;->newValue:J

    .line 60
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 58
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 62
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
