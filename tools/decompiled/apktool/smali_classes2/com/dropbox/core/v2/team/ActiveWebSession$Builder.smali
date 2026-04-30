.class public Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;
.super Lcom/dropbox/core/v2/team/DeviceSession$Builder;
.source "ActiveWebSession.java"


# instance fields
.field protected final browser:Ljava/lang/String;

.field protected expires:Ljava/util/Date;

.field protected final os:Ljava/lang/String;

.field protected final userAgent:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/team/DeviceSession$Builder;-><init>(Ljava/lang/String;)V

    .line 204
    if-nez p2, :cond_0

    .line 205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'userAgent\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    iput-object p2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;->userAgent:Ljava/lang/String;

    .line 208
    if-nez p3, :cond_1

    .line 209
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'os\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_1
    iput-object p3, p0, Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;->os:Ljava/lang/String;

    .line 212
    if-nez p4, :cond_2

    .line 213
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'browser\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_2
    iput-object p4, p0, Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;->browser:Ljava/lang/String;

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;->expires:Ljava/util/Date;

    .line 217
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/team/ActiveWebSession;
    .locals 10

    .prologue
    .line 288
    new-instance v0, Lcom/dropbox/core/v2/team/ActiveWebSession;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;->sessionId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;->userAgent:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;->os:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;->browser:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;->ipAddress:Ljava/lang/String;

    iget-object v6, p0, Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;->country:Ljava/lang/String;

    iget-object v7, p0, Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;->created:Ljava/util/Date;

    iget-object v8, p0, Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;->updated:Ljava/util/Date;

    iget-object v9, p0, Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;->expires:Ljava/util/Date;

    invoke-direct/range {v0 .. v9}, Lcom/dropbox/core/v2/team/ActiveWebSession;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/dropbox/core/v2/team/DeviceSession;
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;->build()Lcom/dropbox/core/v2/team/ActiveWebSession;

    move-result-object v0

    return-object v0
.end method

.method public withCountry(Ljava/lang/String;)Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;
    .locals 0

    .prologue
    .line 253
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/team/DeviceSession$Builder;->withCountry(Ljava/lang/String;)Lcom/dropbox/core/v2/team/DeviceSession$Builder;

    .line 254
    return-object p0
.end method

.method public bridge synthetic withCountry(Ljava/lang/String;)Lcom/dropbox/core/v2/team/DeviceSession$Builder;
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;->withCountry(Ljava/lang/String;)Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withCreated(Ljava/util/Date;)Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;
    .locals 0

    .prologue
    .line 265
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/team/DeviceSession$Builder;->withCreated(Ljava/util/Date;)Lcom/dropbox/core/v2/team/DeviceSession$Builder;

    .line 266
    return-object p0
.end method

.method public bridge synthetic withCreated(Ljava/util/Date;)Lcom/dropbox/core/v2/team/DeviceSession$Builder;
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;->withCreated(Ljava/util/Date;)Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withExpires(Ljava/util/Date;)Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;
    .locals 1

    .prologue
    .line 227
    invoke-static {p1}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;->expires:Ljava/util/Date;

    .line 228
    return-object p0
.end method

.method public withIpAddress(Ljava/lang/String;)Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;
    .locals 0

    .prologue
    .line 240
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/team/DeviceSession$Builder;->withIpAddress(Ljava/lang/String;)Lcom/dropbox/core/v2/team/DeviceSession$Builder;

    .line 241
    return-object p0
.end method

.method public bridge synthetic withIpAddress(Ljava/lang/String;)Lcom/dropbox/core/v2/team/DeviceSession$Builder;
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;->withIpAddress(Ljava/lang/String;)Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withUpdated(Ljava/util/Date;)Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;
    .locals 0

    .prologue
    .line 277
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/team/DeviceSession$Builder;->withUpdated(Ljava/util/Date;)Lcom/dropbox/core/v2/team/DeviceSession$Builder;

    .line 278
    return-object p0
.end method

.method public bridge synthetic withUpdated(Ljava/util/Date;)Lcom/dropbox/core/v2/team/DeviceSession$Builder;
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;->withUpdated(Ljava/util/Date;)Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;

    move-result-object v0

    return-object v0
.end method
