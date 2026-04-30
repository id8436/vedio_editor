.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerPhotosConfiguration;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerBaseConfiguration;
.source "AdobeOneUpViewerPhotosConfiguration.java"


# instance fields
.field private adobePhotoAsset:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

.field private dataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerBaseConfiguration;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdobePhotoAsset()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerPhotosConfiguration;->adobePhotoAsset:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    return-object v0
.end method

.method public getAdobePhotoAssetDataSource()Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerPhotosConfiguration;->dataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;

    return-object v0
.end method

.method public setAdobePhotoAsset(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerPhotosConfiguration;->adobePhotoAsset:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    .line 31
    return-void
.end method

.method public setAdobePhotoDataSource(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerPhotosConfiguration;->dataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;

    .line 36
    return-void
.end method
