.class public Lcom/dropbox/core/v2/teamlog/OriginLogInfo;
.super Ljava/lang/Object;
.source "OriginLogInfo.java"


# instance fields
.field protected final accessMethod:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

.field protected final geoLocation:Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo;

.field protected final host:Lcom/dropbox/core/v2/teamlog/HostLogInfo;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0, v0}, Lcom/dropbox/core/v2/teamlog/OriginLogInfo;-><init>(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo;Lcom/dropbox/core/v2/teamlog/HostLogInfo;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo;Lcom/dropbox/core/v2/teamlog/HostLogInfo;)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/OriginLogInfo;->geoLocation:Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo;

    .line 44
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/OriginLogInfo;->host:Lcom/dropbox/core/v2/teamlog/HostLogInfo;

    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'accessMethod\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/OriginLogInfo;->accessMethod:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    .line 49
    return-void
.end method

.method public static newBuilder(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;)Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Builder;
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Builder;-><init>(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 173
    if-ne p1, p0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return v0

    .line 176
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 177
    goto :goto_0

    .line 180
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 181
    check-cast p1, Lcom/dropbox/core/v2/teamlog/OriginLogInfo;

    .line 182
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/OriginLogInfo;->accessMethod:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/OriginLogInfo;->accessMethod:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/OriginLogInfo;->accessMethod:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/OriginLogInfo;->accessMethod:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/OriginLogInfo;->geoLocation:Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/OriginLogInfo;->geoLocation:Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/OriginLogInfo;->geoLocation:Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/OriginLogInfo;->geoLocation:Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/OriginLogInfo;->geoLocation:Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo;

    .line 183
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/OriginLogInfo;->host:Lcom/dropbox/core/v2/teamlog/HostLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/OriginLogInfo;->host:Lcom/dropbox/core/v2/teamlog/HostLogInfo;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/OriginLogInfo;->host:Lcom/dropbox/core/v2/teamlog/HostLogInfo;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/OriginLogInfo;->host:Lcom/dropbox/core/v2/teamlog/HostLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/OriginLogInfo;->host:Lcom/dropbox/core/v2/teamlog/HostLogInfo;

    .line 184
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/HostLogInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 188
    goto :goto_0
.end method

.method public getAccessMethod()Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/OriginLogInfo;->accessMethod:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    return-object v0
.end method

.method public getGeoLocation()Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/OriginLogInfo;->geoLocation:Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo;

    return-object v0
.end method

.method public getHost()Lcom/dropbox/core/v2/teamlog/HostLogInfo;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/OriginLogInfo;->host:Lcom/dropbox/core/v2/teamlog/HostLogInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 163
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/OriginLogInfo;->geoLocation:Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/OriginLogInfo;->host:Lcom/dropbox/core/v2/teamlog/HostLogInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/OriginLogInfo;->accessMethod:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 168
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 194
    sget-object v0, Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 206
    sget-object v0, Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
