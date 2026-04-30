.class public Lcom/dropbox/core/v2/auth/RateLimitError;
.super Ljava/lang/Object;
.source "RateLimitError.java"


# instance fields
.field protected final reason:Lcom/dropbox/core/v2/auth/RateLimitReason;

.field protected final retryAfter:J


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/auth/RateLimitReason;)V
    .locals 2

    .prologue
    .line 58
    const-wide/16 v0, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/dropbox/core/v2/auth/RateLimitError;-><init>(Lcom/dropbox/core/v2/auth/RateLimitReason;J)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/auth/RateLimitReason;J)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'reason\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/auth/RateLimitError;->reason:Lcom/dropbox/core/v2/auth/RateLimitReason;

    .line 43
    iput-wide p2, p0, Lcom/dropbox/core/v2/auth/RateLimitError;->retryAfter:J

    .line 44
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 92
    if-ne p1, p0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v0

    .line 95
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 96
    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 100
    check-cast p1, Lcom/dropbox/core/v2/auth/RateLimitError;

    .line 101
    iget-object v2, p0, Lcom/dropbox/core/v2/auth/RateLimitError;->reason:Lcom/dropbox/core/v2/auth/RateLimitReason;

    iget-object v3, p1, Lcom/dropbox/core/v2/auth/RateLimitError;->reason:Lcom/dropbox/core/v2/auth/RateLimitReason;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/auth/RateLimitError;->reason:Lcom/dropbox/core/v2/auth/RateLimitReason;

    iget-object v3, p1, Lcom/dropbox/core/v2/auth/RateLimitError;->reason:Lcom/dropbox/core/v2/auth/RateLimitReason;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/auth/RateLimitReason;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-wide v2, p0, Lcom/dropbox/core/v2/auth/RateLimitError;->retryAfter:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/auth/RateLimitError;->retryAfter:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 106
    goto :goto_0
.end method

.method public getReason()Lcom/dropbox/core/v2/auth/RateLimitReason;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/dropbox/core/v2/auth/RateLimitError;->reason:Lcom/dropbox/core/v2/auth/RateLimitReason;

    return-object v0
.end method

.method public getRetryAfter()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/dropbox/core/v2/auth/RateLimitError;->retryAfter:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 83
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/auth/RateLimitError;->reason:Lcom/dropbox/core/v2/auth/RateLimitReason;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/dropbox/core/v2/auth/RateLimitError;->retryAfter:J

    .line 85
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 83
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 87
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    sget-object v0, Lcom/dropbox/core/v2/auth/RateLimitError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/auth/RateLimitError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/auth/RateLimitError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    sget-object v0, Lcom/dropbox/core/v2/auth/RateLimitError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/auth/RateLimitError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/auth/RateLimitError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
