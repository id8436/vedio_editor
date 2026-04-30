.class public Lcom/dropbox/core/v2/team/UserCustomQuotaResult;
.super Ljava/lang/Object;
.source "UserCustomQuotaResult.java"


# instance fields
.field protected final quotaGb:Ljava/lang/Long;

.field protected final user:Lcom/dropbox/core/v2/team/UserSelectorArg;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/team/UserSelectorArg;)V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/v2/team/UserCustomQuotaResult;-><init>(Lcom/dropbox/core/v2/team/UserSelectorArg;Ljava/lang/Long;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/team/UserSelectorArg;Ljava/lang/Long;)V
    .locals 4

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'user\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/UserCustomQuotaResult;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    .line 43
    if-eqz p2, :cond_1

    .line 44
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x19

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'quotaGb\' is smaller than 25L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/team/UserCustomQuotaResult;->quotaGb:Ljava/lang/Long;

    .line 49
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 93
    if-ne p1, p0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 96
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 97
    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 101
    check-cast p1, Lcom/dropbox/core/v2/team/UserCustomQuotaResult;

    .line 102
    iget-object v2, p0, Lcom/dropbox/core/v2/team/UserCustomQuotaResult;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/UserCustomQuotaResult;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/UserCustomQuotaResult;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/UserCustomQuotaResult;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/team/UserSelectorArg;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/team/UserCustomQuotaResult;->quotaGb:Ljava/lang/Long;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/UserCustomQuotaResult;->quotaGb:Ljava/lang/Long;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/UserCustomQuotaResult;->quotaGb:Ljava/lang/Long;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/UserCustomQuotaResult;->quotaGb:Ljava/lang/Long;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/UserCustomQuotaResult;->quotaGb:Ljava/lang/Long;

    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 107
    goto :goto_0
.end method

.method public getQuotaGb()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dropbox/core/v2/team/UserCustomQuotaResult;->quotaGb:Ljava/lang/Long;

    return-object v0
.end method

.method public getUser()Lcom/dropbox/core/v2/team/UserSelectorArg;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dropbox/core/v2/team/UserCustomQuotaResult;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 84
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/UserCustomQuotaResult;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/UserCustomQuotaResult;->quotaGb:Ljava/lang/Long;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 88
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    sget-object v0, Lcom/dropbox/core/v2/team/UserCustomQuotaResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/UserCustomQuotaResult$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/UserCustomQuotaResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    sget-object v0, Lcom/dropbox/core/v2/team/UserCustomQuotaResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/UserCustomQuotaResult$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/UserCustomQuotaResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
