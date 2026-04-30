.class public Lcom/dropbox/core/v2/files/ListRevisionsBuilder;
.super Ljava/lang/Object;
.source "ListRevisionsBuilder.java"


# instance fields
.field private final _builder:Lcom/dropbox/core/v2/files/ListRevisionsArg$Builder;

.field private final _client:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/ListRevisionsArg$Builder;)V
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
    iput-object p1, p0, Lcom/dropbox/core/v2/files/ListRevisionsBuilder;->_client:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    .line 33
    if-nez p2, :cond_1

    .line 34
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_builder"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/files/ListRevisionsBuilder;->_builder:Lcom/dropbox/core/v2/files/ListRevisionsArg$Builder;

    .line 37
    return-void
.end method


# virtual methods
.method public start()Lcom/dropbox/core/v2/files/ListRevisionsResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ListRevisionsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ListRevisionsBuilder;->_builder:Lcom/dropbox/core/v2/files/ListRevisionsArg$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/files/ListRevisionsArg$Builder;->build()Lcom/dropbox/core/v2/files/ListRevisionsArg;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/dropbox/core/v2/files/ListRevisionsBuilder;->_client:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    invoke-virtual {v1, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->listRevisions(Lcom/dropbox/core/v2/files/ListRevisionsArg;)Lcom/dropbox/core/v2/files/ListRevisionsResult;

    move-result-object v0

    return-object v0
.end method

.method public withLimit(Ljava/lang/Long;)Lcom/dropbox/core/v2/files/ListRevisionsBuilder;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ListRevisionsBuilder;->_builder:Lcom/dropbox/core/v2/files/ListRevisionsArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/ListRevisionsArg$Builder;->withLimit(Ljava/lang/Long;)Lcom/dropbox/core/v2/files/ListRevisionsArg$Builder;

    .line 75
    return-object p0
.end method

.method public withMode(Lcom/dropbox/core/v2/files/ListRevisionsMode;)Lcom/dropbox/core/v2/files/ListRevisionsBuilder;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ListRevisionsBuilder;->_builder:Lcom/dropbox/core/v2/files/ListRevisionsArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/ListRevisionsArg$Builder;->withMode(Lcom/dropbox/core/v2/files/ListRevisionsMode;)Lcom/dropbox/core/v2/files/ListRevisionsArg$Builder;

    .line 56
    return-object p0
.end method
