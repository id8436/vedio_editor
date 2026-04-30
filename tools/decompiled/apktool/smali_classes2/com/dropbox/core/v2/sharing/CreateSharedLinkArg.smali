.class Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;
.super Ljava/lang/Object;
.source "CreateSharedLinkArg.java"


# instance fields
.field protected final path:Ljava/lang/String;

.field protected final pendingUpload:Lcom/dropbox/core/v2/sharing/PendingUploadMode;

.field protected final shortUrl:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 59
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;-><init>(Ljava/lang/String;ZLcom/dropbox/core/v2/sharing/PendingUploadMode;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLcom/dropbox/core/v2/sharing/PendingUploadMode;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-nez p1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'path\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->path:Ljava/lang/String;

    .line 44
    iput-boolean p2, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->shortUrl:Z

    .line 45
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->pendingUpload:Lcom/dropbox/core/v2/sharing/PendingUploadMode;

    .line 46
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 183
    if-ne p1, p0, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v0

    .line 186
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 187
    goto :goto_0

    .line 190
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 191
    check-cast p1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;

    .line 192
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->path:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->shortUrl:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->shortUrl:Z

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->pendingUpload:Lcom/dropbox/core/v2/sharing/PendingUploadMode;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->pendingUpload:Lcom/dropbox/core/v2/sharing/PendingUploadMode;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->pendingUpload:Lcom/dropbox/core/v2/sharing/PendingUploadMode;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->pendingUpload:Lcom/dropbox/core/v2/sharing/PendingUploadMode;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->pendingUpload:Lcom/dropbox/core/v2/sharing/PendingUploadMode;

    .line 194
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/PendingUploadMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 198
    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPendingUpload()Lcom/dropbox/core/v2/sharing/PendingUploadMode;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->pendingUpload:Lcom/dropbox/core/v2/sharing/PendingUploadMode;

    return-object v0
.end method

.method public getShortUrl()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->shortUrl:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 173
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->path:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->shortUrl:Z

    .line 175
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->pendingUpload:Lcom/dropbox/core/v2/sharing/PendingUploadMode;

    aput-object v2, v0, v1

    .line 173
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 178
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 204
    sget-object v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 216
    sget-object v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
