.class Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$13;
.super Ljava/lang/Object;
.source "AdobeLibraryComposite.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
        "<",
        "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

.field final synthetic val$callbackHandler:Landroid/os/Handler;

.field final synthetic val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 2292
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$13;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$13;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$13;->val$callbackHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;)V
    .locals 3

    .prologue
    .line 2295
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$13;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    if-eqz v0, :cond_0

    .line 2296
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$13;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$13;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$13;->val$callbackHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->access$100(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;)V

    .line 2297
    :cond_0
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2292
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$13;->onError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;)V

    return-void
.end method
