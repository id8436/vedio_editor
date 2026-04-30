.class public Lcom/dropbox/core/v2/sharing/AddFileMemberBuilder;
.super Ljava/lang/Object;
.source "AddFileMemberBuilder.java"


# instance fields
.field private final _builder:Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;

.field private final _client:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-nez p1, :cond_0

    .line 32
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_client"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberBuilder;->_client:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;

    .line 35
    if-nez p2, :cond_1

    .line 36
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_builder"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberBuilder;->_builder:Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;

    .line 39
    return-void
.end method


# virtual methods
.method public start()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FileMemberActionResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/AddFileMemberErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberBuilder;->_builder:Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;->build()Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberBuilder;->_client:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;

    invoke-virtual {v1, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->addFileMember(Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public withAccessLevel(Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/AddFileMemberBuilder;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberBuilder;->_builder:Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;->withAccessLevel(Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;

    .line 87
    return-object p0
.end method

.method public withAddMessageAsComment(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/AddFileMemberBuilder;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberBuilder;->_builder:Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;->withAddMessageAsComment(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;

    .line 103
    return-object p0
.end method

.method public withCustomMessage(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/AddFileMemberBuilder;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberBuilder;->_builder:Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;->withCustomMessage(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;

    .line 51
    return-object p0
.end method

.method public withQuiet(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/AddFileMemberBuilder;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberBuilder;->_builder:Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;->withQuiet(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;

    .line 67
    return-object p0
.end method
