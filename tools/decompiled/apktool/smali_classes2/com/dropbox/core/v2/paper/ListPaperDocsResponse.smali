.class public Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;
.super Ljava/lang/Object;
.source "ListPaperDocsResponse.java"


# instance fields
.field protected final cursor:Lcom/dropbox/core/v2/paper/Cursor;

.field protected final docIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final hasMore:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/dropbox/core/v2/paper/Cursor;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/dropbox/core/v2/paper/Cursor;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-nez p1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'docIds\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 53
    if-nez v0, :cond_1

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'docIds\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;->docIds:Ljava/util/List;

    .line 58
    if-nez p2, :cond_3

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'cursor\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_3
    iput-object p2, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;->cursor:Lcom/dropbox/core/v2/paper/Cursor;

    .line 62
    iput-boolean p3, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;->hasMore:Z

    .line 63
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 112
    if-ne p1, p0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v0

    .line 115
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 116
    goto :goto_0

    .line 119
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 120
    check-cast p1, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;

    .line 121
    iget-object v2, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;->docIds:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;->docIds:Ljava/util/List;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;->docIds:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;->docIds:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;->cursor:Lcom/dropbox/core/v2/paper/Cursor;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;->cursor:Lcom/dropbox/core/v2/paper/Cursor;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;->cursor:Lcom/dropbox/core/v2/paper/Cursor;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;->cursor:Lcom/dropbox/core/v2/paper/Cursor;

    .line 122
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/paper/Cursor;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-boolean v2, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;->hasMore:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;->hasMore:Z

    if-eq v2, v3, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 127
    goto :goto_0
.end method

.method public getCursor()Lcom/dropbox/core/v2/paper/Cursor;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;->cursor:Lcom/dropbox/core/v2/paper/Cursor;

    return-object v0
.end method

.method public getDocIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;->docIds:Ljava/util/List;

    return-object v0
.end method

.method public getHasMore()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;->hasMore:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 102
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;->docIds:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;->cursor:Lcom/dropbox/core/v2/paper/Cursor;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;->hasMore:Z

    .line 105
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 102
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 107
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    sget-object v0, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListPaperDocsResponse$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    sget-object v0, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListPaperDocsResponse$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
