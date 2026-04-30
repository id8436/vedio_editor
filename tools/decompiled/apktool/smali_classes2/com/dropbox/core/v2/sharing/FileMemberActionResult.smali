.class public Lcom/dropbox/core/v2/sharing/FileMemberActionResult;
.super Ljava/lang/Object;
.source "FileMemberActionResult.java"


# instance fields
.field protected final member:Lcom/dropbox/core/v2/sharing/MemberSelector;

.field protected final result:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/sharing/MemberSelector;Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;)V
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
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionResult;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    .line 46
    if-nez p2, :cond_1

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'result\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionResult;->result:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    .line 50
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

    .line 95
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

    if-eqz v2, :cond_5

    .line 89
    check-cast p1, Lcom/dropbox/core/v2/sharing/FileMemberActionResult;

    .line 90
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionResult;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FileMemberActionResult;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionResult;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FileMemberActionResult;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/MemberSelector;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionResult;->result:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FileMemberActionResult;->result:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionResult;->result:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FileMemberActionResult;->result:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    .line 91
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 95
    goto :goto_0
.end method

.method public getMember()Lcom/dropbox/core/v2/sharing/MemberSelector;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionResult;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    return-object v0
.end method

.method public getResult()Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionResult;->result:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 72
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionResult;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionResult;->result:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 76
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileMemberActionResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FileMemberActionResult$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/FileMemberActionResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileMemberActionResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FileMemberActionResult$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/FileMemberActionResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
