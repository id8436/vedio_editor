.class Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$4;
.super Ljava/lang/Object;
.source "AdobeAssetMultiRootedDataSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;

.field final synthetic val$delegateObj:Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;)V
    .locals 0

    .prologue
    .line 525
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$4;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$4;->val$delegateObj:Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$4;->val$delegateObj:Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;->didFinishLoading()V

    .line 529
    return-void
.end method
