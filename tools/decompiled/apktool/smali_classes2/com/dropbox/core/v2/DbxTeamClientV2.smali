.class public Lcom/dropbox/core/v2/DbxTeamClientV2;
.super Lcom/dropbox/core/v2/DbxTeamClientV2Base;
.source "DbxTeamClientV2.java"


# instance fields
.field private final accessToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/dropbox/core/DbxHost;->DEFAULT:Lcom/dropbox/core/DbxHost;

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/v2/DbxTeamClientV2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Lcom/dropbox/core/DbxHost;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Lcom/dropbox/core/DbxHost;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 53
    new-instance v0, Lcom/dropbox/core/v2/DbxTeamClientV2$DbxTeamRawClientV2;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/v2/DbxTeamClientV2$DbxTeamRawClientV2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxHost;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/DbxTeamClientV2$1;)V

    invoke-direct {p0, v0}, Lcom/dropbox/core/v2/DbxTeamClientV2Base;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    .line 54
    iput-object p2, p0, Lcom/dropbox/core/v2/DbxTeamClientV2;->accessToken:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Lcom/dropbox/core/DbxHost;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 72
    new-instance v0, Lcom/dropbox/core/v2/DbxTeamClientV2$DbxTeamRawClientV2;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/v2/DbxTeamClientV2$DbxTeamRawClientV2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxHost;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/DbxTeamClientV2$1;)V

    invoke-direct {p0, v0}, Lcom/dropbox/core/v2/DbxTeamClientV2Base;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    .line 73
    iput-object p2, p0, Lcom/dropbox/core/v2/DbxTeamClientV2;->accessToken:Ljava/lang/String;

    .line 74
    return-void
.end method


# virtual methods
.method public asMember(Ljava/lang/String;)Lcom/dropbox/core/v2/DbxClientV2;
    .locals 7

    .prologue
    .line 91
    if-nez p1, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'memberId\' should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/DbxTeamClientV2$DbxTeamRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/DbxTeamClientV2;->_client:Lcom/dropbox/core/v2/DbxRawClientV2;

    .line 96
    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getRequestConfig()Lcom/dropbox/core/DbxRequestConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/DbxTeamClientV2;->_client:Lcom/dropbox/core/v2/DbxRawClientV2;

    .line 97
    invoke-virtual {v2}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v2

    iget-object v3, p0, Lcom/dropbox/core/v2/DbxTeamClientV2;->accessToken:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/v2/DbxTeamClientV2;->_client:Lcom/dropbox/core/v2/DbxRawClientV2;

    .line 99
    invoke-virtual {v4}, Lcom/dropbox/core/v2/DbxRawClientV2;->getUserId()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/v2/DbxTeamClientV2$DbxTeamRawClientV2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxHost;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/DbxTeamClientV2$1;)V

    .line 102
    new-instance v1, Lcom/dropbox/core/v2/DbxClientV2;

    invoke-direct {v1, v0}, Lcom/dropbox/core/v2/DbxClientV2;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    return-object v1
.end method
