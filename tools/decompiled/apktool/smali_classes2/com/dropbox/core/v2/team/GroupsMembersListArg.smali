.class Lcom/dropbox/core/v2/team/GroupsMembersListArg;
.super Ljava/lang/Object;
.source "GroupsMembersListArg.java"


# instance fields
.field protected final group:Lcom/dropbox/core/v2/team/GroupSelector;

.field protected final limit:J


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/team/GroupSelector;)V
    .locals 2

    .prologue
    .line 60
    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p1, v0, v1}, Lcom/dropbox/core/v2/team/GroupsMembersListArg;-><init>(Lcom/dropbox/core/v2/team/GroupSelector;J)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/team/GroupSelector;J)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'group\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/GroupsMembersListArg;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    .line 39
    const-wide/16 v0, 0x1

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'limit\' is smaller than 1L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_1
    const-wide/16 v0, 0x3e8

    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'limit\' is larger than 1000L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_2
    iput-wide p2, p0, Lcom/dropbox/core/v2/team/GroupsMembersListArg;->limit:J

    .line 46
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

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
    check-cast p1, Lcom/dropbox/core/v2/team/GroupsMembersListArg;

    .line 102
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupsMembersListArg;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupsMembersListArg;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupsMembersListArg;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupsMembersListArg;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/team/GroupSelector;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-wide v2, p0, Lcom/dropbox/core/v2/team/GroupsMembersListArg;->limit:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/team/GroupsMembersListArg;->limit:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 107
    goto :goto_0
.end method

.method public getGroup()Lcom/dropbox/core/v2/team/GroupSelector;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupsMembersListArg;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    return-object v0
.end method

.method public getLimit()J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/dropbox/core/v2/team/GroupsMembersListArg;->limit:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 84
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupsMembersListArg;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/dropbox/core/v2/team/GroupsMembersListArg;->limit:J

    .line 86
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 84
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 88
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    sget-object v0, Lcom/dropbox/core/v2/team/GroupsMembersListArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupsMembersListArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupsMembersListArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    sget-object v0, Lcom/dropbox/core/v2/team/GroupsMembersListArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupsMembersListArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupsMembersListArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
