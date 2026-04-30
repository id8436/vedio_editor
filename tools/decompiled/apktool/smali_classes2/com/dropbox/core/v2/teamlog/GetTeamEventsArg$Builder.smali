.class public Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;
.super Ljava/lang/Object;
.source "GetTeamEventsArg.java"


# instance fields
.field protected accountId:Ljava/lang/String;

.field protected category:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field protected limit:J

.field protected time:Lcom/dropbox/core/v2/teamcommon/TimeRange;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;->limit:J

    .line 131
    iput-object v2, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;->accountId:Ljava/lang/String;

    .line 132
    iput-object v2, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;->time:Lcom/dropbox/core/v2/teamcommon/TimeRange;

    .line 133
    iput-object v2, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;->category:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 134
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;
    .locals 7

    .prologue
    .line 223
    new-instance v1, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;

    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;->limit:J

    iget-object v4, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;->accountId:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;->time:Lcom/dropbox/core/v2/teamcommon/TimeRange;

    iget-object v6, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;->category:Lcom/dropbox/core/v2/teamlog/EventCategory;

    invoke-direct/range {v1 .. v6}, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;-><init>(JLjava/lang/String;Lcom/dropbox/core/v2/teamcommon/TimeRange;Lcom/dropbox/core/v2/teamlog/EventCategory;)V

    return-object v1
.end method

.method public withAccountId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;
    .locals 2

    .prologue
    const/16 v1, 0x28

    .line 180
    if-eqz p1, :cond_1

    .line 181
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 182
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'accountId\' is shorter than 40"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'accountId\' is longer than 40"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;->accountId:Ljava/lang/String;

    .line 189
    return-object p0
.end method

.method public withCategory(Lcom/dropbox/core/v2/teamlog/EventCategory;)Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;->category:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 213
    return-object p0
.end method

.method public withLimit(Ljava/lang/Long;)Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 152
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'limit\' is smaller than 1L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'limit\' is larger than 1000L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_1
    if-eqz p1, :cond_2

    .line 159
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;->limit:J

    .line 164
    :goto_0
    return-object p0

    .line 162
    :cond_2
    iput-wide v4, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;->limit:J

    goto :goto_0
.end method

.method public withTime(Lcom/dropbox/core/v2/teamcommon/TimeRange;)Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;->time:Lcom/dropbox/core/v2/teamcommon/TimeRange;

    .line 201
    return-object p0
.end method
