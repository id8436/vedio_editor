.class public Lcom/dropbox/core/v2/files/GetMetadataBuilder;
.super Ljava/lang/Object;
.source "GetMetadataBuilder.java"


# instance fields
.field private final _builder:Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;

.field private final _client:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;)V
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
    iput-object p1, p0, Lcom/dropbox/core/v2/files/GetMetadataBuilder;->_client:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    .line 33
    if-nez p2, :cond_1

    .line 34
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_builder"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/files/GetMetadataBuilder;->_builder:Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;

    .line 37
    return-void
.end method


# virtual methods
.method public start()Lcom/dropbox/core/v2/files/Metadata;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/GetMetadataErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetMetadataBuilder;->_builder:Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;->build()Lcom/dropbox/core/v2/files/GetMetadataArg;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/dropbox/core/v2/files/GetMetadataBuilder;->_client:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    invoke-virtual {v1, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->getMetadata(Lcom/dropbox/core/v2/files/GetMetadataArg;)Lcom/dropbox/core/v2/files/Metadata;

    move-result-object v0

    return-object v0
.end method

.method public withIncludeDeleted(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/GetMetadataBuilder;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetMetadataBuilder;->_builder:Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;->withIncludeDeleted(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;

    .line 68
    return-object p0
.end method

.method public withIncludeHasExplicitSharedMembers(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/GetMetadataBuilder;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetMetadataBuilder;->_builder:Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;->withIncludeHasExplicitSharedMembers(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;

    .line 84
    return-object p0
.end method

.method public withIncludeMediaInfo(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/GetMetadataBuilder;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetMetadataBuilder;->_builder:Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;->withIncludeMediaInfo(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;

    .line 52
    return-object p0
.end method
