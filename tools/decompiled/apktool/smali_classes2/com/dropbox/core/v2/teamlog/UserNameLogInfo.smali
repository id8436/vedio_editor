.class public Lcom/dropbox/core/v2/teamlog/UserNameLogInfo;
.super Ljava/lang/Object;
.source "UserNameLogInfo.java"


# instance fields
.field protected final givenName:Ljava/lang/String;

.field protected final locale:Ljava/lang/String;

.field protected final surname:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/v2/teamlog/UserNameLogInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'givenName\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/UserNameLogInfo;->givenName:Ljava/lang/String;

    .line 43
    if-nez p2, :cond_1

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'surname\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/UserNameLogInfo;->surname:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/UserNameLogInfo;->locale:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 104
    if-ne p1, p0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v0

    .line 107
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 108
    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 112
    check-cast p1, Lcom/dropbox/core/v2/teamlog/UserNameLogInfo;

    .line 113
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/UserNameLogInfo;->givenName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/UserNameLogInfo;->givenName:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/UserNameLogInfo;->givenName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/UserNameLogInfo;->givenName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/UserNameLogInfo;->surname:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/UserNameLogInfo;->surname:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/UserNameLogInfo;->surname:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/UserNameLogInfo;->surname:Ljava/lang/String;

    .line 114
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/UserNameLogInfo;->locale:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/UserNameLogInfo;->locale:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/UserNameLogInfo;->locale:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/UserNameLogInfo;->locale:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/UserNameLogInfo;->locale:Ljava/lang/String;

    .line 115
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 119
    goto :goto_0
.end method

.method public getGivenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/UserNameLogInfo;->givenName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/UserNameLogInfo;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public getSurname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/UserNameLogInfo;->surname:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 94
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/UserNameLogInfo;->givenName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/UserNameLogInfo;->surname:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/UserNameLogInfo;->locale:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 99
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    sget-object v0, Lcom/dropbox/core/v2/teamlog/UserNameLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/UserNameLogInfo$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/UserNameLogInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    sget-object v0, Lcom/dropbox/core/v2/teamlog/UserNameLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/UserNameLogInfo$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/UserNameLogInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
