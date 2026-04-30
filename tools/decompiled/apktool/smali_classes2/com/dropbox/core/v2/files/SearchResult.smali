.class public Lcom/dropbox/core/v2/files/SearchResult;
.super Ljava/lang/Object;
.source "SearchResult.java"


# instance fields
.field protected final matches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/files/SearchMatch;",
            ">;"
        }
    .end annotation
.end field

.field protected final more:Z

.field protected final start:J


# direct methods
.method public constructor <init>(Ljava/util/List;ZJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/files/SearchMatch;",
            ">;ZJ)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'matches\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/SearchMatch;

    .line 45
    if-nez v0, :cond_1

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'matches\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/files/SearchResult;->matches:Ljava/util/List;

    .line 50
    iput-boolean p2, p0, Lcom/dropbox/core/v2/files/SearchResult;->more:Z

    .line 51
    iput-wide p3, p0, Lcom/dropbox/core/v2/files/SearchResult;->start:J

    .line 52
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 97
    if-ne p1, p0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v0

    .line 100
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 101
    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 105
    check-cast p1, Lcom/dropbox/core/v2/files/SearchResult;

    .line 106
    iget-object v2, p0, Lcom/dropbox/core/v2/files/SearchResult;->matches:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/SearchResult;->matches:Ljava/util/List;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/files/SearchResult;->matches:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/SearchResult;->matches:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/SearchResult;->more:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/SearchResult;->more:Z

    if-ne v2, v3, :cond_4

    iget-wide v2, p0, Lcom/dropbox/core/v2/files/SearchResult;->start:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/files/SearchResult;->start:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 112
    goto :goto_0
.end method

.method public getMatches()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/files/SearchMatch;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SearchResult;->matches:Ljava/util/List;

    return-object v0
.end method

.method public getMore()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/dropbox/core/v2/files/SearchResult;->more:Z

    return v0
.end method

.method public getStart()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/dropbox/core/v2/files/SearchResult;->start:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 87
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/files/SearchResult;->matches:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/SearchResult;->more:Z

    .line 89
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/dropbox/core/v2/files/SearchResult;->start:J

    .line 90
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 87
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 92
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    sget-object v0, Lcom/dropbox/core/v2/files/SearchResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SearchResult$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/SearchResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    sget-object v0, Lcom/dropbox/core/v2/files/SearchResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SearchResult$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/SearchResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
