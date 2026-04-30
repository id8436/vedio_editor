.class Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$3;
.super Ljava/lang/Object;
.source "AdobeAssetFile.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
        "<",
        "Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

.field final synthetic val$callBackRequiredForHandler:Landroid/os/Handler;

.field final synthetic val$updateDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$3;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$3;->val$updateDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$3;->val$callBackRequiredForHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$3;->val$updateDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$3;->val$callBackRequiredForHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$3;->val$callBackRequiredForHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$3$1;

    invoke-direct {v1, p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$3$1;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$3;Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$3;->val$updateDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 262
    check-cast p1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$3;->onError(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    return-void
.end method
