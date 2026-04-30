.class Lcom/adobe/premiereclip/MainActivity$19;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;",
        ">;>;"
    }
.end annotation


# instance fields
.field getAssetCountError:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;"
        }
    .end annotation
.end field

.field getAssetCountSuccess:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final listAssetsOnPageError:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;"
        }
    .end annotation
.end field

.field listAssetsOnPageSuccess:Lcom/adobe/creativesdk/foundation/storage/IAdobePhotoAssetsListRequestCompletionHandler;

.field final synthetic this$0:Lcom/adobe/premiereclip/MainActivity;

.field totalAssetsCount:I

.field final synthetic val$collectionId:Ljava/lang/String;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/MainActivity;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2004
    iput-object p1, p0, Lcom/adobe/premiereclip/MainActivity$19;->this$0:Lcom/adobe/premiereclip/MainActivity;

    iput-object p2, p0, Lcom/adobe/premiereclip/MainActivity$19;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/adobe/premiereclip/MainActivity$19;->val$collectionId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2007
    new-instance v0, Lcom/adobe/premiereclip/MainActivity$19$1;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/MainActivity$19$1;-><init>(Lcom/adobe/premiereclip/MainActivity$19;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/MainActivity$19;->getAssetCountSuccess:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    .line 2013
    new-instance v0, Lcom/adobe/premiereclip/MainActivity$19$2;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/MainActivity$19$2;-><init>(Lcom/adobe/premiereclip/MainActivity$19;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/MainActivity$19;->getAssetCountError:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    .line 2021
    new-instance v0, Lcom/adobe/premiereclip/MainActivity$19$3;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/MainActivity$19$3;-><init>(Lcom/adobe/premiereclip/MainActivity$19;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/MainActivity$19;->listAssetsOnPageSuccess:Lcom/adobe/creativesdk/foundation/storage/IAdobePhotoAssetsListRequestCompletionHandler;

    .line 2037
    new-instance v0, Lcom/adobe/premiereclip/MainActivity$19$4;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/MainActivity$19$4;-><init>(Lcom/adobe/premiereclip/MainActivity$19;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/MainActivity$19;->listAssetsOnPageError:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    return-void
.end method


# virtual methods
.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2004
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/MainActivity$19;->onCompletion(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onCompletion(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 2046
    const/4 v1, 0x0

    .line 2047
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    .line 2048
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getGUID()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/premiereclip/MainActivity$19;->val$collectionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2050
    iget-object v1, p0, Lcom/adobe/premiereclip/MainActivity$19;->getAssetCountSuccess:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    iget-object v2, p0, Lcom/adobe/premiereclip/MainActivity$19;->getAssetCountError:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->assetCount(Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    .line 2051
    const/4 v1, 0x0

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$AdobePhotoCollectionSort;->ADOBE_PHOTO_COLLECTION_SORT_BY_DATE:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$AdobePhotoCollectionSort;

    const/16 v3, 0x64

    sget-object v4, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$AdobePhotoCollectionFlag;->ADOBE_PHOTO_COLLECTION_FLAG_ALL:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$AdobePhotoCollectionFlag;

    iget-object v5, p0, Lcom/adobe/premiereclip/MainActivity$19;->listAssetsOnPageSuccess:Lcom/adobe/creativesdk/foundation/storage/IAdobePhotoAssetsListRequestCompletionHandler;

    iget-object v6, p0, Lcom/adobe/premiereclip/MainActivity$19;->listAssetsOnPageError:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->listAssetsOnPage(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$AdobePhotoCollectionSort;ILcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$AdobePhotoCollectionFlag;Lcom/adobe/creativesdk/foundation/storage/IAdobePhotoAssetsListRequestCompletionHandler;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    move v0, v7

    .line 2056
    :goto_0
    if-nez v0, :cond_1

    .line 2057
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$19;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/MainActivity;->access$900(Lcom/adobe/premiereclip/MainActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2058
    new-instance v0, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    iget-object v1, p0, Lcom/adobe/premiereclip/MainActivity$19;->this$0:Lcom/adobe/premiereclip/MainActivity;

    iget-object v2, p0, Lcom/adobe/premiereclip/MainActivity$19;->this$0:Lcom/adobe/premiereclip/MainActivity;

    const v3, 0x7f0a0427

    .line 2059
    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/premiereclip/MainActivity$19;->this$0:Lcom/adobe/premiereclip/MainActivity;

    const v4, 0x7f0a042a

    .line 2060
    invoke-virtual {v3, v4}, Lcom/adobe/premiereclip/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2062
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    .line 2064
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method
