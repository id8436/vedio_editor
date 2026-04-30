.class public Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Builder;
.super Ljava/lang/Object;
.source "DeviceLogInfo.java"


# instance fields
.field protected appVersion:Ljava/lang/String;

.field protected deviceId:Ljava/lang/String;

.field protected deviceType:Ljava/lang/String;

.field protected displayName:Ljava/lang/String;

.field protected ipAddress:Ljava/lang/String;

.field protected isEmmManaged:Ljava/lang/Boolean;

.field protected lastActivity:Ljava/lang/String;

.field protected macAddress:Ljava/lang/String;

.field protected osVersion:Ljava/lang/String;

.field protected platform:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Builder;->deviceId:Ljava/lang/String;

    .line 202
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Builder;->displayName:Ljava/lang/String;

    .line 203
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Builder;->isEmmManaged:Ljava/lang/Boolean;

    .line 204
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Builder;->platform:Ljava/lang/String;

    .line 205
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Builder;->macAddress:Ljava/lang/String;

    .line 206
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Builder;->osVersion:Ljava/lang/String;

    .line 207
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Builder;->deviceType:Ljava/lang/String;

    .line 208
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Builder;->ipAddress:Ljava/lang/String;

    .line 209
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Builder;->lastActivity:Ljava/lang/String;

    .line 210
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Builder;->appVersion:Ljava/lang/String;

    .line 211
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;
    .locals 11

    .prologue
    .line 350
    new-instance v0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Builder;->deviceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Builder;->displayName:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Builder;->isEmmManaged:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Builder;->platform:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Builder;->macAddress:Ljava/lang/String;

    iget-object v6, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Builder;->osVersion:Ljava/lang/String;

    iget-object v7, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Builder;->deviceType:Ljava/lang/String;

    iget-object v8, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Builder;->ipAddress:Ljava/lang/String;

    iget-object v9, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Builder;->lastActivity:Ljava/lang/String;

    iget-object v10, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Builder;->appVersion:Ljava/lang/String;

    invoke-direct/range {v0 .. v10}, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public withAppVersion(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Builder;
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Builder;->appVersion:Ljava/lang/String;

    .line 340
    return-object p0
.end method

.method public withDeviceId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Builder;
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Builder;->deviceId:Ljava/lang/String;

    .line 223
    return-object p0
.end method

.method public withDeviceType(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Builder;
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Builder;->deviceType:Ljava/lang/String;

    .line 301
    return-object p0
.end method

.method public withDisplayName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Builder;
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Builder;->displayName:Ljava/lang/String;

    .line 236
    return-object p0
.end method

.method public withIpAddress(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Builder;
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Builder;->ipAddress:Ljava/lang/String;

    .line 314
    return-object p0
.end method

.method public withIsEmmManaged(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Builder;
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Builder;->isEmmManaged:Ljava/lang/Boolean;

    .line 249
    return-object p0
.end method

.method public withLastActivity(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Builder;
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Builder;->lastActivity:Ljava/lang/String;

    .line 327
    return-object p0
.end method

.method public withMacAddress(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Builder;
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Builder;->macAddress:Ljava/lang/String;

    .line 275
    return-object p0
.end method

.method public withOsVersion(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Builder;
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Builder;->osVersion:Ljava/lang/String;

    .line 288
    return-object p0
.end method

.method public withPlatform(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Builder;
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Builder;->platform:Ljava/lang/String;

    .line 262
    return-object p0
.end method
