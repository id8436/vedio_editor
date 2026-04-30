.class public Lcom/dropbox/core/v2/team/DesktopClientSession;
.super Lcom/dropbox/core/v2/team/DeviceSession;
.source "DesktopClientSession.java"


# instance fields
.field protected final clientType:Lcom/dropbox/core/v2/team/DesktopPlatform;

.field protected final clientVersion:Ljava/lang/String;

.field protected final hostName:Ljava/lang/String;

.field protected final isDeleteOnUnlinkSupported:Z

.field protected final platform:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/team/DesktopPlatform;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11

    .prologue
    .line 98
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v10}, Lcom/dropbox/core/v2/team/DesktopClientSession;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/team/DesktopPlatform;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/team/DesktopPlatform;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 6

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, p1

    move-object v2, p7

    move-object v3, p8

    move-object v4, p9

    move-object/from16 v5, p10

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/team/DeviceSession;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    .line 59
    if-nez p2, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'hostName\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    iput-object p2, p0, Lcom/dropbox/core/v2/team/DesktopClientSession;->hostName:Ljava/lang/String;

    .line 63
    if-nez p3, :cond_1

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'clientType\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    iput-object p3, p0, Lcom/dropbox/core/v2/team/DesktopClientSession;->clientType:Lcom/dropbox/core/v2/team/DesktopPlatform;

    .line 67
    if-nez p4, :cond_2

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'clientVersion\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_2
    iput-object p4, p0, Lcom/dropbox/core/v2/team/DesktopClientSession;->clientVersion:Ljava/lang/String;

    .line 71
    if-nez p5, :cond_3

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'platform\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_3
    iput-object p5, p0, Lcom/dropbox/core/v2/team/DesktopClientSession;->platform:Ljava/lang/String;

    .line 75
    iput-boolean p6, p0, Lcom/dropbox/core/v2/team/DesktopClientSession;->isDeleteOnUnlinkSupported:Z

    .line 76
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/team/DesktopPlatform;Ljava/lang/String;Ljava/lang/String;Z)Lcom/dropbox/core/v2/team/DesktopClientSession$Builder;
    .locals 7

    .prologue
    .line 211
    new-instance v0, Lcom/dropbox/core/v2/team/DesktopClientSession$Builder;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/v2/team/DesktopClientSession$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/team/DesktopPlatform;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 321
    if-ne p1, p0, :cond_1

    .line 343
    :cond_0
    :goto_0
    return v0

    .line 324
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 325
    goto :goto_0

    .line 328
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 329
    check-cast p1, Lcom/dropbox/core/v2/team/DesktopClientSession;

    .line 330
    iget-object v2, p0, Lcom/dropbox/core/v2/team/DesktopClientSession;->sessionId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/DesktopClientSession;->sessionId:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/DesktopClientSession;->sessionId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/DesktopClientSession;->sessionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/team/DesktopClientSession;->hostName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/DesktopClientSession;->hostName:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/DesktopClientSession;->hostName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/DesktopClientSession;->hostName:Ljava/lang/String;

    .line 331
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/team/DesktopClientSession;->clientType:Lcom/dropbox/core/v2/team/DesktopPlatform;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/DesktopClientSession;->clientType:Lcom/dropbox/core/v2/team/DesktopPlatform;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/team/DesktopClientSession;->clientType:Lcom/dropbox/core/v2/team/DesktopPlatform;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/DesktopClientSession;->clientType:Lcom/dropbox/core/v2/team/DesktopPlatform;

    .line 332
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/team/DesktopPlatform;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/team/DesktopClientSession;->clientVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/DesktopClientSession;->clientVersion:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/team/DesktopClientSession;->clientVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/DesktopClientSession;->clientVersion:Ljava/lang/String;

    .line 333
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/team/DesktopClientSession;->platform:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/DesktopClientSession;->platform:Ljava/lang/String;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/team/DesktopClientSession;->platform:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/DesktopClientSession;->platform:Ljava/lang/String;

    .line 334
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_7
    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/DesktopClientSession;->isDeleteOnUnlinkSupported:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/team/DesktopClientSession;->isDeleteOnUnlinkSupported:Z

    if-ne v2, v3, :cond_b

    iget-object v2, p0, Lcom/dropbox/core/v2/team/DesktopClientSession;->ipAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/DesktopClientSession;->ipAddress:Ljava/lang/String;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/team/DesktopClientSession;->ipAddress:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/dropbox/core/v2/team/DesktopClientSession;->ipAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/DesktopClientSession;->ipAddress:Ljava/lang/String;

    .line 336
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_8
    iget-object v2, p0, Lcom/dropbox/core/v2/team/DesktopClientSession;->country:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/DesktopClientSession;->country:Ljava/lang/String;

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/team/DesktopClientSession;->country:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/dropbox/core/v2/team/DesktopClientSession;->country:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/DesktopClientSession;->country:Ljava/lang/String;

    .line 337
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_9
    iget-object v2, p0, Lcom/dropbox/core/v2/team/DesktopClientSession;->created:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/DesktopClientSession;->created:Ljava/util/Date;

    if-eq v2, v3, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/team/DesktopClientSession;->created:Ljava/util/Date;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/dropbox/core/v2/team/DesktopClientSession;->created:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/DesktopClientSession;->created:Ljava/util/Date;

    .line 338
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    iget-object v2, p0, Lcom/dropbox/core/v2/team/DesktopClientSession;->updated:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/DesktopClientSession;->updated:Ljava/util/Date;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/DesktopClientSession;->updated:Ljava/util/Date;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/dropbox/core/v2/team/DesktopClientSession;->updated:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/DesktopClientSession;->updated:Ljava/util/Date;

    .line 339
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_b
    move v0, v1

    goto/16 :goto_0

    :cond_c
    move v0, v1

    .line 343
    goto/16 :goto_0
.end method

.method public getClientType()Lcom/dropbox/core/v2/team/DesktopPlatform;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DesktopClientSession;->clientType:Lcom/dropbox/core/v2/team/DesktopPlatform;

    return-object v0
.end method

.method public getClientVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DesktopClientSession;->clientVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DesktopClientSession;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DesktopClientSession;->created:Ljava/util/Date;

    return-object v0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DesktopClientSession;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DesktopClientSession;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getIsDeleteOnUnlinkSupported()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/dropbox/core/v2/team/DesktopClientSession;->isDeleteOnUnlinkSupported:Z

    return v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DesktopClientSession;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DesktopClientSession;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DesktopClientSession;->updated:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 308
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/DesktopClientSession;->hostName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/DesktopClientSession;->clientType:Lcom/dropbox/core/v2/team/DesktopPlatform;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/DesktopClientSession;->clientVersion:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/DesktopClientSession;->platform:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/DesktopClientSession;->isDeleteOnUnlinkSupported:Z

    .line 313
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 308
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 315
    invoke-super {p0}, Lcom/dropbox/core/v2/team/DeviceSession;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 316
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 349
    sget-object v0, Lcom/dropbox/core/v2/team/DesktopClientSession$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/DesktopClientSession$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/DesktopClientSession$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 361
    sget-object v0, Lcom/dropbox/core/v2/team/DesktopClientSession$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/DesktopClientSession$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/DesktopClientSession$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
