.class public Lcom/dropbox/core/v2/files/SearchBuilder;
.super Ljava/lang/Object;
.source "SearchBuilder.java"


# instance fields
.field private final _builder:Lcom/dropbox/core/v2/files/SearchArg$Builder;

.field private final _client:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/SearchArg$Builder;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    if-nez p1, :cond_0

    .line 29
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_client"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/files/SearchBuilder;->_client:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    .line 32
    if-nez p2, :cond_1

    .line 33
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_builder"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/files/SearchBuilder;->_builder:Lcom/dropbox/core/v2/files/SearchArg$Builder;

    .line 36
    return-void
.end method


# virtual methods
.method public start()Lcom/dropbox/core/v2/files/SearchResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/SearchErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SearchBuilder;->_builder:Lcom/dropbox/core/v2/files/SearchArg$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/files/SearchArg$Builder;->build()Lcom/dropbox/core/v2/files/SearchArg;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/dropbox/core/v2/files/SearchBuilder;->_client:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    invoke-virtual {v1, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->search(Lcom/dropbox/core/v2/files/SearchArg;)Lcom/dropbox/core/v2/files/SearchResult;

    move-result-object v0

    return-object v0
.end method

.method public withMaxResults(Ljava/lang/Long;)Lcom/dropbox/core/v2/files/SearchBuilder;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SearchBuilder;->_builder:Lcom/dropbox/core/v2/files/SearchArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/SearchArg$Builder;->withMaxResults(Ljava/lang/Long;)Lcom/dropbox/core/v2/files/SearchArg$Builder;

    .line 69
    return-object p0
.end method

.method public withMode(Lcom/dropbox/core/v2/files/SearchMode;)Lcom/dropbox/core/v2/files/SearchBuilder;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SearchBuilder;->_builder:Lcom/dropbox/core/v2/files/SearchArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/SearchArg$Builder;->withMode(Lcom/dropbox/core/v2/files/SearchMode;)Lcom/dropbox/core/v2/files/SearchArg$Builder;

    .line 90
    return-object p0
.end method

.method public withStart(Ljava/lang/Long;)Lcom/dropbox/core/v2/files/SearchBuilder;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SearchBuilder;->_builder:Lcom/dropbox/core/v2/files/SearchArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/SearchArg$Builder;->withStart(Ljava/lang/Long;)Lcom/dropbox/core/v2/files/SearchArg$Builder;

    .line 50
    return-object p0
.end method
