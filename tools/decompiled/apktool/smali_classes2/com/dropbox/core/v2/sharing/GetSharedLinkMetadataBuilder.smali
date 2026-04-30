.class public Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataBuilder;
.super Ljava/lang/Object;
.source "GetSharedLinkMetadataBuilder.java"


# instance fields
.field private final _builder:Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;

.field private final _client:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;)V
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
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataBuilder;->_client:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;

    .line 33
    if-nez p2, :cond_1

    .line 34
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_builder"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataBuilder;->_builder:Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;

    .line 37
    return-void
.end method


# virtual methods
.method public start()Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharedLinkErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataBuilder;->_builder:Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;->build()Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataBuilder;->_client:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;

    invoke-virtual {v1, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->getSharedLinkMetadata(Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;

    move-result-object v0

    return-object v0
.end method

.method public withLinkPassword(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataBuilder;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataBuilder;->_builder:Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;->withLinkPassword(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;

    .line 67
    return-object p0
.end method

.method public withPath(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataBuilder;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataBuilder;->_builder:Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;->withPath(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;

    .line 54
    return-object p0
.end method
