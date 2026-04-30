.class public Lcom/dropbox/core/v2/sharing/ListSharedLinksBuilder;
.super Ljava/lang/Object;
.source "ListSharedLinksBuilder.java"


# instance fields
.field private final _builder:Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;

.field private final _client:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;)V
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
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksBuilder;->_client:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;

    .line 33
    if-nez p2, :cond_1

    .line 34
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_builder"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksBuilder;->_builder:Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;

    .line 37
    return-void
.end method


# virtual methods
.method public start()Lcom/dropbox/core/v2/sharing/ListSharedLinksResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ListSharedLinksErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksBuilder;->_builder:Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;->build()Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksBuilder;->_client:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;

    invoke-virtual {v1, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->listSharedLinks(Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;)Lcom/dropbox/core/v2/sharing/ListSharedLinksResult;

    move-result-object v0

    return-object v0
.end method

.method public withCursor(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ListSharedLinksBuilder;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksBuilder;->_builder:Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;->withCursor(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;

    .line 66
    return-object p0
.end method

.method public withDirectOnly(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/ListSharedLinksBuilder;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksBuilder;->_builder:Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;->withDirectOnly(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;

    .line 79
    return-object p0
.end method

.method public withPath(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ListSharedLinksBuilder;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksBuilder;->_builder:Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;->withPath(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;

    .line 53
    return-object p0
.end method
