.class public Lcom/dropbox/core/v2/files/AlphaGetMetadataBuilder;
.super Ljava/lang/Object;
.source "AlphaGetMetadataBuilder.java"


# instance fields
.field private final _builder:Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Builder;

.field private final _client:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Builder;)V
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
    iput-object p1, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataBuilder;->_client:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    .line 35
    if-nez p2, :cond_1

    .line 36
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_builder"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataBuilder;->_builder:Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Builder;

    .line 39
    return-void
.end method


# virtual methods
.method public start()Lcom/dropbox/core/v2/files/Metadata;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/AlphaGetMetadataErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataBuilder;->_builder:Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Builder;->build()Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataBuilder;->_client:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    invoke-virtual {v1, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->alphaGetMetadata(Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;)Lcom/dropbox/core/v2/files/Metadata;

    move-result-object v0

    return-object v0
.end method

.method public withIncludeDeleted(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/AlphaGetMetadataBuilder;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataBuilder;->_builder:Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Builder;->withIncludeDeleted(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Builder;

    .line 70
    return-object p0
.end method

.method public withIncludeHasExplicitSharedMembers(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/AlphaGetMetadataBuilder;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataBuilder;->_builder:Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Builder;->withIncludeHasExplicitSharedMembers(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Builder;

    .line 86
    return-object p0
.end method

.method public withIncludeMediaInfo(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/AlphaGetMetadataBuilder;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataBuilder;->_builder:Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Builder;->withIncludeMediaInfo(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Builder;

    .line 54
    return-object p0
.end method

.method public withIncludePropertyTemplates(Ljava/util/List;)Lcom/dropbox/core/v2/files/AlphaGetMetadataBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/files/AlphaGetMetadataBuilder;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataBuilder;->_builder:Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Builder;->withIncludePropertyTemplates(Ljava/util/List;)Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Builder;

    .line 103
    return-object p0
.end method
