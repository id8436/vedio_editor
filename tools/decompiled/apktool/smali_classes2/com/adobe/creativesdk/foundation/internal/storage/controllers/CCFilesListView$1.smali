.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$1;
.super Ljava/lang/Object;
.source "CCFilesListView.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
        "<[B",
        "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;

.field final synthetic val$assetData:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

.field final synthetic val$dimensions:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

.field final synthetic val$renditionRequestCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

.field final synthetic val$type:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$1;->val$renditionRequestCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$1;->val$assetData:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$1;->val$type:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$1;->val$dimensions:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancellation()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$1;->val$renditionRequestCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onCancellation()V

    .line 119
    return-void
.end method

.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 115
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$1;->onCompletion([B)V

    return-void
.end method

.method public onCompletion([B)V
    .locals 7

    .prologue
    .line 124
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$1;->val$assetData:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    iget-object v2, v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->guid:Ljava/lang/String;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$1;->val$type:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$1;->val$dimensions:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    new-instance v5, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$1$1;

    invoke-direct {v5, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$1$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$1;)V

    new-instance v6, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$1$2;

    invoke-direct {v6, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$1$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$1;)V

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->addAssetRenditionToCache([BLjava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Z

    move-result v0

    .line 136
    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$1$1DecodeImageInBackgroundTask;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$1$1DecodeImageInBackgroundTask;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$1;)V

    .line 156
    const/4 v1, 0x1

    new-array v1, v1, [[B

    .line 157
    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 158
    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$1$1DecodeImageInBackgroundTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 161
    :cond_0
    return-void
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$1;->val$renditionRequestCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onError(Ljava/lang/Object;)V

    .line 166
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 115
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$1;->onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    return-void
.end method

.method public onProgress(D)V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$1;->val$renditionRequestCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-interface {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onProgress(D)V

    .line 171
    return-void
.end method
