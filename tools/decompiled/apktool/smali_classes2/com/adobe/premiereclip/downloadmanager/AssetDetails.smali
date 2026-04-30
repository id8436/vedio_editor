.class Lcom/adobe/premiereclip/downloadmanager/AssetDetails;
.super Ljava/lang/Object;
.source "AssetDetails.java"


# instance fields
.field private mAssetUrl:Ljava/lang/String;

.field private mFileSize:J

.field private mLastModifiedDate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/adobe/premiereclip/downloadmanager/AssetDetails;->mAssetUrl:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/adobe/premiereclip/downloadmanager/AssetDetails;->mLastModifiedDate:Ljava/lang/String;

    .line 37
    iput-wide p3, p0, Lcom/adobe/premiereclip/downloadmanager/AssetDetails;->mFileSize:J

    .line 38
    return-void
.end method

.method public static getAssetDetailsFromAdobeSelectionAssetFile(Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionAssetFile;)Lcom/adobe/premiereclip/downloadmanager/AssetDetails;
    .locals 6

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionAssetFile;->getSelectedItem()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getHref()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getModificationDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getFormattedDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getFileSize()J

    move-result-wide v4

    .line 57
    new-instance v0, Lcom/adobe/premiereclip/downloadmanager/AssetDetails;

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/adobe/premiereclip/downloadmanager/AssetDetails;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getAssetDetailsFromAdobeSelectionPhotoAsset(Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPhotoAsset;)Lcom/adobe/premiereclip/downloadmanager/AssetDetails;
    .locals 6

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPhotoAsset;->getSelectedItem()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    move-result-object v0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getHref()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getModificationDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getFormattedDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getSize()J

    move-result-wide v4

    .line 65
    new-instance v0, Lcom/adobe/premiereclip/downloadmanager/AssetDetails;

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/adobe/premiereclip/downloadmanager/AssetDetails;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method


# virtual methods
.method public getAssetUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/AssetDetails;->mAssetUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/adobe/premiereclip/downloadmanager/AssetDetails;->mFileSize:J

    return-wide v0
.end method

.method public getLastModifiedDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/AssetDetails;->mLastModifiedDate:Ljava/lang/String;

    return-object v0
.end method
