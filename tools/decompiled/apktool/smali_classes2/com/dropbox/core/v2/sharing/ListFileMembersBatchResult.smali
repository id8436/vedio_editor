.class public Lcom/dropbox/core/v2/sharing/ListFileMembersBatchResult;
.super Ljava/lang/Object;
.source "ListFileMembersBatchResult.java"


# instance fields
.field protected final file:Ljava/lang/String;

.field protected final result:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'file\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'file\' is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_1
    const-string/jumbo v0, "((/|id:).*|nspath:[0-9]+:.*)|ns:[0-9]+(/.*)?"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'file\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchResult;->file:Ljava/lang/String;

    .line 54
    if-nez p2, :cond_3

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'result\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_3
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchResult;->result:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;

    .line 58
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 89
    if-ne p1, p0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v0

    .line 92
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 93
    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 97
    check-cast p1, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchResult;

    .line 98
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchResult;->file:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchResult;->file:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchResult;->file:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchResult;->file:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchResult;->result:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchResult;->result:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchResult;->result:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchResult;->result:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;

    .line 99
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 103
    goto :goto_0
.end method

.method public getFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchResult;->file:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchResult;->result:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchResult;->file:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchResult;->result:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 84
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFileMembersBatchResult$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFileMembersBatchResult$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
