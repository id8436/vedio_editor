.class Lcom/dropbox/core/v2/files/ListFolderArg;
.super Ljava/lang/Object;
.source "ListFolderArg.java"


# instance fields
.field protected final includeDeleted:Z

.field protected final includeHasExplicitSharedMembers:Z

.field protected final includeMediaInfo:Z

.field protected final includeMountedFolders:Z

.field protected final limit:Ljava/lang/Long;

.field protected final path:Ljava/lang/String;

.field protected final recursive:Z

.field protected final sharedLink:Lcom/dropbox/core/v2/files/SharedLink;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 100
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/files/ListFolderArg;-><init>(Ljava/lang/String;ZZZZZLjava/lang/Long;Lcom/dropbox/core/v2/files/SharedLink;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZZZZLjava/lang/Long;Lcom/dropbox/core/v2/files/SharedLink;)V
    .locals 4

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'path\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    const-string/jumbo v0, "(/(.|[\\r\\n])*)?|id:.*|(ns:[0-9]+(/.*)?)"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'path\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->path:Ljava/lang/String;

    .line 71
    iput-boolean p2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->recursive:Z

    .line 72
    iput-boolean p3, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->includeMediaInfo:Z

    .line 73
    iput-boolean p4, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->includeDeleted:Z

    .line 74
    iput-boolean p5, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->includeHasExplicitSharedMembers:Z

    .line 75
    iput-boolean p6, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->includeMountedFolders:Z

    .line 76
    if-eqz p7, :cond_3

    .line 77
    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'limit\' is smaller than 1L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_2
    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'limit\' is larger than 2000L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_3
    iput-object p7, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->limit:Ljava/lang/Long;

    .line 85
    iput-object p8, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->sharedLink:Lcom/dropbox/core/v2/files/SharedLink;

    .line 86
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListFolderArg$Builder;
    .locals 1

    .prologue
    .line 201
    new-instance v0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 418
    if-ne p1, p0, :cond_1

    .line 438
    :cond_0
    :goto_0
    return v0

    .line 421
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 422
    goto :goto_0

    .line 425
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 426
    check-cast p1, Lcom/dropbox/core/v2/files/ListFolderArg;

    .line 427
    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ListFolderArg;->path:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ListFolderArg;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->recursive:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/ListFolderArg;->recursive:Z

    if-ne v2, v3, :cond_5

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->includeMediaInfo:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/ListFolderArg;->includeMediaInfo:Z

    if-ne v2, v3, :cond_5

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->includeDeleted:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/ListFolderArg;->includeDeleted:Z

    if-ne v2, v3, :cond_5

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->includeHasExplicitSharedMembers:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/ListFolderArg;->includeHasExplicitSharedMembers:Z

    if-ne v2, v3, :cond_5

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->includeMountedFolders:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/ListFolderArg;->includeMountedFolders:Z

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->limit:Ljava/lang/Long;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ListFolderArg;->limit:Ljava/lang/Long;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->limit:Ljava/lang/Long;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->limit:Ljava/lang/Long;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ListFolderArg;->limit:Ljava/lang/Long;

    .line 433
    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->sharedLink:Lcom/dropbox/core/v2/files/SharedLink;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ListFolderArg;->sharedLink:Lcom/dropbox/core/v2/files/SharedLink;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->sharedLink:Lcom/dropbox/core/v2/files/SharedLink;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->sharedLink:Lcom/dropbox/core/v2/files/SharedLink;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ListFolderArg;->sharedLink:Lcom/dropbox/core/v2/files/SharedLink;

    .line 434
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/SharedLink;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 438
    goto :goto_0
.end method

.method public getIncludeDeleted()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->includeDeleted:Z

    return v0
.end method

.method public getIncludeHasExplicitSharedMembers()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->includeHasExplicitSharedMembers:Z

    return v0
.end method

.method public getIncludeMediaInfo()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->includeMediaInfo:Z

    return v0
.end method

.method public getIncludeMountedFolders()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->includeMountedFolders:Z

    return v0
.end method

.method public getLimit()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->limit:Ljava/lang/Long;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getRecursive()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->recursive:Z

    return v0
.end method

.method public getSharedLink()Lcom/dropbox/core/v2/files/SharedLink;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->sharedLink:Lcom/dropbox/core/v2/files/SharedLink;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 403
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->path:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->recursive:Z

    .line 405
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->includeMediaInfo:Z

    .line 406
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->includeDeleted:Z

    .line 407
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->includeHasExplicitSharedMembers:Z

    .line 408
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->includeMountedFolders:Z

    .line 409
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->limit:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->sharedLink:Lcom/dropbox/core/v2/files/SharedLink;

    aput-object v2, v0, v1

    .line 403
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 413
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 444
    sget-object v0, Lcom/dropbox/core/v2/files/ListFolderArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/ListFolderArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 456
    sget-object v0, Lcom/dropbox/core/v2/files/ListFolderArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/ListFolderArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
