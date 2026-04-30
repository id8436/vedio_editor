.class Lcom/dropbox/core/v2/paper/AddPaperDocUser;
.super Lcom/dropbox/core/v2/paper/RefPaperDoc;
.source "AddPaperDocUser.java"


# instance fields
.field protected final customMessage:Ljava/lang/String;

.field protected final members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/paper/AddMember;",
            ">;"
        }
    .end annotation
.end field

.field protected final quiet:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/paper/AddMember;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/dropbox/core/v2/paper/AddPaperDocUser;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/paper/AddMember;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/paper/RefPaperDoc;-><init>(Ljava/lang/String;)V

    .line 44
    if-nez p2, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'members\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "List \'members\' has more than 20 items"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/AddMember;

    .line 51
    if-nez v0, :cond_2

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'members\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_3
    iput-object p2, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->members:Ljava/util/List;

    .line 56
    iput-object p3, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->customMessage:Ljava/lang/String;

    .line 57
    iput-boolean p4, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->quiet:Z

    .line 58
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/paper/AddMember;",
            ">;)",
            "Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;"
        }
    .end annotation

    .prologue
    .line 131
    new-instance v0, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 224
    if-ne p1, p0, :cond_1

    .line 240
    :cond_0
    :goto_0
    return v0

    .line 227
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 228
    goto :goto_0

    .line 231
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 232
    check-cast p1, Lcom/dropbox/core/v2/paper/AddPaperDocUser;

    .line 233
    iget-object v2, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->docId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->docId:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->docId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->docId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->members:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->members:Ljava/util/List;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->members:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->members:Ljava/util/List;

    .line 234
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->customMessage:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->customMessage:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->customMessage:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->customMessage:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->customMessage:Ljava/lang/String;

    .line 235
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-boolean v2, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->quiet:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->quiet:Z

    if-eq v2, v3, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v1

    .line 240
    goto :goto_0
.end method

.method public getCustomMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->customMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getDocId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->docId:Ljava/lang/String;

    return-object v0
.end method

.method public getMembers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/paper/AddMember;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->members:Ljava/util/List;

    return-object v0
.end method

.method public getQuiet()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->quiet:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 213
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->members:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->customMessage:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->quiet:Z

    .line 216
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 213
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 218
    invoke-super {p0}, Lcom/dropbox/core/v2/paper/RefPaperDoc;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 219
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 246
    sget-object v0, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/AddPaperDocUser$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 258
    sget-object v0, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/AddPaperDocUser$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
