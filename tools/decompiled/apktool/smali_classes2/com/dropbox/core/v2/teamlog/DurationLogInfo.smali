.class public Lcom/dropbox/core/v2/teamlog/DurationLogInfo;
.super Ljava/lang/Object;
.source "DurationLogInfo.java"


# instance fields
.field protected final amount:J

.field protected final unit:Lcom/dropbox/core/v2/teamlog/TimeUnit;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/TimeUnit;J)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-nez p1, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'unit\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/DurationLogInfo;->unit:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    .line 41
    iput-wide p2, p0, Lcom/dropbox/core/v2/teamlog/DurationLogInfo;->amount:J

    .line 42
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 73
    if-ne p1, p0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 77
    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 81
    check-cast p1, Lcom/dropbox/core/v2/teamlog/DurationLogInfo;

    .line 82
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DurationLogInfo;->unit:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DurationLogInfo;->unit:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DurationLogInfo;->unit:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DurationLogInfo;->unit:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/TimeUnit;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/DurationLogInfo;->amount:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/teamlog/DurationLogInfo;->amount:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 87
    goto :goto_0
.end method

.method public getAmount()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/dropbox/core/v2/teamlog/DurationLogInfo;->amount:J

    return-wide v0
.end method

.method public getUnit()Lcom/dropbox/core/v2/teamlog/TimeUnit;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/DurationLogInfo;->unit:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DurationLogInfo;->unit:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/DurationLogInfo;->amount:J

    .line 66
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 64
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 68
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DurationLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DurationLogInfo$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/DurationLogInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DurationLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DurationLogInfo$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/DurationLogInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
