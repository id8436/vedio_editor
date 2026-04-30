.class public Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$PhotoCollectionDetails;
.super Ljava/lang/Object;
.source "AdobePhotoCollection.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

.field collectionCatalogGUID:Ljava/lang/String;

.field collectionCatalogName:Ljava/lang/String;

.field collectionGUID:Ljava/lang/String;

.field collectionName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 741
    return-void
.end method

.method public static fromPhotoCollection(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;)Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$PhotoCollectionDetails;
    .locals 2

    .prologue
    .line 749
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$PhotoCollectionDetails;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$PhotoCollectionDetails;-><init>()V

    .line 750
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getCatalog()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$PhotoCollectionDetails;->collectionCatalogName:Ljava/lang/String;

    .line 751
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getCatalog()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;->getGUID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$PhotoCollectionDetails;->collectionCatalogGUID:Ljava/lang/String;

    .line 752
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getCatalog()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$PhotoCollectionDetails;->cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 753
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$PhotoCollectionDetails;->collectionName:Ljava/lang/String;

    .line 754
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getGUID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$PhotoCollectionDetails;->collectionGUID:Ljava/lang/String;

    .line 755
    return-object v0
.end method


# virtual methods
.method public getPhotoCollection()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;
    .locals 4

    .prologue
    .line 764
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$PhotoCollectionDetails;->collectionCatalogName:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$PhotoCollectionDetails;->collectionCatalogGUID:Ljava/lang/String;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$PhotoCollectionDetails;->cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 765
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$PhotoCollectionDetails;->collectionName:Ljava/lang/String;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$PhotoCollectionDetails;->collectionGUID:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;)V

    .line 766
    return-object v1
.end method
