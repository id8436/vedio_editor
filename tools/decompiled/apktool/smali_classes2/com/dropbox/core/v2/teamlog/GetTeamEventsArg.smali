.class Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;
.super Ljava/lang/Object;
.source "GetTeamEventsArg.java"


# instance fields
.field protected final accountId:Ljava/lang/String;

.field protected final category:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field protected final limit:J

.field protected final time:Lcom/dropbox/core/v2/teamcommon/TimeRange;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 69
    const-wide/16 v2, 0x3e8

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v1 .. v6}, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;-><init>(JLjava/lang/String;Lcom/dropbox/core/v2/teamcommon/TimeRange;Lcom/dropbox/core/v2/teamlog/EventCategory;)V

    .line 70
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Lcom/dropbox/core/v2/teamcommon/TimeRange;Lcom/dropbox/core/v2/teamlog/EventCategory;)V
    .locals 3

    .prologue
    const/16 v2, 0x28

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'limit\' is smaller than 1L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'limit\' is larger than 1000L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1
    iput-wide p1, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;->limit:J

    .line 50
    if-eqz p3, :cond_3

    .line 51
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_2

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'accountId\' is shorter than 40"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_3

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'accountId\' is longer than 40"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_3
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;->accountId:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;->time:Lcom/dropbox/core/v2/teamcommon/TimeRange;

    .line 60
    iput-object p5, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;->category:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 61
    return-void
.end method

.method public static newBuilder()Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 240
    if-ne p1, p0, :cond_1

    .line 256
    :cond_0
    :goto_0
    return v0

    .line 243
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 244
    goto :goto_0

    .line 247
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 248
    check-cast p1, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;

    .line 249
    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;->limit:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;->limit:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;->accountId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;->accountId:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;->accountId:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;->accountId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;->accountId:Ljava/lang/String;

    .line 250
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;->time:Lcom/dropbox/core/v2/teamcommon/TimeRange;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;->time:Lcom/dropbox/core/v2/teamcommon/TimeRange;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;->time:Lcom/dropbox/core/v2/teamcommon/TimeRange;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;->time:Lcom/dropbox/core/v2/teamcommon/TimeRange;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;->time:Lcom/dropbox/core/v2/teamcommon/TimeRange;

    .line 251
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamcommon/TimeRange;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;->category:Lcom/dropbox/core/v2/teamlog/EventCategory;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;->category:Lcom/dropbox/core/v2/teamlog/EventCategory;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;->category:Lcom/dropbox/core/v2/teamlog/EventCategory;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;->category:Lcom/dropbox/core/v2/teamlog/EventCategory;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;->category:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 252
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/EventCategory;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 256
    goto :goto_0
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Lcom/dropbox/core/v2/teamlog/EventCategory;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;->category:Lcom/dropbox/core/v2/teamlog/EventCategory;

    return-object v0
.end method

.method public getLimit()J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;->limit:J

    return-wide v0
.end method

.method public getTime()Lcom/dropbox/core/v2/teamcommon/TimeRange;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;->time:Lcom/dropbox/core/v2/teamcommon/TimeRange;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 229
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;->limit:J

    .line 230
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;->accountId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;->time:Lcom/dropbox/core/v2/teamcommon/TimeRange;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;->category:Lcom/dropbox/core/v2/teamlog/EventCategory;

    aput-object v2, v0, v1

    .line 229
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 235
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 262
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 274
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
