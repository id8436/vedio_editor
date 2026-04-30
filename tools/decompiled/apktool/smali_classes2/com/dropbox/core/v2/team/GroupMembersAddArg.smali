.class Lcom/dropbox/core/v2/team/GroupMembersAddArg;
.super Lcom/dropbox/core/v2/team/IncludeMembersArg;
.source "GroupMembersAddArg.java"


# instance fields
.field protected final group:Lcom/dropbox/core/v2/team/GroupSelector;

.field protected final members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/MemberAccess;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/team/GroupSelector;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/GroupSelector;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/MemberAccess;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/v2/team/GroupMembersAddArg;-><init>(Lcom/dropbox/core/v2/team/GroupSelector;Ljava/util/List;Z)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/team/GroupSelector;Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/GroupSelector;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/MemberAccess;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p3}, Lcom/dropbox/core/v2/team/IncludeMembersArg;-><init>(Z)V

    .line 40
    if-nez p1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'group\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/GroupMembersAddArg;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    .line 44
    if-nez p2, :cond_1

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'members\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/MemberAccess;

    .line 48
    if-nez v0, :cond_2

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'members\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_3
    iput-object p2, p0, Lcom/dropbox/core/v2/team/GroupMembersAddArg;->members:Ljava/util/List;

    .line 53
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 114
    if-ne p1, p0, :cond_1

    .line 129
    :cond_0
    :goto_0
    return v0

    .line 117
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 118
    goto :goto_0

    .line 121
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 122
    check-cast p1, Lcom/dropbox/core/v2/team/GroupMembersAddArg;

    .line 123
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersAddArg;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupMembersAddArg;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersAddArg;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupMembersAddArg;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/team/GroupSelector;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersAddArg;->members:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupMembersAddArg;->members:Ljava/util/List;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersAddArg;->members:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupMembersAddArg;->members:Ljava/util/List;

    .line 124
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/GroupMembersAddArg;->returnMembers:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/team/GroupMembersAddArg;->returnMembers:Z

    if-eq v2, v3, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 129
    goto :goto_0
.end method

.method public getGroup()Lcom/dropbox/core/v2/team/GroupSelector;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddArg;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    return-object v0
.end method

.method public getMembers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/MemberAccess;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddArg;->members:Ljava/util/List;

    return-object v0
.end method

.method public getReturnMembers()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddArg;->returnMembers:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 104
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersAddArg;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersAddArg;->members:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 108
    invoke-super {p0}, Lcom/dropbox/core/v2/team/IncludeMembersArg;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 109
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    sget-object v0, Lcom/dropbox/core/v2/team/GroupMembersAddArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupMembersAddArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupMembersAddArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 147
    sget-object v0, Lcom/dropbox/core/v2/team/GroupMembersAddArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupMembersAddArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupMembersAddArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
