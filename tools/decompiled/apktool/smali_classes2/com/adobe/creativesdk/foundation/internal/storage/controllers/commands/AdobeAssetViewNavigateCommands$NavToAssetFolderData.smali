.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToAssetFolderData;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavBaseCommandData;
.source "AdobeAssetViewNavigateCommands.java"


# instance fields
.field private collection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

.field private dataSourceType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

.field private isReadOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavBaseCommandData;-><init>()V

    return-void
.end method


# virtual methods
.method public getCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToAssetFolderData;->collection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    return-object v0
.end method

.method public getDataSourceType()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToAssetFolderData;->dataSourceType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    return-object v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToAssetFolderData;->isReadOnly:Z

    return v0
.end method

.method public setCollection(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToAssetFolderData;->collection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    .line 31
    return-void
.end method

.method public setDataSourceType(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToAssetFolderData;->dataSourceType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    .line 39
    return-void
.end method

.method public setReadOnly(Z)V
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToAssetFolderData;->isReadOnly:Z

    .line 47
    return-void
.end method
