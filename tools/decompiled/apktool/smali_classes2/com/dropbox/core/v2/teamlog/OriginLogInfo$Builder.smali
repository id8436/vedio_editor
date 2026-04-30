.class public Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Builder;
.super Ljava/lang/Object;
.source "OriginLogInfo.java"


# instance fields
.field protected final accessMethod:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

.field protected geoLocation:Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo;

.field protected host:Lcom/dropbox/core/v2/teamlog/HostLogInfo;


# direct methods
.method protected constructor <init>(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    if-nez p1, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'accessMethod\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Builder;->accessMethod:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    .line 122
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Builder;->geoLocation:Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo;

    .line 123
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Builder;->host:Lcom/dropbox/core/v2/teamlog/HostLogInfo;

    .line 124
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/OriginLogInfo;
    .locals 4

    .prologue
    .line 157
    new-instance v0, Lcom/dropbox/core/v2/teamlog/OriginLogInfo;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Builder;->accessMethod:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Builder;->geoLocation:Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo;

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Builder;->host:Lcom/dropbox/core/v2/teamlog/HostLogInfo;

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/core/v2/teamlog/OriginLogInfo;-><init>(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo;Lcom/dropbox/core/v2/teamlog/HostLogInfo;)V

    return-object v0
.end method

.method public withGeoLocation(Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo;)Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Builder;
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Builder;->geoLocation:Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo;

    .line 135
    return-object p0
.end method

.method public withHost(Lcom/dropbox/core/v2/teamlog/HostLogInfo;)Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Builder;
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Builder;->host:Lcom/dropbox/core/v2/teamlog/HostLogInfo;

    .line 147
    return-object p0
.end method
