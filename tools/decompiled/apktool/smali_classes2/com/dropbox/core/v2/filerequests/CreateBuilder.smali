.class public Lcom/dropbox/core/v2/filerequests/CreateBuilder;
.super Ljava/lang/Object;
.source "CreateBuilder.java"


# instance fields
.field private final _builder:Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;

.field private final _client:Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;)V
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
    iput-object p1, p0, Lcom/dropbox/core/v2/filerequests/CreateBuilder;->_client:Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;

    .line 33
    if-nez p2, :cond_1

    .line 34
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_builder"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/filerequests/CreateBuilder;->_builder:Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;

    .line 37
    return-void
.end method


# virtual methods
.method public start()Lcom/dropbox/core/v2/filerequests/FileRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/filerequests/CreateFileRequestErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/CreateBuilder;->_builder:Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;->build()Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/dropbox/core/v2/filerequests/CreateBuilder;->_client:Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;

    invoke-virtual {v1, v0}, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;->create(Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;)Lcom/dropbox/core/v2/filerequests/FileRequest;

    move-result-object v0

    return-object v0
.end method

.method public withDeadline(Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;)Lcom/dropbox/core/v2/filerequests/CreateBuilder;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/CreateBuilder;->_builder:Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;->withDeadline(Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;)Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;

    .line 49
    return-object p0
.end method

.method public withOpen(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/filerequests/CreateBuilder;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/CreateBuilder;->_builder:Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;->withOpen(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;

    .line 66
    return-object p0
.end method
