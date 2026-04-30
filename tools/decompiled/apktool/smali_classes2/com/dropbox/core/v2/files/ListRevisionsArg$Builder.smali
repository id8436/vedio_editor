.class public Lcom/dropbox/core/v2/files/ListRevisionsArg$Builder;
.super Ljava/lang/Object;
.source "ListRevisionsArg.java"


# instance fields
.field protected limit:J

.field protected mode:Lcom/dropbox/core/v2/files/ListRevisionsMode;

.field protected final path:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    if-nez p1, :cond_0

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'path\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    const-string/jumbo v0, "/(.|[\\r\\n])*|id:.*|(ns:[0-9]+(/.*)?)"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'path\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/files/ListRevisionsArg$Builder;->path:Ljava/lang/String;

    .line 141
    sget-object v0, Lcom/dropbox/core/v2/files/ListRevisionsMode;->PATH:Lcom/dropbox/core/v2/files/ListRevisionsMode;

    iput-object v0, p0, Lcom/dropbox/core/v2/files/ListRevisionsArg$Builder;->mode:Lcom/dropbox/core/v2/files/ListRevisionsMode;

    .line 142
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/dropbox/core/v2/files/ListRevisionsArg$Builder;->limit:J

    .line 143
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/files/ListRevisionsArg;
    .locals 6

    .prologue
    .line 209
    new-instance v0, Lcom/dropbox/core/v2/files/ListRevisionsArg;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/ListRevisionsArg$Builder;->path:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListRevisionsArg$Builder;->mode:Lcom/dropbox/core/v2/files/ListRevisionsMode;

    iget-wide v4, p0, Lcom/dropbox/core/v2/files/ListRevisionsArg$Builder;->limit:J

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/dropbox/core/v2/files/ListRevisionsArg;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/files/ListRevisionsMode;J)V

    return-object v0
.end method

.method public withLimit(Ljava/lang/Long;)Lcom/dropbox/core/v2/files/ListRevisionsArg$Builder;
    .locals 4

    .prologue
    .line 187
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 188
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'limit\' is smaller than 1L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'limit\' is larger than 100L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_1
    if-eqz p1, :cond_2

    .line 194
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dropbox/core/v2/files/ListRevisionsArg$Builder;->limit:J

    .line 199
    :goto_0
    return-object p0

    .line 197
    :cond_2
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/dropbox/core/v2/files/ListRevisionsArg$Builder;->limit:J

    goto :goto_0
.end method

.method public withMode(Lcom/dropbox/core/v2/files/ListRevisionsMode;)Lcom/dropbox/core/v2/files/ListRevisionsArg$Builder;
    .locals 1

    .prologue
    .line 162
    if-eqz p1, :cond_0

    .line 163
    iput-object p1, p0, Lcom/dropbox/core/v2/files/ListRevisionsArg$Builder;->mode:Lcom/dropbox/core/v2/files/ListRevisionsMode;

    .line 168
    :goto_0
    return-object p0

    .line 166
    :cond_0
    sget-object v0, Lcom/dropbox/core/v2/files/ListRevisionsMode;->PATH:Lcom/dropbox/core/v2/files/ListRevisionsMode;

    iput-object v0, p0, Lcom/dropbox/core/v2/files/ListRevisionsArg$Builder;->mode:Lcom/dropbox/core/v2/files/ListRevisionsMode;

    goto :goto_0
.end method
