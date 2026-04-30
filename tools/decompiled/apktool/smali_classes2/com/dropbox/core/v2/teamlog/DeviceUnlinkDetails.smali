.class public Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails;
.super Ljava/lang/Object;
.source "DeviceUnlinkDetails.java"


# instance fields
.field protected final deleteData:Z

.field protected final deviceInfo:Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;Z)V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'deviceInfo\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails;->deviceInfo:Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;

    .line 42
    iput-boolean p2, p0, Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails;->deleteData:Z

    .line 43
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 75
    if-ne p1, p0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v0

    .line 78
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 79
    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 83
    check-cast p1, Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails;

    .line 84
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails;->deviceInfo:Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails;->deviceInfo:Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails;->deviceInfo:Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails;->deviceInfo:Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-boolean v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails;->deleteData:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails;->deleteData:Z

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 89
    goto :goto_0
.end method

.method public getDeleteData()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails;->deleteData:Z

    return v0
.end method

.method public getDeviceInfo()Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails;->deviceInfo:Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails;->deviceInfo:Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails;->deleteData:Z

    .line 68
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 66
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 70
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
