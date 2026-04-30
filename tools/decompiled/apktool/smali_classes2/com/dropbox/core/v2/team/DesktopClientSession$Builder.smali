.class public Lcom/dropbox/core/v2/team/DesktopClientSession$Builder;
.super Lcom/dropbox/core/v2/team/DeviceSession$Builder;
.source "DesktopClientSession.java"


# instance fields
.field protected final clientType:Lcom/dropbox/core/v2/team/DesktopPlatform;

.field protected final clientVersion:Ljava/lang/String;

.field protected final hostName:Ljava/lang/String;

.field protected final isDeleteOnUnlinkSupported:Z

.field protected final platform:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/team/DesktopPlatform;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/team/DeviceSession$Builder;-><init>(Ljava/lang/String;)V

    .line 226
    if-nez p2, :cond_0

    .line 227
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'hostName\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_0
    iput-object p2, p0, Lcom/dropbox/core/v2/team/DesktopClientSession$Builder;->hostName:Ljava/lang/String;

    .line 230
    if-nez p3, :cond_1

    .line 231
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'clientType\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_1
    iput-object p3, p0, Lcom/dropbox/core/v2/team/DesktopClientSession$Builder;->clientType:Lcom/dropbox/core/v2/team/DesktopPlatform;

    .line 234
    if-nez p4, :cond_2

    .line 235
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'clientVersion\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_2
    iput-object p4, p0, Lcom/dropbox/core/v2/team/DesktopClientSession$Builder;->clientVersion:Ljava/lang/String;

    .line 238
    if-nez p5, :cond_3

    .line 239
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'platform\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_3
    iput-object p5, p0, Lcom/dropbox/core/v2/team/DesktopClientSession$Builder;->platform:Ljava/lang/String;

    .line 242
    iput-boolean p6, p0, Lcom/dropbox/core/v2/team/DesktopClientSession$Builder;->isDeleteOnUnlinkSupported:Z

    .line 243
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/team/DesktopClientSession;
    .locals 11

    .prologue
    .line 302
    new-instance v0, Lcom/dropbox/core/v2/team/DesktopClientSession;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DesktopClientSession$Builder;->sessionId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/DesktopClientSession$Builder;->hostName:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/team/DesktopClientSession$Builder;->clientType:Lcom/dropbox/core/v2/team/DesktopPlatform;

    iget-object v4, p0, Lcom/dropbox/core/v2/team/DesktopClientSession$Builder;->clientVersion:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/v2/team/DesktopClientSession$Builder;->platform:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/dropbox/core/v2/team/DesktopClientSession$Builder;->isDeleteOnUnlinkSupported:Z

    iget-object v7, p0, Lcom/dropbox/core/v2/team/DesktopClientSession$Builder;->ipAddress:Ljava/lang/String;

    iget-object v8, p0, Lcom/dropbox/core/v2/team/DesktopClientSession$Builder;->country:Ljava/lang/String;

    iget-object v9, p0, Lcom/dropbox/core/v2/team/DesktopClientSession$Builder;->created:Ljava/util/Date;

    iget-object v10, p0, Lcom/dropbox/core/v2/team/DesktopClientSession$Builder;->updated:Ljava/util/Date;

    invoke-direct/range {v0 .. v10}, Lcom/dropbox/core/v2/team/DesktopClientSession;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/team/DesktopPlatform;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/dropbox/core/v2/team/DeviceSession;
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/dropbox/core/v2/team/DesktopClientSession$Builder;->build()Lcom/dropbox/core/v2/team/DesktopClientSession;

    move-result-object v0

    return-object v0
.end method

.method public withCountry(Ljava/lang/String;)Lcom/dropbox/core/v2/team/DesktopClientSession$Builder;
    .locals 0

    .prologue
    .line 267
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/team/DeviceSession$Builder;->withCountry(Ljava/lang/String;)Lcom/dropbox/core/v2/team/DeviceSession$Builder;

    .line 268
    return-object p0
.end method

.method public bridge synthetic withCountry(Ljava/lang/String;)Lcom/dropbox/core/v2/team/DeviceSession$Builder;
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/DesktopClientSession$Builder;->withCountry(Ljava/lang/String;)Lcom/dropbox/core/v2/team/DesktopClientSession$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withCreated(Ljava/util/Date;)Lcom/dropbox/core/v2/team/DesktopClientSession$Builder;
    .locals 0

    .prologue
    .line 279
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/team/DeviceSession$Builder;->withCreated(Ljava/util/Date;)Lcom/dropbox/core/v2/team/DeviceSession$Builder;

    .line 280
    return-object p0
.end method

.method public bridge synthetic withCreated(Ljava/util/Date;)Lcom/dropbox/core/v2/team/DeviceSession$Builder;
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/DesktopClientSession$Builder;->withCreated(Ljava/util/Date;)Lcom/dropbox/core/v2/team/DesktopClientSession$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withIpAddress(Ljava/lang/String;)Lcom/dropbox/core/v2/team/DesktopClientSession$Builder;
    .locals 0

    .prologue
    .line 254
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/team/DeviceSession$Builder;->withIpAddress(Ljava/lang/String;)Lcom/dropbox/core/v2/team/DeviceSession$Builder;

    .line 255
    return-object p0
.end method

.method public bridge synthetic withIpAddress(Ljava/lang/String;)Lcom/dropbox/core/v2/team/DeviceSession$Builder;
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/DesktopClientSession$Builder;->withIpAddress(Ljava/lang/String;)Lcom/dropbox/core/v2/team/DesktopClientSession$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withUpdated(Ljava/util/Date;)Lcom/dropbox/core/v2/team/DesktopClientSession$Builder;
    .locals 0

    .prologue
    .line 291
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/team/DeviceSession$Builder;->withUpdated(Ljava/util/Date;)Lcom/dropbox/core/v2/team/DeviceSession$Builder;

    .line 292
    return-object p0
.end method

.method public bridge synthetic withUpdated(Ljava/util/Date;)Lcom/dropbox/core/v2/team/DeviceSession$Builder;
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/DesktopClientSession$Builder;->withUpdated(Ljava/util/Date;)Lcom/dropbox/core/v2/team/DesktopClientSession$Builder;

    move-result-object v0

    return-object v0
.end method
