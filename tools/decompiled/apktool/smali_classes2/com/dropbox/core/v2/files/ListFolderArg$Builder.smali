.class public Lcom/dropbox/core/v2/files/ListFolderArg$Builder;
.super Ljava/lang/Object;
.source "ListFolderArg.java"


# instance fields
.field protected includeDeleted:Z

.field protected includeHasExplicitSharedMembers:Z

.field protected includeMediaInfo:Z

.field protected includeMountedFolders:Z

.field protected limit:Ljava/lang/Long;

.field protected final path:Ljava/lang/String;

.field protected recursive:Z

.field protected sharedLink:Lcom/dropbox/core/v2/files/SharedLink;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    if-nez p1, :cond_0

    .line 220
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'path\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_0
    const-string/jumbo v0, "(/(.|[\\r\\n])*)?|id:.*|(ns:[0-9]+(/.*)?)"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'path\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->path:Ljava/lang/String;

    .line 226
    iput-boolean v1, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->recursive:Z

    .line 227
    iput-boolean v1, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->includeMediaInfo:Z

    .line 228
    iput-boolean v1, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->includeDeleted:Z

    .line 229
    iput-boolean v1, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->includeHasExplicitSharedMembers:Z

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->includeMountedFolders:Z

    .line 231
    iput-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->limit:Ljava/lang/Long;

    .line 232
    iput-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->sharedLink:Lcom/dropbox/core/v2/files/SharedLink;

    .line 233
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/files/ListFolderArg;
    .locals 9

    .prologue
    .line 397
    new-instance v0, Lcom/dropbox/core/v2/files/ListFolderArg;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->path:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->recursive:Z

    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->includeMediaInfo:Z

    iget-boolean v4, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->includeDeleted:Z

    iget-boolean v5, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->includeHasExplicitSharedMembers:Z

    iget-boolean v6, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->includeMountedFolders:Z

    iget-object v7, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->limit:Ljava/lang/Long;

    iget-object v8, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->sharedLink:Lcom/dropbox/core/v2/files/SharedLink;

    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/files/ListFolderArg;-><init>(Ljava/lang/String;ZZZZZLjava/lang/Long;Lcom/dropbox/core/v2/files/SharedLink;)V

    return-object v0
.end method

.method public withIncludeDeleted(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/ListFolderArg$Builder;
    .locals 1

    .prologue
    .line 293
    if-eqz p1, :cond_0

    .line 294
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->includeDeleted:Z

    .line 299
    :goto_0
    return-object p0

    .line 297
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->includeDeleted:Z

    goto :goto_0
.end method

.method public withIncludeHasExplicitSharedMembers(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/ListFolderArg$Builder;
    .locals 1

    .prologue
    .line 316
    if-eqz p1, :cond_0

    .line 317
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->includeHasExplicitSharedMembers:Z

    .line 322
    :goto_0
    return-object p0

    .line 320
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->includeHasExplicitSharedMembers:Z

    goto :goto_0
.end method

.method public withIncludeMediaInfo(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/ListFolderArg$Builder;
    .locals 1

    .prologue
    .line 271
    if-eqz p1, :cond_0

    .line 272
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->includeMediaInfo:Z

    .line 277
    :goto_0
    return-object p0

    .line 275
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->includeMediaInfo:Z

    goto :goto_0
.end method

.method public withIncludeMountedFolders(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/ListFolderArg$Builder;
    .locals 1

    .prologue
    .line 339
    if-eqz p1, :cond_0

    .line 340
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->includeMountedFolders:Z

    .line 345
    :goto_0
    return-object p0

    .line 343
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->includeMountedFolders:Z

    goto :goto_0
.end method

.method public withLimit(Ljava/lang/Long;)Lcom/dropbox/core/v2/files/ListFolderArg$Builder;
    .locals 4

    .prologue
    .line 362
    if-eqz p1, :cond_1

    .line 363
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 364
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'limit\' is smaller than 1L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 367
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'limit\' is larger than 2000L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->limit:Ljava/lang/Long;

    .line 371
    return-object p0
.end method

.method public withRecursive(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/ListFolderArg$Builder;
    .locals 1

    .prologue
    .line 249
    if-eqz p1, :cond_0

    .line 250
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->recursive:Z

    .line 255
    :goto_0
    return-object p0

    .line 253
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->recursive:Z

    goto :goto_0
.end method

.method public withSharedLink(Lcom/dropbox/core/v2/files/SharedLink;)Lcom/dropbox/core/v2/files/ListFolderArg$Builder;
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->sharedLink:Lcom/dropbox/core/v2/files/SharedLink;

    .line 387
    return-object p0
.end method
