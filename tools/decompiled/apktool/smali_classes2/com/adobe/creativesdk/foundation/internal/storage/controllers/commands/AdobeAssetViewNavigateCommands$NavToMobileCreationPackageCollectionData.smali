.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToMobileCreationPackageCollectionData;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavBaseCommandData;
.source "AdobeAssetViewNavigateCommands.java"


# instance fields
.field private assetPackagePages:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

.field private collectionGUID:Ljava/lang/String;

.field private collectionHref:Ljava/lang/String;

.field private collectionName:Ljava/lang/String;

.field private dataSourceType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

.field private modified:Ljava/lang/String;

.field private parentHref:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavBaseCommandData;-><init>()V

    return-void
.end method


# virtual methods
.method public getAssetPackagePages()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToMobileCreationPackageCollectionData;->assetPackagePages:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    return-object v0
.end method

.method public getCollectionGUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToMobileCreationPackageCollectionData;->collectionGUID:Ljava/lang/String;

    return-object v0
.end method

.method public getCollectionHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToMobileCreationPackageCollectionData;->collectionHref:Ljava/lang/String;

    return-object v0
.end method

.method public getCollectionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToMobileCreationPackageCollectionData;->collectionName:Ljava/lang/String;

    return-object v0
.end method

.method public getDataSourceType()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToMobileCreationPackageCollectionData;->dataSourceType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    return-object v0
.end method

.method public getModified()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToMobileCreationPackageCollectionData;->modified:Ljava/lang/String;

    return-object v0
.end method

.method public getParentHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToMobileCreationPackageCollectionData;->parentHref:Ljava/lang/String;

    return-object v0
.end method

.method public setAssetPackagePages(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToMobileCreationPackageCollectionData;->assetPackagePages:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    .line 175
    return-void
.end method

.method public setCollectionGUID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToMobileCreationPackageCollectionData;->collectionGUID:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setCollectionHref(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToMobileCreationPackageCollectionData;->collectionHref:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setCollectionName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToMobileCreationPackageCollectionData;->collectionName:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setDataSourceType(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToMobileCreationPackageCollectionData;->dataSourceType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    .line 167
    return-void
.end method

.method public setModified(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToMobileCreationPackageCollectionData;->modified:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setParentHref(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToMobileCreationPackageCollectionData;->parentHref:Ljava/lang/String;

    .line 159
    return-void
.end method
