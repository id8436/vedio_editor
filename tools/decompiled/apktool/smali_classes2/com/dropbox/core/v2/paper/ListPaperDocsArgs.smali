.class Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;
.super Ljava/lang/Object;
.source "ListPaperDocsArgs.java"


# instance fields
.field protected final filterBy:Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

.field protected final limit:I

.field protected final sortBy:Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;

.field protected final sortOrder:Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 72
    sget-object v0, Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;->DOCS_ACCESSED:Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

    sget-object v1, Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;->ACCESSED:Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;

    sget-object v2, Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;->ASCENDING:Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;

    const/16 v3, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;-><init>(Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;I)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'filterBy\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->filterBy:Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

    .line 49
    if-nez p2, :cond_1

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'sortBy\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->sortBy:Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;

    .line 53
    if-nez p3, :cond_2

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'sortOrder\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_2
    iput-object p3, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->sortOrder:Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;

    .line 57
    const/4 v0, 0x1

    if-ge p4, v0, :cond_3

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'limit\' is smaller than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_3
    const/16 v0, 0x3e8

    if-le p4, v0, :cond_4

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'limit\' is larger than 1000"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_4
    iput p4, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->limit:I

    .line 64
    return-void
.end method

.method public static newBuilder()Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 274
    if-ne p1, p0, :cond_1

    .line 290
    :cond_0
    :goto_0
    return v0

    .line 277
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 278
    goto :goto_0

    .line 281
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 282
    check-cast p1, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;

    .line 283
    iget-object v2, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->filterBy:Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->filterBy:Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->filterBy:Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->filterBy:Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->sortBy:Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->sortBy:Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->sortBy:Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->sortBy:Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;

    .line 284
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->sortOrder:Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->sortOrder:Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->sortOrder:Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->sortOrder:Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;

    .line 285
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget v2, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->limit:I

    iget v3, p1, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->limit:I

    if-eq v2, v3, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v1

    .line 290
    goto :goto_0
.end method

.method public getFilterBy()Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->filterBy:Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->limit:I

    return v0
.end method

.method public getSortBy()Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->sortBy:Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;

    return-object v0
.end method

.method public getSortOrder()Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->sortOrder:Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 263
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->filterBy:Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->sortBy:Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->sortOrder:Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->limit:I

    .line 267
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 263
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 269
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 296
    sget-object v0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 308
    sget-object v0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
