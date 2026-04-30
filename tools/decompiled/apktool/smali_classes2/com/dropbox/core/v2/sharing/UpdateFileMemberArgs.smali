.class Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs;
.super Lcom/dropbox/core/v2/sharing/ChangeFileMemberAccessArgs;
.source "UpdateFileMemberArgs.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;Lcom/dropbox/core/v2/sharing/AccessLevel;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/ChangeFileMemberAccessArgs;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;Lcom/dropbox/core/v2/sharing/AccessLevel;)V

    .line 44
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 81
    if-ne p1, p0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v0

    .line 84
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 85
    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 89
    check-cast p1, Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs;

    .line 90
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs;->file:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs;->file:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs;->file:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs;->file:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    .line 91
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/MemberSelector;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    .line 92
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/AccessLevel;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 96
    goto :goto_0
.end method

.method public getAccessLevel()Lcom/dropbox/core/v2/sharing/AccessLevel;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    return-object v0
.end method

.method public getFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs;->file:Ljava/lang/String;

    return-object v0
.end method

.method public getMember()Lcom/dropbox/core/v2/sharing/MemberSelector;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    sget-object v0, Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    sget-object v0, Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
