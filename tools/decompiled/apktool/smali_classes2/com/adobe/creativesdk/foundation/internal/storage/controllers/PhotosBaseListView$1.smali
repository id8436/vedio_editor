.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView$1;
.super Ljava/lang/Object;
.source "PhotosBaseListView.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
        "<[B",
        "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView;

.field final synthetic val$dimensions:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

.field final synthetic val$finalGuid:Ljava/lang/String;

.field final synthetic val$renditionRequestCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

.field final synthetic val$type:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView$1;->val$renditionRequestCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView$1;->val$finalGuid:Ljava/lang/String;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView$1;->val$type:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView$1;->val$dimensions:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancellation()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView$1;->val$renditionRequestCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onCancellation()V

    return-void
.end method

.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 123
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView$1;->onCompletion([B)V

    return-void
.end method

.method public onCompletion([B)V
    .locals 7

    .prologue
    .line 130
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView$1;->val$finalGuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView$1;->val$type:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView$1;->val$dimensions:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    new-instance v5, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView$1$1;

    invoke-direct {v5, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView$1$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView$1;)V

    new-instance v6, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView$1$2;

    invoke-direct {v6, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView$1$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView$1;)V

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView;->addAssetRenditionToCache([BLjava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Z

    .line 143
    return-void
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;)V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView$1;->val$renditionRequestCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onError(Ljava/lang/Object;)V

    .line 148
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 123
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView$1;->onError(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;)V

    return-void
.end method

.method public onProgress(D)V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView$1;->val$renditionRequestCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-interface {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onProgress(D)V

    return-void
.end method
