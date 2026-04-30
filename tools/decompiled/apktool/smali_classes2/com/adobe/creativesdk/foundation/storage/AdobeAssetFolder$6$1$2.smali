.class Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1$2;
.super Ljava/lang/Object;
.source "AdobeAssetFolder.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
        "<",
        "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;)V
    .locals 0

    .prologue
    .line 836
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1$2;->this$2:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V
    .locals 2

    .prologue
    .line 839
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1$2;->this$2:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;->val$handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1$2;->this$2:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1$2$1;

    invoke-direct {v1, p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1$2$1;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1$2;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 850
    :goto_0
    return-void

    .line 849
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1$2;->this$2:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 836
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6$1$2;->onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    return-void
.end method
