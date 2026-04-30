.class public Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;
.super Ljava/lang/Object;
.source "AddPaperDocUserMemberResult.java"


# instance fields
.field protected final member:Lcom/dropbox/core/v2/sharing/MemberSelector;

.field protected final result:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/sharing/MemberSelector;Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'member\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    .line 45
    if-nez p2, :cond_1

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'result\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;->result:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    .line 49
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 80
    if-ne p1, p0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v0

    .line 83
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 84
    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 88
    check-cast p1, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;

    .line 89
    iget-object v2, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/MemberSelector;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;->result:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;->result:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;->result:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;->result:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    .line 90
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 94
    goto :goto_0
.end method

.method public getMember()Lcom/dropbox/core/v2/sharing/MemberSelector;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    return-object v0
.end method

.method public getResult()Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;->result:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;->result:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 75
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    sget-object v0, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    sget-object v0, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
