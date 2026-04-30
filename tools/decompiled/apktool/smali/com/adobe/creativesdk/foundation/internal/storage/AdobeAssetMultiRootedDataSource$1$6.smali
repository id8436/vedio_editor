.class Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$6;
.super Ljava/lang/Object;
.source "AdobeAssetMultiRootedDataSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;

.field final synthetic val$delegateObj:Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;

.field final synthetic val$error:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V
    .locals 0

    .prologue
    .line 563
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$6;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$6;->val$delegateObj:Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$6;->val$error:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$6;->val$delegateObj:Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$6;->val$error:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;->didFailToLoadMoreDataWithError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    .line 567
    return-void
.end method
