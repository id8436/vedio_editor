.class Lcom/dropbox/core/v2/sharing/ChangeFileMemberAccessArgs;
.super Ljava/lang/Object;
.source "ChangeFileMemberAccessArgs.java"


# instance fields
.field protected final accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

.field protected final file:Ljava/lang/String;

.field protected final member:Lcom/dropbox/core/v2/sharing/MemberSelector;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;Lcom/dropbox/core/v2/sharing/AccessLevel;)V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    if-nez p1, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'file\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'file\' is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_1
    const-string/jumbo v0, "((/|id:).*|nspath:[0-9]+:.*)|ns:[0-9]+(/.*)?"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'file\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ChangeFileMemberAccessArgs;->file:Ljava/lang/String;

    .line 57
    if-nez p2, :cond_3

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'member\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_3
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/ChangeFileMemberAccessArgs;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    .line 61
    if-nez p3, :cond_4

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'accessLevel\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_4
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/ChangeFileMemberAccessArgs;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    .line 65
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 106
    if-ne p1, p0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 110
    goto :goto_0

    .line 113
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 114
    check-cast p1, Lcom/dropbox/core/v2/sharing/ChangeFileMemberAccessArgs;

    .line 115
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ChangeFileMemberAccessArgs;->file:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ChangeFileMemberAccessArgs;->file:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ChangeFileMemberAccessArgs;->file:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ChangeFileMemberAccessArgs;->file:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ChangeFileMemberAccessArgs;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ChangeFileMemberAccessArgs;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ChangeFileMemberAccessArgs;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ChangeFileMemberAccessArgs;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    .line 116
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/MemberSelector;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ChangeFileMemberAccessArgs;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ChangeFileMemberAccessArgs;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ChangeFileMemberAccessArgs;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ChangeFileMemberAccessArgs;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    .line 117
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/AccessLevel;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 121
    goto :goto_0
.end method

.method public getAccessLevel()Lcom/dropbox/core/v2/sharing/AccessLevel;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ChangeFileMemberAccessArgs;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    return-object v0
.end method

.method public getFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ChangeFileMemberAccessArgs;->file:Ljava/lang/String;

    return-object v0
.end method

.method public getMember()Lcom/dropbox/core/v2/sharing/MemberSelector;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ChangeFileMemberAccessArgs;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 96
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ChangeFileMemberAccessArgs;->file:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ChangeFileMemberAccessArgs;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ChangeFileMemberAccessArgs;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 101
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    sget-object v0, Lcom/dropbox/core/v2/sharing/ChangeFileMemberAccessArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ChangeFileMemberAccessArgs$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ChangeFileMemberAccessArgs$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    sget-object v0, Lcom/dropbox/core/v2/sharing/ChangeFileMemberAccessArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ChangeFileMemberAccessArgs$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ChangeFileMemberAccessArgs$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
