.class Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage$1;
.super Ljava/lang/Object;
.source "AdobeAssetPackage.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
        "<",
        "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;

.field final synthetic val$successCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;

.field final synthetic val$weakThis:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;Ljava/lang/ref/WeakReference;Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage$1;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage$1;->val$weakThis:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage$1;->val$successCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;)V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage$1;->val$weakThis:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;

    invoke-static {v0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->access$002(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    .line 112
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage$1;->val$weakThis:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->access$102(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;Z)Z

    .line 113
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage$1;->val$successCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;->onCompletion()V

    .line 114
    return-void
.end method

.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 108
    check-cast p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage$1;->onCompletion(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;)V

    return-void
.end method
