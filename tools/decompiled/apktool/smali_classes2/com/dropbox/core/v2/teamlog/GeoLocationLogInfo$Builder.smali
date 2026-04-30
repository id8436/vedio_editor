.class public Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo$Builder;
.super Ljava/lang/Object;
.source "GeoLocationLogInfo.java"


# instance fields
.field protected city:Ljava/lang/String;

.field protected country:Ljava/lang/String;

.field protected final ipAddress:Ljava/lang/String;

.field protected region:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    if-nez p1, :cond_0

    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'ipAddress\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo$Builder;->ipAddress:Ljava/lang/String;

    .line 132
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo$Builder;->city:Ljava/lang/String;

    .line 133
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo$Builder;->region:Ljava/lang/String;

    .line 134
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo$Builder;->country:Ljava/lang/String;

    .line 135
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo;
    .locals 5

    .prologue
    .line 180
    new-instance v0, Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo$Builder;->ipAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo$Builder;->city:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo$Builder;->region:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo$Builder;->country:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public withCity(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo$Builder;
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo$Builder;->city:Ljava/lang/String;

    .line 146
    return-object p0
.end method

.method public withCountry(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo$Builder;
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo$Builder;->country:Ljava/lang/String;

    .line 170
    return-object p0
.end method

.method public withRegion(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo$Builder;
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo$Builder;->region:Ljava/lang/String;

    .line 158
    return-object p0
.end method
