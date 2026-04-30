.class public Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;
.super Ljava/lang/Object;
.source "GroupCreateArg.java"


# instance fields
.field protected groupExternalId:Ljava/lang/String;

.field protected groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

.field protected final groupName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    if-nez p1, :cond_0

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'groupName\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;->groupName:Ljava/lang/String;

    .line 119
    iput-object v0, p0, Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;->groupExternalId:Ljava/lang/String;

    .line 120
    iput-object v0, p0, Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    .line 121
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/team/GroupCreateArg;
    .locals 4

    .prologue
    .line 156
    new-instance v0, Lcom/dropbox/core/v2/team/GroupCreateArg;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;->groupName:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;->groupExternalId:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/core/v2/team/GroupCreateArg;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;)V

    return-object v0
.end method

.method public withGroupExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;->groupExternalId:Ljava/lang/String;

    .line 133
    return-object p0
.end method

.method public withGroupManagementType(Lcom/dropbox/core/v2/teamcommon/GroupManagementType;)Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    .line 146
    return-object p0
.end method
