.class public Lcom/dropbox/core/v2/team/MembersListArg$Builder;
.super Ljava/lang/Object;
.source "MembersListArg.java"


# instance fields
.field protected includeRemoved:Z

.field protected limit:J


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/dropbox/core/v2/team/MembersListArg$Builder;->limit:J

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/team/MembersListArg$Builder;->includeRemoved:Z

    .line 95
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/team/MembersListArg;
    .locals 4

    .prologue
    .line 156
    new-instance v0, Lcom/dropbox/core/v2/team/MembersListArg;

    iget-wide v2, p0, Lcom/dropbox/core/v2/team/MembersListArg$Builder;->limit:J

    iget-boolean v1, p0, Lcom/dropbox/core/v2/team/MembersListArg$Builder;->includeRemoved:Z

    invoke-direct {v0, v2, v3, v1}, Lcom/dropbox/core/v2/team/MembersListArg;-><init>(JZ)V

    return-object v0
.end method

.method public withIncludeRemoved(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/MembersListArg$Builder;
    .locals 1

    .prologue
    .line 140
    if-eqz p1, :cond_0

    .line 141
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/team/MembersListArg$Builder;->includeRemoved:Z

    .line 146
    :goto_0
    return-object p0

    .line 144
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/team/MembersListArg$Builder;->includeRemoved:Z

    goto :goto_0
.end method

.method public withLimit(Ljava/lang/Long;)Lcom/dropbox/core/v2/team/MembersListArg$Builder;
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 113
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'limit\' is smaller than 1L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'limit\' is larger than 1000L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_1
    if-eqz p1, :cond_2

    .line 120
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dropbox/core/v2/team/MembersListArg$Builder;->limit:J

    .line 125
    :goto_0
    return-object p0

    .line 123
    :cond_2
    iput-wide v4, p0, Lcom/dropbox/core/v2/team/MembersListArg$Builder;->limit:J

    goto :goto_0
.end method
