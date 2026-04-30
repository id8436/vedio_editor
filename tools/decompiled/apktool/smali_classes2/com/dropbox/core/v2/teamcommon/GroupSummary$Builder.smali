.class public Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;
.super Ljava/lang/Object;
.source "GroupSummary.java"


# instance fields
.field protected groupExternalId:Ljava/lang/String;

.field protected final groupId:Ljava/lang/String;

.field protected final groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

.field protected final groupName:Ljava/lang/String;

.field protected memberCount:Ljava/lang/Long;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    if-nez p1, :cond_0

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'groupName\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;->groupName:Ljava/lang/String;

    .line 158
    if-nez p2, :cond_1

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'groupId\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;->groupId:Ljava/lang/String;

    .line 162
    if-nez p3, :cond_2

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'groupManagementType\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_2
    iput-object p3, p0, Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    .line 166
    iput-object v0, p0, Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;->groupExternalId:Ljava/lang/String;

    .line 167
    iput-object v0, p0, Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;->memberCount:Ljava/lang/Long;

    .line 168
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamcommon/GroupSummary;
    .locals 6

    .prologue
    .line 202
    new-instance v0, Lcom/dropbox/core/v2/teamcommon/GroupSummary;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;->groupName:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;->groupId:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    iget-object v4, p0, Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;->groupExternalId:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;->memberCount:Ljava/lang/Long;

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/teamcommon/GroupSummary;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public withGroupExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;->groupExternalId:Ljava/lang/String;

    .line 180
    return-object p0
.end method

.method public withMemberCount(Ljava/lang/Long;)Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;->memberCount:Ljava/lang/Long;

    .line 192
    return-object p0
.end method
