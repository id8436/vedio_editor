.class public Lcom/dropbox/core/v2/files/SearchArg$Builder;
.super Ljava/lang/Object;
.source "SearchArg.java"


# instance fields
.field protected maxResults:J

.field protected mode:Lcom/dropbox/core/v2/files/SearchMode;

.field protected final path:Ljava/lang/String;

.field protected final query:Ljava/lang/String;

.field protected start:J


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    if-nez p1, :cond_0

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'path\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_0
    const-string/jumbo v0, "(/(.|[\\r\\n])*)?|id:.*|(ns:[0-9]+(/.*)?)"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 184
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'path\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/files/SearchArg$Builder;->path:Ljava/lang/String;

    .line 187
    if-nez p2, :cond_2

    .line 188
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'query\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_2
    iput-object p2, p0, Lcom/dropbox/core/v2/files/SearchArg$Builder;->query:Ljava/lang/String;

    .line 191
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dropbox/core/v2/files/SearchArg$Builder;->start:J

    .line 192
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/dropbox/core/v2/files/SearchArg$Builder;->maxResults:J

    .line 193
    sget-object v0, Lcom/dropbox/core/v2/files/SearchMode;->FILENAME:Lcom/dropbox/core/v2/files/SearchMode;

    iput-object v0, p0, Lcom/dropbox/core/v2/files/SearchArg$Builder;->mode:Lcom/dropbox/core/v2/files/SearchMode;

    .line 194
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/files/SearchArg;
    .locals 9

    .prologue
    .line 282
    new-instance v1, Lcom/dropbox/core/v2/files/SearchArg;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/SearchArg$Builder;->path:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/files/SearchArg$Builder;->query:Ljava/lang/String;

    iget-wide v4, p0, Lcom/dropbox/core/v2/files/SearchArg$Builder;->start:J

    iget-wide v6, p0, Lcom/dropbox/core/v2/files/SearchArg$Builder;->maxResults:J

    iget-object v8, p0, Lcom/dropbox/core/v2/files/SearchArg$Builder;->mode:Lcom/dropbox/core/v2/files/SearchMode;

    invoke-direct/range {v1 .. v8}, Lcom/dropbox/core/v2/files/SearchArg;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/dropbox/core/v2/files/SearchMode;)V

    return-object v1
.end method

.method public withMaxResults(Ljava/lang/Long;)Lcom/dropbox/core/v2/files/SearchArg$Builder;
    .locals 4

    .prologue
    .line 233
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 234
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'maxResults\' is smaller than 1L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 237
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'maxResults\' is larger than 1000L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_1
    if-eqz p1, :cond_2

    .line 240
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dropbox/core/v2/files/SearchArg$Builder;->maxResults:J

    .line 245
    :goto_0
    return-object p0

    .line 243
    :cond_2
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/dropbox/core/v2/files/SearchArg$Builder;->maxResults:J

    goto :goto_0
.end method

.method public withMode(Lcom/dropbox/core/v2/files/SearchMode;)Lcom/dropbox/core/v2/files/SearchArg$Builder;
    .locals 1

    .prologue
    .line 266
    if-eqz p1, :cond_0

    .line 267
    iput-object p1, p0, Lcom/dropbox/core/v2/files/SearchArg$Builder;->mode:Lcom/dropbox/core/v2/files/SearchMode;

    .line 272
    :goto_0
    return-object p0

    .line 270
    :cond_0
    sget-object v0, Lcom/dropbox/core/v2/files/SearchMode;->FILENAME:Lcom/dropbox/core/v2/files/SearchMode;

    iput-object v0, p0, Lcom/dropbox/core/v2/files/SearchArg$Builder;->mode:Lcom/dropbox/core/v2/files/SearchMode;

    goto :goto_0
.end method

.method public withStart(Ljava/lang/Long;)Lcom/dropbox/core/v2/files/SearchArg$Builder;
    .locals 2

    .prologue
    .line 208
    if-eqz p1, :cond_0

    .line 209
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dropbox/core/v2/files/SearchArg$Builder;->start:J

    .line 214
    :goto_0
    return-object p0

    .line 212
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dropbox/core/v2/files/SearchArg$Builder;->start:J

    goto :goto_0
.end method
