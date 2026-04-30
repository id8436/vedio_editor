.class public Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;
.super Ljava/lang/Object;
.source "MemberChangeStatusDetails.java"


# instance fields
.field protected final newValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

.field protected final previousValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

.field protected final teamJoinDetails:Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/MemberStatus;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0, v0}, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;-><init>(Lcom/dropbox/core/v2/teamlog/MemberStatus;Lcom/dropbox/core/v2/teamlog/MemberStatus;Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/MemberStatus;Lcom/dropbox/core/v2/teamlog/MemberStatus;Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'newValue\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    .line 49
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->teamJoinDetails:Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;

    .line 50
    return-void
.end method

.method public static newBuilder(Lcom/dropbox/core/v2/teamlog/MemberStatus;)Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;-><init>(Lcom/dropbox/core/v2/teamlog/MemberStatus;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 174
    if-ne p1, p0, :cond_1

    .line 189
    :cond_0
    :goto_0
    return v0

    .line 177
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 178
    goto :goto_0

    .line 181
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 182
    check-cast p1, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;

    .line 183
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/MemberStatus;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    .line 184
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/MemberStatus;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->teamJoinDetails:Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->teamJoinDetails:Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->teamJoinDetails:Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->teamJoinDetails:Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->teamJoinDetails:Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;

    .line 185
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 189
    goto :goto_0
.end method

.method public getNewValue()Lcom/dropbox/core/v2/teamlog/MemberStatus;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    return-object v0
.end method

.method public getPreviousValue()Lcom/dropbox/core/v2/teamlog/MemberStatus;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    return-object v0
.end method

.method public getTeamJoinDetails()Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->teamJoinDetails:Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 164
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->teamJoinDetails:Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 169
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
