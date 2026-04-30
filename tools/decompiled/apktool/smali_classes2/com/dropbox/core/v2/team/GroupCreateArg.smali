.class Lcom/dropbox/core/v2/team/GroupCreateArg;
.super Ljava/lang/Object;
.source "GroupCreateArg.java"


# instance fields
.field protected final groupExternalId:Ljava/lang/String;

.field protected final groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

.field protected final groupName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0, v0}, Lcom/dropbox/core/v2/team/GroupCreateArg;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-nez p1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'groupName\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/GroupCreateArg;->groupName:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/dropbox/core/v2/team/GroupCreateArg;->groupExternalId:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/dropbox/core/v2/team/GroupCreateArg;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    .line 46
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 172
    if-ne p1, p0, :cond_1

    .line 187
    :cond_0
    :goto_0
    return v0

    .line 175
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 176
    goto :goto_0

    .line 179
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 180
    check-cast p1, Lcom/dropbox/core/v2/team/GroupCreateArg;

    .line 181
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupCreateArg;->groupName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupCreateArg;->groupName:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupCreateArg;->groupName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupCreateArg;->groupName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupCreateArg;->groupExternalId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupCreateArg;->groupExternalId:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupCreateArg;->groupExternalId:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupCreateArg;->groupExternalId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupCreateArg;->groupExternalId:Ljava/lang/String;

    .line 182
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupCreateArg;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupCreateArg;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupCreateArg;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupCreateArg;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupCreateArg;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    .line 183
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 187
    goto :goto_0
.end method

.method public getGroupExternalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupCreateArg;->groupExternalId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupManagementType()Lcom/dropbox/core/v2/teamcommon/GroupManagementType;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupCreateArg;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupCreateArg;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 162
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupCreateArg;->groupName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupCreateArg;->groupExternalId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupCreateArg;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 167
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 193
    sget-object v0, Lcom/dropbox/core/v2/team/GroupCreateArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupCreateArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupCreateArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 205
    sget-object v0, Lcom/dropbox/core/v2/team/GroupCreateArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupCreateArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupCreateArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
