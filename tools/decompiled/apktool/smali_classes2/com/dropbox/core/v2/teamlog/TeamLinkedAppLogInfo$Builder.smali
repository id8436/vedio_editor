.class public Lcom/dropbox/core/v2/teamlog/TeamLinkedAppLogInfo$Builder;
.super Lcom/dropbox/core/v2/teamlog/AppLogInfo$Builder;
.source "TeamLinkedAppLogInfo.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/dropbox/core/v2/teamlog/AppLogInfo$Builder;-><init>()V

    .line 80
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/dropbox/core/v2/teamlog/AppLogInfo;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/dropbox/core/v2/teamlog/TeamLinkedAppLogInfo$Builder;->build()Lcom/dropbox/core/v2/teamlog/TeamLinkedAppLogInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/dropbox/core/v2/teamlog/TeamLinkedAppLogInfo;
    .locals 3

    .prologue
    .line 115
    new-instance v0, Lcom/dropbox/core/v2/teamlog/TeamLinkedAppLogInfo;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/TeamLinkedAppLogInfo$Builder;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamLinkedAppLogInfo$Builder;->displayName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/TeamLinkedAppLogInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic withAppId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/AppLogInfo$Builder;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/TeamLinkedAppLogInfo$Builder;->withAppId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/TeamLinkedAppLogInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withAppId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/TeamLinkedAppLogInfo$Builder;
    .locals 0

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/teamlog/AppLogInfo$Builder;->withAppId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/AppLogInfo$Builder;

    .line 92
    return-object p0
.end method

.method public bridge synthetic withDisplayName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/AppLogInfo$Builder;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/TeamLinkedAppLogInfo$Builder;->withDisplayName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/TeamLinkedAppLogInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withDisplayName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/TeamLinkedAppLogInfo$Builder;
    .locals 0

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/teamlog/AppLogInfo$Builder;->withDisplayName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/AppLogInfo$Builder;

    .line 105
    return-object p0
.end method
