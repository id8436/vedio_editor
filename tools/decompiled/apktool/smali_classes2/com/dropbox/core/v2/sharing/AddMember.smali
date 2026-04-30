.class public Lcom/dropbox/core/v2/sharing/AddMember;
.super Ljava/lang/Object;
.source "AddMember.java"


# instance fields
.field protected final accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

.field protected final member:Lcom/dropbox/core/v2/sharing/MemberSelector;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/sharing/MemberSelector;)V
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/dropbox/core/v2/sharing/AccessLevel;->VIEWER:Lcom/dropbox/core/v2/sharing/AccessLevel;

    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/v2/sharing/AddMember;-><init>(Lcom/dropbox/core/v2/sharing/MemberSelector;Lcom/dropbox/core/v2/sharing/AccessLevel;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/sharing/MemberSelector;Lcom/dropbox/core/v2/sharing/AccessLevel;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-nez p1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'member\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/AddMember;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    .line 46
    if-nez p2, :cond_1

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'accessLevel\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/AddMember;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    .line 50
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 99
    if-ne p1, p0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v0

    .line 102
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 103
    goto :goto_0

    .line 106
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 107
    check-cast p1, Lcom/dropbox/core/v2/sharing/AddMember;

    .line 108
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddMember;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/AddMember;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddMember;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/AddMember;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/MemberSelector;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddMember;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/AddMember;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddMember;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/AddMember;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    .line 109
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/AccessLevel;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 113
    goto :goto_0
.end method

.method public getAccessLevel()Lcom/dropbox/core/v2/sharing/AccessLevel;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMember;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    return-object v0
.end method

.method public getMember()Lcom/dropbox/core/v2/sharing/MemberSelector;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMember;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 90
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddMember;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddMember;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 94
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    sget-object v0, Lcom/dropbox/core/v2/sharing/AddMember$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AddMember$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/AddMember$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    sget-object v0, Lcom/dropbox/core/v2/sharing/AddMember$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AddMember$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/AddMember$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
