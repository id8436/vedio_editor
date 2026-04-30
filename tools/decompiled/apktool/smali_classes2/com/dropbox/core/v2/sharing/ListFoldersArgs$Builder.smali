.class public Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Builder;
.super Ljava/lang/Object;
.source "ListFoldersArgs.java"


# instance fields
.field protected actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FolderAction;",
            ">;"
        }
    .end annotation
.end field

.field protected limit:J


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Builder;->limit:J

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Builder;->actions:Ljava/util/List;

    .line 109
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/sharing/ListFoldersArgs;
    .locals 4

    .prologue
    .line 175
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;

    iget-wide v2, p0, Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Builder;->limit:J

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Builder;->actions:Ljava/util/List;

    invoke-direct {v0, v2, v3, v1}, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;-><init>(JLjava/util/List;)V

    return-object v0
.end method

.method public withActions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FolderAction;",
            ">;)",
            "Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Builder;"
        }
    .end annotation

    .prologue
    .line 157
    if-eqz p1, :cond_1

    .line 158
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/FolderAction;

    .line 159
    if-nez v0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'actions\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Builder;->actions:Ljava/util/List;

    .line 165
    return-object p0
.end method

.method public withLimit(Ljava/lang/Long;)Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Builder;
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 127
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'limit\' is smaller than 1L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'limit\' is larger than 1000L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_1
    if-eqz p1, :cond_2

    .line 134
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Builder;->limit:J

    .line 139
    :goto_0
    return-object p0

    .line 137
    :cond_2
    iput-wide v4, p0, Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Builder;->limit:J

    goto :goto_0
.end method
