.class public Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;
.super Lcom/dropbox/core/v2/teamlog/SessionLogInfo;
.source "WebSessionLogInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/teamlog/SessionLogInfo;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 60
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 72
    :cond_0
    :goto_0
    return v0

    .line 63
    :cond_1
    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    check-cast p1, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    .line 69
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;->sessionId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;->sessionId:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;->sessionId:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;->sessionId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;->sessionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 55
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
    .line 78
    sget-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    sget-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
