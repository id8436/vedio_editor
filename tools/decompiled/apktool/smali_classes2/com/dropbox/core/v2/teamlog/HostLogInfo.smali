.class public Lcom/dropbox/core/v2/teamlog/HostLogInfo;
.super Ljava/lang/Object;
.source "HostLogInfo.java"


# instance fields
.field protected final hostId:Ljava/lang/Long;

.field protected final hostName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, v0, v0}, Lcom/dropbox/core/v2/teamlog/HostLogInfo;-><init>(Ljava/lang/Long;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/HostLogInfo;->hostId:Ljava/lang/Long;

    .line 38
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/HostLogInfo;->hostName:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static newBuilder()Lcom/dropbox/core/v2/teamlog/HostLogInfo$Builder;
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/dropbox/core/v2/teamlog/HostLogInfo$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/HostLogInfo$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 137
    if-ne p1, p0, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v0

    .line 140
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 141
    goto :goto_0

    .line 144
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 145
    check-cast p1, Lcom/dropbox/core/v2/teamlog/HostLogInfo;

    .line 146
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/HostLogInfo;->hostId:Ljava/lang/Long;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/HostLogInfo;->hostId:Ljava/lang/Long;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/HostLogInfo;->hostId:Ljava/lang/Long;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/HostLogInfo;->hostId:Ljava/lang/Long;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/HostLogInfo;->hostId:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/HostLogInfo;->hostName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/HostLogInfo;->hostName:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/HostLogInfo;->hostName:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/HostLogInfo;->hostName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/HostLogInfo;->hostName:Ljava/lang/String;

    .line 147
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 151
    goto :goto_0
.end method

.method public getHostId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/HostLogInfo;->hostId:Ljava/lang/Long;

    return-object v0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/HostLogInfo;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 128
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/HostLogInfo;->hostId:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/HostLogInfo;->hostName:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 132
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    sget-object v0, Lcom/dropbox/core/v2/teamlog/HostLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/HostLogInfo$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/HostLogInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 169
    sget-object v0, Lcom/dropbox/core/v2/teamlog/HostLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/HostLogInfo$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/HostLogInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
