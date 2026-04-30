.class public Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;
.super Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;
.source "AdobePhotoAsset.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field public static final AdobePhotoAssetRenditionImage1024:Ljava/lang/String; = "1024"

.field public static final AdobePhotoAssetRenditionImage2048:Ljava/lang/String; = "2048"

.field public static final AdobePhotoAssetRenditionImageFavorite:Ljava/lang/String; = "favorite"

.field public static final AdobePhotoAssetRenditionImageFullSize:Ljava/lang/String; = "fullsize"

.field public static final AdobePhotoAssetRenditionImagePreview:Ljava/lang/String; = "preview"

.field public static final AdobePhotoAssetRenditionImageThumbnail:Ljava/lang/String; = "144h"

.field public static final AdobePhotoAssetRenditionImageThumbnail2x:Ljava/lang/String; = "thumbnail2x"

.field private static final AdobePhotoAssetRenditionLinkImage1024:Ljava/lang/String; = "/rels/rendition_type/1024"

.field private static final AdobePhotoAssetRenditionLinkImage2048:Ljava/lang/String; = "/rels/rendition_type/2048"

.field private static final AdobePhotoAssetRenditionLinkImageFavorite:Ljava/lang/String; = "/rels/rendition_type/favorite"

.field private static final AdobePhotoAssetRenditionLinkImageFullSize:Ljava/lang/String; = "/rels/rendition_type/fullsize"

.field private static final AdobePhotoAssetRenditionLinkImagePreview:Ljava/lang/String; = "/rels/rendition_type/preview"

.field private static final AdobePhotoAssetRenditionLinkImageThumbnail:Ljava/lang/String; = "/rels/rendition_type/144h"

.field private static final AdobePhotoAssetRenditionLinkImageThumbnail2x:Ljava/lang/String; = "/rels/rendition_type/thumbnail2x"


# instance fields
.field private _catalog:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

.field private _contentType:Ljava/lang/String;

.field private _downloadProgressListener:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;

.field private _downloadRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

.field private _latestRevision:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRevision;

.field private _metadata:Lorg/json/JSONObject;

.field private _name:Ljava/lang/String;

.field private _order:Ljava/lang/String;

.field private _progressListener:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;

.field private _renditions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;",
            ">;"
        }
    .end annotation
.end field

.field private _revision:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRevision;

.field private _size:J

.field private _type:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$AdobePhotoAssetType;

.field private _uploadRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1140
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;-><init>()V

    .line 136
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_uploadRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 137
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_progressListener:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;

    .line 138
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_downloadRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 139
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_downloadProgressListener:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;

    .line 1142
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1145
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;-><init>()V

    .line 136
    iput-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_uploadRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 137
    iput-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_progressListener:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;

    .line 138
    iput-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_downloadRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 139
    iput-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_downloadProgressListener:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;

    .line 1146
    if-nez p2, :cond_0

    .line 1148
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/util/AdobePhotoUtils;->generateGUID()Ljava/lang/String;

    move-result-object p2

    .line 1151
    :cond_0
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_GUID:Ljava/lang/String;

    .line 1152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/v1.0/catalogs/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;->getGUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/assets/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_href:Ljava/lang/String;

    .line 1153
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_catalog:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    .line 1154
    invoke-virtual {p3}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 1155
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_name:Ljava/lang/String;

    .line 1156
    iput-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_order:Ljava/lang/String;

    .line 1157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_renditions:Ljava/util/Map;

    .line 1158
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_metadata:Lorg/json/JSONObject;

    .line 1159
    iput-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_type:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$AdobePhotoAssetType;

    .line 1160
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_downloadRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    return-object v0
.end method

.method static synthetic access$102(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_downloadRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    return-object p1
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_downloadProgressListener:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;)Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_downloadProgressListener:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;

    return-object p1
.end method

