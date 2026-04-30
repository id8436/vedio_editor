.class public Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;
.super Ljava/lang/Object;
.source "MemberChangeStatusDetails.java"


# instance fields
.field protected final newValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

.field protected previousValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

.field protected teamJoinDetails:Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;


# direct methods
.method protected constructor <init>(Lcom/dropbox/core/v2/teamlog/MemberStatus;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    if-nez p1, :cond_0

    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'newValue\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;->newValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    .line 121
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;->previousValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    .line 122
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;->teamJoinDetails:Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;

    .line 123
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;
    .locals 4

    .prologue
    .line 158
    new-instance v0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;->newValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;->previousValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;->teamJoinDetails:Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;-><init>(Lcom/dropbox/core/v2/teamlog/MemberStatus;Lcom/dropbox/core/v2/teamlog/MemberStatus;Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;)V

    return-object v0
.end method

.method public withPreviousValue(Lcom/dropbox/core/v2/teamlog/MemberStatus;)Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;->previousValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    .line 135
    return-object p0
.end method

.method public withTeamJoinDetails(Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;)Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;->teamJoinDetails:Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;

    .line 148
    return-object p0
.end method
