.class public Lcom/dropbox/core/v2/teamlog/AppLogInfo$Builder;
.super Ljava/lang/Object;
.source "AppLogInfo.java"


# instance fields
.field protected appId:Ljava/lang/String;

.field protected displayName:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/AppLogInfo$Builder;->appId:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/AppLogInfo$Builder;->displayName:Ljava/lang/String;

    .line 89
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/AppLogInfo;
    .locals 3

    .prologue
    .line 124
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AppLogInfo;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/AppLogInfo$Builder;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AppLogInfo$Builder;->displayName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/AppLogInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public withAppId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/AppLogInfo$Builder;
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/AppLogInfo$Builder;->appId:Ljava/lang/String;

    .line 101
    return-object p0
.end method

.method public withDisplayName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/AppLogInfo$Builder;
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/AppLogInfo$Builder;->displayName:Ljava/lang/String;

    .line 114
    return-object p0
.end method
