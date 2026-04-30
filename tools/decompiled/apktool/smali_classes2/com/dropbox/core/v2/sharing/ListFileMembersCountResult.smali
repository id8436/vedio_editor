.class public Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;
.super Ljava/lang/Object;
.source "ListFileMembersCountResult.java"


# instance fields
.field protected final memberCount:J

.field protected final members:Lcom/dropbox/core/v2/sharing/SharedFileMembers;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/sharing/SharedFileMembers;J)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-nez p1, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'members\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;->members:Lcom/dropbox/core/v2/sharing/SharedFileMembers;

    .line 38
    iput-wide p2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;->memberCount:J

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 71
    if-ne p1, p0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 75
    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 79
    check-cast p1, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;

    .line 80
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;->members:Lcom/dropbox/core/v2/sharing/SharedFileMembers;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;->members:Lcom/dropbox/core/v2/sharing/SharedFileMembers;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;->members:Lcom/dropbox/core/v2/sharing/SharedFileMembers;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;->members:Lcom/dropbox/core/v2/sharing/SharedFileMembers;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/SharedFileMembers;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-wide v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;->memberCount:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;->memberCount:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 85
    goto :goto_0
.end method

.method public getMemberCount()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;->memberCount:J

    return-wide v0
.end method

.method public getMembers()Lcom/dropbox/core/v2/sharing/SharedFileMembers;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;->members:Lcom/dropbox/core/v2/sharing/SharedFileMembers;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;->members:Lcom/dropbox/core/v2/sharing/SharedFileMembers;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;->memberCount:J

    .line 64
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 62
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 66
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
