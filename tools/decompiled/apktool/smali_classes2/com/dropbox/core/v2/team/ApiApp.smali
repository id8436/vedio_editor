.class public Lcom/dropbox/core/v2/team/ApiApp;
.super Ljava/lang/Object;
.source "ApiApp.java"


# instance fields
.field protected final appId:Ljava/lang/String;

.field protected final appName:Ljava/lang/String;

.field protected final isAppFolder:Z

.field protected final linked:Ljava/util/Date;

.field protected final publisher:Ljava/lang/String;

.field protected final publisherUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 79
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/v2/team/ApiApp;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-nez p1, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'appId\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/ApiApp;->appId:Ljava/lang/String;

    .line 55
    if-nez p2, :cond_1

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'appName\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/team/ApiApp;->appName:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lcom/dropbox/core/v2/team/ApiApp;->publisher:Ljava/lang/String;

    .line 60
    iput-object p5, p0, Lcom/dropbox/core/v2/team/ApiApp;->publisherUrl:Ljava/lang/String;

    .line 61
    invoke-static {p6}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/team/ApiApp;->linked:Ljava/util/Date;

    .line 62
    iput-boolean p3, p0, Lcom/dropbox/core/v2/team/ApiApp;->isAppFolder:Z

    .line 63
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;Ljava/lang/String;Z)Lcom/dropbox/core/v2/team/ApiApp$Builder;
    .locals 1

    .prologue
    .line 150
    new-instance v0, Lcom/dropbox/core/v2/team/ApiApp$Builder;

    invoke-direct {v0, p0, p1, p2}, Lcom/dropbox/core/v2/team/ApiApp$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 242
    if-ne p1, p0, :cond_1

    .line 260
    :cond_0
    :goto_0
    return v0

    .line 245
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 246
    goto :goto_0

    .line 249
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 250
    check-cast p1, Lcom/dropbox/core/v2/team/ApiApp;

    .line 251
    iget-object v2, p0, Lcom/dropbox/core/v2/team/ApiApp;->appId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ApiApp;->appId:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ApiApp;->appId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ApiApp;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/team/ApiApp;->appName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ApiApp;->appName:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ApiApp;->appName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ApiApp;->appName:Ljava/lang/String;

    .line 252
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_4
    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/ApiApp;->isAppFolder:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/team/ApiApp;->isAppFolder:Z

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ApiApp;->publisher:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ApiApp;->publisher:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ApiApp;->publisher:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ApiApp;->publisher:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ApiApp;->publisher:Ljava/lang/String;

    .line 254
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/team/ApiApp;->publisherUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ApiApp;->publisherUrl:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ApiApp;->publisherUrl:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ApiApp;->publisherUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ApiApp;->publisherUrl:Ljava/lang/String;

    .line 255
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/team/ApiApp;->linked:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ApiApp;->linked:Ljava/util/Date;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ApiApp;->linked:Ljava/util/Date;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ApiApp;->linked:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ApiApp;->linked:Ljava/util/Date;

    .line 256
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    move v0, v1

    .line 260
    goto :goto_0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dropbox/core/v2/team/ApiApp;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dropbox/core/v2/team/ApiApp;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAppFolder()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/dropbox/core/v2/team/ApiApp;->isAppFolder:Z

    return v0
.end method

.method public getLinked()Ljava/util/Date;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/dropbox/core/v2/team/ApiApp;->linked:Ljava/util/Date;

    return-object v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/dropbox/core/v2/team/ApiApp;->publisher:Ljava/lang/String;

    return-object v0
.end method

.method public getPublisherUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/dropbox/core/v2/team/ApiApp;->publisherUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 229
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ApiApp;->appId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ApiApp;->appName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ApiApp;->publisher:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ApiApp;->publisherUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ApiApp;->linked:Ljava/util/Date;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/ApiApp;->isAppFolder:Z

    .line 235
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 229
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 237
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 266
    sget-object v0, Lcom/dropbox/core/v2/team/ApiApp$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/ApiApp$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/ApiApp$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 278
    sget-object v0, Lcom/dropbox/core/v2/team/ApiApp$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/ApiApp$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/ApiApp$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
