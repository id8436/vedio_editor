.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeMobileCreationEditSession;
.super Ljava/lang/Object;
.source "AdobeMobileCreationEditSession.java"


# instance fields
.field private _cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

.field private _targetPages:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

.field editResponseCallback:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeEditAssetCallback;

.field fm:Landroid/support/v4/app/FragmentManager;

.field operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeMobileCreationEditOperation;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;Landroid/support/v4/app/FragmentManager;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeMobileCreationEditOperation;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeEditAssetCallback;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeMobileCreationEditSession;->operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeMobileCreationEditOperation;

    .line 31
    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeMobileCreationEditSession;->editResponseCallback:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeEditAssetCallback;

    .line 32
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeMobileCreationEditSession;->fm:Landroid/support/v4/app/FragmentManager;

    .line 33
    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeMobileCreationEditSession;->_cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 34
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeMobileCreationEditSession;->_targetPages:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    .line 35
    return-void
.end method

.method private handleEraseOperation()V
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeMobileCreationEditSession;->_cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeStorage:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getSessionForService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    .line 55
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeMobileCreationEditSession;->_targetPages:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeMobileCreationEditSession$1;

    invoke-direct {v2, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeMobileCreationEditSession$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeMobileCreationEditSession;)V

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->eraseAsset(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionEditCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    .line 68
    return-void
.end method


# virtual methods
.method public getEditSummary()Z
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeMobileCreationEditSession$EditSummary;->getEditStatus()Z

    move-result v0

    return v0
.end method

.method public startEditSession()V
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeMobileCreationEditSession$2;->$SwitchMap$com$adobe$creativesdk$foundation$internal$storage$controllers$edit$AdobeMobileCreationEditOperation:[I

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeMobileCreationEditSession;->operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeMobileCreationEditOperation;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeMobileCreationEditOperation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 47
    :goto_0
    return-void

    .line 41
    :pswitch_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeMobileCreationEditSession;->handleEraseOperation()V

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
