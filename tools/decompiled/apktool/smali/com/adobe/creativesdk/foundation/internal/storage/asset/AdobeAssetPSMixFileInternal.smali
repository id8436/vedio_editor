.class public Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSMixFileInternal;
.super Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile;
.source "AdobeAssetPSMixFileInternal.java"


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    .line 27
    return-void
.end method


# virtual methods
.method public setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 32
    return-void
.end method

.method public supportsSharedProjectType(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;)Z
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSMixFileInternal$1;->$SwitchMap$com$adobe$creativesdk$foundation$storage$AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType:[I

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 41
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 38
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
