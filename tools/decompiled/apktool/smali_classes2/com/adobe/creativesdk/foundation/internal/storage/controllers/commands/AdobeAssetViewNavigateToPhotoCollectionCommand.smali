.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToPhotoCollectionCommand;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewCommandData;
.source "AdobeAssetViewNavigateToPhotoCollectionCommand.java"


# instance fields
.field private catalogGUID:Ljava/lang/String;

.field private catalogName:Ljava/lang/String;

.field private collectionGUID:Ljava/lang/String;

.field private collectionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewCommandData;-><init>()V

    return-void
.end method


# virtual methods
.method public getCatalogGUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToPhotoCollectionCommand;->catalogGUID:Ljava/lang/String;

    return-object v0
.end method

.method public getCatalogName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToPhotoCollectionCommand;->catalogName:Ljava/lang/String;

    return-object v0
.end method

.method public getCollectionGUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToPhotoCollectionCommand;->collectionGUID:Ljava/lang/String;

    return-object v0
.end method

.method public getCollectionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToPhotoCollectionCommand;->collectionName:Ljava/lang/String;

    return-object v0
.end method

.method public setCatalogGUID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToPhotoCollectionCommand;->catalogGUID:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setCatalogName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToPhotoCollectionCommand;->catalogName:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setCollectionGUID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToPhotoCollectionCommand;->collectionGUID:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setCollectionName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToPhotoCollectionCommand;->collectionName:Ljava/lang/String;

    .line 27
    return-void
.end method