.method static create(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;Ljava/net/URI;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;",
            ">;)",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 404
    if-nez p1, :cond_0

    .line 406
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;->ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;)V

    invoke-interface {p4, v0}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onError(Ljava/lang/Object;)V

    move-object v1, v2

    .line 473
    :goto_0
    return-object v1

    .line 410
    :cond_0
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    invoke-direct {v1, p0, v2, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;)V

    .line 412
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypePhoto:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getSessionForService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    .line 413
    if-nez v0, :cond_1

    move-object v1, v2

    .line 414
    goto :goto_0

    .line 417
    :cond_1
    iput-object v2, v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_uploadRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 418
    new-instance v2, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$1;

    invoke-direct {v2, p4}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$1;-><init>(Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    iput-object v2, v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_progressListener:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;

    .line 426
    new-instance v5, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$2;

    invoke-direct {v5, p4}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$2;-><init>(Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    .line 435
    new-instance v6, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$3;

    invoke-direct {v6, v1, p4, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$3;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Ljava/lang/String;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 461
    invoke-virtual/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;->createAsset(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;Ljava/net/URI;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    iput-object v0, v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_uploadRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 471
    iget-object v0, v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_uploadRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    iget-object v2, v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_progressListener:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->registerListener(Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;)V

    goto :goto_0
.end method

.method public static create(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;Ljava/net/URI;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;)",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;"
        }
    .end annotation

    .prologue
    .line 495
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->getSharedAuthManagerRestricted()Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    move-result-object v2

    new-instance v3, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$4;

    move-object/from16 v0, p4

    invoke-direct {v3, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$4;-><init>(Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    const-string/jumbo v4, "Create requires an authenticated user."

    invoke-virtual {v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->checkAndCallErrorIfNotAuthenticated(Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 503
    const/4 v2, 0x0

    .line 583
    :goto_0
    return-object v2

    .line 506
    :cond_0
    if-nez p1, :cond_1

    .line 508
    new-instance v2, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;

    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;->ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;

    const/4 v4, 0x0

    const-string/jumbo v5, "Input Validation failed"

    invoke-direct {v2, v3, v4, v5}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;Ljava/util/HashMap;Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onError(Ljava/lang/Object;)V

    .line 509
    const/4 v2, 0x0

    goto :goto_0

    .line 512
    :cond_1
    new-instance v10, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getCatalog()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    move-result-object v3

    invoke-direct {v10, p0, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;)V

    .line 513
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v2

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypePhoto:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    invoke-virtual {v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getSessionForService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    .line 514
    if-nez v9, :cond_2

    .line 515
    const/4 v2, 0x0

    goto :goto_0

    .line 518
    :cond_2
    const/4 v2, 0x0

    iput-object v2, v10, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_uploadRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 519
    new-instance v2, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$5;

    move-object/from16 v0, p4

    invoke-direct {v2, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$5;-><init>(Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    iput-object v2, v10, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_progressListener:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;

    .line 527
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSPhotoEvent;

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;->AdobeEventTypeAppCreate:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSPhotoEvent;-><init>(Ljava/lang/String;)V

    .line 528
    invoke-virtual {v10}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSPhotoEvent;->trackCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 529
    iget-object v3, v10, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_GUID:Ljava/lang/String;

    iget-object v4, v10, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_name:Ljava/lang/String;

    const-string/jumbo v5, ""

    const-string/jumbo v6, "photo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v12, v10, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_size:J

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSPhotoEvent;->trackContentInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    new-instance v7, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$6;

    move-object/from16 v0, p4

    invoke-direct {v7, v2, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$6;-><init>(Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSPhotoEvent;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    .line 542
    new-instance v8, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$7;

    move-object/from16 v0, p4

    invoke-direct {v8, v10, v2, v0, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$7;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSPhotoEvent;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Ljava/lang/String;)V

    move-object v2, v9

    move-object v3, v10

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    .line 571
    invoke-virtual/range {v2 .. v8}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;->createAsset(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;Ljava/net/URI;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v2

    iput-object v2, v10, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_uploadRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 581
    iget-object v2, v10, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_uploadRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    iget-object v3, v10, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_progressListener:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;

    invoke-virtual {v2, v3}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->registerListener(Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;)V

    move-object v2, v10

    .line 583
    goto/16 :goto_0
.end method


# virtual methods
.method addRenditionLink(Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1340
    if-eqz p1, :cond_0

    .line 1342
    const-string/jumbo v0, "href"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1343
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-direct {v1, v0, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;-><init>(Ljava/net/URI;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;)V

    .line 1344
    invoke-interface {p3, p4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1347
    :cond_0
    return-void
.end method

.method public cancelCreationRequest()V
    .locals 0

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->cancelUploadRequest()V

    .line 592
    return-void
.end method

.method public cancelDownloadRequest()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1113
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_downloadRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    if-eqz v0, :cond_1

    .line 1115
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_downloadProgressListener:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_downloadRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_downloadProgressListener:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->unregisterListener(Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;)V

    .line 1118
    iput-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_downloadProgressListener:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;

    .line 1121
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_downloadRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->cancel()V

    .line 1122
    iput-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_downloadRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 1124
    :cond_1
    return-void
.end method

.method public cancelUploadRequest()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 857
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_uploadRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    if-eqz v0, :cond_1

    .line 859
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_progressListener:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_uploadRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_progressListener:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->unregisterListener(Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;)V

    .line 862
    iput-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_progressListener:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_uploadRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->cancel()V

    .line 866
    iput-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_uploadRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 868
    :cond_1
    return-void
.end method

.method public delete(Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 8
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
    .line 642
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSPhotoEvent;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;->AdobeEventTypeAppDelete:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSPhotoEvent;-><init>(Ljava/lang/String;)V

    .line 643
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSPhotoEvent;->trackCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 644
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_GUID:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_name:Ljava/lang/String;

    const-string/jumbo v3, ""

    const-string/jumbo v4, "photo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_size:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSPhotoEvent;->trackContentInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->getSharedAuthManagerRestricted()Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    move-result-object v1

    new-instance v2, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$10;

    invoke-direct {v2, p0, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$10;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    const-string/jumbo v3, "Delete requires an authenticated user."

    invoke-virtual {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->checkAndCallErrorIfNotAuthenticated(Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 685
    :cond_0
    :goto_0
    return-void

    .line 658
    :cond_1
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$11;

    invoke-direct {v1, p0, v0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$11;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSPhotoEvent;Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;)V

    .line 668
    new-instance v2, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$12;

    invoke-direct {v2, p0, v0, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$12;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSPhotoEvent;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    .line 681
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getSession()Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 684
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getSession()Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;->deleteAsset(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    goto :goto_0
.end method

.method public downloadMasterData(Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
            "<[B",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 878
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_revision:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRevision;

    if-nez v0, :cond_1

    const-string/jumbo v0, "(null)"

    .line 879
    :goto_0
    const-string/jumbo v1, "%s-master"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 880
    const-string/jumbo v0, "com.adobe.cc.photo"

    .line 882
    new-instance v5, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$21;

    invoke-direct {v5, p0, p1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$21;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Ljava/lang/String;)V

    .line 963
    const/4 v0, 0x0

    .line 966
    :try_start_0
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 973
    :goto_1
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_GUID:Ljava/lang/String;

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;->AdobeCommonCacheKeepInMemoryCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;

    .line 974
    invoke-static {v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    const-string/jumbo v4, "com.adobe.cc.photo"

    .line 973
    invoke-virtual/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getDataFromGUID(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 977
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Request for cache com.adobe.cc.photoended in Error"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;->ADOBE_PHOTO_ERROR_FILE_READ_FAILURE:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;)V

    invoke-interface {p1, v0}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onError(Ljava/lang/Object;)V

    .line 980
    :cond_0
    return-void

    .line 878
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_revision:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRevision;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRevision;->getGUID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 968
    :catch_0
    move-exception v1

    move-object v6, v0

    goto :goto_1
.end method

.method public downloadRendition(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;",
            "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
            "<[B",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_revision:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRevision;

    if-nez v0, :cond_1

    const-string/jumbo v0, "(null)"

    .line 1005
    :goto_0
    const-string/jumbo v1, "%s_%s_%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;->getGUID()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;->getType()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1006
    const-string/jumbo v0, "com.adobe.cc.photo"

    .line 1008
    new-instance v5, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22;

    invoke-direct {v5, p0, p2, v2, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;)V

    .line 1089
    const/4 v0, 0x0

    .line 1092
    :try_start_0
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1099
    :goto_1
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_GUID:Ljava/lang/String;

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;->AdobeCommonCacheKeepInMemoryCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;

    .line 1100
    invoke-static {v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    const-string/jumbo v4, "com.adobe.cc.photo"

    .line 1099
    invoke-virtual/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getDataFromGUID(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1103
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Request for cache com.adobe.cc.photoended in Error"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;->ADOBE_PHOTO_ERROR_FILE_READ_FAILURE:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;)V

    invoke-interface {p2, v0}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onError(Ljava/lang/Object;)V

    .line 1106
    :cond_0
    return-void

    .line 1004
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_revision:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRevision;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRevision;->getGUID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1094
    :catch_0
    move-exception v1

    move-object v6, v0

    goto :goto_1
.end method

.method public getCatalog()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_catalog:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    return-object v0
.end method

.method public getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;
    .locals 1

    .prologue
    .line 349
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getLatestRevision()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRevision;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_latestRevision:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRevision;

    return-object v0
.end method

.method public getMetadata()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_metadata:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_order:Ljava/lang/String;

    return-object v0
.end method

.method public getRenditions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 359
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_renditions:Ljava/util/Map;

    return-object v0
.end method

.method public getRevision()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRevision;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_revision:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRevision;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 301
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_size:J

    return-wide v0
.end method

.method public getType()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$AdobePhotoAssetType;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_type:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$AdobePhotoAssetType;

    return-object v0
.end method

.method handleCommonDownloadCompletionBookKeeping()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1172
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_downloadRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    if-eqz v0, :cond_0

    .line 1173
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_downloadRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_downloadProgressListener:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->unregisterListener(Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;)V

    .line 1174
    :cond_0
    iput-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_downloadRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 1175
    iput-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_downloadProgressListener:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;

    .line 1176
    return-void
.end method

.method protected handleCommonUploadCompletionBookKeeping()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1164
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_uploadRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    if-eqz v0, :cond_0

    .line 1165
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_uploadRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_progressListener:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->unregisterListener(Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;)V

    .line 1166
    :cond_0
    iput-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_uploadRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 1167
    iput-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_progressListener:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;

    .line 1168
    return-void
.end method

.method public isEqualToAsset(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)Z
    .locals 2

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_GUID:Ljava/lang/String;

    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_GUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_catalog:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_catalog:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;->isEqualToCatalog(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 185
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->readExternal(Ljava/io/ObjectInput;)V

    .line 186
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_name:Ljava/lang/String;

    .line 187
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_catalog:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    .line 188
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_contentType:Ljava/lang/String;

    .line 190
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_metadata:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRevision;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_latestRevision:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRevision;

    .line 195
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRevision;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_revision:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRevision;

    .line 196
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_renditions:Ljava/util/Map;

    .line 197
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_order:Ljava/lang/String;

    .line 198
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_size:J

    .line 199
    invoke-static {}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$AdobePhotoAssetType;->values()[Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$AdobePhotoAssetType;

    move-result-object v0

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_type:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$AdobePhotoAssetType;

    .line 200
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobePhotoAsset.readExternal"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public refresh(Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 603
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$8;

    invoke-direct {v0, p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$8;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V

    .line 612
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$9;

    invoke-direct {v1, p0, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$9;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    .line 624
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getSession()Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    move-result-object v2

    if-nez v2, :cond_0

    .line 629
    :goto_0
    return-void

    .line 627
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getSession()Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;->getAsset(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    goto :goto_0
.end method

.method setCatalog(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_catalog:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    .line 230
    return-void
.end method

.method setContentType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_contentType:Ljava/lang/String;

    .line 294
    return-void
.end method

.method setLatestRevision(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRevision;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_latestRevision:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRevision;

    .line 326
    return-void
.end method

.method setMetadata(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_metadata:Lorg/json/JSONObject;

    .line 262
    return-void
.end method

.method protected setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_name:Ljava/lang/String;

    .line 246
    return-void
.end method

.method setOrder(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_order:Ljava/lang/String;

    .line 382
    return-void
.end method

.method public setRenditions(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 368
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_renditions:Ljava/util/Map;

    .line 369
    return-void
.end method

.method setRevision(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRevision;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_revision:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRevision;

    .line 342
    return-void
.end method

.method setSize(J)V
    .locals 1

    .prologue
    .line 309
    iput-wide p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_size:J

    .line 310
    return-void
.end method

.method setType(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$AdobePhotoAssetType;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_type:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$AdobePhotoAssetType;

    .line 278
    return-void
.end method

.method updateFromData(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;
        }
    .end annotation

    .prologue
    .line 1351
    .line 1352
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/util/AdobePhotoUtils;->JSONObjectWithData(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1354
    if-eqz v0, :cond_0

    .line 1356
    invoke-virtual {p0, v0, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->updateFromDictionary(Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;)Z

    move-result v0

    return v0

    .line 1360
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;->ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;

    const/4 v2, 0x0

    const-string/jumbo v3, "Parsed asset data is not of type dictionary."

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;Ljava/util/HashMap;Ljava/lang/String;)V

    throw v0
.end method

.method public updateFromDictionary(Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1186
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1188
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_internalID:Ljava/lang/String;

    .line 1191
    :cond_0
    const-string/jumbo v0, "_id"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1193
    const-string/jumbo v0, "_id"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_GUID:Ljava/lang/String;

    .line 1196
    :cond_1
    const-string/jumbo v0, "created"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1198
    const-string/jumbo v0, "created"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->convertStringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_creationDate:Ljava/util/Date;

    .line 1201
    :cond_2
    const-string/jumbo v0, "updated"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1203
    const-string/jumbo v0, "updated"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->convertStringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_modificationDate:Ljava/util/Date;

    .line 1206
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_modificationDate:Ljava/util/Date;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_creationDate:Ljava/util/Date;

    if-eqz v0, :cond_4

    .line 1208
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_creationDate:Ljava/util/Date;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_modificationDate:Ljava/util/Date;

    .line 1211
    :cond_4
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_catalog:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    .line 1212
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 1214
    const-string/jumbo v0, "subtype"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1215
    if-eqz v0, :cond_5

    const-string/jumbo v1, "jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1217
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$AdobePhotoAssetType;->AdobePhotoAssetTypeImage:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$AdobePhotoAssetType;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_type:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$AdobePhotoAssetType;

    .line 1227
    :cond_5
    const-string/jumbo v0, "order"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1229
    const-string/jumbo v0, "order"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_order:Ljava/lang/String;

    .line 1232
    :cond_6
    const-string/jumbo v0, "payload"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_metadata:Lorg/json/JSONObject;

    .line 1233
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_metadata:Lorg/json/JSONObject;

    if-eqz v0, :cond_b

    .line 1235
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_metadata:Lorg/json/JSONObject;

    const-string/jumbo v1, "importSource"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1236
    if-eqz v0, :cond_7

    .line 1238
    const-string/jumbo v1, "fileName"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_name:Ljava/lang/String;

    .line 1239
    const-string/jumbo v1, "fileSize"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_size:J

    .line 1240
    const-string/jumbo v1, "contentType"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_contentType:Ljava/lang/String;

    .line 1248
    :cond_7
    :goto_0
    const-string/jumbo v0, "links"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1249
    if-eqz v0, :cond_c

    .line 1251
    const-string/jumbo v1, "self"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1253
    if-eqz v1, :cond_8

    .line 1255
    const-string/jumbo v2, "href"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_href:Ljava/lang/String;

    .line 1259
    :cond_8
    const-string/jumbo v1, "/rels/latest_revision"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1260
    if-eqz v1, :cond_9

    .line 1262
    new-instance v2, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRevision;

    const-string/jumbo v3, "href"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRevision;-><init>(Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_latestRevision:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRevision;

    .line 1265
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_latestRevision:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRevision;

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_revision:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRevision;

    .line 1269
    :cond_9
    const-string/jumbo v1, "/rels/master"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1270
    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_contentType:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 1272
    const-string/jumbo v2, "content_type"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_contentType:Ljava/lang/String;

    .line 1276
    :cond_a
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1278
    const-string/jumbo v2, "/rels/rendition_type/144h"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;->ADOBE_PHOTO_ASSET_RENDITION_TYPE_IMAGE_THUMBNAIL:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;

    const-string/jumbo v4, "144h"

    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->addRenditionLink(Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;Ljava/util/Map;Ljava/lang/String;)V

    .line 1282
    const-string/jumbo v2, "/rels/rendition_type/thumbnail2x"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;->ADOBE_PHOTO_ASSET_RENDITION_TYPE_IMAGE_THUMBNAIL_2X:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;

    const-string/jumbo v4, "thumbnail2x"

    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->addRenditionLink(Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;Ljava/util/Map;Ljava/lang/String;)V

    .line 1286
    const-string/jumbo v2, "/rels/rendition_type/2048"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;->ADOBE_PHOTO_ASSET_RENDITION_TYPE_IMAGE_2048:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;

    const-string/jumbo v4, "2048"

    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->addRenditionLink(Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;Ljava/util/Map;Ljava/lang/String;)V

    .line 1290
    const-string/jumbo v2, "/rels/rendition_type/1024"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;->ADOBE_PHOTO_ASSET_RENDITION_TYPE_IMAGE_1024:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;

    const-string/jumbo v4, "1024"

    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->addRenditionLink(Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;Ljava/util/Map;Ljava/lang/String;)V

    .line 1294
    const-string/jumbo v2, "/rels/rendition_type/fullsize"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;->ADOBE_PHOTO_ASSET_RENDITION_TYPE_IMAGE_FULL_SIZE:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;

    const-string/jumbo v4, "fullsize"

    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->addRenditionLink(Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;Ljava/util/Map;Ljava/lang/String;)V

    .line 1298
    const-string/jumbo v2, "/rels/rendition_type/favorite"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;->ADOBE_PHOTO_ASSET_RENDITION_TYPE_IMAGE_FAVORITE:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;

    const-string/jumbo v4, "favorite"

    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->addRenditionLink(Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;Ljava/util/Map;Ljava/lang/String;)V

    .line 1302
    const-string/jumbo v2, "/rels/rendition_type/preview"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;->ADOBE_PHOTO_ASSET_RENDITION_TYPE_IMAGE_PREVIEW:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;

    const-string/jumbo v3, "preview"

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->addRenditionLink(Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;Ljava/util/Map;Ljava/lang/String;)V

    .line 1328
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_renditions:Ljava/util/Map;

    .line 1334
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 1245
    :cond_b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_metadata:Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 1331
    :cond_c
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->WARN:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Asset doesn\'t have any links."

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    iput-object v4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_href:Ljava/lang/String;

    goto :goto_1
.end method

.method public uploadMasterDataFromPath(Ljava/net/URI;ZLcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Z",
            "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 700
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->getSharedAuthManagerRestricted()Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$13;

    invoke-direct {v1, p0, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$13;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    const-string/jumbo v2, "Upload requires an authenticated user."

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->checkAndCallErrorIfNotAuthenticated(Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 770
    :cond_0
    :goto_0
    return-void

    .line 712
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_uploadRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 713
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$14;

    invoke-direct {v0, p0, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$14;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_progressListener:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;

    .line 721
    new-instance v4, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$15;

    invoke-direct {v4, p0, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$15;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    .line 730
    new-instance v5, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$16;

    invoke-direct {v5, p0, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$16;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    .line 755
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getSession()Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 759
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getSession()Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;->uploadMasterDataForAsset(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Ljava/net/URI;ZLcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_uploadRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 768
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_uploadRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_progressListener:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->registerListener(Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;)V

    goto :goto_0
.end method

.method public uploadRendition(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;",
            "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 782
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->getSharedAuthManagerRestricted()Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$17;

    invoke-direct {v1, p0, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$17;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    const-string/jumbo v2, "Upload requires an authenticated user."

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->checkAndCallErrorIfNotAuthenticated(Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 850
    :cond_0
    :goto_0
    return-void

    .line 793
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_uploadRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 794
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$18;

    invoke-direct {v0, p0, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$18;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_progressListener:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;

    .line 802
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$19;

    invoke-direct {v0, p0, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$19;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    .line 811
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$20;

    invoke-direct {v1, p0, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$20;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    .line 836
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getSession()Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 839
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getSession()Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    move-result-object v2

    .line 840
    invoke-virtual {v2, p1, p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;->uploadRendition(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_uploadRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 848
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_uploadRequestHandle:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_progressListener:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->registerListener(Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;)V

    goto :goto_0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 207
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 208
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_name:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 209
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_catalog:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 210
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_contentType:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_metadata:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 212
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_latestRevision:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRevision;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 213
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_revision:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRevision;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 214
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_renditions:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 215
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_order:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 216
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_size:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 217
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_type:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$AdobePhotoAssetType;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$AdobePhotoAssetType;->getValue()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 218
    return-void
.end method
