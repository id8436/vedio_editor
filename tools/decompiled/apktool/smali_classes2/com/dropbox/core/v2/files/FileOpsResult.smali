.class public Lcom/dropbox/core/v2/files/FileOpsResult;
.super Ljava/lang/Object;
.source "FileOpsResult.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 32
    if-ne p1, p0, :cond_0

    .line 44
    :goto_0
    return v0

    .line 35
    :cond_0
    if-nez p1, :cond_1

    move v0, v1

    .line 36
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 40
    check-cast p1, Lcom/dropbox/core/v2/files/FileOpsResult;

    goto :goto_0

    :cond_2
    move v0, v1

    .line 44
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lcom/dropbox/core/v2/files/FileOpsResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FileOpsResult$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/FileOpsResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    sget-object v0, Lcom/dropbox/core/v2/files/FileOpsResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FileOpsResult$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/FileOpsResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
