.class public Lcom/dropbox/core/v2/files/ListFolderLongpollResult;
.super Ljava/lang/Object;
.source "ListFolderLongpollResult.java"


# instance fields
.field protected final backoff:Ljava/lang/Long;

.field protected final changes:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;-><init>(ZLjava/lang/Long;)V

    .line 49
    return-void
.end method

.method public constructor <init>(ZLjava/lang/Long;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;->changes:Z

    .line 35
    iput-object p2, p0, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;->backoff:Ljava/lang/Long;

    .line 36
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 82
    if-ne p1, p0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v0

    .line 85
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 86
    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 90
    check-cast p1, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;

    .line 91
    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;->changes:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;->changes:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;->backoff:Ljava/lang/Long;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;->backoff:Ljava/lang/Long;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;->backoff:Ljava/lang/Long;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;->backoff:Ljava/lang/Long;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;->backoff:Ljava/lang/Long;

    .line 92
    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 96
    goto :goto_0
.end method

.method public getBackoff()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;->backoff:Ljava/lang/Long;

    return-object v0
.end method

.method public getChanges()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;->changes:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 73
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;->changes:Z

    .line 74
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;->backoff:Ljava/lang/Long;

    aput-object v2, v0, v1

    .line 73
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 77
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    sget-object v0, Lcom/dropbox/core/v2/files/ListFolderLongpollResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderLongpollResult$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/ListFolderLongpollResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    sget-object v0, Lcom/dropbox/core/v2/files/ListFolderLongpollResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderLongpollResult$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/ListFolderLongpollResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
