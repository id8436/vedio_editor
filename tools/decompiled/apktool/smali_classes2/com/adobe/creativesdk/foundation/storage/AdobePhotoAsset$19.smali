.class Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$19;
.super Ljava/lang/Object;
.source "AdobePhotoAsset.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
        "<",
        "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

.field final synthetic val$uploadRenditionCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V
    .locals 0

    .prologue
    .line 803
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$19;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$19;->val$uploadRenditionCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)V
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$19;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->handleCommonUploadCompletionBookKeeping()V

    .line 807
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$19;->val$uploadRenditionCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onCompletion(Ljava/lang/Object;)V

    .line 808
    return-void
.end method

.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 803
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$19;->onCompletion(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)V

    return-void
.end method
