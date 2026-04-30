.class public Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;
.super Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;
.source "AdobePhotoCollection.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadDestination;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;",
        "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadDestination",
        "<",
        "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;",
        ">;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# instance fields
.field private _catalog:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

.field private _coverAsset:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

.field private _name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 608
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;-><init>()V

    .line 610
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 627
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;-><init>()V

    .line 628
    if-nez p2, :cond_0

    .line 629
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/util/AdobePhotoUtils;->generateGUID()Ljava/lang/String;

    move-result-object p2

    .line 632
    :cond_0
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_GUID:Ljava/lang/String;

    .line 633
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_name:Ljava/lang/String;

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/v1.0/catalogs/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;->getGUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/albums/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_href:Ljava/lang/String;

    .line 635
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_catalog:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    .line 636
    invoke-virtual {p3}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 637
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public static create(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;)",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->getSharedAuthManagerRestricted()Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    move-result-object v0

    new-instance v2, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$1;

    invoke-direct {v2, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$1;-><init>(Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    const-string/jumbo v3, "Create requires an authenticated user."

    invoke-virtual {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->checkAndCallErrorIfNotAuthenticated(Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 202
    :goto_0
    return-object v0

    .line 165
    :cond_0
    if-nez p1, :cond_1

    .line 167
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;->ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;

    invoke-direct {v0, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;)V

    invoke-interface {p3, v0}, Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;->onError(Ljava/lang/Object;)V

    move-object v0, v1

    .line 168
    goto :goto_0

    .line 170
    :cond_1
    new-instance v2, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    invoke-direct {v2, p0, v1, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;)V

    .line 171
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypePhoto:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getSessionForService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    .line 172
    if-nez v0, :cond_2

    move-object v0, v1

    .line 173
    goto :goto_0

    .line 176
    :cond_2
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSPhotoEvent;

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;->AdobeEventTypeAppCreate:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSPhotoEvent;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSPhotoEvent;->trackCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 180
    new-instance v3, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$2;

    invoke-direct {v3, p2, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$2;-><init>(Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSPhotoEvent;)V

    new-instance v4, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$3;

    invoke-direct {v4, p3, p0, v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$3;-><init>(Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSPhotoEvent;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;)V

    invoke-virtual {v0, v2, p1, v3, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;->createCollectionAsync(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    move-object v0, v2

    .line 202
    goto :goto_0
.end method


# virtual methods
.method public addAsset(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 313
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$10;

    invoke-direct {v1, p0, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$10;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V

    invoke-virtual {p0, v0, v1, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->addAssets(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    .line 323
    return-void
.end method

.method public addAssets(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;",
            ">;>;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 336
    .line 337
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getSession()Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    move-result-object v0

    if-nez v0, :cond_0

    .line 357
    :goto_0
    return-void

    .line 340
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getSession()Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$11;

    invoke-direct {v1, p0, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$11;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V

    new-instance v2, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$12;

    invoke-direct {v2, p0, p3, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$12;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;)V

    invoke-virtual {v0, p1, p0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;->addAssets(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    goto :goto_0
.end method

.method public assetCount(Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getSession()Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    move-result-object v0

    if-nez v0, :cond_0

    .line 546
    :goto_0
    return-void

    .line 531
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getSession()Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$21;

    invoke-direct {v1, p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$21;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V

    new-instance v2, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$22;

    invoke-direct {v2, p0, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$22;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;->getAssetCountInCollection(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    goto :goto_0
.end method

.method public delete(Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 278
    .line 279
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getSession()Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    move-result-object v0

    if-nez v0, :cond_0

    .line 299
    :goto_0
    return-void

    .line 282
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getSession()Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$8;

    invoke-direct {v1, p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$8;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;)V

    new-instance v2, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$9;

    invoke-direct {v2, p0, p2, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$9;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;->deleteCollection(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    goto :goto_0
.end method

.method public getCatalog()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_catalog:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    return-object v0
.end method

.method public bridge synthetic getCopy()Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getCopy()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    move-result-object v0

    return-object v0
.end method

.method public getCopy()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;
    .locals 4

    .prologue
    .line 592
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_name:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_GUID:Ljava/lang/String;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_catalog:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;)V

    .line 594
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_coverAsset:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    if-eqz v1, :cond_0

    .line 596
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_coverAsset:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->setCoverAsset(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)V

    .line 599
    :cond_0
    return-object v0
.end method

.method public getCoverAsset()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_coverAsset:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 776
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_GUID:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_catalog:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_catalog:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;->getGUID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 777
    :cond_0
    const/4 v0, 0x0

    .line 778
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_GUID:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_catalog:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_GUID:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_catalog:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;->getGUID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string/jumbo v0, ""

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_catalog:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;->getGUID()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public isEqualToCollection(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 556
    if-nez p1, :cond_1

    .line 559
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getGUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getGUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getCatalog()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getCatalog()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;->isEqualToCatalog(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic isSameLocation(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadDestination;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 50
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->isSameLocation(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;)Z

    move-result v0

    return v0
.end method

.method public isSameLocation(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 619
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->isEqualToCollection(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;)Z

    move-result v0

    return v0
.end method

.method public listAssetsOnPage(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$AdobePhotoCollectionSort;ILcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$AdobePhotoCollectionFlag;Lcom/adobe/creativesdk/foundation/storage/IAdobePhotoAssetsListRequestCompletionHandler;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$AdobePhotoCollectionSort;",
            "I",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$AdobePhotoCollectionFlag;",
            "Lcom/adobe/creativesdk/foundation/storage/IAdobePhotoAssetsListRequestCompletionHandler;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 496
    .line 497
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getSession()Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    move-result-object v0

    if-nez v0, :cond_0

    .line 517
    :goto_0
    return-void

    .line 500
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getSession()Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v6

    new-instance v7, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$19;

    invoke-direct {v7, p0, p5}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$19;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;Lcom/adobe/creativesdk/foundation/storage/IAdobePhotoAssetsListRequestCompletionHandler;)V

    new-instance v8, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$20;

    invoke-direct {v8, p0, p6, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$20;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move v5, p3

    invoke-virtual/range {v0 .. v8}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;->listAssetsInCollection(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$AdobePhotoCollectionSort;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$AdobePhotoCollectionFlag;ILcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/storage/IAdobePhotoAssetsListRequestCompletionHandler;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 568
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->readExternal(Ljava/io/ObjectInput;)V

    .line 569
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_name:Ljava/lang/String;

    .line 570
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_catalog:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    .line 571
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_coverAsset:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    .line 572
    return-void
.end method

.method public refresh(Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 247
    .line 248
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getSession()Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    move-result-object v0

    if-nez v0, :cond_0

    .line 268
    :goto_0
    return-void

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getSession()Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$6;

    invoke-direct {v1, p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$6;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V

    new-instance v2, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$7;

    invoke-direct {v2, p0, p2, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$7;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;->getCollection(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    goto :goto_0
.end method

.method public removeAsset(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 429
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 430
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$16;

    invoke-direct {v1, p0, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$16;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V

    invoke-virtual {p0, v0, v1, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->removeAssets(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    .line 440
    return-void
.end method

.method public removeAssets(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;",
            ">;>;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 453
    .line 454
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getSession()Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    move-result-object v0

    if-nez v0, :cond_0

    .line 474
    :goto_0
    return-void

    .line 457
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getSession()Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$17;

    invoke-direct {v1, p0, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$17;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V

    new-instance v2, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$18;

    invoke-direct {v2, p0, p3, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$18;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;)V

    invoke-virtual {v0, p1, p0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;->removeAssets(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    goto :goto_0
.end method

.method public setCoverAsset(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_coverAsset:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    .line 138
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_name:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 114
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_name:Ljava/lang/String;

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 119
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_name:Ljava/lang/String;

    goto :goto_0
.end method

.method public update(Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 215
    .line 216
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getSession()Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    move-result-object v0

    if-nez v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getSession()Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$4;

    invoke-direct {v1, p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$4;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V

    new-instance v2, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$5;

    invoke-direct {v2, p0, p2, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$5;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;->updateCollection(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    goto :goto_0
.end method

.method public updateAsset(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 372
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$13;

    invoke-direct {v1, p0, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$13;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V

    invoke-virtual {p0, v0, v1, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->updateAssets(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    .line 382
    return-void
.end method

.method public updateAssets(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;",
            ">;>;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 395
    .line 396
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getSession()Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    move-result-object v0

    if-nez v0, :cond_0

    .line 416
    :goto_0
    return-void

    .line 399
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getSession()Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$14;

    invoke-direct {v1, p0, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$14;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V

    new-instance v2, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$15;

    invoke-direct {v2, p0, p3, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$15;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;)V

    invoke-virtual {v0, p1, p0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;->updateAssets(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    goto :goto_0
.end method

.method public updateFromData(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 717
    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 719
    :cond_0
    const/4 v0, 0x1

    .line 726
    :goto_0
    return v0

    .line 724
    :cond_1
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/util/AdobePhotoUtils;->JSONObjectWithData(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 726
    invoke-virtual {p0, v0, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->updateFromDictionary(Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;)Z

    move-result v0

    goto :goto_0
.end method

.method public updateFromDictionary(Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 644
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 645
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_internalID:Ljava/lang/String;

    .line 648
    :cond_0
    const-string/jumbo v0, "_id"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 649
    const-string/jumbo v0, "_id"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_GUID:Ljava/lang/String;

    .line 652
    :cond_1
    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 653
    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_name:Ljava/lang/String;

    .line 656
    :cond_2
    const-string/jumbo v0, "created"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 657
    const-string/jumbo v0, "created"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->convertStringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_creationDate:Ljava/util/Date;

    .line 660
    :cond_3
    const-string/jumbo v0, "update"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 661
    const-string/jumbo v0, "updated"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->convertStringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_modificationDate:Ljava/util/Date;

    .line 664
    :cond_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_modificationDate:Ljava/util/Date;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_creationDate:Ljava/util/Date;

    if-eqz v0, :cond_5

    .line 665
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_creationDate:Ljava/util/Date;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_modificationDate:Ljava/util/Date;

    .line 668
    :cond_5
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_catalog:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    .line 669
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 671
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_name:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 672
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;->ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;

    const-string/jumbo v2, "Collection doesn\'t have a name"

    invoke-direct {v0, v1, v4, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;Ljava/util/HashMap;Ljava/lang/String;)V

    throw v0

    .line 673
    :cond_6
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_creationDate:Ljava/util/Date;

    if-nez v0, :cond_7

    .line 674
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->WARN:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Collection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " doesn\'t have a creation time."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    :cond_7
    const-string/jumbo v0, "cover"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 678
    if-eqz v0, :cond_8

    .line 679
    const-string/jumbo v1, "_id"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 681
    if-eqz v1, :cond_8

    .line 682
    new-instance v2, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    invoke-direct {v2, v4, v1, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;)V

    .line 685
    :try_start_0
    invoke-virtual {v2, v0, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->updateFromDictionary(Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;)Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    :goto_0
    iput-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_coverAsset:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    .line 693
    :cond_8
    const-string/jumbo v0, "links"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 694
    if-eqz v0, :cond_a

    .line 696
    const-string/jumbo v1, "self"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 698
    if-eqz v0, :cond_9

    .line 700
    const-string/jumbo v1, "href"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_href:Ljava/lang/String;

    .line 708
    :cond_9
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 705
    :cond_a
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->WARN:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Collection doesn\'t have an href."

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    iput-object v4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_href:Ljava/lang/String;

    goto :goto_1

    .line 686
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 580
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 581
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_name:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 582
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_catalog:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 583
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->_coverAsset:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 584
    return-void
.end method
