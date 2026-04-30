.class public Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemStockImage;
.super Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemImage;
.source "AdobeAssetLibraryItemStockImage.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final AdobeAssetLibraryItemStockImageContentIDKey:Ljava/lang/String; = "content_id"

.field private static final AdobeAssetLibraryItemStockImageExternalLinkKey:Ljava/lang/String; = "library#linkurl"

.field private static final AdobeAssetLibraryItemStockImageExternalLinkTypeKey:Ljava/lang/String; = "library#linktype"

.field private static final AdobeAssetLibraryItemStockImageNotPurchased:Ljava/lang/String; = "not_purchased"

.field private static final AdobeAssetLibraryItemStockImagePurchaseStateKey:Ljava/lang/String; = "state"

.field private static final AdobeAssetLibraryItemStockImagePurchased:Ljava/lang/String; = "purchased"

.field private static final AdobeAssetLibraryItemStockImageStockIDKey:Ljava/lang/String; = "stock_id"

.field private static final AdobeAssetLibraryItemStockImageTrackingDataKey:Ljava/lang/String; = "adobestock#trackingdata"


# instance fields
.field private _assetURL:Ljava/lang/String;

.field private _bLicensed:Z

.field private _mediaType:Ljava/lang/String;

.field private _unlicensedURL:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;IILcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;IILjava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p10}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemImage;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;IILcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;IILjava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemStockImage;->initWithNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)V

    .line 33
    return-void
.end method

.method private initWithNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 37
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getChildrenOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v0

    .line 42
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 45
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "application/vnd.adobe.library.link+dcx"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    const-string/jumbo v1, "adobestock#trackingdata"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 52
    const-string/jumbo v5, "state"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    if-eqz v1, :cond_1

    const-string/jumbo v5, "purchased"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 59
    iput-boolean v8, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemStockImage;->_bLicensed:Z

    move-object v1, v0

    move-object v0, v2

    :goto_1
    move-object v2, v0

    move-object v3, v1

    .line 71
    goto :goto_0

    .line 62
    :cond_1
    if-eqz v1, :cond_2

    const-string/jumbo v5, "not_purchased"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 65
    const-string/jumbo v1, "library#linkurl"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemStockImage;->_unlicensedURL:Ljava/lang/String;

    move-object v1, v3

    goto :goto_1

    .line 69
    :cond_2
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v5, "AdobeAssetLibraryItemStockImage"

    const-string/jumbo v6, "Invalid purchase_state for stock asset: %s"

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v1, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    move-object v1, v3

    goto :goto_1

    .line 74
    :cond_3
    if-eqz v3, :cond_4

    .line 76
    :goto_2
    const-string/jumbo v0, "library#linktype"

    invoke-virtual {v3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemStockImage;->_mediaType:Ljava/lang/String;

    .line 78
    const-string/jumbo v0, "library#linkurl"

    invoke-virtual {v3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 81
    if-eqz v0, :cond_5

    .line 83
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemStockImage;->_assetURL:Ljava/lang/String;

    .line 91
    :goto_3
    return-void

    :cond_4
    move-object v3, v2

    .line 74
    goto :goto_2

    .line 87
    :cond_5
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AdobeAssetLibraryItemStockImage"

    const-string/jumbo v2, "Could not find external link for child: %s"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v3, v4, v9

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method public getAssetURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemStockImage;->_assetURL:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemStockImage;->_mediaType:Ljava/lang/String;

    return-object v0
.end method

.method public getUnlicensedURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemStockImage;->_unlicensedURL:Ljava/lang/String;

    return-object v0
.end method

.method public isLicensed()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemStockImage;->_bLicensed:Z

    return v0
.end method
