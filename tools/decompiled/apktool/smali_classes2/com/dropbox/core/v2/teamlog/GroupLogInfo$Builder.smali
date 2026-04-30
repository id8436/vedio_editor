.class public Lcom/dropbox/core/v2/teamlog/GroupLogInfo$Builder;
.super Ljava/lang/Object;
.source "GroupLogInfo.java"


# instance fields
.field protected final displayName:Ljava/lang/String;

.field protected externalId:Ljava/lang/String;

.field protected groupId:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    if-nez p1, :cond_0

    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'displayName\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/GroupLogInfo$Builder;->displayName:Ljava/lang/String;

    .line 121
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/GroupLogInfo$Builder;->groupId:Ljava/lang/String;

    .line 122
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/GroupLogInfo$Builder;->externalId:Ljava/lang/String;

    .line 123
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/GroupLogInfo;
    .locals 4

    .prologue
    .line 158
    new-instance v0, Lcom/dropbox/core/v2/teamlog/GroupLogInfo;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/GroupLogInfo$Builder;->displayName:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/GroupLogInfo$Builder;->groupId:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/GroupLogInfo$Builder;->externalId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/core/v2/teamlog/GroupLogInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public withExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/GroupLogInfo$Builder;
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/GroupLogInfo$Builder;->externalId:Ljava/lang/String;

    .line 148
    return-object p0
.end method

.method public withGroupId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/GroupLogInfo$Builder;
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/GroupLogInfo$Builder;->groupId:Ljava/lang/String;

    .line 135
    return-object p0
.end method
