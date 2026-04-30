.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment$2;
.super Ljava/lang/Object;
.source "AdobeCreatePhotoCollectionDialogFragment.java"

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
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;

    invoke-static {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 186
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 182
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment$2;->onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    return-void
.end method
