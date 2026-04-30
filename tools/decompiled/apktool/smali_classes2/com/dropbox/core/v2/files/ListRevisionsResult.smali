.class public Lcom/dropbox/core/v2/files/ListRevisionsResult;
.super Ljava/lang/Object;
.source "ListRevisionsResult.java"


# instance fields
.field protected final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/files/FileMetadata;",
            ">;"
        }
    .end annotation
.end field

.field protected final isDeleted:Z

.field protected final serverDeleted:Ljava/util/Date;


# direct methods
.method public constructor <init>(ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/files/FileMetadata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/v2/files/ListRevisionsResult;-><init>(ZLjava/util/List;Ljava/util/Date;)V

    .line 70
    return-void
.end method

.method public constructor <init>(ZLjava/util/List;Ljava/util/Date;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/files/FileMetadata;",
            ">;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/ListRevisionsResult;->isDeleted:Z

    .line 42
    invoke-static {p3}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/files/ListRevisionsResult;->serverDeleted:Ljava/util/Date;

    .line 43
    if-nez p2, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'entries\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/FileMetadata;

    .line 47
    if-nez v0, :cond_1

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'entries\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_2
    iput-object p2, p0, Lcom/dropbox/core/v2/files/ListRevisionsResult;->entries:Ljava/util/List;

    .line 52
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 113
    if-ne p1, p0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v0

    .line 116
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 117
    goto :goto_0

    .line 120
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 121
    check-cast p1, Lcom/dropbox/core/v2/files/ListRevisionsResult;

    .line 122
    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/ListRevisionsResult;->isDeleted:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/ListRevisionsResult;->isDeleted:Z

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListRevisionsResult;->entries:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ListRevisionsResult;->entries:Ljava/util/List;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListRevisionsResult;->entries:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ListRevisionsResult;->entries:Ljava/util/List;

    .line 123
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListRevisionsResult;->serverDeleted:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ListRevisionsResult;->serverDeleted:Ljava/util/Date;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListRevisionsResult;->serverDeleted:Ljava/util/Date;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListRevisionsResult;->serverDeleted:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ListRevisionsResult;->serverDeleted:Ljava/util/Date;

    .line 124
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 128
    goto :goto_0
.end method

.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/files/FileMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ListRevisionsResult;->entries:Ljava/util/List;

    return-object v0
.end method

.method public getIsDeleted()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/dropbox/core/v2/files/ListRevisionsResult;->isDeleted:Z

    return v0
.end method

.method public getServerDeleted()Ljava/util/Date;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ListRevisionsResult;->serverDeleted:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 103
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/ListRevisionsResult;->isDeleted:Z

    .line 104
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListRevisionsResult;->serverDeleted:Ljava/util/Date;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListRevisionsResult;->entries:Ljava/util/List;

    aput-object v2, v0, v1

    .line 103
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 108
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    sget-object v0, Lcom/dropbox/core/v2/files/ListRevisionsResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListRevisionsResult$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/ListRevisionsResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    sget-object v0, Lcom/dropbox/core/v2/files/ListRevisionsResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListRevisionsResult$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/ListRevisionsResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
