.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotosViewContainerConfiguration;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;
.source "AdobePhotosViewContainerConfiguration.java"


# static fields
.field public static final TARGET_COLLECTION_CATALOG_GUID:Ljava/lang/String; = "ASSET_CONTAINER_TARGET_COLLECTION_CATALOG_GUID"

.field public static final TARGET_COLLECTION_CATALOG_NAME:Ljava/lang/String; = "ASSET_CONTAINER_TARGET_COLLECTION_CATALOG_NAME"

.field public static final TARGET_COLLECTION_GUID:Ljava/lang/String; = "ASSET_CONTAINER_TARGET_COLLECTION_GUID"

.field public static final TARGET_COLLECTION_NAME:Ljava/lang/String; = "ASSET_CONTAINER_TARGET_COLLECTION_NAME"


# instance fields
.field private getTargetCollectionCatalogGuid:Ljava/lang/String;

.field private getTargetCollectionCatalogName:Ljava/lang/String;

.field private targetCollectionGUID:Ljava/lang/String;

.field private targetCollectionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromBundle(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 37
    if-nez p1, :cond_0

    .line 46
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->createFromBundle(Landroid/os/Bundle;)V

    .line 42
    const-string/jumbo v0, "ASSET_CONTAINER_TARGET_COLLECTION_GUID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotosViewContainerConfiguration;->targetCollectionGUID:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "ASSET_CONTAINER_TARGET_COLLECTION_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotosViewContainerConfiguration;->targetCollectionName:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "ASSET_CONTAINER_TARGET_COLLECTION_CATALOG_GUID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotosViewContainerConfiguration;->getTargetCollectionCatalogGuid:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "ASSET_CONTAINER_TARGET_COLLECTION_CATALOG_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotosViewContainerConfiguration;->getTargetCollectionCatalogName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTargetCollectionCatalogGUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotosViewContainerConfiguration;->getTargetCollectionCatalogGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetCollectionCatalogName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotosViewContainerConfiguration;->getTargetCollectionCatalogName:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetCollectionGUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotosViewContainerConfiguration;->targetCollectionGUID:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetCollectionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotosViewContainerConfiguration;->targetCollectionName:Ljava/lang/String;

    return-object v0
.end method
