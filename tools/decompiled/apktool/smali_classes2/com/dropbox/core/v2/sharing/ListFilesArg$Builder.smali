.class public Lcom/dropbox/core/v2/sharing/ListFilesArg$Builder;
.super Ljava/lang/Object;
.source "ListFilesArg.java"


# instance fields
.field protected actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FileAction;",
            ">;"
        }
    .end annotation
.end field

.field protected limit:J


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/dropbox/core/v2/sharing/ListFilesArg$Builder;->limit:J

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFilesArg$Builder;->actions:Ljava/util/List;

    .line 115
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/sharing/ListFilesArg;
    .locals 4

    .prologue
    .line 182
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFilesArg;

    iget-wide v2, p0, Lcom/dropbox/core/v2/sharing/ListFilesArg$Builder;->limit:J

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ListFilesArg$Builder;->actions:Ljava/util/List;

    invoke-direct {v0, v2, v3, v1}, Lcom/dropbox/core/v2/sharing/ListFilesArg;-><init>(JLjava/util/List;)V

    return-object v0
.end method

.method public withActions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/ListFilesArg$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FileAction;",
            ">;)",
            "Lcom/dropbox/core/v2/sharing/ListFilesArg$Builder;"
        }
    .end annotation

    .prologue
    .line 164
    if-eqz p1, :cond_1

    .line 165
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/FileAction;

    .line 166
    if-nez v0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'actions\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ListFilesArg$Builder;->actions:Ljava/util/List;

    .line 172
    return-object p0
.end method

.method public withLimit(Ljava/lang/Long;)Lcom/dropbox/core/v2/sharing/ListFilesArg$Builder;
    .locals 4

    .prologue
    .line 134
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'limit\' is smaller than 1L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'limit\' is larger than 300L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_1
    if-eqz p1, :cond_2

    .line 141
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dropbox/core/v2/sharing/ListFilesArg$Builder;->limit:J

    .line 146
    :goto_0
    return-object p0

    .line 144
    :cond_2
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/dropbox/core/v2/sharing/ListFilesArg$Builder;->limit:J

    goto :goto_0
.end method
