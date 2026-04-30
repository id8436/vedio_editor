.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment$1;
.super Ljava/lang/Object;
.source "AdobeCreatePhotoCollectionDialogFragment.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
        "<",
        "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;)V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;

    invoke-static {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;)V

    .line 179
    return-void
.end method

.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 175
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment$1;->onCompletion(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;)V

    return-void
.end method
