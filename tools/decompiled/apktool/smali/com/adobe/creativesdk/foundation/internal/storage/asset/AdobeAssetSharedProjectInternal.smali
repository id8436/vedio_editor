.class public Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetSharedProjectInternal;
.super Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSharedProject;
.source "AdobeAssetSharedProjectInternal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSharedProject;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSharedProject;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    .line 14
    return-void
.end method


# virtual methods
.method public setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSharedProject;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 23
    return-void
.end method
