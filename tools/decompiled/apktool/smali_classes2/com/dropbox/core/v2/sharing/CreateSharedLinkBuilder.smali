.class public Lcom/dropbox/core/v2/sharing/CreateSharedLinkBuilder;
.super Ljava/lang/Object;
.source "CreateSharedLinkBuilder.java"


# instance fields
.field private final _builder:Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;

.field private final _client:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;)V
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
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkBuilder;->_client:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;

    .line 33
    if-nez p2, :cond_1

    .line 34
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_builder"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkBuilder;->_builder:Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;

    .line 37
    return-void
.end method


# virtual methods
.method public start()Lcom/dropbox/core/v2/sharing/PathLinkMetadata;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/CreateSharedLinkErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkBuilder;->_builder:Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;->build()Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkBuilder;->_client:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;

    invoke-virtual {v1, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->createSharedLink(Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;)Lcom/dropbox/core/v2/sharing/PathLinkMetadata;

    move-result-object v0

    return-object v0
.end method

.method public withPendingUpload(Lcom/dropbox/core/v2/sharing/PendingUploadMode;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkBuilder;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkBuilder;->_builder:Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;->withPendingUpload(Lcom/dropbox/core/v2/sharing/PendingUploadMode;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;

    .line 66
    return-object p0
.end method

.method public withShortUrl(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkBuilder;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkBuilder;->_builder:Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;->withShortUrl(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;

    .line 51
    return-object p0
.end method
