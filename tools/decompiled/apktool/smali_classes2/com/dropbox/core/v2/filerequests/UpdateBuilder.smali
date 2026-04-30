.class public Lcom/dropbox/core/v2/filerequests/UpdateBuilder;
.super Ljava/lang/Object;
.source "UpdateBuilder.java"


# instance fields
.field private final _builder:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;

.field private final _client:Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-nez p1, :cond_0

    .line 30
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_client"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/filerequests/UpdateBuilder;->_client:Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;

    .line 33
    if-nez p2, :cond_1

    .line 34
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_builder"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/filerequests/UpdateBuilder;->_builder:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;

    .line 37
    return-void
.end method


# virtual methods
.method public start()Lcom/dropbox/core/v2/filerequests/FileRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/filerequests/UpdateFileRequestErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/UpdateBuilder;->_builder:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;->build()Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/dropbox/core/v2/filerequests/UpdateBuilder;->_client:Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;

    invoke-virtual {v1, v0}, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;->update(Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;)Lcom/dropbox/core/v2/filerequests/FileRequest;

    move-result-object v0

    return-object v0
.end method

.method public withDeadline(Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;)Lcom/dropbox/core/v2/filerequests/UpdateBuilder;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/UpdateBuilder;->_builder:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;->withDeadline(Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;)Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;

    .line 90
    return-object p0
.end method

.method public withDestination(Ljava/lang/String;)Lcom/dropbox/core/v2/filerequests/UpdateBuilder;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/UpdateBuilder;->_builder:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;->withDestination(Ljava/lang/String;)Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;

    .line 70
    return-object p0
.end method

.method public withOpen(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/filerequests/UpdateBuilder;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/UpdateBuilder;->_builder:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;->withOpen(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;

    .line 102
    return-object p0
.end method

.method public withTitle(Ljava/lang/String;)Lcom/dropbox/core/v2/filerequests/UpdateBuilder;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/UpdateBuilder;->_builder:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;->withTitle(Ljava/lang/String;)Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;

    .line 52
    return-object p0
.end method
