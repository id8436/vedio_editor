.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToPhotoCollectionData;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavBaseCommandData;
.source "AdobeAssetViewNavigateCommands.java"


# instance fields
.field private catalogGUID:Ljava/lang/String;

.field private catalogName:Ljava/lang/String;

.field private collectionGUID:Ljava/lang/String;

.field private collectionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavBaseCommandData;-><init>()V

    return-void
.end method


# virtual methods
.method public getCatalogGUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToPhotoCollectionData;->catalogGUID:Ljava/lang/String;

    return-object v0
.end method

.method public getCatalogName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToPhotoCollectionData;->catalogName:Ljava/lang/String;

    return-object v0
.end method

.method public getCollectionGUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToPhotoCollectionData;->collectionGUID:Ljava/lang/String;

    return-object v0
.end method

.method public getCollectionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToPhotoCollectionData;->collectionName:Ljava/lang/String;

    return-object v0
.end method

.method public setCatalogGUID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToPhotoCollectionData;->catalogGUID:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setCatalogName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToPhotoCollectionData;->catalogName:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setCollectionGUID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToPhotoCollectionData;->collectionGUID:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setCollectionName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToPhotoCollectionData;->collectionName:Ljava/lang/String;

    .line 70
    return-void
.end method
