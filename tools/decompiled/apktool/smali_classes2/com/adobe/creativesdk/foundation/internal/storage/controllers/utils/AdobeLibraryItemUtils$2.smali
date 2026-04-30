.class final Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeLibraryItemUtils$2;
.super Ljava/lang/Object;
.source "AdobeLibraryItemUtils.java"

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
.field final synthetic val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$stockElement:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemStockImage;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemStockImage;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeLibraryItemUtils$2;->val$stockElement:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemStockImage;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeLibraryItemUtils$2;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeLibraryItemUtils$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 4

    .prologue
    .line 132
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeLibraryItemUtils$2;->val$stockElement:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemStockImage;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemStockImage;->getUnlicensedURL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeLibraryItemUtils$2;->val$stockElement:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemStockImage;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemStockImage;->getUnlicensedURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeLibraryItemUtils$2;->val$stockElement:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemStockImage;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemStockImage;->getUnlicensedURL()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeLibraryItemUtils$2$1;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeLibraryItemUtils$2$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeLibraryItemUtils$2;)V

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeLibraryItemUtils$2$2;

    invoke-direct {v2, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeLibraryItemUtils$2$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeLibraryItemUtils$2;)V

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeLibraryItemUtils$2;->val$handler:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeDesignLibraryUtilsInternal;->getLicensedData(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)V

    .line 154
    :cond_0
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 127
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeLibraryItemUtils$2;->onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    return-void
.end method
