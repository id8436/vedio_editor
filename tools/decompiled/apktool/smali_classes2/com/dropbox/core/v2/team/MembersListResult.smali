.class public Lcom/dropbox/core/v2/team/MembersListResult;
.super Ljava/lang/Object;
.source "MembersListResult.java"


# instance fields
.field protected final cursor:Ljava/lang/String;

.field protected final hasMore:Z

.field protected final members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/TeamMemberInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/TeamMemberInfo;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'members\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/TeamMemberInfo;

    .line 45
    if-nez v0, :cond_1

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'members\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MembersListResult;->members:Ljava/util/List;

    .line 50
    if-nez p2, :cond_3

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'cursor\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_3
    iput-object p2, p0, Lcom/dropbox/core/v2/team/MembersListResult;->cursor:Ljava/lang/String;

    .line 54
    iput-boolean p3, p0, Lcom/dropbox/core/v2/team/MembersListResult;->hasMore:Z

    .line 55
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 100
    if-ne p1, p0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 103
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 104
    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 108
    check-cast p1, Lcom/dropbox/core/v2/team/MembersListResult;

    .line 109
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersListResult;->members:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersListResult;->members:Ljava/util/List;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersListResult;->members:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersListResult;->members:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersListResult;->cursor:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersListResult;->cursor:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersListResult;->cursor:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersListResult;->cursor:Ljava/lang/String;

    .line 110
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/MembersListResult;->hasMore:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/team/MembersListResult;->hasMore:Z

    if-eq v2, v3, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 115
    goto :goto_0
.end method

.method public getCursor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersListResult;->cursor:Ljava/lang/String;

    return-object v0
.end method

.method public getHasMore()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/dropbox/core/v2/team/MembersListResult;->hasMore:Z

    return v0
.end method

.method public getMembers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/TeamMemberInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersListResult;->members:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 90
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersListResult;->members:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersListResult;->cursor:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/MembersListResult;->hasMore:Z

    .line 93
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 90
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 95
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    sget-object v0, Lcom/dropbox/core/v2/team/MembersListResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersListResult$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MembersListResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    sget-object v0, Lcom/dropbox/core/v2/team/MembersListResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersListResult$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MembersListResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
