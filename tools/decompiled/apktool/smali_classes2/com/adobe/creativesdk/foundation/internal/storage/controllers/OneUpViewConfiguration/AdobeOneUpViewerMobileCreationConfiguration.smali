.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerMobileCreationConfiguration;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerBaseConfiguration;
.source "AdobeOneUpViewerMobileCreationConfiguration.java"


# instance fields
.field private _assetPackagePages:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

.field private _itemsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;",
            ">;"
        }
    .end annotation
.end field

.field private _startIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerBaseConfiguration;-><init>()V

    return-void
.end method


# virtual methods
.method public getAssetPackagePages()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerMobileCreationConfiguration;->_assetPackagePages:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    return-object v0
.end method

.method public getItemsList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerMobileCreationConfiguration;->_itemsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStartIndex()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerMobileCreationConfiguration;->_startIndex:I

    return v0
.end method

.method public setAssetPackagePages(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerMobileCreationConfiguration;->_assetPackagePages:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    .line 38
    return-void
.end method

.method public setItemsList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerMobileCreationConfiguration;->_itemsList:Ljava/util/ArrayList;

    .line 54
    return-void
.end method

.method public setStartIndex(I)V
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerMobileCreationConfiguration;->_startIndex:I

    .line 46
    return-void
.end method
