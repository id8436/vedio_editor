.class public Lcom/dropbox/core/v2/files/MoveBuilder;
.super Ljava/lang/Object;
.source "MoveBuilder.java"


# instance fields
.field private final _builder:Lcom/dropbox/core/v2/files/RelocationArg$Builder;

.field private final _client:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/RelocationArg$Builder;)V
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
    iput-object p1, p0, Lcom/dropbox/core/v2/files/MoveBuilder;->_client:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    .line 32
    if-nez p2, :cond_1

    .line 33
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_builder"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/files/MoveBuilder;->_builder:Lcom/dropbox/core/v2/files/RelocationArg$Builder;

    .line 36
    return-void
.end method


# virtual methods
.method public start()Lcom/dropbox/core/v2/files/Metadata;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/RelocationErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/dropbox/core/v2/files/MoveBuilder;->_builder:Lcom/dropbox/core/v2/files/RelocationArg$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/files/RelocationArg$Builder;->build()Lcom/dropbox/core/v2/files/RelocationArg;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/dropbox/core/v2/files/MoveBuilder;->_client:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    invoke-virtual {v1, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->move(Lcom/dropbox/core/v2/files/RelocationArg;)Lcom/dropbox/core/v2/files/Metadata;

    move-result-object v0

    return-object v0
.end method

.method public withAllowOwnershipTransfer(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/MoveBuilder;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/dropbox/core/v2/files/MoveBuilder;->_builder:Lcom/dropbox/core/v2/files/RelocationArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/RelocationArg$Builder;->withAllowOwnershipTransfer(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/RelocationArg$Builder;

    .line 88
    return-object p0
.end method

.method public withAllowSharedFolder(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/MoveBuilder;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dropbox/core/v2/files/MoveBuilder;->_builder:Lcom/dropbox/core/v2/files/RelocationArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/RelocationArg$Builder;->withAllowSharedFolder(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/RelocationArg$Builder;

    .line 55
    return-object p0
.end method

.method public withAutorename(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/MoveBuilder;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dropbox/core/v2/files/MoveBuilder;->_builder:Lcom/dropbox/core/v2/files/RelocationArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/RelocationArg$Builder;->withAutorename(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/RelocationArg$Builder;

    .line 71
    return-object p0
.end method
