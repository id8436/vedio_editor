.class public Lcom/dropbox/core/v2/paper/AddMember;
.super Ljava/lang/Object;
.source "AddMember.java"


# instance fields
.field protected final member:Lcom/dropbox/core/v2/sharing/MemberSelector;

.field protected final permissionLevel:Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/sharing/MemberSelector;)V
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;->EDIT:Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/v2/paper/AddMember;-><init>(Lcom/dropbox/core/v2/sharing/MemberSelector;Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/sharing/MemberSelector;Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-nez p2, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'permissionLevel\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    iput-object p2, p0, Lcom/dropbox/core/v2/paper/AddMember;->permissionLevel:Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

    .line 40
    if-nez p1, :cond_1

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'member\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/paper/AddMember;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    .line 44
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 92
    if-ne p1, p0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v0

    .line 95
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 96
    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 100
    check-cast p1, Lcom/dropbox/core/v2/paper/AddMember;

    .line 101
    iget-object v2, p0, Lcom/dropbox/core/v2/paper/AddMember;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/AddMember;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/AddMember;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/AddMember;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/MemberSelector;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/paper/AddMember;->permissionLevel:Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/AddMember;->permissionLevel:Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/AddMember;->permissionLevel:Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/AddMember;->permissionLevel:Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

    .line 102
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 106
    goto :goto_0
.end method

.method public getMember()Lcom/dropbox/core/v2/sharing/MemberSelector;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/AddMember;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    return-object v0
.end method

.method public getPermissionLevel()Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/AddMember;->permissionLevel:Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 83
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/AddMember;->permissionLevel:Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/AddMember;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 87
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    sget-object v0, Lcom/dropbox/core/v2/paper/AddMember$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/AddMember$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/AddMember$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    sget-object v0, Lcom/dropbox/core/v2/paper/AddMember$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/AddMember$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/AddMember$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
