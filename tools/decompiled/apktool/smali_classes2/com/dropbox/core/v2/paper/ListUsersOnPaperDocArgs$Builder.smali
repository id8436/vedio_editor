.class public Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Builder;
.super Ljava/lang/Object;
.source "ListUsersOnPaperDocArgs.java"


# instance fields
.field protected final docId:Ljava/lang/String;

.field protected filterBy:Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;

.field protected limit:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    if-nez p1, :cond_0

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'docId\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Builder;->docId:Ljava/lang/String;

    .line 127
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Builder;->limit:I

    .line 128
    sget-object v0, Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;->SHARED:Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;

    iput-object v0, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Builder;->filterBy:Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;

    .line 129
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;
    .locals 4

    .prologue
    .line 197
    new-instance v0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Builder;->docId:Ljava/lang/String;

    iget v2, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Builder;->limit:I

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Builder;->filterBy:Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;-><init>(Ljava/lang/String;ILcom/dropbox/core/v2/paper/UserOnPaperDocFilter;)V

    return-object v0
.end method

.method public withFilterBy(Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;)Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Builder;
    .locals 1

    .prologue
    .line 181
    if-eqz p1, :cond_0

    .line 182
    iput-object p1, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Builder;->filterBy:Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;

    .line 187
    :goto_0
    return-object p0

    .line 185
    :cond_0
    sget-object v0, Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;->SHARED:Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;

    iput-object v0, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Builder;->filterBy:Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;

    goto :goto_0
.end method

.method public withLimit(Ljava/lang/Integer;)Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Builder;
    .locals 3

    .prologue
    const/16 v2, 0x3e8

    .line 149
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'limit\' is smaller than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'limit\' is larger than 1000"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_1
    if-eqz p1, :cond_2

    .line 156
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Builder;->limit:I

    .line 161
    :goto_0
    return-object p0

    .line 159
    :cond_2
    iput v2, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Builder;->limit:I

    goto :goto_0
.end method
