.class Lcom/dropbox/core/v2/team/MembersSetPermissionsArg;
.super Ljava/lang/Object;
.source "MembersSetPermissionsArg.java"


# instance fields
.field protected final newRole:Lcom/dropbox/core/v2/team/AdminTier;

.field protected final user:Lcom/dropbox/core/v2/team/UserSelectorArg;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/team/UserSelectorArg;Lcom/dropbox/core/v2/team/AdminTier;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-nez p1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'user\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MembersSetPermissionsArg;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    .line 44
    if-nez p2, :cond_1

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'newRole\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/team/MembersSetPermissionsArg;->newRole:Lcom/dropbox/core/v2/team/AdminTier;

    .line 48
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 79
    if-ne p1, p0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 83
    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 87
    check-cast p1, Lcom/dropbox/core/v2/team/MembersSetPermissionsArg;

    .line 88
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetPermissionsArg;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersSetPermissionsArg;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetPermissionsArg;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersSetPermissionsArg;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/team/UserSelectorArg;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetPermissionsArg;->newRole:Lcom/dropbox/core/v2/team/AdminTier;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersSetPermissionsArg;->newRole:Lcom/dropbox/core/v2/team/AdminTier;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetPermissionsArg;->newRole:Lcom/dropbox/core/v2/team/AdminTier;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersSetPermissionsArg;->newRole:Lcom/dropbox/core/v2/team/AdminTier;

    .line 89
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/team/AdminTier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 93
    goto :goto_0
.end method

.method public getNewRole()Lcom/dropbox/core/v2/team/AdminTier;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersSetPermissionsArg;->newRole:Lcom/dropbox/core/v2/team/AdminTier;

    return-object v0
.end method

.method public getUser()Lcom/dropbox/core/v2/team/UserSelectorArg;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersSetPermissionsArg;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetPermissionsArg;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetPermissionsArg;->newRole:Lcom/dropbox/core/v2/team/AdminTier;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 74
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lcom/dropbox/core/v2/team/MembersSetPermissionsArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersSetPermissionsArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MembersSetPermissionsArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    sget-object v0, Lcom/dropbox/core/v2/team/MembersSetPermissionsArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersSetPermissionsArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MembersSetPermissionsArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
