.class public Lcom/dropbox/core/v2/team/DeviceSession$Builder;
.super Ljava/lang/Object;
.source "DeviceSession.java"


# instance fields
.field protected country:Ljava/lang/String;

.field protected created:Ljava/util/Date;

.field protected ipAddress:Ljava/lang/String;

.field protected final sessionId:Ljava/lang/String;

.field protected updated:Ljava/util/Date;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    if-nez p1, :cond_0

    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'sessionId\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/DeviceSession$Builder;->sessionId:Ljava/lang/String;

    .line 143
    iput-object v0, p0, Lcom/dropbox/core/v2/team/DeviceSession$Builder;->ipAddress:Ljava/lang/String;

    .line 144
    iput-object v0, p0, Lcom/dropbox/core/v2/team/DeviceSession$Builder;->country:Ljava/lang/String;

    .line 145
    iput-object v0, p0, Lcom/dropbox/core/v2/team/DeviceSession$Builder;->created:Ljava/util/Date;

    .line 146
    iput-object v0, p0, Lcom/dropbox/core/v2/team/DeviceSession$Builder;->updated:Ljava/util/Date;

    .line 147
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/team/DeviceSession;
    .locals 6

    .prologue
    .line 206
    new-instance v0, Lcom/dropbox/core/v2/team/DeviceSession;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DeviceSession$Builder;->sessionId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/DeviceSession$Builder;->ipAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/team/DeviceSession$Builder;->country:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/v2/team/DeviceSession$Builder;->created:Ljava/util/Date;

    iget-object v5, p0, Lcom/dropbox/core/v2/team/DeviceSession$Builder;->updated:Ljava/util/Date;

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/team/DeviceSession;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    return-object v0
.end method

.method public withCountry(Ljava/lang/String;)Lcom/dropbox/core/v2/team/DeviceSession$Builder;
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/dropbox/core/v2/team/DeviceSession$Builder;->country:Ljava/lang/String;

    .line 172
    return-object p0
.end method

.method public withCreated(Ljava/util/Date;)Lcom/dropbox/core/v2/team/DeviceSession$Builder;
    .locals 1

    .prologue
    .line 183
    invoke-static {p1}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/team/DeviceSession$Builder;->created:Ljava/util/Date;

    .line 184
    return-object p0
.end method

.method public withIpAddress(Ljava/lang/String;)Lcom/dropbox/core/v2/team/DeviceSession$Builder;
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/dropbox/core/v2/team/DeviceSession$Builder;->ipAddress:Ljava/lang/String;

    .line 159
    return-object p0
.end method

.method public withUpdated(Ljava/util/Date;)Lcom/dropbox/core/v2/team/DeviceSession$Builder;
    .locals 1

    .prologue
    .line 195
    invoke-static {p1}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/team/DeviceSession$Builder;->updated:Ljava/util/Date;

    .line 196
    return-object p0
.end method
