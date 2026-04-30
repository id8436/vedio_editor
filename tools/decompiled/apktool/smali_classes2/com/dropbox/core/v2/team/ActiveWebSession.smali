.class public Lcom/dropbox/core/v2/team/ActiveWebSession;
.super Lcom/dropbox/core/v2/team/DeviceSession;
.source "ActiveWebSession.java"


# instance fields
.field protected final browser:Ljava/lang/String;

.field protected final expires:Ljava/util/Date;

.field protected final os:Ljava/lang/String;

.field protected final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 88
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-direct/range {v0 .. v9}, Lcom/dropbox/core/v2/team/ActiveWebSession;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V
    .locals 6

    .prologue
    .line 55
    move-object v0, p0

    move-object v1, p1

    move-object v2, p5

    move-object v3, p6

    move-object v4, p7

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/team/DeviceSession;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    .line 56
    if-nez p2, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'userAgent\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    iput-object p2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->userAgent:Ljava/lang/String;

    .line 60
    if-nez p3, :cond_1

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'os\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_1
    iput-object p3, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->os:Ljava/lang/String;

    .line 64
    if-nez p4, :cond_2

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'browser\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_2
    iput-object p4, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->browser:Ljava/lang/String;

    .line 68
    invoke-static {p9}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->expires:Ljava/util/Date;

    .line 69
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;
    .locals 1

    .prologue
    .line 189
    new-instance v0, Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 306
    if-ne p1, p0, :cond_1

    .line 327
    :cond_0
    :goto_0
    return v0

    .line 309
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 310
    goto :goto_0

    .line 313
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 314
    check-cast p1, Lcom/dropbox/core/v2/team/ActiveWebSession;

    .line 315
    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->sessionId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->sessionId:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->sessionId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->sessionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->userAgent:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->userAgent:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->userAgent:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->userAgent:Ljava/lang/String;

    .line 316
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->os:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->os:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->os:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->os:Ljava/lang/String;

    .line 317
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->browser:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->browser:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->browser:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->browser:Ljava/lang/String;

    .line 318
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->ipAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->ipAddress:Ljava/lang/String;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->ipAddress:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->ipAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->ipAddress:Ljava/lang/String;

    .line 319
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->country:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->country:Ljava/lang/String;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->country:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->country:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->country:Ljava/lang/String;

    .line 320
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_8
    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->created:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->created:Ljava/util/Date;

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->created:Ljava/util/Date;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->created:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->created:Ljava/util/Date;

    .line 321
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_9
    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->updated:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->updated:Ljava/util/Date;

    if-eq v2, v3, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->updated:Ljava/util/Date;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->updated:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->updated:Ljava/util/Date;

    .line 322
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->expires:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->expires:Ljava/util/Date;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->expires:Ljava/util/Date;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->expires:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->expires:Ljava/util/Date;

    .line 323
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_b
    move v0, v1

    goto/16 :goto_0

    :cond_c
    move v0, v1

    .line 327
    goto/16 :goto_0
.end method

.method public getBrowser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->browser:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->created:Ljava/util/Date;

    return-object v0
.end method

.method public getExpires()Ljava/util/Date;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->expires:Ljava/util/Date;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->os:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->updated:Ljava/util/Date;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 294
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->userAgent:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->os:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->browser:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->expires:Ljava/util/Date;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 300
    invoke-super {p0}, Lcom/dropbox/core/v2/team/DeviceSession;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 301
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 333
    sget-object v0, Lcom/dropbox/core/v2/team/ActiveWebSession$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/ActiveWebSession$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/ActiveWebSession$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 345
    sget-object v0, Lcom/dropbox/core/v2/team/ActiveWebSession$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/ActiveWebSession$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/ActiveWebSession$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
