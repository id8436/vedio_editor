.class public Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeAssetFolderCollaboration;
.super Ljava/lang/Object;
.source "AdobeAssetFolderCollaboration.java"


# instance fields
.field private folderHref:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeAssetFolderCollaboration;->folderHref:Ljava/lang/String;

    .line 16
    return-void
.end method

.method private getFolderFromHref()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 33
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeAssetFolderCollaboration;->folderHref:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeAssetFolderCollaboration;->folderHref:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 34
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeAssetFolderCollaboration;->hrefByRemovingPathExtension()Ljava/lang/String;

    move-result-object v2

    .line 37
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getFolderFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    move-result-object v1

    .line 43
    :cond_0
    return-object v1

    .line 38
    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method private hrefByRemovingPathExtension()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeAssetFolderCollaboration;->folderHref:Ljava/lang/String;

    const-string/jumbo v1, "/files"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeAssetFolderCollaboration;->folderHref:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeAssetFolderCollaboration;->folderHref:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getCollaboratedFolder()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeAssetFolderCollaboration;->getFolderFromHref()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    move-result-object v0

    return-object v0
.end method

.method public getCollaboration(Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationGetCollaborationCallback;)V
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeAssetFolderCollaboration;->folderHref:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 24
    :goto_0
    return-void

    .line 22
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->getSharedSession()Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeAssetFolderCollaboration;->folderHref:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->getCollaboration(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationGetCollaborationCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    goto :goto_0
.end method
