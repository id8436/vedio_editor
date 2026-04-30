.class public Lcom/dropbox/core/v2/teamlog/HostLogInfo$Builder;
.super Ljava/lang/Object;
.source "HostLogInfo.java"


# instance fields
.field protected hostId:Ljava/lang/Long;

.field protected hostName:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/HostLogInfo$Builder;->hostId:Ljava/lang/Long;

    .line 87
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/HostLogInfo$Builder;->hostName:Ljava/lang/String;

    .line 88
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/HostLogInfo;
    .locals 3

    .prologue
    .line 122
    new-instance v0, Lcom/dropbox/core/v2/teamlog/HostLogInfo;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/HostLogInfo$Builder;->hostId:Ljava/lang/Long;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/HostLogInfo$Builder;->hostName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/HostLogInfo;-><init>(Ljava/lang/Long;Ljava/lang/String;)V

    return-object v0
.end method

.method public withHostId(Ljava/lang/Long;)Lcom/dropbox/core/v2/teamlog/HostLogInfo$Builder;
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/HostLogInfo$Builder;->hostId:Ljava/lang/Long;

    .line 99
    return-object p0
.end method

.method public withHostName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/HostLogInfo$Builder;
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/HostLogInfo$Builder;->hostName:Ljava/lang/String;

    .line 112
    return-object p0
.end method
