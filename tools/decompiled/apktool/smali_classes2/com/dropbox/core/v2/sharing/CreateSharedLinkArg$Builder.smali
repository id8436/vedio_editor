.class public Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;
.super Ljava/lang/Object;
.source "CreateSharedLinkArg.java"


# instance fields
.field protected final path:Ljava/lang/String;

.field protected pendingUpload:Lcom/dropbox/core/v2/sharing/PendingUploadMode;

.field protected shortUrl:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    if-nez p1, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'path\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;->path:Ljava/lang/String;

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;->shortUrl:Z

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;->pendingUpload:Lcom/dropbox/core/v2/sharing/PendingUploadMode;

    .line 122
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;
    .locals 4

    .prologue
    .line 167
    new-instance v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;->path:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;->shortUrl:Z

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;->pendingUpload:Lcom/dropbox/core/v2/sharing/PendingUploadMode;

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;-><init>(Ljava/lang/String;ZLcom/dropbox/core/v2/sharing/PendingUploadMode;)V

    return-object v0
.end method

.method public withPendingUpload(Lcom/dropbox/core/v2/sharing/PendingUploadMode;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;->pendingUpload:Lcom/dropbox/core/v2/sharing/PendingUploadMode;

    .line 157
    return-object p0
.end method

.method public withShortUrl(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;
    .locals 1

    .prologue
    .line 136
    if-eqz p1, :cond_0

    .line 137
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;->shortUrl:Z

    .line 142
    :goto_0
    return-object p0

    .line 140
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;->shortUrl:Z

    goto :goto_0
.end method
