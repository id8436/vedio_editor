.class public Lcom/adobe/premiereclip/sharing/CreativeCloudExport;
.super Ljava/lang/Object;
.source "CreativeCloudExport.java"


# instance fields
.field private listener:Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;

.field private mHandler:Landroid/os/Handler;

.field private upload:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport;->mHandler:Landroid/os/Handler;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport;->upload:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/sharing/CreativeCloudExport;Landroid/net/Uri;Z)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/sharing/CreativeCloudExport;->userHasEnoughSpaceForMediaOnCompletion(Landroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/sharing/CreativeCloudExport;)Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport;->listener:Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/sharing/CreativeCloudExport;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/adobe/premiereclip/sharing/CreativeCloudExport;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport;->upload:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    return-object v0
.end method

.method private userHasEnoughSpaceForMediaOnCompletion(Landroid/net/Uri;Z)V
    .locals 6

    .prologue
    .line 91
    if-nez p2, :cond_1

    .line 92
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport;->listener:Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport;->listener:Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;

    const/4 v1, 0x0

    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0442

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;->onCompleted(ZLjava/lang/String;)V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v2

    .line 98
    const-string/jumbo v0, "CreativeCloudExport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "local file url : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string/jumbo v0, "Premiere Clip"

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->escapeAssetName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    const-string/jumbo v1, "CreativeCloudExport"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getFolderFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_2

    .line 104
    const-string/jumbo v0, "CreativeCloudExport"

    const-string/jumbo v3, "Starting media upload to CC"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "video/mp4"

    new-instance v4, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2;

    invoke-direct {v4, p0, v2}, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2;-><init>(Lcom/adobe/premiereclip/sharing/CreativeCloudExport;Ljava/net/URL;)V

    iget-object v5, p0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport;->mHandler:Landroid/os/Handler;

    invoke-static/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->create(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Ljava/net/URL;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport;->upload:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    const-string/jumbo v1, "CreativeCloudExport"

    const-string/jumbo v2, "localURL not formed properly"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 203
    :cond_2
    :try_start_1
    const-string/jumbo v0, "CreativeCloudExport"

    const-string/jumbo v1, "failed to get target folder from CC"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 212
    :catch_1
    move-exception v0

    .line 213
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public cancelUpload()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport;->upload:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport;->upload:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->cancelCreationRequest()V

    .line 61
    :cond_0
    return-void
.end method

.method public upload(Landroid/net/Uri;JLcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;)V
    .locals 4

    .prologue
    .line 64
    iput-object p4, p0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport;->listener:Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;

    .line 65
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeStorage:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getSessionForService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    .line 68
    new-instance v1, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$1;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$1;-><init>(Lcom/adobe/premiereclip/sharing/CreativeCloudExport;JLandroid/net/Uri;)V

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->getQuotaInformationOnCompletion(Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionQuotaCallback;Landroid/os/Handler;)V

    .line 88
    return-void
.end method
