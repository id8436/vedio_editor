.class public Lcom/dropbox/core/v2/team/MobileClientSession$Builder;
.super Lcom/dropbox/core/v2/team/DeviceSession$Builder;
.source "MobileClientSession.java"


# instance fields
.field protected final clientType:Lcom/dropbox/core/v2/team/MobileClientPlatform;

.field protected clientVersion:Ljava/lang/String;

.field protected final deviceName:Ljava/lang/String;

.field protected lastCarrier:Ljava/lang/String;

.field protected osVersion:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/team/MobileClientPlatform;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 202
    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/team/DeviceSession$Builder;-><init>(Ljava/lang/String;)V

    .line 203
    if-nez p2, :cond_0

    .line 204
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'deviceName\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_0
    iput-object p2, p0, Lcom/dropbox/core/v2/team/MobileClientSession$Builder;->deviceName:Ljava/lang/String;

    .line 207
    if-nez p3, :cond_1

    .line 208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'clientType\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_1
    iput-object p3, p0, Lcom/dropbox/core/v2/team/MobileClientSession$Builder;->clientType:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    .line 211
    iput-object v0, p0, Lcom/dropbox/core/v2/team/MobileClientSession$Builder;->clientVersion:Ljava/lang/String;

    .line 212
    iput-object v0, p0, Lcom/dropbox/core/v2/team/MobileClientSession$Builder;->osVersion:Ljava/lang/String;

    .line 213
    iput-object v0, p0, Lcom/dropbox/core/v2/team/MobileClientSession$Builder;->lastCarrier:Ljava/lang/String;

    .line 214
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/dropbox/core/v2/team/DeviceSession;
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/dropbox/core/v2/team/MobileClientSession$Builder;->build()Lcom/dropbox/core/v2/team/MobileClientSession;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/dropbox/core/v2/team/MobileClientSession;
    .locals 11

    .prologue
    .line 309
    new-instance v0, Lcom/dropbox/core/v2/team/MobileClientSession;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/MobileClientSession$Builder;->sessionId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MobileClientSession$Builder;->deviceName:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MobileClientSession$Builder;->clientType:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    iget-object v4, p0, Lcom/dropbox/core/v2/team/MobileClientSession$Builder;->ipAddress:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/v2/team/MobileClientSession$Builder;->country:Ljava/lang/String;

    iget-object v6, p0, Lcom/dropbox/core/v2/team/MobileClientSession$Builder;->created:Ljava/util/Date;

    iget-object v7, p0, Lcom/dropbox/core/v2/team/MobileClientSession$Builder;->updated:Ljava/util/Date;

    iget-object v8, p0, Lcom/dropbox/core/v2/team/MobileClientSession$Builder;->clientVersion:Ljava/lang/String;

    iget-object v9, p0, Lcom/dropbox/core/v2/team/MobileClientSession$Builder;->osVersion:Ljava/lang/String;

    iget-object v10, p0, Lcom/dropbox/core/v2/team/MobileClientSession$Builder;->lastCarrier:Ljava/lang/String;

    invoke-direct/range {v0 .. v10}, Lcom/dropbox/core/v2/team/MobileClientSession;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/team/MobileClientPlatform;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public withClientVersion(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MobileClientSession$Builder;
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MobileClientSession$Builder;->clientVersion:Ljava/lang/String;

    .line 225
    return-object p0
.end method

.method public bridge synthetic withCountry(Ljava/lang/String;)Lcom/dropbox/core/v2/team/DeviceSession$Builder;
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/MobileClientSession$Builder;->withCountry(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MobileClientSession$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withCountry(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MobileClientSession$Builder;
    .locals 0

    .prologue
    .line 274
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/team/DeviceSession$Builder;->withCountry(Ljava/lang/String;)Lcom/dropbox/core/v2/team/DeviceSession$Builder;

    .line 275
    return-object p0
.end method

.method public bridge synthetic withCreated(Ljava/util/Date;)Lcom/dropbox/core/v2/team/DeviceSession$Builder;
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/MobileClientSession$Builder;->withCreated(Ljava/util/Date;)Lcom/dropbox/core/v2/team/MobileClientSession$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withCreated(Ljava/util/Date;)Lcom/dropbox/core/v2/team/MobileClientSession$Builder;
    .locals 0

    .prologue
    .line 286
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/team/DeviceSession$Builder;->withCreated(Ljava/util/Date;)Lcom/dropbox/core/v2/team/DeviceSession$Builder;

    .line 287
    return-object p0
.end method

.method public bridge synthetic withIpAddress(Ljava/lang/String;)Lcom/dropbox/core/v2/team/DeviceSession$Builder;
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/MobileClientSession$Builder;->withIpAddress(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MobileClientSession$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withIpAddress(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MobileClientSession$Builder;
    .locals 0

    .prologue
    .line 261
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/team/DeviceSession$Builder;->withIpAddress(Ljava/lang/String;)Lcom/dropbox/core/v2/team/DeviceSession$Builder;

    .line 262
    return-object p0
.end method

.method public withLastCarrier(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MobileClientSession$Builder;
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MobileClientSession$Builder;->lastCarrier:Ljava/lang/String;

    .line 249
    return-object p0
.end method

.method public withOsVersion(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MobileClientSession$Builder;
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MobileClientSession$Builder;->osVersion:Ljava/lang/String;

    .line 237
    return-object p0
.end method

.method public bridge synthetic withUpdated(Ljava/util/Date;)Lcom/dropbox/core/v2/team/DeviceSession$Builder;
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/MobileClientSession$Builder;->withUpdated(Ljava/util/Date;)Lcom/dropbox/core/v2/team/MobileClientSession$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withUpdated(Ljava/util/Date;)Lcom/dropbox/core/v2/team/MobileClientSession$Builder;
    .locals 0

    .prologue
    .line 298
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/team/DeviceSession$Builder;->withUpdated(Ljava/util/Date;)Lcom/dropbox/core/v2/team/DeviceSession$Builder;

    .line 299
    return-object p0
.end method
