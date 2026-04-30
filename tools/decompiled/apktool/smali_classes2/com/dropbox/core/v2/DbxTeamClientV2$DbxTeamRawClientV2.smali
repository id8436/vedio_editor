.class final Lcom/dropbox/core/v2/DbxTeamClientV2$DbxTeamRawClientV2;
.super Lcom/dropbox/core/v2/DbxRawClientV2;
.source "DbxTeamClientV2.java"


# instance fields
.field private final accessToken:Ljava/lang/String;

.field private final memberId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxHost;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 115
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/DbxTeamClientV2$DbxTeamRawClientV2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxHost;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxHost;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 119
    invoke-direct {p0, p1, p2, p4}, Lcom/dropbox/core/v2/DbxRawClientV2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxHost;Ljava/lang/String;)V

    .line 121
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "accessToken"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    iput-object p3, p0, Lcom/dropbox/core/v2/DbxTeamClientV2$DbxTeamRawClientV2;->accessToken:Ljava/lang/String;

    .line 124
    iput-object p5, p0, Lcom/dropbox/core/v2/DbxTeamClientV2$DbxTeamRawClientV2;->memberId:Ljava/lang/String;

    .line 125
    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxHost;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/DbxTeamClientV2$1;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct/range {p0 .. p5}, Lcom/dropbox/core/v2/DbxTeamClientV2$DbxTeamRawClientV2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxHost;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected addAuthHeaders(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxTeamClientV2$DbxTeamRawClientV2;->accessToken:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/dropbox/core/DbxRequestUtil;->addAuthHeader(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    .line 130
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxTeamClientV2$DbxTeamRawClientV2;->memberId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxTeamClientV2$DbxTeamRawClientV2;->memberId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/dropbox/core/DbxRequestUtil;->addSelectUserHeader(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    .line 133
    :cond_0
    return-void
.end method
