.class Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1$3;
.super Ljava/lang/Object;
.source "AdobeAssetDataSource.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
        "<",
        "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;

.field final synthetic val$itemArray:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1$3;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1$3;->val$itemArray:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 330
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1$3;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;->numberProcessed:[I

    aget v1, v0, v5

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v5

    .line 331
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1$3;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->getDelegate()Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;

    move-result-object v1

    .line 335
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 336
    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    .line 337
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->getErrorCode()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->getValue()I

    move-result v2

    const/16 v3, 0x194

    if-eq v2, v3, :cond_2

    .line 338
    if-eqz v1, :cond_0

    .line 339
    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;->didFailToLoadMoreDataWithError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    .line 349
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1$3;->val$itemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1$3;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;->numberProcessed:[I

    aget v1, v1, v5

    if-ne v0, v1, :cond_1

    .line 350
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1$3;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;)V

    .line 352
    :cond_1
    return-void

    .line 344
    :cond_2
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AdobeAssetDataSource.loadNextPage"

    const-string/jumbo v2, "Failed to load the package metadata: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 327
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1$3;->onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    return-void
.end method
