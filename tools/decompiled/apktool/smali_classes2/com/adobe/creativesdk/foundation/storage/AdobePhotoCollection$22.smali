.class Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$22;
.super Ljava/lang/Object;
.source "AdobePhotoCollection.java"

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
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

.field final synthetic val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$22;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$22;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$22;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$22;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;->onError(Ljava/lang/Object;)V

    .line 544
    :cond_0
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 538
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$22;->onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    return-void
.end method
