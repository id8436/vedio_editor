.class Lcom/dropbox/core/v2/team/GroupsListArg;
.super Ljava/lang/Object;
.source "GroupsListArg.java"


# instance fields
.field protected final limit:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    const-wide/16 v0, 0x3e8

    invoke-direct {p0, v0, v1}, Lcom/dropbox/core/v2/team/GroupsListArg;-><init>(J)V

    .line 48
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'limit\' is smaller than 1L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'limit\' is larger than 1000L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_1
    iput-wide p1, p0, Lcom/dropbox/core/v2/team/GroupsListArg;->limit:J

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 70
    if-ne p1, p0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v0

    .line 73
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 74
    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 78
    check-cast p1, Lcom/dropbox/core/v2/team/GroupsListArg;

    .line 79
    iget-wide v2, p0, Lcom/dropbox/core/v2/team/GroupsListArg;->limit:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/team/GroupsListArg;->limit:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 82
    goto :goto_0
.end method

.method public getLimit()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/dropbox/core/v2/team/GroupsListArg;->limit:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/dropbox/core/v2/team/GroupsListArg;->limit:J

    .line 63
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 62
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 65
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    sget-object v0, Lcom/dropbox/core/v2/team/GroupsListArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupsListArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupsListArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    sget-object v0, Lcom/dropbox/core/v2/team/GroupsListArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupsListArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupsListArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
