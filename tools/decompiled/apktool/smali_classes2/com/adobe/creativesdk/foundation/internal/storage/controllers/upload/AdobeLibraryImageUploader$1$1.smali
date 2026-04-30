.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeLibraryImageUploader$1$1;
.super Ljava/lang/Object;
.source "AdobeLibraryImageUploader.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeLibraryImageUploader$1;

.field final synthetic val$packageFile:Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeLibraryImageUploader$1;Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeLibraryImageUploader$1$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeLibraryImageUploader$1;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeLibraryImageUploader$1$1;->val$packageFile:Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeLibraryImageUploader$1$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeLibraryImageUploader$1;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeLibraryImageUploader$1;->val$callback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeLibraryImageUploader$1$1;->val$packageFile:Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onCompletion(Ljava/lang/Object;)V

    .line 111
    return-void
.end method
