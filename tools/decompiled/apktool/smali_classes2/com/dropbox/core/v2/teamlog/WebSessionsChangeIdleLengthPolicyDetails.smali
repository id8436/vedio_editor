.class public Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails;
.super Ljava/lang/Object;
.source "WebSessionsChangeIdleLengthPolicyDetails.java"


# instance fields
.field protected final newValue:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;

.field protected final previousValue:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, v0, v0}, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails;-><init>(Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;

    .line 42
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;

    .line 43
    return-void
.end method

.method public static newBuilder()Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails$Builder;
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 145
    if-ne p1, p0, :cond_1

    .line 159
    :cond_0
    :goto_0
    return v0

    .line 148
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 149
    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 153
    check-cast p1, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails;

    .line 154
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;

    .line 155
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 159
    goto :goto_0
.end method

.method public getNewValue()Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;

    return-object v0
.end method

.method public getPreviousValue()Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 136
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 140
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    sget-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 177
    sget-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
