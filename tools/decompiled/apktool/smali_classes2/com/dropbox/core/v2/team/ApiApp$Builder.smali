.class public Lcom/dropbox/core/v2/team/ApiApp$Builder;
.super Ljava/lang/Object;
.source "ApiApp.java"


# instance fields
.field protected final appId:Ljava/lang/String;

.field protected final appName:Ljava/lang/String;

.field protected final isAppFolder:Z

.field protected linked:Ljava/util/Date;

.field protected publisher:Ljava/lang/String;

.field protected publisherUrl:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    if-nez p1, :cond_0

    .line 167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'appId\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/ApiApp$Builder;->appId:Ljava/lang/String;

    .line 170
    if-nez p2, :cond_1

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'appName\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/team/ApiApp$Builder;->appName:Ljava/lang/String;

    .line 174
    iput-boolean p3, p0, Lcom/dropbox/core/v2/team/ApiApp$Builder;->isAppFolder:Z

    .line 175
    iput-object v0, p0, Lcom/dropbox/core/v2/team/ApiApp$Builder;->publisher:Ljava/lang/String;

    .line 176
    iput-object v0, p0, Lcom/dropbox/core/v2/team/ApiApp$Builder;->publisherUrl:Ljava/lang/String;

    .line 177
    iput-object v0, p0, Lcom/dropbox/core/v2/team/ApiApp$Builder;->linked:Ljava/util/Date;

    .line 178
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/team/ApiApp;
    .locals 7

    .prologue
    .line 223
    new-instance v0, Lcom/dropbox/core/v2/team/ApiApp;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/ApiApp$Builder;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ApiApp$Builder;->appName:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/dropbox/core/v2/team/ApiApp$Builder;->isAppFolder:Z

    iget-object v4, p0, Lcom/dropbox/core/v2/team/ApiApp$Builder;->publisher:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/v2/team/ApiApp$Builder;->publisherUrl:Ljava/lang/String;

    iget-object v6, p0, Lcom/dropbox/core/v2/team/ApiApp$Builder;->linked:Ljava/util/Date;

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/v2/team/ApiApp;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    return-object v0
.end method

.method public withLinked(Ljava/util/Date;)Lcom/dropbox/core/v2/team/ApiApp$Builder;
    .locals 1

    .prologue
    .line 212
    invoke-static {p1}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/team/ApiApp$Builder;->linked:Ljava/util/Date;

    .line 213
    return-object p0
.end method

.method public withPublisher(Ljava/lang/String;)Lcom/dropbox/core/v2/team/ApiApp$Builder;
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/dropbox/core/v2/team/ApiApp$Builder;->publisher:Ljava/lang/String;

    .line 189
    return-object p0
.end method

.method public withPublisherUrl(Ljava/lang/String;)Lcom/dropbox/core/v2/team/ApiApp$Builder;
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/dropbox/core/v2/team/ApiApp$Builder;->publisherUrl:Ljava/lang/String;

    .line 201
    return-object p0
.end method
