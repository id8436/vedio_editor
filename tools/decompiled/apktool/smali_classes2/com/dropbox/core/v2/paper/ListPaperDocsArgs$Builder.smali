.class public Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;
.super Ljava/lang/Object;
.source "ListPaperDocsArgs.java"


# instance fields
.field protected filterBy:Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

.field protected limit:I

.field protected sortBy:Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;

.field protected sortOrder:Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    sget-object v0, Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;->DOCS_ACCESSED:Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

    iput-object v0, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;->filterBy:Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

    .line 137
    sget-object v0, Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;->ACCESSED:Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;

    iput-object v0, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;->sortBy:Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;

    .line 138
    sget-object v0, Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;->ASCENDING:Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;

    iput-object v0, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;->sortOrder:Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;

    .line 139
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;->limit:I

    .line 140
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;
    .locals 5

    .prologue
    .line 257
    new-instance v0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;->filterBy:Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;->sortBy:Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;->sortOrder:Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;

    iget v4, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;->limit:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;-><init>(Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;I)V

    return-object v0
.end method

.method public withFilterBy(Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;)Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;
    .locals 1

    .prologue
    .line 158
    if-eqz p1, :cond_0

    .line 159
    iput-object p1, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;->filterBy:Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

    .line 164
    :goto_0
    return-object p0

    .line 162
    :cond_0
    sget-object v0, Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;->DOCS_ACCESSED:Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

    iput-object v0, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;->filterBy:Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

    goto :goto_0
.end method

.method public withLimit(Ljava/lang/Integer;)Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;
    .locals 3

    .prologue
    const/16 v2, 0x3e8

    .line 235
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'limit\' is smaller than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 239
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'limit\' is larger than 1000"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_1
    if-eqz p1, :cond_2

    .line 242
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;->limit:I

    .line 247
    :goto_0
    return-object p0

    .line 245
    :cond_2
    iput v2, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;->limit:I

    goto :goto_0
.end method

.method public withSortBy(Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;)Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;
    .locals 1

    .prologue
    .line 183
    if-eqz p1, :cond_0

    .line 184
    iput-object p1, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;->sortBy:Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;

    .line 189
    :goto_0
    return-object p0

    .line 187
    :cond_0
    sget-object v0, Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;->ACCESSED:Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;

    iput-object v0, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;->sortBy:Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;

    goto :goto_0
.end method

.method public withSortOrder(Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;)Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;
    .locals 1

    .prologue
    .line 208
    if-eqz p1, :cond_0

    .line 209
    iput-object p1, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;->sortOrder:Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;

    .line 214
    :goto_0
    return-object p0

    .line 212
    :cond_0
    sget-object v0, Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;->ASCENDING:Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;

    iput-object v0, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;->sortOrder:Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;

    goto :goto_0
.end method
