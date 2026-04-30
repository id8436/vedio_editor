.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession;
.super Ljava/lang/Object;
.source "AdobeCCPhotosEditSession.java"


# instance fields
.field private cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

.field editResponseCallback:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeEditAssetCallback;

.field fm:Landroid/support/v4/app/FragmentManager;

.field operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobePhotosEditOperation;

.field private photo:Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;Landroid/support/v4/app/FragmentManager;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobePhotosEditOperation;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeEditAssetCallback;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession;->operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobePhotosEditOperation;

    .line 32
    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession;->editResponseCallback:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeEditAssetCallback;

    .line 33
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession;->fm:Landroid/support/v4/app/FragmentManager;

    .line 34
    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession;->cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 35
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession;->photo:Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;

    .line 36
    return-void
.end method

.method private handleChangeCoverAsset()V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession;->photo:Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoAssetInternal;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession;->photo:Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoAssetInternal;

    .line 95
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoAssetInternal;->getPhotoCollection()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    move-result-object v1

    .line 96
    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->setCoverAsset(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)V

    .line 97
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobePhotoCollectionAssetsUploadStatus;->reloadDataAfterUploaded:Z

    .line 98
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession$5;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession$5;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession;)V

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession$6;

    invoke-direct {v2, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession$6;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession;)V

    invoke-virtual {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->update(Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    .line 112
    :cond_0
    return-void
.end method

.method private handleEraseOperation()V
    .locals 4

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession;->notifiyEditStarted()V

    .line 60
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession;->cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypePhoto:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getSessionForService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    .line 61
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession;->photo:Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;

    instance-of v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    if-eqz v1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession;->photo:Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;

    check-cast v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession$1;

    invoke-direct {v2, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession;)V

    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession$2;

    invoke-direct {v3, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;->deleteCollection(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession;->photo:Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;

    instance-of v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    if-eqz v1, :cond_0

    .line 74
    const/4 v1, 0x1

    sput-boolean v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobePhotoCollectionAssetsUploadStatus;->reloadDataAfterUploaded:Z

    .line 75
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession;->photo:Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;

    check-cast v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession$3;

    invoke-direct {v2, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession$3;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession;)V

    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession$4;

    invoke-direct {v3, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession$4;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;->deleteAsset(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    goto :goto_0
.end method

.method private notifiyEditStarted()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 52
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditManager;->setEditInProgress(Z)V

    .line 53
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditManager;->setEditStarted(Z)V

    .line 54
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;->getInstance()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_ASSETVIEW_EDIT_STARTED:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;->postCommand(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;)V

    .line 55
    return-void
.end method


# virtual methods
.method public startEditSession()V
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession$7;->$SwitchMap$com$adobe$creativesdk$foundation$internal$storage$controllers$edit$AdobePhotosEditOperation:[I

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession;->operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobePhotosEditOperation;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobePhotosEditOperation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 49
    :goto_0
    return-void

    .line 41
    :pswitch_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession;->handleEraseOperation()V

    goto :goto_0

    .line 44
    :pswitch_1
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession;->handleChangeCoverAsset()V

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
