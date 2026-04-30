.class public Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoCollectionInternal;
.super Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;
.source "AdobePhotoCollectionInternal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    return-object v0
.end method

.method public setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 19
    return-void
.end method
