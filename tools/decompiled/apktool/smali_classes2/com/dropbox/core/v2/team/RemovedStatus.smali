.class public Lcom/dropbox/core/v2/team/RemovedStatus;
.super Ljava/lang/Object;
.source "RemovedStatus.java"


# instance fields
.field protected final isRecoverable:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean p1, p0, Lcom/dropbox/core/v2/team/RemovedStatus;->isRecoverable:Z

    .line 29
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 50
    if-ne p1, p0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v0

    .line 53
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 54
    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 58
    check-cast p1, Lcom/dropbox/core/v2/team/RemovedStatus;

    .line 59
    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/RemovedStatus;->isRecoverable:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/team/RemovedStatus;->isRecoverable:Z

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 62
    goto :goto_0
.end method

.method public getIsRecoverable()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/dropbox/core/v2/team/RemovedStatus;->isRecoverable:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/RemovedStatus;->isRecoverable:Z

    .line 43
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 42
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 45
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    sget-object v0, Lcom/dropbox/core/v2/team/RemovedStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/RemovedStatus$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/RemovedStatus$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    sget-object v0, Lcom/dropbox/core/v2/team/RemovedStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/RemovedStatus$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/RemovedStatus$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
