.class Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;
.super Ljava/lang/Object;
.source "AddFolderMemberArg.java"


# instance fields
.field protected final customMessage:Ljava/lang/String;

.field protected final members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/AddMember;",
            ">;"
        }
    .end annotation
.end field

.field protected final quiet:Z

.field protected final sharedFolderId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/AddMember;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;-><init>(Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/AddMember;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'sharedFolderId\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    const-string/jumbo v0, "[-_0-9a-zA-Z:]+"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'sharedFolderId\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;->sharedFolderId:Ljava/lang/String;

    .line 53
    if-nez p2, :cond_2

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'members\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/AddMember;

    .line 57
    if-nez v0, :cond_3

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'members\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_4
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;->members:Ljava/util/List;

    .line 62
    iput-boolean p3, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;->quiet:Z

    .line 63
    if-eqz p4, :cond_5

    .line 64
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_5

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'customMessage\' is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_5
    iput-object p4, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;->customMessage:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/AddMember;",
            ">;)",
            "Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Builder;"
        }
    .end annotation

    .prologue
    .line 143
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Builder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Builder;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 244
    if-ne p1, p0, :cond_1

    .line 260
    :cond_0
    :goto_0
    return v0

    .line 247
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 248
    goto :goto_0

    .line 251
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 252
    check-cast p1, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;

    .line 253
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;->sharedFolderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;->sharedFolderId:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;->sharedFolderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;->sharedFolderId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;->members:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;->members:Ljava/util/List;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;->members:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;->members:Ljava/util/List;

    .line 254
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;->quiet:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;->quiet:Z

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;->customMessage:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;->customMessage:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;->customMessage:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;->customMessage:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;->customMessage:Ljava/lang/String;

    .line 256
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 260
    goto :goto_0
.end method

.method public getCustomMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;->customMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getMembers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/AddMember;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;->members:Ljava/util/List;

    return-object v0
.end method

.method public getQuiet()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;->quiet:Z

    return v0
.end method

.method public getSharedFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;->sharedFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 233
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;->sharedFolderId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;->members:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;->quiet:Z

    .line 236
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;->customMessage:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 233
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 239
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 266
    sget-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 278
    sget-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
