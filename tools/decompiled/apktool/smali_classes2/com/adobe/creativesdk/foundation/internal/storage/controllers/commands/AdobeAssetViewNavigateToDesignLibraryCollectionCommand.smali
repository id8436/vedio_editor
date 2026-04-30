.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToDesignLibraryCollectionCommand;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewCommandData;
.source "AdobeAssetViewNavigateToDesignLibraryCollectionCommand.java"


# instance fields
.field private collectionGUID:Ljava/lang/String;

.field private collectionHref:Ljava/lang/String;

.field private collectionName:Ljava/lang/String;

.field private library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

.field private parentHref:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewCommandData;-><init>()V

    return-void
.end method


# virtual methods
.method public getCollectionGUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToDesignLibraryCollectionCommand;->collectionGUID:Ljava/lang/String;

    return-object v0
.end method

.method public getCollectionHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToDesignLibraryCollectionCommand;->collectionHref:Ljava/lang/String;

    return-object v0
.end method

.method public getCollectionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToDesignLibraryCollectionCommand;->collectionName:Ljava/lang/String;

    return-object v0
.end method

.method public getLibrary()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToDesignLibraryCollectionCommand;->library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    return-object v0
.end method

.method public getParentHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToDesignLibraryCollectionCommand;->parentHref:Ljava/lang/String;

    return-object v0
.end method

.method public setCollectionGUID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToDesignLibraryCollectionCommand;->collectionGUID:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setCollectionHref(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToDesignLibraryCollectionCommand;->collectionHref:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setCollectionName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToDesignLibraryCollectionCommand;->collectionName:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setLibrary(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToDesignLibraryCollectionCommand;->library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 45
    return-void
.end method

.method public setParentHref(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToDesignLibraryCollectionCommand;->parentHref:Ljava/lang/String;

    .line 53
    return-void
.end method
