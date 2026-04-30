.class public Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;
.super Ljava/lang/Object;
.source "DeviceLogInfo.java"


# instance fields
.field protected final appVersion:Ljava/lang/String;

.field protected final deviceId:Ljava/lang/String;

.field protected final deviceType:Ljava/lang/String;

.field protected final displayName:Ljava/lang/String;

.field protected final ipAddress:Ljava/lang/String;

.field protected final isEmmManaged:Ljava/lang/Boolean;

.field protected final lastActivity:Ljava/lang/String;

.field protected final macAddress:Ljava/lang/String;

.field protected final osVersion:Ljava/lang/String;

.field protected final platform:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 81
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    move-object v9, v1

    move-object v10, v1

    invoke-direct/range {v0 .. v10}, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->deviceId:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->displayName:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->isEmmManaged:Ljava/lang/Boolean;

    .line 66
    iput-object p4, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->platform:Ljava/lang/String;

    .line 67
    iput-object p5, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->macAddress:Ljava/lang/String;

    .line 68
    iput-object p6, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->osVersion:Ljava/lang/String;

    .line 69
    iput-object p7, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->deviceType:Ljava/lang/String;

    .line 70
    iput-object p8, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->ipAddress:Ljava/lang/String;

    .line 71
    iput-object p9, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->lastActivity:Ljava/lang/String;

    .line 72
    iput-object p10, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->appVersion:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public static newBuilder()Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Builder;
    .locals 1

    .prologue
    .line 181
    new-instance v0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 373
    if-ne p1, p0, :cond_1

    .line 395
    :cond_0
    :goto_0
    return v0

    .line 376
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 377
    goto :goto_0

    .line 380
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 381
    check-cast p1, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;

    .line 382
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->deviceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->deviceId:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->deviceId:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->deviceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->displayName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->displayName:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->displayName:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->displayName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->displayName:Ljava/lang/String;

    .line 383
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->isEmmManaged:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->isEmmManaged:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->isEmmManaged:Ljava/lang/Boolean;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->isEmmManaged:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->isEmmManaged:Ljava/lang/Boolean;

    .line 384
    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->platform:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->platform:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->platform:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->platform:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->platform:Ljava/lang/String;

    .line 385
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->macAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->macAddress:Ljava/lang/String;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->macAddress:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->macAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->macAddress:Ljava/lang/String;

    .line 386
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->osVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->osVersion:Ljava/lang/String;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->osVersion:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->osVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->osVersion:Ljava/lang/String;

    .line 387
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_8
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->deviceType:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->deviceType:Ljava/lang/String;

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->deviceType:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->deviceType:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->deviceType:Ljava/lang/String;

    .line 388
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_9
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->ipAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->ipAddress:Ljava/lang/String;

    if-eq v2, v3, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->ipAddress:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->ipAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->ipAddress:Ljava/lang/String;

    .line 389
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_a
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->lastActivity:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->lastActivity:Ljava/lang/String;

    if-eq v2, v3, :cond_b

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->lastActivity:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->lastActivity:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->lastActivity:Ljava/lang/String;

    .line 390
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->appVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->appVersion:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->appVersion:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->appVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->appVersion:Ljava/lang/String;

    .line 391
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_c
    move v0, v1

    goto/16 :goto_0

    :cond_d
    move v0, v1

    .line 395
    goto/16 :goto_0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getIsEmmManaged()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->isEmmManaged:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLastActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->lastActivity:Ljava/lang/String;

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->macAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 356
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->deviceId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->displayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->isEmmManaged:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->platform:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->macAddress:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->osVersion:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->deviceType:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->ipAddress:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->lastActivity:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->appVersion:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 368
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 401
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 413
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
