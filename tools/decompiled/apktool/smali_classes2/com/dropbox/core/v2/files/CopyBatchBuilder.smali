.class public Lcom/dropbox/core/v2/files/CopyBatchBuilder;
.super Ljava/lang/Object;
.source "CopyBatchBuilder.java"


# instance fields
.field private final _builder:Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;

.field private final _client:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    if-nez p1, :cond_0

    .line 31
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_client"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/files/CopyBatchBuilder;->_client:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    .line 34
    if-nez p2, :cond_1

    .line 35
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_builder"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/files/CopyBatchBuilder;->_builder:Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;

    .line 38
    return-void
.end method


# virtual methods
.method public start()Lcom/dropbox/core/v2/files/RelocationBatchLaunch;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/dropbox/core/v2/files/CopyBatchBuilder;->_builder:Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;->build()Lcom/dropbox/core/v2/files/RelocationBatchArg;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/dropbox/core/v2/files/CopyBatchBuilder;->_client:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    invoke-virtual {v1, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->copyBatch(Lcom/dropbox/core/v2/files/RelocationBatchArg;)Lcom/dropbox/core/v2/files/RelocationBatchLaunch;

    move-result-object v0

    return-object v0
.end method

.method public withAllowOwnershipTransfer(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/CopyBatchBuilder;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/dropbox/core/v2/files/CopyBatchBuilder;->_builder:Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;->withAllowOwnershipTransfer(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;

    .line 91
    return-object p0
.end method

.method public withAllowSharedFolder(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/CopyBatchBuilder;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dropbox/core/v2/files/CopyBatchBuilder;->_builder:Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;->withAllowSharedFolder(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;

    .line 58
    return-object p0
.end method

.method public withAutorename(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/CopyBatchBuilder;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/dropbox/core/v2/files/CopyBatchBuilder;->_builder:Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;->withAutorename(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;

    .line 74
    return-object p0
.end method
