.class public Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoAssetInternal;
.super Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;
.source "AdobePhotoAssetInternal.java"


# instance fields
.field parentCollection:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoAssetInternal;->parentCollection:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;)V

    .line 49
    return-void
.end method

.method public static AdobeAssePhotoFromInfo(Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageAssetFileInfo;)Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoAssetInternal;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoAssetInternal;-><init>()V

    .line 58
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageAssetFileInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoAssetInternal;->setName(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageAssetFileInfo;->GUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoAssetInternal;->setGUID(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageAssetFileInfo;->href:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoAssetInternal;->setHref(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageAssetFileInfo;->creationDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoAssetInternal;->setCreationDate(Ljava/util/Date;)V

    .line 62
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageAssetFileInfo;->modificationDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoAssetInternal;->setModificationDate(Ljava/util/Date;)V

    .line 63
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageAssetFileInfo;->photoAssetRenditionMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoAssetInternal;->setRenditions(Ljava/util/Map;)V

    .line 64
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageAssetFileInfo;->cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoAssetInternal;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 66
    return-object v0
.end method


# virtual methods
.method public getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoCollection()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoAssetInternal;->parentCollection:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    return-object v0
.end method

.method public setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V
    .locals 0

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 34
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->setName(Ljava/lang/String;)V

    .line 53
    return-void
.end method
