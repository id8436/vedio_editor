.class Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary$1;
.super Ljava/lang/Object;
.source "AdobeAssetLibrary.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;

.field final synthetic val$successCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;)V
    .locals 0

    .prologue
    .line 693
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary$1;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary$1;->val$successCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary$1;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->loadLibraryMetadata()V

    .line 698
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary$1;->val$successCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary$1;->val$successCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;->onCompletion()V

    .line 702
    :cond_0
    return-void
.end method
