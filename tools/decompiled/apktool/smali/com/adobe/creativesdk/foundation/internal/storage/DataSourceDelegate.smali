.class Lcom/adobe/creativesdk/foundation/internal/storage/DataSourceDelegate;
.super Ljava/lang/Object;
.source "DataSourceDelegate.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;


# instance fields
.field private type:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/DataSourceDelegate;->type:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    .line 31
    return-void
.end method


# virtual methods
.method public didFailToLoadMoreDataWithError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public didFinishLoading()V
    .locals 2

    .prologue
    .line 55
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->getInstance()Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->getInstance()Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/DataSourceDelegate;->type:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->notifyDataSourceIsReady(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;)V

    .line 58
    :cond_0
    return-void
.end method

.method public didLoadMoreDataWithCount(I)V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public willLoadDataFromScratch()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public willLoadNextPageForExistingPackage()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method
